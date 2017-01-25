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
    public partial class Login : System.Web.UI.Page
    {

        protected void ProcessLogin(object sender, EventArgs e)
        {

            if (FormsAuthentication.Authenticate(txtUser.Text, txtPassword.Text))
            {
                
                //FormsAuthentication.RedirectFromLoginPage(txtUser.Text, chkPersistLogin.Checked);
                FormsAuthentication.RedirectFromLoginPage(txtUser.Text,true);
            }
            else
            {
                ErrorMessage.InnerHtml = "<b>Something went wrong...</b> Please re-enter your credentials...";
            }
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
