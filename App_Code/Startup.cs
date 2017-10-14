using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(StockTrading.Startup))]
namespace StockTrading
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
