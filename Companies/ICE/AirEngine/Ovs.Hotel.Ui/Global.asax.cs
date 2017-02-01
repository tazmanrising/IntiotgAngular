using System;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.SessionState;
using Ovs.Air.Ui.Services;
using Ovs.Core.CacheManager.Implementations;
using Ovs.Core.CacheManager.Interfaces;
using Ovs.Core.Configuration.Implementations;
using Ovs.Core.Configuration.Interfaces;
using Ovs.Core.DocumentRepository.Implementations;
using Ovs.Core.DocumentRepository.Interfaces;
using Ovs.Core.EventLogging.Implementations;
using Ovs.Core.EventLogging.Interfaces;
using Ovs.Core.LegacyContentRepository.Implementations;
using Ovs.Core.LegacyContentRepository.Interfaces;
using Ovs.Core.LegacyMembershipRepository.Implementations;
using Ovs.Core.LegacyMembershipRepository.Interfaces;
using Ovs.Core.Logging.Implementations;
using Ovs.Core.Logging.Interfaces;
using Ovs.Core.UserRepository.Implementations;
using Ovs.Core.UserRepository.Interfaces;
using Ovs.Core.Utility.LocalConfig;
using Ovs.Core.WebVisitor.Implementations;
using Ovs.Core.WebVisitor.Interfaces;
using SimpleInjector;

namespace Ovs.Hotel.Ui
{
    /// <summary>
    ///     Entry point for the application.
    /// </summary>
    public class MvcApplication : HttpApplication
    {
        public MvcApplication()
        {
            IocContainer = new Container();
        }

        public string ApiKey { get; set; }

        public Container IocContainer { get; }

        protected void Application_Start()
        {
            //// Initialize IOC Container
            IocContainer.Register<IOvsConfigSettings, OvsConfigSettingsKeyVault>(Lifestyle.Singleton);
            IocContainer.Register<IOvsLocalConfigurationSettings, OvsLocalConfigurationSettings>(Lifestyle.Singleton);
            IocContainer.Register<IOvsLogger, OvsLoggerSerilog>(Lifestyle.Singleton);
            IocContainer.Register<IDocumentRepository, DocumentRepositoryDocDb>(Lifestyle.Transient);
            IocContainer.Register<IGetLegacyMemberInfo, GetLegacyMemberInfoSoapApi>(Lifestyle.Transient);
            IocContainer.Register<IGetLegacyContentInfo, GetLegacyContentInfoSoapApi>(Lifestyle.Transient);
            IocContainer.Register<IOvsUserInfoStorage, OvsUserInfoStorageDocumentDb>(Lifestyle.Transient);
            IocContainer.Register<IOvsWebVisitor, OvsWebVisitor>(Lifestyle.Transient);
            IocContainer.Register<IOvsCache, OvsCacheRedis>(Lifestyle.Transient);
            IocContainer.Register<IOvsEventLog, OvsEventLogAzureServiceBus>(Lifestyle.Singleton);

            IocContainer.Verify();

            DependencyContainer.IocContainer = IocContainer;

            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            var configSettings = IocContainer.GetInstance<IOvsConfigSettings>();
            configSettings.GetDailyApiKey();

            Utilities.Validate();
        }

        protected void Application_PostAuthorizeRequest()
        {
            if (HttpContext.Current.Request.AppRelativeCurrentExecutionFilePath != null && HttpContext.Current.Request.AppRelativeCurrentExecutionFilePath.StartsWith("~/api"))
            {
                HttpContext.Current.SetSessionStateBehavior(SessionStateBehavior.Required);
            }
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            try
            {
                var ex = Server.GetLastError();
                var ovsLogger = DependencyContainer.IocContainer.GetInstance<IOvsLogger>();
                ovsLogger.LogException(ex, SeverityLevel.Fatal, "Application_Error");
            }
            catch
            {
                // logging the error failed -- nothing we can do
            }
        }
    }
}
