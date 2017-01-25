// Page Description: This page is the home page / dashboard of the logged in user.

// Namespaces
using System;

namespace abundalife1001.Questionnaire
{
    public partial class Dashboard : System.Web.UI.Page
    {
        // First function to be called - Page Load.
        protected void Page_Load(object sender, EventArgs e)
        {
            // if User related constants are not available, then redirecting to signin.aspx page
            if (string.IsNullOrEmpty(Convert.ToString(Request.Cookies["ablCookie"])))
                CQ.Redirect("SignIn.aspx");
            else
            {
                // Take a Questionnaire block is not useful for administrator
                if (Convert.ToString(Request.Cookies["ablCookie"]["USERID"]) == CQ.AdministratorId)
                {
                    DivQ.Visible = false;
                    DivE.Visible = false;
                    AnchrHistory.InnerHtml = "View / Approve Questionnaire Report(s)";
                    AnchrHistory.Title = "View / Approve Questionnaire Report(s)";
                }
                else
                {
                    DivQ.Visible = true;
                    DivE.Visible = true;
                    AnchrHistory.InnerHtml = "Your Questionnaire Reports";
                    AnchrHistory.Title = "See your earlier Questionnaire Results & Reports";
                }
            }
        }
    }
}