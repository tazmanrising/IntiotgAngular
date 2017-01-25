// Page Description: This page is used to get the forgotten password of any user via email.

// Namespaces
using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using MySql.Data.MySqlClient;

namespace abundalife1001.Questionnaire
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        // First function to be called - Page Load.
        protected void Page_Load(object sender, EventArgs e)
        {
            LtrMessage.Text = string.Empty; // For reinitialize with empty string

            // finding control which is on master page
            HtmlGenericControl DivHeaderControls = (HtmlGenericControl)Page.Master.FindControl("DivHeaderControls");
            DivHeaderControls.Visible = false;

            if (Page.IsPostBack == false)
                TxtEmail.Focus(); // Focusing on first control of the page
        }

        // Getting Forgotten Password of any user
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            // Database Connectivity Objects
            MySql.Data.MySqlClient.MySqlConnection sqlConnection = new MySqlConnection(CQ.ConnectionString);
            MySql.Data.MySqlClient.MySqlCommand sqlCommand = new MySql.Data.MySqlClient.MySqlCommand();
            MySql.Data.MySqlClient.MySqlDataReader sqlDR;

            // SQL Query
            string sql = "SELECT Password FROM tbl_users_questionnaire WHERE " + "lower(Email) = '" + TxtEmail.Text.Trim().ToLower() 
                            + "';";

            // SQLCommand Object Initialization
            sqlCommand.CommandText = sql;
            sqlCommand.Connection = sqlConnection;

            // Opening Connection
            sqlConnection.Open();
            sqlDR = sqlCommand.ExecuteReader();

            // if has rows
            if (sqlDR.HasRows == true)
            {
                sqlDR.Read(); // reading first row

                // Sending Mail
                CQ.SendMail(TxtEmail.Text.Trim(), CQ.ProjectName + " - Forgot Password",
                    CQ.PrepareForgotPasswordMail(sqlDR.GetString("Password").ToString()));

                // Displaying Message
                LtrMessage.Text = CQ.Message("Your Password has been mailed to the specified email address.", 's');
                TxtEmail.Text = string.Empty; // resetting
                TxtEmail.Focus(); // Focusing on first control of the page
            }
            else
            {
                // Displaying Message
                LtrMessage.Text = CQ.Message("The Email whch you have specified is not registered with "
                    + CQ.ProjectName + ". Please Sign Up Now to Proceed...", 'e');
                Response.AddHeader("REFRESH", "2;URL=Registration.aspx"); // Redirecting after 2 seconds
            }

            sqlConnection.Close(); // Closing Connection
        }
    }
}