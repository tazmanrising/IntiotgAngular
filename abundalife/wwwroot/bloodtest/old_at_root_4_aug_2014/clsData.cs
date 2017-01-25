using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MySql.Data.MySqlClient;



namespace abundalife1001
{
    public class clsData
    {

        

        public string ins_user(string user, string pass, string email, string first, string last)
        {

            string results = "";
            
            try
            {
                MySql.Data.MySqlClient.MySqlConnection conn;
                //MySql.Data.MySqlClient.MySqlCommand cmd;

                conn = new MySql.Data.MySqlClient.MySqlConnection();
                //cmd = new MySql.Data.MySqlClient.MySqlCommand();



                conn.ConnectionString = "server=abundalife.com;uid=abunda1001;" +
                "pwd=rocksolid;database=abunda1001;";
                conn.Open();


                MySqlCommand cmd = new MySqlCommand
                    ("INSERT INTO user(login,password,email,FIRST_NAME,LAST_NAME) " +
                    "VALUES(\'" + user + "\',\'" + pass + "\',\'" + email + "\',\'" + first + "\',\'" + last + "\')", conn);

                int rowCount = cmd.ExecuteNonQuery();


                if (rowCount == 1)
                {
                    //Insert Success
                    results = "Success";
                }
                else
                {
                    //Insert Fail
                    results = "Failed";
                }

            }
            catch(Exception ex)
            {
                results =  ex.ToString() + " -- Failed by catch";
            }



            return results;


        }


    }


}
