using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;

namespace SimBitConsulting.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {

            var response = new HttpResponseMessage();
            response.Headers.Add("Access-Control-Allow-Headers", Request.Headers.GetValues("Access-Control-Request-Headers").FirstOrDefault());
            response.Headers.Add("Access-Control-Allow-Origin", "*");
            response.Headers.Add("Access-Control-Allow-Method", "GET");




            IEnumerable<string> header;
            response.Headers.TryGetValues("Auth-Token", out header);


            if (header != null && header.First().Equals("U1BBUktUT0tFTg==", StringComparison.Ordinal))
            {


            }




            ViewBag.Title = "Home Page";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Title = "Contact Page";

            return View();
        }

    }
}
