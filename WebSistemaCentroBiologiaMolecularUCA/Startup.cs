using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebSistemaCentroBiologiaMolecularUCA.Startup))]
namespace WebSistemaCentroBiologiaMolecularUCA
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            app.MapSignalR();
        }
    }
}
