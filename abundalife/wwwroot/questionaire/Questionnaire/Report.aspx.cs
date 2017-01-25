// Page Description: This page is used for seeing the Questionnaire report.

// Namespaces
using System;
using System.Data;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace abundalife1001.Questionnaire
{
    public partial class Report : System.Web.UI.Page
    {
        // First function to be called - Page Load.
        protected void Page_Load(object sender, EventArgs e)
        {
            // if User related constants are not available, then redirecting to signin.aspx page
            if (string.IsNullOrEmpty(Convert.ToString(Request.Cookies["ablCookie"])))
                CQ.Redirect("SignIn.aspx");

            if (Page.IsPostBack == false && !string.IsNullOrEmpty(Convert.ToString(Request.QueryString["q"])))
            {
                // Gets the Questionnaire report by QuestionnaireId
                HdnQuestionnaireId.Value = Convert.ToString(Request.QueryString["q"]);
                GetReport(HdnQuestionnaireId.Value); 
            }
        }

        // This will show the Questionnaire report by QuestionnaireId
        private void GetReport(string pQuestionnaireId)
        {
            // Database Connectivity Objects
            MySql.Data.MySqlClient.MySqlConnection sqlConnection = new MySqlConnection(CQ.ConnectionString);
            MySql.Data.MySqlClient.MySqlCommand sqlCommand = new MySql.Data.MySqlClient.MySqlCommand();
            MySql.Data.MySqlClient.MySqlDataReader sqlDR;

            // SQL Query
            string sql = "SELECT Report, Status, CanPatientView FROM tbl_history_questionnaire WHERE QuestionnaireId = " + pQuestionnaireId + ";";

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

                // For Administrator
                if (!string.IsNullOrEmpty(Convert.ToString(Request.QueryString["u"])) && 
                    Convert.ToString(Request.QueryString["u"]) == "admin" &&
                    Convert.ToString(Request.Cookies["ablCookie"]["USERID"]) == CQ.AdministratorId)
                    DivResult.InnerHtml = Convert.ToString(sqlDR.GetString("Report")).Replace("none ", string.Empty);
                else // For Others
                {
                    if (Convert.ToString(sqlDR.GetString("Report")).Trim() == string.Empty)
                    {
                        DivResult.InnerHtml = CQ.Message("Report is not submitted yet!", 'e');
                        Response.AddHeader("REFRESH", "2;URL=Dashboard.aspx"); // Redirecting after 2 seconds
                    }
                    else if (Convert.ToString(sqlDR.GetString("Status")).Trim() == "0")
                    {
                        DivResult.InnerHtml = CQ.Message("Report is not being analyzed yet!", 'e');
                        Response.AddHeader("REFRESH", "2;URL=Dashboard.aspx"); // Redirecting after 2 seconds
                    }
                    else if (Convert.ToString(sqlDR.GetString("CanPatientView")).Trim() == "0")
                    {
                        DivResult.InnerHtml = CQ.Message("Report is restricted for viewing by the administrator! Please contact the administrator.", 'e');
                        Response.AddHeader("REFRESH", "2;URL=Dashboard.aspx"); // Redirecting after 2 seconds
                    }
                    else
                        DivResult.InnerHtml = Convert.ToString(sqlDR.GetString("Report")).Replace("none ", string.Empty);
                }
            }
            else // Displaying Message
            {
                DivResult.InnerHtml = CQ.Message("Report not found!", 'e');
                Response.AddHeader("REFRESH", "2;URL=Dashboard.aspx"); // Redirecting after 2 seconds
            }
            
            sqlConnection.Close(); // Closing Connection
        }

        // This function is used to send the object name to the function "ExportToWord"
        protected void ImgBtnWordBill_Click(object sender, ImageClickEventArgs e)
        {
            CQ.ExportToWord(DivResult, CQ.ProjectName + " - Report Number " + HdnQuestionnaireId.Value);
        }
    }
}