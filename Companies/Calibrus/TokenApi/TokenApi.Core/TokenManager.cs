using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using TokenApi.Core.Models;

namespace TokenApi.Core
{

    public class ConsumerData
    {
        public string UserIpaddress { get; set; }
        public string BrowserAgent { get; set; }
        public string ApiAddressRequested { get; set; }

    }

    public class TokenManager
    {
        
        public ConsumerData GetUserInformation()
        {

            var consumerData = new ConsumerData();
            consumerData.UserIpaddress = HttpContext.Current.Request.UserHostAddress;
            if (consumerData.UserIpaddress == "::1")
            {
                consumerData.UserIpaddress = "localhost";
            }
            
            consumerData.BrowserAgent = HttpContext.Current.Request.UserAgent;
            consumerData.ApiAddressRequested = HttpContext.Current.Request.Url.OriginalString;
            

            return consumerData;
            
        }

        /// <summary>
        /// 1.  (get)(Select) lookup the incoming token id in token table 
        /// 2. (get)(Select) lookup the api in the apiaccess table  need to parse the url to get to  api/request/
        /// 3. (post)(Insert) write to apilog table 
        /// 4.  could just do all this in a stored proc instead   
        /// </summary>
        /// <param name="token"></param>
        /// <returns></returns>
        public bool CheckToken(string token)
        {

            try
            { 

          

            bool authorized = false;

            using (var calibrusContext = new CalibrusContext())
            {
                
                // # 1
                
                var tokenQuery = (from t in calibrusContext.TokenStores
                         where t.Token.Equals(token)
                         select t.TokenId).FirstOrDefault();

               
                
                // # 2
                //var url = "http://localhost:29001/api/request";
                var consumer = GetUserInformation();

                string prefixSearched = "api";
                string parsedUrl =
                    consumer.ApiAddressRequested.Substring(consumer.ApiAddressRequested.IndexOf(prefixSearched, StringComparison.Ordinal) + prefixSearched.Length);
                string finalSearch = prefixSearched + parsedUrl;


                // not a count   / all ids if any are > 0 
                if (tokenQuery > 0)
                {
                    authorized = true;
                    // grab url they are trying to access 
                    
                   
                    var apiAccessQuery = (from s in calibrusContext.ApiAccesses
                                          where s.ApiAddress.Equals(finalSearch) && s.TokenId == tokenQuery
                                          //where s.ApiAddress.Equals(finalSearch) && s.TokenId == 3
                                          //where s.ApiAddress.Contains(finalSearch) && s.TokenId == 3    //LIKE 
                                          select s).ToList();


                    authorized = apiAccessQuery.Any();

                }


                // # 3
                // logging here 

                var apiLog = new ApiLog
                {
                    Header = consumer.BrowserAgent,
                    IpAddress = consumer.UserIpaddress,
                    RequestUrl = consumer.ApiAddressRequested,
                    Token = token,
                    AccessGranted = authorized
                };

                calibrusContext.ApiLogs.Add(apiLog);
                calibrusContext.SaveChanges();





            }


            return authorized;


            }
            catch (Exception e)
            {
                //NLOG write to database or to Mongodb 

                //Console.WriteLine(e);
                throw;
            }
        }





    }
}
