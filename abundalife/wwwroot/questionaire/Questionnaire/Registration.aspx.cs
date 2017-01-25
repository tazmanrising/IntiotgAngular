// Page Description: This page is used for registering a new user.

// Namespaces
using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using MySql.Data.MySqlClient;

namespace abundalife1001.Questionnaire
{
    public partial class Registration : System.Web.UI.Page
    {
        // First function to be called - Page Load.
        protected void Page_Load(object sender, EventArgs e)
        {
            LtrMessage.Text = string.Empty; // For reinitialize with empty string

            // finding control which is on master page
            HtmlGenericControl DivHeaderControls = (HtmlGenericControl)Page.Master.FindControl("DivHeaderControls");
            DivHeaderControls.Visible = false;

            if (Page.IsPostBack == false)
                TxtFname.Focus(); // Focusing on first control of the page
        }

        // Saving and Registering a new user
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            // Database Connectivity Objects
            MySql.Data.MySqlClient.MySqlConnection sqlConnection = new MySqlConnection(CQ.ConnectionString);
            MySql.Data.MySqlClient.MySqlCommand sqlCommand = new MySql.Data.MySqlClient.MySqlCommand();
            MySql.Data.MySqlClient.MySqlDataReader sqlDR;

            // SQL Query
            string sql = "SELECT UserId FROM tbl_users_questionnaire WHERE " + "lower(Email) = '" + TxtEmail.Text.Trim().ToLower() + "';";

            // SQLCommand Object Initialization
            sqlCommand.CommandText = sql;
            sqlCommand.Connection = sqlConnection;

            // Opening Connection
            sqlConnection.Open();
            sqlDR = sqlCommand.ExecuteReader();

            // if has rows, means duplicacy in email
            if (sqlDR.HasRows == true)
            {
                // Displaying Message
                LtrMessage.Text = CQ.Message("Email specified is already exists in our system! Please choose a different one.", 'e');
                TxtEmail.Text = string.Empty; // ressetting
                TxtEmail.Focus(); // Focusing on first control of the page
            }
            else
            {
                sqlDR.Close(); // closing DataReader object
                sqlCommand = null; // setting to null

                // SQL Query
                sqlCommand = new MySqlCommand("INSERT INTO tbl_users_questionnaire(Email, Password, FirstName, LastName, Mobile, Landline, Address, City, State, PostalCode, Status, CreatedOn, ModifiedOn) " +
                    "VALUES(\'" + TxtEmail.Text.Trim() + "\', \'" + TxtPassword.Text.Trim() + "\', \'" + TxtFname.Text.Trim() + "\', \'"
                    + TxtLname.Text.Trim() + "\', \'\', \'\', \'\', \'\', \'\', \'\', " +
                    "1, \'" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "\', \'" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "\')", 
                    sqlConnection);

                // Executing SQL Query
                sqlCommand.ExecuteNonQuery();

                // Displaying Message
                LtrMessage.Text = CQ.Message("Thanks for registering with " + CQ.ProjectName 
                    + ". Please Sign In Now to Proceed...&nbsp;<img src='images/Loading-small.gif' alt='' />", 's');
                Response.AddHeader("REFRESH", "2;URL=SignIn.aspx"); // Redirecting after 2 seconds

                // Sending Mail to Administrator
                CQ.SendMail(CQ.ReceiverEmail, CQ.ProjectName + " - New Registration",
                    CQ.PrepareRegistrationMail(TxtFname.Text.Trim() + " " + TxtLname.Text.Trim(), TxtEmail.Text.Trim()));

                // Sending Mail to User
                CQ.SendMail(TxtEmail.Text.Trim(), CQ.ProjectName + " - Registration",
                    CQ.PrepareRegistrationMailForUser(TxtEmail.Text.Trim(), TxtPassword.Text.Trim()));
            }

            sqlConnection.Close(); // Closing Connection
        }
    }
}