using System.Collections.Generic;
using System.Diagnostics;
using Ovs.Core.Configuration.Implementations;
using Ovs.Core.Configuration.Interfaces;
using Ovs.Core.DocumentRepository.Implementations;
using Ovs.Core.DocumentRepository.Interfaces;
using Ovs.Core.Logging.Implementations;
using Ovs.Core.Logging.Interfaces;
using Ovs.Core.Utility.LocalConfig;
using SimpleInjector;

namespace Ovs.Air.Ui.Services
{
    public static class Utilities
    {
        internal static Container IocContainer { get; set; } = new Container();

        private static Dictionary<string, IDocumentRepository> _repositories = new Dictionary<string, IDocumentRepository>();

        static Utilities()
        {
            IocContainer.Register<IOvsLocalConfigurationSettings, OvsLocalConfigurationSettings>(Lifestyle.Singleton);
            IocContainer.Register<IOvsConfigSettings, OvsConfigSettingsKeyVault>(Lifestyle.Singleton);
            IocContainer.Register<IOvsLogger, OvsLoggerSerilog>(Lifestyle.Singleton);
        }

        public static void Validate()
        {
            IocContainer.Verify();
        }

        internal static IDocumentRepository ObtainRepository(string repoName)
        {
            IDocumentRepository repo = null;

            var ovsLogger = IocContainer.GetInstance<IOvsLogger>();

            lock (_repositories)
            {
                if (_repositories.ContainsKey(repoName))
                {
                    repo = _repositories[repoName];
                }
                else
                {
                    IOvsLocalConfigurationSettings localSettings = Utilities.IocContainer.GetInstance<IOvsLocalConfigurationSettings>();
                    IOvsConfigSettings remoteSettings = Utilities.IocContainer.GetInstance<IOvsConfigSettings>();

                    ovsLogger.Log(SeverityLevel.Debug, "Creating new DocumentRepositoryDocDb instance for [" + repoName + "] settings ...");
                    repo = new DocumentRepositoryDocDb(remoteSettings);

                    ovsLogger.Log(SeverityLevel.Debug, "Configuring DocumentRepositoryDocDb instance for [" + repoName + "] settings ...");
                    repo.SetRepository(repoName);

                    _repositories[repoName] = repo;
                }
            }

            Debug.Assert(repo != null);

            ovsLogger.Log(SeverityLevel.Debug, "Returning DocumentRepositoryDocDb instance for [" + repoName + "] settings ...");

            return repo;
        }
    }
}
