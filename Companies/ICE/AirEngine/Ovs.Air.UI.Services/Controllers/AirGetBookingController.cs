using System.Net.Http;
using System.Web.Http;
using Ovs.Air.API.Models.Requests;
using Ovs.Air.API.Models.Responses;

namespace Ovs.Air.Ui.Services.Controllers
{
    public class AirGetBookingController : AirBaseWebApiController
    {
        [HttpPost]
        [Route("svc/air/v1/getbooking")]
        public HttpResponseMessage GetBooking(ApiGetBookingRequest apiRequest)
        {
            return PerformAirApiPost<ApiGetBookingRequest, ApiGetBookingResponse>("api/air/v1/services/getbooking", apiRequest);
        }
    }
}
