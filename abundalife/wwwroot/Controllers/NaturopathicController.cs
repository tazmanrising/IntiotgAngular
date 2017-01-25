using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AbundaLife.Controllers
{
    public class NaturopathicController : Controller
    {
        
        public ActionResult ThyroidHormoneReplacement()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
    }
}