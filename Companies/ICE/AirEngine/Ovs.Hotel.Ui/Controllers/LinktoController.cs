

namespace Ovs.Hotel.Ui.Controllers
{
    using System;
    using System.Web;
    using System.Web.Mvc;

    using Ovs.Core.Configuration.Interfaces;
    using Ovs.Core.Logging.Interfaces;
    using Ovs.Core.Models.System;
    using Ovs.Core.UserRepository.Interfaces;
    using Ovs.Core.Utility.LocalConfig;
    using Ovs.Core.WebVisitor.Interfaces;

    /// <summary>
    ///     MVC Controller serving as the primary entry point to the application
    /// </summary>
    public class LinktoController : Controller
    {
        /// <summary>  Injected Logging Object  </summary>
        private readonly IOvsLogger ovsLogger;

        /// <summary>   Injected Web Visitor Library from core provides SSO functions and loads various user and display options. </summary>
        private readonly IOvsWebVisitor webVisitor;

        /// <summary>   Core Library providing access to central settings stored in azure </summary>
        private readonly IOvsConfigSettings ovsConfigSettings;

        /// <summary>   The local configuration settings. </summary>
        private readonly IOvsLocalConfigurationSettings localConfigSettings;

        /// <summary>   The default URL to redirect to after SSO validation </summary>
        private string defaultRedirectUrl;

        /// <summary>
        ///     Initializes a new instance of the <see cref="LinktoController" /> class.
        ///     Default constructor.
        /// </summary>
        public LinktoController()
        {
            this.ovsLogger = DependencyContainer.IocContainer.GetInstance<IOvsLogger>();
            this.webVisitor = DependencyContainer.IocContainer.GetInstance<IOvsWebVisitor>();
            this.localConfigSettings = DependencyContainer.IocContainer.GetInstance<IOvsLocalConfigurationSettings>();
            this.ovsConfigSettings = DependencyContainer.IocContainer.GetInstance<IOvsConfigSettings>();
        }

        /// <summary>
        /// The index.
        /// </summary>
        /// <param name="partnerid">
        /// The Membermaint Partner Id for the brand
        /// </param>
        /// <param name="nameid">
        /// The unique name id for the user. (from membermaint)
        /// </param>
        /// <param name="memberid">
        /// The memberid for the user from membermaint
        /// </param>
        /// <param name="membertoken">
        /// The membertoken (should not be used)
        /// </param>
        /// <param name="bookingid">
        /// The bookingid (only needed if opening an existing booking
        /// </param>
        /// <param name="iceaction">
        /// The iceaction indicates if the page should execute a special tag like cancel.
        /// </param>
        /// <param name="targeturi">
        /// The targeturi to go to after SSO.  Defaults to the root hotel id.
        /// </param>
        /// <param name="agentid">
        /// The agentid - mMM agent Id of the current header.
        /// </param>
        /// <param name="returnUrl">
        /// The return url.
        /// </param>
        /// <returns>
        /// The <see cref="RedirectResult"/>.
        /// </returns>
        public RedirectResult Index(
            string partnerid,
            string nameid,
            string memberid,
            string membertoken,
            string bookingid,
            string iceaction,
            string targeturi = "Air/Index/",
            string agentid = null,
            string returnUrl = null)
        {


            if (string.IsNullOrEmpty(partnerid) || string.IsNullOrEmpty(nameid))
            {
                this.ovsLogger.Log(SeverityLevel.Error, "A partnerId and/or nameId was not supplied!");
                return new RedirectResult("Message/UserCredentialsNotValid", false);
            }

            try
            {
                this.webVisitor.LoadByUserId(partnerid, nameid);
            }
            catch (Exception e)
            {
                this.ovsLogger.LogException(e, SeverityLevel.Error, "In Linkto:  LoadByUserId Blowed Up");
                return new RedirectResult("Message/LegacyError", false);
            }

            if (this.webVisitor.Session.MemberInfo == null)
            {
                return new RedirectResult("Message/UserCredentialsNotValid", false);
            }

            if (this.webVisitor.Session.DisplayOptions == null)
            {
                return new RedirectResult("Message/DisplayOptionsNotFound", false);
            }

            this.defaultRedirectUrl = targeturi;
            try
            {
                this.webVisitor.Session.CurrentApiKey = this.ovsConfigSettings.GetDailyApiKey();
                if (agentid != null)
                {
                    // check browser for chrome in agent bmode
                    HttpBrowserCapabilitiesBase browser = this.Request.Browser;
                    if (browser.Browser != "Chrome")
                    {
                        return new RedirectResult("Message/BrowserNotSupported", false);
                    }

                    this.webVisitor.Session.Identity.AgentMode = true;
                    this.webVisitor.Session.Identity.IceAgentId = agentid;
                    IOvsUserInfoStorage agentRepo = DependencyContainer.IocContainer.GetInstance<IOvsUserInfoStorage>();
                    agentRepo.SetRepositoryName(this.localConfigSettings.GetAppSettingsForKey("NextgenCoreRepository"));
                    User agent = agentRepo.GetUserByIceId(agentid);
                    if (agent != null)
                    {
                        this.webVisitor.Session.Identity.IceAgentName = agent.FullName;
                        this.webVisitor.Session.Identity.NgAgentName = agent.FullName;
                        this.webVisitor.Session.Identity.NgAgentId = agent.IceArtifacts.IceId.ToString();
                    }
                    else
                    {
                        this.ovsLogger.Log(SeverityLevel.Warning, "Invalid Agent Identifier Passed");
                        return new RedirectResult("Message/AgentCredentialsNotValid", false);
                    }
                }

                this.Session["WebVisitor"] = this.webVisitor.Session;

                if (!string.IsNullOrEmpty(iceaction))
                {
                    //this.defaultRedirectUrl = this.defaultRedirectUrl + iceaction + "/" + this.webVisitor.Session.Identity.IceMemberId + "/" + bookingid;
                    this.defaultRedirectUrl = "Air/#/" + iceaction + "/" + this.webVisitor.Session.Identity.IceMemberId + "/" + bookingid;
                    
                    //http://localhost:9805/Air/#/receipt/adf/33

                    //DefaultReturnUrl = "Home/Index#/" + iceaction + "/" + wvSession.Identity.IceMemberId + "/" + bookingid;
                }

                return new RedirectResult(string.IsNullOrEmpty(returnUrl) ? this.defaultRedirectUrl : returnUrl, false);
            }
            catch (Exception e)
            {
                this.ovsLogger.LogException(e, SeverityLevel.Error, "In Linkto LoadUser Passed, something else croaked");
                throw;
            }
        }
    }
}