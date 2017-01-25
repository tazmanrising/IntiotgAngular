// Page Description: This is the parent page of all other pages in the Questionnaire Section.

// Namespaces
using System;
using System.Web.UI;

namespace abundalife1001.Questionnaire
{
    public partial class Master : System.Web.UI.MasterPage
    {
        // First function to be called - Page Load.
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        // Logs out the user from the Questionnaire Section
        protected void LnkLogOut_Click(object sender, EventArgs e)
        {
            CQ.LogOut(); // Clearing constants values
            CQ.Redirect("SignIn.aspx"); // Redirecting
        }
    }
}