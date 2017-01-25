using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AbundaLife.Startup))]
namespace AbundaLife
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
