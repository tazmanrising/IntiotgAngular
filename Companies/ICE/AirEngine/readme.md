Ovs.Hotel.Ui
------------

* [Overview](#p0)
* [Working Environment](#p1)
* [NuGet Package Manager Sources](#p2)
* [How-to build](#p3)
* [Before first run](#p4)
* [How-to run locally in debug mode](#p5)
* [How-to start debugging](#p6)
* [How-to clean repository](#p7)
* [Asure environments](#p8)
* [Hotel back-end](#p9)

### Overview: <a name="p0"></a>

Ovs.Hotel.Ui Git repository contains [AngularJS] based Single Page Application ([SPA]) Hotels front-end as well as
[REST API] layer used by [AngularJS] to communicate with Hotels back-end. OVS Hotels is running on [Azure Cloud],
so in order to build and run it one needs Azure C# development environment.  

### Working Environment: <a name="p1"></a>

 - [Visul Studio 2015] Professional or Enterprise (make sure you install DB tools).
 - Latest [Azure SDK] for Visual Studio 2015.
 - Latest [Azure Powershell].
 - Latest [Git for Windows] (make sure you add 'Git Bash here' Windows shell extensions).
 - Access to [\\\\us-hq-ng-dev01\\DevNugetRepository] shared folder.
 - Access to [\\\\us-hq-ng-dev01\\NextGenShare] shared folder.

### NuGet Package Manager Sources: <a name="p2"></a>

 - **nuget.org** https://api.nuget.org/v3/index.json
 - **ovs** [\\\\us-hq-ng-dev01\\DevNugetRepository]
 - **ovs.3rg** [\\\\us-hq-ng-dev01\\DevNugetRepository\\3rd-party]
 - **ovs.core** [\\\\us-hq-ng-dev01\\DevNugetRepository\\Ovs.Core]
 - **ovs.hotel** [\\\\us-hq-ng-dev01\\DevNugetRepository\\Ovs.Hotel]

### How-to build: <a name="p3"></a>

 - Git clone the branch you want to build (master is always buildable).
 - Open [Ovs.Hotel.Ui.sln] solution in Visual Studio.
 - Rebuild solution.

### Before first run: <a name="p4"></a>

Execute [get-app-data.sh] Bash script from Git Bash CLI. It will populate 'Ovs.Hotel.Ui\App_Data' with content merge DB.

```sh
$ ./get-app-data.sh
```
 
### How-to run locally in debug mode: <a name="p5"></a>

 - In Visual Studio open 'Ovs.Hotel.UI' project properties.
 - In the 'Web' tab set 'Start Action' to run at 'Specific Page'.
 - Enter query string: **linkto?partnerId=101&nameid=17533288**.
 - Run the project in Debug mode using F5.
 - You should get it running on http://localhost:50552 in 20-40 seconds.

### How-to start debugging: <a name="p6"></a>

 - In Visual Studio open [Ovs.Hotel.Ui\\WebApi\\Controllers\\HotelsController.cs].
 - Set a breakpoint in the body of **api/v1/hotelavailability** request handler. 
 - Run search for available hotels in the browser.

### How-to clean repository: <a name="p7"></a>

To remove build artifacts, use [clean.sh] from Git Bash CLI:
 
```sh
$ ./clean.sh
```

### Asure environments: <a name="p8"></a>

Development (DEV):
 
 * Non Production
 * land-devui-webapp-westus.azurewebsites.net
 * https://land-devui-webapp-westus.azurewebsites.net/linkto?partnerId=101&nameid=17533288

Testing (QA):
 
 * Non Production
 * land-qaui-webapp-westus.azurewebsites.net
 * https://land-qaui-webapp-westus.azurewebsites.net/linkto?partnerid=101&nameid=17533288
 
Staging:
 
 * Production
 * land-ui-webapp-centralus-staging.azurewebsites.net
 * https://land-ui-webapp-centralus-staging.azurewebsites.net/linkto?partnerid=101&nameid=18000776

Production:
 
 * Production
 * land-ui-webapp-centralus.azurewebsites.net
 * https://land-ui-webapp-centralus.azurewebsites.net/linkto?partnerid=101&nameid=18000776

### Hotel back-end: <a name="p9"></a>

Hotels back-end is a high performance REST API based Azure service encapsulating various suppliers
and business rules making front-end suppliers and business rules agnostic.
Hotels back-end source code located in [NextGen.Hotels] repository. 



[Azure Cloud]: <https://azure.microsoft.com/en-us/>
[AngularJS]: <https://angularjs.org>
[SPA]: <https://en.wikipedia.org/wiki/Single-page_application>
[REST API]: <https://en.wikipedia.org/wiki/Representational_state_transfer>
[Visul Studio 2015]: <https://msdn.microsoft.com/en-us/subscriptions/downloads/>
[Azure SDK]: <https://azure.microsoft.com/en-us/downloads/archive-net-downloads/>
[Azure Powershell]: <https://github.com/Azure/azure-powershell/releases>
[Git for Windows]: <https://git-for-windows.github.io/>

[\\\\us-hq-ng-dev01\\NextGenShare]: <file://///us-hq-ng-dev01/NextGenShare>
[\\\\us-hq-ng-dev01\\DevNugetRepository]: <file://///us-hq-ng-dev01\DevNugetRepository>
[\\\\us-hq-ng-dev01\\DevNugetRepository\\3rd-party]: <file://///us-hq-ng-dev01\DevNugetRepository/3rd-party>
[\\\\us-hq-ng-dev01\\DevNugetRepository\\Ovs.Core]: <file://///us-hq-ng-dev01\DevNugetRepository/Ovs.Core>
[\\\\us-hq-ng-dev01\\DevNugetRepository\\Ovs.Hotel]: <file://///us-hq-ng-dev01\DevNugetRepository/Ovs.Hotel>

[Ovs.Hotel.Ui.sln]: <Ovs.Hotel.Ui.sln>
[get-app-data.sh]: <get-app-data.sh>
[clean.sh]: <clean.sh>
[Ovs.Hotel.Ui\\WebApi\\Controllers\\HotelsController.cs]: <Ovs.Hotel.Ui/WebApi/Controllers/HotelsController.cs>

[NextGen.Hotels]: <http://us-hq-ng-tool01.iceenterprise.com:7990/projects/NHS/repos/nextgen.hotels/browse>
  