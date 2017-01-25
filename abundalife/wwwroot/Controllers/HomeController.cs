using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AbundaLife.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult ArticlesNaturopathic()
        {
            ViewBag.Message = "Articles Naturopathic.";

            return View();
        }

        public ActionResult ArticlesSpiritual()
        {
            ViewBag.Message = "Articles Spiritual.";

            return View();
        }

        public ActionResult LowCost()
        {
            ViewBag.Message = "Low Cost.";

            return View();
        }

        public ActionResult Forms()
        {
            ViewBag.Message = "Forms.";

            return View();
        }
    }
}