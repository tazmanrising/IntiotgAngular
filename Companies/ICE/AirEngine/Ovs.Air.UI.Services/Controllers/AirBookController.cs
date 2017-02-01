using System.Net.Http;
using System.Web.Http;
using Ovs.Air.API.Models.Requests;
using Ovs.Air.API.Models.Responses;

namespace Ovs.Air.Ui.Services.Controllers
{
    public class AirBookController : AirBaseWebApiController
    {
        [HttpPost]
        [Route("svc/air/v1/book")]
        public HttpResponseMessage Booking(ApiBookingRequest apiRequest)
        {
            return PerformAirApiPost<ApiBookingRequest, ApiBookingResponse>("api/air/v1/services/book", apiRequest);
        }
    }
}
