using System.Net.Http;
using System.Web.Http;
using Ovs.Air.API.Models.Requests;
using Ovs.Air.API.Models.Responses;

namespace Ovs.Air.Ui.Services.Controllers
{
    public class AirSendEmailController : AirBaseWebApiController
    {
        [HttpPost]
        [Route("svc/air/v1/sendemail")]
        public HttpResponseMessage SendEmail(ApiSendEmailRequest apiRequest)
        {
            return PerformAirApiPost<ApiSendEmailRequest, ApiSendEmailResponse>("api/air/v1/services/sendemail", apiRequest);
        }
    }
}
