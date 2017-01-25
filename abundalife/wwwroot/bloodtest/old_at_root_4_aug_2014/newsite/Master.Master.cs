using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace abundalife1001
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Request.Url.ToString().ToLower().Contains("login.aspx") || Page.Request.Url.ToString().ToLower().Contains("insertprofile.aspx"))
            {
                divProgram.Visible = false;
                divHeader.Visible = true;
            }
            else if (Page.Request.Url.ToString().ToLower().Contains("create_patient.aspx") || Page.Request.Url.ToString().ToLower().Contains("viewpatients.aspx"))
            {
                divHeader.Visible = false;
                divProgram.Visible = true;
            }
            else
            {
                divProgram.Visible = true;
            }
            /*
             if (Page.Request.Url.ToString().ToLower().Contains("login.aspx"))
             {
                 divLogoFirst.Visible=false;
                 divLogoSecoond.Visible=true;
             }
             else
             {
                 divLogoFirst.Visible = true;
                 divLogoSecoond.Visible = false;
             }
            */
        }
    }
}
