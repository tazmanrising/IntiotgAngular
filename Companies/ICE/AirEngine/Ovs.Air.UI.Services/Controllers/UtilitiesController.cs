using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Ovs.Air.Ui.Services.Models;
using Ovs.Air.Ui.Services.Repos;

namespace Ovs.Air.Ui.Services.Controllers
{
    public class UtilitiesController : ApiController
    {
        [HttpGet]
        [Route("svc/air/v1/autocompleteffp")]
        public HttpResponseMessage AutoCompleteFfp(string term)
        {
            var airports = string.IsNullOrEmpty(term) ? new List<Airport>() : AirportRepo.GetMatching(term.ToLowerInvariant()).AsEnumerable();
            return Request.CreateResponse(HttpStatusCode.OK, airports);
        }


        [HttpGet]
        [Route("svc/air/v1/getallairlines")]
        public IHttpActionResult GetAllAirlines()
        {
            var airlines = AirportRepo.GetAllAirlines();
            if(airlines.Any())
            {
                return Ok(airlines);
            }
            else
            {
                return NotFound();
            }
                        
        }

        [HttpGet]
        [Route("svc/air/v1/getairlinebycode")]
        public IHttpActionResult GetAirlineByCode(string code)
        {
            var airlines = string.IsNullOrEmpty(code) ? new List<AirLineCode>() : AirportRepo.GetAirlinesByCarrierId(code).AsEnumerable();
            if (airlines.Any())
            {
                return Ok(airlines);
            }
            else
            {
                return NotFound();
            }

        }
    }
}
