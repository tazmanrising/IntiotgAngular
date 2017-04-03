using System.Net.Http;
using System.Web;
using System.Web.Http;
using TokenApi.CustomAttributes;

namespace TokenApi.Controllers
{
    [CustomApiAccessAuthorize]
    public class TokenController : ApiController
    {

        [HttpGet]
        [Route("api/test/")]
        public IHttpActionResult TestToken()
        {
            
            //var s = Request.GetOwinContext().Request.RemoteIpAddress;




            return Ok();

        }


        [HttpGet]
        [Route("api/request/")]
        public IHttpActionResult RequestToken()
        {

            return Ok("in api request");

        }


        //[Route("api/reports/{securitylevel:int}")]
        //public IEnumerable<Report> GetReports(int securityLevel)
        //{
        //    List<Report> reports = Business.AppLogic.GetReports(securityLevel);
        //    return reports;
        //}






    }

}
