// Page Description: This page is used for seeing the Questionnaire reports of past dates of a logged in user.

// Namespaces
using System;
using System.Data;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace abundalife1001.Questionnaire
{
    public partial class History : System.Web.UI.Page
    {
        // Database Connectivity Objects
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
            
            if (Page.IsPostBack == false)
                BindList(); // fill the grid with - Questionnaire Reports
        }

        // This will list all the previous Questionnaire Reports of any user
        private void BindList()
        {
            // SQL Query
            string sql = "SELECT QuestionnaireId, ReportDateTime, tbl_history_questionnaire.Status, FirstName, LastName, Email, CanPatientView FROM " 
                + "tbl_history_questionnaire LEFT OUTER JOIN tbl_users_questionnaire ON tbl_history_questionnaire.UserId = " 
                + "tbl_users_questionnaire.UserId WHERE ";

            if (Convert.ToString(Request.Cookies["ablCookie"]["USERID"]) != CQ.AdministratorId)
                sql += "tbl_history_questionnaire.UserId = " + Convert.ToString(Request.Cookies["ablCookie"]["USERID"]) + " AND ";

            sql += "Report != '' ORDER BY tbl_history_questionnaire.QuestionnaireId desc;";

            // SQLCommand Object Initialization
            sqlCommand.CommandText = sql;
            sqlCommand.Connection = sqlConnection;

            // Opening Connection
            sqlConnection.Open();

            // Executing SQL Query
            sqlDR = sqlCommand.ExecuteReader();

            DataTable dTable = new DataTable(); // DataTable Object
            dTable.Load(sqlDR); // Loading data in the DataTable

            LstView.DataSource = dTable; 
            LstView.DataBind(); // binding

            sqlConnection.Close(); // Closing Connection
        }

        // LstView_ItemCommand - used to approve the Questionnaire from the administrator only.
        protected void LstView_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            // Opening Connection
            sqlConnection.Open();

            if (e.CommandName == "approve")
            {
                // SQL Query
                sqlCommand = new MySqlCommand("UPDATE tbl_history_questionnaire SET Status = !Status WHERE QuestionnaireId = "
                    + e.CommandArgument.ToString() + ";", sqlConnection);

                // Displaying Message
                LtrMessage.Text = CQ.Message("Report's 'Approval Status' has been changed successfully.", 's');
            }
            else // e.CommandName == "view"
            {
                // SQL Query
                sqlCommand = new MySqlCommand("UPDATE tbl_history_questionnaire SET CanPatientView = !CanPatientView WHERE QuestionnaireId = "
                    + e.CommandArgument.ToString() + ";", sqlConnection);

                // Displaying Message
                LtrMessage.Text = CQ.Message("Report's 'Viewable Status' has been changed successfully.", 's');
            }

            // Executing SQL Query
            sqlCommand.ExecuteNonQuery();

            sqlConnection.Close(); // Closing Connection

            // Refreshing List
            BindList(); // fill the grid with - Questionnaire Reports

            // Sending Intimation email to Administrator
            CQ.SendMail(CQ.ReceiverEmail,
                CQ.ProjectName + " - Updates of your Questionnaire Report",
                CQ.PrepareQuestionnaireReportForPatient(e.CommandArgument.ToString()));
        }

        // LstView_ItemDataBound - used to show/hide approve link button according to the email id
        protected void LstView_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                LinkButton LnkApprove = (LinkButton)e.Item.FindControl("LnkApprove");
                LinkButton LnkCanPatientView = (LinkButton)e.Item.FindControl("LnkCanPatientView");
                HiddenField HdnStatus = (HiddenField)e.Item.FindControl("HdnStatus");
                HiddenField HdnCanPatientView = (HiddenField)e.Item.FindControl("HdnCanPatientView");
                HyperLink Anchr = (HyperLink)e.Item.FindControl("Anchr");
                HiddenField HdnQuesionnaireId = (HiddenField)e.Item.FindControl("HdnQuesionnaireId");
                HtmlGenericControl DivC = (HtmlGenericControl)e.Item.FindControl("DivC");
                
                if (LnkApprove != null && LnkCanPatientView != null && HdnStatus != null 
                    && HdnCanPatientView != null && Anchr != null && HdnQuesionnaireId != null)
                {
                    if (Convert.ToString(Request.Cookies["ablCookie"]["USERID"]) == CQ.AdministratorId)
                    {
                        #region "if Administrator is Logged in"
                        Anchr.NavigateUrl += "Report.aspx?q=" + HdnQuesionnaireId.Value + "&u=admin";

                        if (HdnStatus.Value == "0")
                        {
                            LnkApprove.Text = "Not Approved";
                            LnkApprove.ToolTip = "Report is not approved! So, Patient cannot see the report.";
                        }
                        else
                        {
                            LnkApprove.Text = "Approved";
                            LnkApprove.ToolTip = "Report is approved! So, Patient can see the report.";
                        }

                        if (HdnCanPatientView.Value == "0")
                        {
                            LnkCanPatientView.Text = "Not Viewable";
                            LnkCanPatientView.ToolTip = "Report is not viewable by the Patient.";
                        }
                        else
                        {
                            LnkCanPatientView.Text = "Viewable";
                            LnkCanPatientView.ToolTip = "Report is viewable by the Patient.";
                        }
                        #endregion
                    }
                    else
                    {
                        #region "if Patient is Logged in"
                        Anchr.NavigateUrl += "Report.aspx?q=" + HdnQuesionnaireId.Value;
                        DivC.InnerHtml = string.Empty;
                        #endregion
                    }
                }
            }
        }

        protected void LstView_PagePropertiesChanged(object sender, EventArgs e) // Called when page number changes 
        {
            BindList();
        }
    }
}