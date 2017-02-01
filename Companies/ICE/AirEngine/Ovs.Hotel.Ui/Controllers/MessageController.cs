using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Ovs.Hotel.Ui.Controllers
{
    public class MessageController : Controller
    {
        // GET: Message
        public ActionResult UserCredentialsNotValid()
        {
            return View();
        }

        public ActionResult AgentCredentialsNotValid()
        {
            return View();
        }

        public ActionResult UserNotLoggedIn()
        {
            return View();
        }
        public ActionResult DisplayOptionsNotFound()
        {
            return View();
        }
        public ActionResult BrowserNotSupported()
        {
            return View();
        }
        public ActionResult LegacyError()
        {
            return View();
        }

    }
}
