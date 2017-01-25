using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


namespace abundalife1001
{
    public partial class Site : System.Web.UI.MasterPage
    {

        protected void SignOut(object sender, EventArgs e)
        {
            //delete the users auth cookie and sign out
            FormsAuthentication.SignOut();
            //redirect the user to their referring page
            Response.Redirect(Request.UrlReferrer.ToString());
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("Hello, " + Server.HtmlEncode(User.Identity.Name));

            FormsIdentity id = (FormsIdentity)HttpContext.Current.User.Identity;//(FormsIdentity)User.Identity;
            FormsAuthenticationTicket ticket = id.Ticket;

            /*Response.Write("<p/>TicketName: " + ticket.Name);
            Response.Write("<br/>Cookie Path: " + ticket.CookiePath);
            Response.Write("<br/>Ticket Expiration: " +
                            ticket.Expiration.ToString());
            Response.Write("<br/>Expired: " + ticket.Expired.ToString());
            Response.Write("<br/>Persistent: " + ticket.IsPersistent.ToString());
            Response.Write("<br/>IssueDate: " + ticket.IssueDate.ToString());
            Response.Write("<br/>UserData: " + ticket.UserData);
            Response.Write("<br/>Version: " + ticket.Version.ToString());

            */




            //verify authentication
            if (id.IsAuthenticated)
            {
                //display Credential information
                //displayCredentials.InnerHtml = "test";//"Welcome " + id.Name;
                //"<br><br>Authentication Used : <b>" + User.Identity.AuthenticationType + "</b>";
            }
            else
            {

                //Display Error Message
                //displayCredentials.InnerHtml = "Sorry, you have not been authenticated.";
            }


            //string con = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

        }

        
    }
}
