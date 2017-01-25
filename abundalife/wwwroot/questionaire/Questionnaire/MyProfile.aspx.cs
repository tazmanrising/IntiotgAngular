// Page Description: This page is used for changing the details of a logged in user.

// Namespaces
using System;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace abundalife1001.Questionnaire
{
    public partial class MyProfile : System.Web.UI.Page
    {
        // Database Connectivity Objects (Class Level)
        MySql.Data.MySqlClient.MySqlConnection sqlConnection = new MySqlConnection(CQ.ConnectionString);
        MySql.Data.MySqlClient.MySqlCommand sqlCommand = new MySql.Data.MySqlClient.MySqlCommand();
        MySql.Data.MySqlClient.MySqlDataReader sqlDR;

        // First function to be called - Page Load.
        protected void Page_Load(object sender, EventArgs e)
        {
            LtrMessage.Text = string.Empty; // For reinitialize with empty string

            // if User related constants are not available, then redirecting to signin.aspx page
            if (string.IsNullOrEmpty(Convert.ToString(Request.Cookies["ablCookie"])))
                CQ.Redirect("SignIn.aspx");
            
            if (Page.IsPostBack == false) // Getting details of the logged in user
            {
                // SQL Query
                string sql = "SELECT * FROM tbl_users_questionnaire WHERE UserId = " 
                    + Convert.ToString(Request.Cookies["ablCookie"]["USERID"]) + ";";

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

                    // Assigning avlues to controls
                    TxtFname.Text = Convert.ToString(sqlDR.GetString("FirstName"));
                    TxtLname.Text = Convert.ToString(sqlDR.GetString("LastName"));
                    
                    TxtEmail.Text = Convert.ToString(sqlDR.GetString("Email"));
                    TxtEmail.ReadOnly = true;
                    
                    TxtContactPhone1.Text = Convert.ToString(sqlDR.GetString("Mobile"));
                    TxtContactPhone2.Text = Convert.ToString(sqlDR.GetString("Landline"));
                    TxtAddress.Text = Convert.ToString(sqlDR.GetString("Address"));
                    TxtCity.Text = Convert.ToString(sqlDR.GetString("City"));
                    TxtState.Text = Convert.ToString(sqlDR.GetString("State"));
                    TxtPostalCode.Text = Convert.ToString(sqlDR.GetString("PostalCode"));
                }
                else
                {
                    // Displaying Message
                    LtrMessage.Text = CQ.Message("Details not found!", 'e');
                    Response.AddHeader("REFRESH", "2;URL=SignIn.aspx"); // Redirecting after 2 seconds
                }

                sqlConnection.Close(); // Closing Connection
            }
        }

        // Saving details of the logged in user
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            // Opening Connection
            sqlConnection.Open();

            // SQL Query
            sqlCommand = new MySqlCommand("UPDATE tbl_users_questionnaire SET" + 
                        " FirstName = \'" + TxtFname.Text.Trim() + "\'," + 
                        " LastName = \'" + TxtLname.Text.Trim() + "\'," + 
                        " Mobile = \'" + TxtContactPhone1.Text.Trim() + "\'," + 
                        " Landline = \'" + TxtContactPhone2.Text.Trim() + "\'," + 
                        " Address = \'" + TxtAddress.Text.Trim() + "\'," + 
                        " City = \'" + TxtCity.Text.Trim() + "\'," + 
                        " State = \'" + TxtState.Text.Trim() + "\'," + 
                        " PostalCode = \'" + TxtPostalCode.Text.Trim() + "\'" +
                        " WHERE UserId = "
                        + Convert.ToString(Request.Cookies["ablCookie"]["USERID"]), sqlConnection);

            // Executing SQL Query
            sqlCommand.ExecuteNonQuery();

            // Displaying Message
            LtrMessage.Text = CQ.Message("Your Profile updated successfully.", 's');

            sqlConnection.Close(); // Closing Connection
        }
    }
}