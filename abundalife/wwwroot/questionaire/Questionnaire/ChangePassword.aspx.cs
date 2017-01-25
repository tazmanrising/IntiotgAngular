// Page Description: This page is used for changing password.

// Namespaces
using System;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace abundalife1001.Questionnaire
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        // First function to be called - Page Load.
        protected void Page_Load(object sender, EventArgs e)
        {
            LtrMessage.Text = string.Empty; // For reinitialize with empty string

            // if User related constants are not available, then redirecting to signin.aspx page
            if (string.IsNullOrEmpty(Convert.ToString(Request.Cookies["ablCookie"])))
                CQ.Redirect("SignIn.aspx");
            
            if (Page.IsPostBack == false)
                TxtOldPassword.Focus(); // Focusing on first control of the page
        }

        // Changing Password of any user
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            // if old and new passwords are same, then validation message functionality
            if (TxtOldPassword.Text.Trim().ToLower() == TxtNewPassword.Text.Trim().ToLower()) 
            {
                LtrMessage.Text = CQ.Message("Old and new password must not be same.", 'e');
                TxtNewPassword.Text = string.Empty;
                TxtConfirmPassword.Text = string.Empty;
            }
            else
            {
                // Database Connectivity Objects
                MySql.Data.MySqlClient.MySqlConnection sqlConnection = new MySqlConnection(CQ.ConnectionString);
                MySql.Data.MySqlClient.MySqlCommand sqlCommand = new MySql.Data.MySqlClient.MySqlCommand();
                
                // Opening Connection
                sqlConnection.Open();

                string sql = "UPDATE tbl_users_questionnaire SET Password = \'" +
                     TxtNewPassword.Text.Trim() + "\' WHERE UserId = " + Convert.ToString(Request.Cookies["ablCookie"]["USERID"]);

                // SQL Query
                sqlCommand = new MySqlCommand(sql, sqlConnection);

                // Executing SQL Query
                sqlCommand.ExecuteNonQuery();

                // Displaying Message
                LtrMessage.Text = CQ.Message("Your Password has been changed successfully. Now, You have to sign in again...", 's');
                CQ.LogOut(); // Logging out
                Response.AddHeader("REFRESH", "2;URL=SignIn.aspx"); // Redirecting after 2 seconds
                
                sqlConnection.Close(); // Closing Connection
            }
        }
    }
}