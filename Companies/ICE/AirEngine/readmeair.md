Ovs.Hotel.Ui - Air Modifications
------------

* [Overview](#p0)
* [Database Changes](#p1)
* [MVC Controller Changes](#p2)

### Overview: <a name="p0"></a>

This repository covers the changes being made to support the development of the Nextgen Air engine as an extension of the hotel project. Refactoring here consists of 3 pieces:

- Modifications to existing modules to access the air pages as well as the hotel pages
- Addition of air specific modules, and supported API's.
- Refactoring of any module touched to be stylecop compatible.  (general cleanup)



### Database changes: <a name="p1"></a>

 - Initial changes to documentdb MemberClassDisplayOptions documents to add Air html partial entries. (Test Record changed - "c1:e1:domc:699") <pre><code>"air_header": "/apps/common/headers/default_header_dbc.html",
"air_footer": "/apps/common/footers/default_footer.html",
"air_footer_page": "/apps/common/footers/default_footer_page.html",
"air_menu": "/apps/common/menus/default_menu.html",
"air_body": "/apps/travel/air/home/airdefault_merchandising_dbc.html",</code></pre>




### MVC Controller Changes: <a name="p2"></a>

 - **HotelController.cs** Created to replace HomeController.cs
 - **HomeController.cs** Deleted, along with associated views
 - **AirController.cs** Created and redirected to by LinktoController when air is requested.
 - **Linkto.cs** - the following changes:
	 - Added an optional parameter (targeturi) that allows the caller to specify different pages.  Defaults to Hotel/Index, but passing Air/Index as that parameter will call up the air page.
	 - Use that parameter for a successful redirect (SSO passed)
	 - General refactoring
 - **RouteConfig.cs** Changed the default route to be "Linkto/Index" since the home controller was removed.

