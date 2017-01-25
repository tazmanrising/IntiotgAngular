// Page Description: This page is used for checking the credentials suuplied by the user in order to sign in.

// Namespaces
using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using MySql.Data.MySqlClient;

namespace abundalife1001.Questionnaire
{
    public partial class SignIn : System.Web.UI.Page
    {
        // First function to be called - Page Load.
        protected void Page_Load(object sender, EventArgs e)
        {
            // Checking Cookies is enabled on User's browser
            if (CQ.IsCookieEnabled() == false)
            {
                LtrMessage.Text = CQ.Message("Please enable cookies option of your browser in order to proceed!", 'e');
                return;
            }
            
            LtrMessage.Text = string.Empty; // For reinitialize with empty string

            // finding control which is on master page
            HtmlGenericControl DivHeaderControls = (HtmlGenericControl)Page.Master.FindControl("DivHeaderControls");
            DivHeaderControls.Visible = false;

            if (Page.IsPostBack == false)
                TxtEmail.Focus(); // Focusing on first control of the page
        }

        // Checking the credentials suuplied by the user in order to sign in.
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            // Database Connectivity Objects
            MySql.Data.MySqlClient.MySqlConnection sqlConnection = new MySqlConnection(CQ.ConnectionString);
            MySql.Data.MySqlClient.MySqlCommand sqlCommand = new MySql.Data.MySqlClient.MySqlCommand();
            MySql.Data.MySqlClient.MySqlDataReader sqlDR;

            // SQL Query
            string sql = "SELECT UserId, FirstName, LastName FROM tbl_users_questionnaire WHERE " +
            "lower(Email) = '" + TxtEmail.Text.Trim().ToLower() + "' and lower(Password) = '"  + TxtPassword.Text.Trim().ToLower() + "';";

            // SQLCommand Object Initialization
            sqlCommand.CommandText = sql;
            sqlCommand.Connection = sqlConnection;

            // Opening Connection
            sqlConnection.Open();

            // Executing SQL Query
            sqlDR = sqlCommand.ExecuteReader();

            // if has rows
            if (sqlDR.HasRows == true)
            {
                sqlDR.Read(); // reading first row

                // Assigning values (related with logged in user) to Constants
                HttpCookie ablCookie = new HttpCookie("ablCookie"); // creating cookie

                ablCookie.Values["USERID"] = sqlDR.GetString("UserId").ToString();
                ablCookie.Values["NAME"] = sqlDR.GetString("FirstName").ToString() + " " + sqlDR.GetString("LastName").ToString();

                ablCookie.Expires = DateTime.Now.AddDays(7); // persisting cookie for 7 days
                Response.Cookies.Add(ablCookie); // adding cookie to end user's pc

                CQ.Redirect("Dashboard.aspx"); // Redirecting to Dashboard
            }
            else
            {
                // Displaying Message
                LtrMessage.Text = CQ.Message("Invalid Credentials!", 'e');
                TxtEmail.Text = string.Empty; // resetting
                TxtPassword.Text = string.Empty; // resetting
                TxtEmail.Focus(); // Focusing on first control of the page
            }

            sqlConnection.Close(); // Closing Connection
        }
    }
}