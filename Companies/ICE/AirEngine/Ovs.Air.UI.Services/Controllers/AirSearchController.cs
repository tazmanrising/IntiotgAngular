using System.Net.Http;
using System.Web.Http;
using Ovs.Air.API.Models.Responses;

namespace Ovs.Air.Ui.Services.Controllers
{
    public class AirSearchController : AirBaseWebApiController
    {
        [HttpGet]
        [Route("svc/air/v1/flightsearch")]
        public HttpResponseMessage FlightSearch(HttpRequestMessage requestMsg)
        {
            return PerformAirApiGet<ApiSearchResponse>("api/air/v1/search/flightsearch", requestMsg.RequestUri.Query);
        }
    }
}
