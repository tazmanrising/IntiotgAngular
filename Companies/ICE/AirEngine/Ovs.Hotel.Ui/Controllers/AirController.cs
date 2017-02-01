
namespace Ovs.Hotel.Ui.Controllers
{
    using System.Collections.Generic;
    using System.Configuration;
    using System.Web.Mvc;

    using Newtonsoft.Json;

    using Ovs.Core.Logging.Interfaces;
    using Ovs.Core.WebVisitor.Implementations;

    public class AirController : Controller
    {
        // GET: Air
        public ActionResult Index()
        {
            IOvsLogger ovsLogger = DependencyContainer.IocContainer.GetInstance<IOvsLogger>();

            if (this.Session["WebVisitor"] == null)
            {
                return new RedirectResult("/Message/UserNotLoggedIn", false);
            }

            WebSession webSession = (WebSession)this.Session["WebVisitor"];
            string s = JsonConvert.SerializeObject(webSession);
            this.ViewData["stylesheet1"] = webSession.DisplayOptions.Stylesheet1;
            this.ViewData["logo1"] = webSession.DisplayOptions.Logos[0].LogoImageUrl;
            this.ViewData["agentMode"] = webSession.Identity.AgentMode;
            this.ViewData["currentSession"] = JsonConvert.SerializeObject(webSession);
            this.ViewData["title"] = webSession.DisplayOptions.ProgramLongName;

            Dictionary<string, string> appSettingsDic = new Dictionary<string, string>();
            foreach (string key in ConfigurationManager.AppSettings.Keys)
            {
                appSettingsDic[key] = ConfigurationManager.AppSettings[key];
            }
            this.ViewData["appSettings"] = JsonConvert.SerializeObject(appSettingsDic);

            return this.View("/apps/travel/air/airhome.cshtml");
        }

        public ActionResult TestAPI()
        {
            return View();
        }

        public ActionResult BookingTest()
        {
            return View();
        }
    }
}