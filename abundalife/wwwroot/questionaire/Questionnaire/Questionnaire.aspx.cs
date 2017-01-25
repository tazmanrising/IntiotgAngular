// Page Description: This page is the main page - used for giving the Questionnaire by the logged in user

// Namespaces
using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace abundalife1001.Questionnaire
{
    public partial class Questionnaire : System.Web.UI.Page
    {
        // Database Connectivity Objects
        MySql.Data.MySqlClient.MySqlConnection sqlConnection = new MySqlConnection(CQ.ConnectionString);
        MySql.Data.MySqlClient.MySqlCommand sqlCommand = new MySql.Data.MySqlClient.MySqlCommand();
        MySql.Data.MySqlClient.MySqlDataReader sqlDR;

        string sql = string.Empty; // Sql Query Variable

        int[] graphArrayDivision1 = new int[51]; // Division A Scores storing in array for graph
        int[] graphArrayDivision2 = new int[11]; // Division B Scores storing in array for graph
        int[] graphArrayDivision3 = new int[31]; // Division C Scores storing in array for graph
        int[] graphArrayDivision4 = new int[7]; // Division D Scores storing in array for graph
        int[] graphArrayDivision5 = new int[1]; // Division E Scores storing in array for graph
        int[] graphArrayDivision6 = new int[5]; // Division F Scores storing in array for graph
        
        // First function to be called - Page Load.
        protected void Page_Load(object sender, EventArgs e)
        {
            LblMessage.Text = string.Empty; // For reinitialize with empty string
            BtnSubmitTest.Visible = false; // This control is visible only - when user is on the last question          
            ParaAdditionalInformation.Visible = false; // This control is visible only - when user is on the last question          
            TxtSectionScore.Text = string.Empty; // For reinitialize with empty string

            // if User related constants are not available, then redirecting to signin.aspx page
            if (string.IsNullOrEmpty(Convert.ToString(Request.Cookies["ablCookie"])))
                CQ.Redirect("SignIn.aspx");

            if (Page.IsPostBack == false)
            {
                DivInstructions.Visible = true;
                DivQuestion.Visible = false;
                DivResult.Visible = false;

                // initializing variables
                ViewState["DivisionName"] = string.Empty;
                ViewState["SectionId"] = 0;
            }
        }

        // This function / event is fired when user starts taking the Questionnaire
        protected void BtnStartTest_Click(object sender, EventArgs e)
        {
            DivInstructions.Visible = false;
            DivQuestion.Visible = true;
            DivResult.Visible = false;

            // initializing with Division A and Section 1
            ViewState["DivisionName"] = "A"; 
            ViewState["SectionId"] = 1; 

            // Opening Connection
            sqlConnection.Open();

            // SQL Query
            sqlCommand = new MySqlCommand("INSERT INTO tbl_history_questionnaire(UserId, ReportDateTime, Report, AdditionalInformation, Status, CanPatientView) " +
                "VALUES(\'" + Convert.ToString(Request.Cookies["ablCookie"]["USERID"]) + "\', \'" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "\', \'"
                + string.Empty + "\', \'\', 0, 0); SELECT LAST_INSERT_ID();", sqlConnection);

            // Executing SQL Query
            Int64 newId = Convert.ToInt64(sqlCommand.ExecuteScalar()); // getting newly generated ID
            ViewState["QuestionnaireId"] = Convert.ToString(newId); // putting it in viewstate for further usage

            sqlConnection.Close(); // Closing Connection

            ShowQuestion(); // Showng Current Division's Questions
        }

        // This function / event is fired when user clicks on the Previous Question Button
        protected void BtnPrevious_Click(object sender, EventArgs e)
        {
            LoopSection(); // Saving The current Division's Answers in the database

            if (Convert.ToInt32(ViewState["SectionId"]) > 1) // decrementing by 1
                ViewState["SectionId"] = Convert.ToInt32(ViewState["SectionId"]) - 1;
            else if (Convert.ToInt32(ViewState["SectionId"]) <= 1 && Convert.ToString(ViewState["DivisionName"]) == "A") // if on the first question
                LblMessage.Text = CQ.Message("You are on the first section!", 'e');
            else if (Convert.ToInt32(ViewState["SectionId"]) <= 1 && Convert.ToString(ViewState["DivisionName"]) == "B") // if on the first question
            {
                ViewState["DivisionName"] = "A";
                ViewState["SectionId"] = 51;
            }
            else if (Convert.ToInt32(ViewState["SectionId"]) <= 1 && Convert.ToString(ViewState["DivisionName"]) == "C") // if on the first question
            {
                ViewState["DivisionName"] = "B";
                ViewState["SectionId"] = 11;
            }
            else if (Convert.ToInt32(ViewState["SectionId"]) <= 1 && Convert.ToString(ViewState["DivisionName"]) == "D") // if on the first question
            {
                ViewState["DivisionName"] = "C";
                ViewState["SectionId"] = 31;
            }
            else if (Convert.ToInt32(ViewState["SectionId"]) <= 1 && Convert.ToString(ViewState["DivisionName"]) == "E") // if on the first question
            {
                ViewState["DivisionName"] = "D";
                ViewState["SectionId"] = 7;
            }
            else if (Convert.ToInt32(ViewState["SectionId"]) <= 1 && Convert.ToString(ViewState["DivisionName"]) == "F") // if on the first question
            {
                ViewState["DivisionName"] = "E";
                ViewState["SectionId"] = 1;
            }
            else
            {
                switch (Convert.ToString(ViewState["DivisionName"]))
                {
                    case "B":
                        ViewState["DivisionName"] = "A";
                        break;
                    case "C":
                        ViewState["DivisionName"] = "B";
                        break;
                    case "D":
                        ViewState["DivisionName"] = "C";
                        break;
                    case "E":
                        ViewState["DivisionName"] = "D";
                        break;
                    case "F":
                        ViewState["DivisionName"] = "E";
                        break;
                }
            }

            ShowQuestion(); // Showng Current Division's Questions
        }

        // This function / event is fired when user clicks on the Next Question Button
        protected void BtnNext_Click(object sender, EventArgs e)
        {
            LoopSection(); // Saving The current Division's Answers in the database

            switch (Convert.ToString(ViewState["DivisionName"]))
            {
                case "A":
                    if (Convert.ToInt32(ViewState["SectionId"]) < 51) // 51 Questions in this Section
                        ViewState["SectionId"] = Convert.ToInt32(ViewState["SectionId"]) + 1;
                    else
                    {
                        ViewState["DivisionName"] = "B";
                        ViewState["SectionId"] = 1;
                    }
                    break;
                case "B":
                    if (Convert.ToInt32(ViewState["SectionId"]) < 11) // 11 Questions in this Section
                        ViewState["SectionId"] = Convert.ToInt32(ViewState["SectionId"]) + 1;
                    else
                    {
                        ViewState["DivisionName"] = "C";
                        ViewState["SectionId"] = 1;
                    }
                    break;
                case "C":
                    if (Convert.ToInt32(ViewState["SectionId"]) < 31) // 31 Questions in this Section
                        ViewState["SectionId"] = Convert.ToInt32(ViewState["SectionId"]) + 1;
                    else
                    {
                        ViewState["DivisionName"] = "D";
                        ViewState["SectionId"] = 1;
                    }
                    break;
                case "D":
                    if (Convert.ToInt32(ViewState["SectionId"]) < 7) // 7 Questions in this Section
                        ViewState["SectionId"] = Convert.ToInt32(ViewState["SectionId"]) + 1;
                    else
                    {
                        ViewState["DivisionName"] = "E";
                        ViewState["SectionId"] = 1;
                    }
                    break;
                case "E": 
                        ViewState["DivisionName"] = "F";
                        ViewState["SectionId"] = 1;
                        BtnSubmitTest.Visible = true;
                        ParaAdditionalInformation.Visible = true;
                    break;
                case "F": // if on the last question
                    LblMessage.Text = CQ.Message("You are on the last section!", 'e');
                        BtnSubmitTest.Visible = true;
                        ParaAdditionalInformation.Visible = true;
                    break;
            }

            ShowQuestion(); // Showng Current Division's Questions
        }

        // This function / event is fired when user submits the Questionnaire
        protected void BtnSubmitTest_Click(object sender, EventArgs e)
        {
            LoopSection(); // Saving The current Division's Answers in the database

            DivInstructions.Visible = false;
            DivQuestion.Visible = false;
            DivResult.Visible = true;

            LtrName.Text = Convert.ToString(Request.Cookies["ablCookie"]["NAME"]); // name of the logged in user
            LtrDate.Text = DateTime.Now.ToLongDateString() + " - " + DateTime.Now.ToShortTimeString(); // Current Date and Time

            LtrPName.Text = LtrName.Text; // name of the logged in user
            LtrPDate.Text = LtrDate.Text; // Current Date and Time

            DisplaySectionWiseScores(); // This function will be used to display the scores (Division and Section wise)

            DisplayAdditionalInformation(); // This function will be used to display the Additional Information given by the patient

            DisplayGraph(); // This function will be used to display the graph

            // Getting the whole report card in a variable
            StringWriter sw = new StringWriter();
            HtmlTextWriter w = new HtmlTextWriter(sw);
            DivResult.RenderControl(w); // DivResult is the control which contains the whole report card
            string report = sw.GetStringBuilder().ToString();

            // updating report card and date/time to the database
            sqlCommand = new MySqlCommand("UPDATE tbl_history_questionnaire SET Report = \'" + report + "\', ReportDateTime = \'" 
                + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "\' WHERE QuestionnaireId = "  
                + Convert.ToString(ViewState["QuestionnaireId"]) + ";", sqlConnection);

            // Opening Connection
            sqlConnection.Open();
            
            // Executing SQL Query
            sqlCommand.ExecuteNonQuery();

            sqlConnection.Close(); // Closing Connection

            LblMessage.Text = CQ.Message("Thanks for taking the Questionnaire. Information given by you " +
                "is being analyzed.<br />You can check back in 24 hours from now by logging into your account with "
                + CQ.ProjectName + ".", 's');

            // Sending Intimation email to administrator
            CQ.SendMail(CQ.ReceiverEmail,
                CQ.ProjectName + " - Questionnaire Report Number " + Convert.ToString(ViewState["QuestionnaireId"]),
                CQ.PrepareQuestionnaireReportForAdmin(Convert.ToString(ViewState["QuestionnaireId"])));

            // Sending Cover Report email to administrator (frontdesk@abundalife.com)
            StringWriter sw_c = new StringWriter();
            HtmlTextWriter w_c = new HtmlTextWriter(sw_c);
            DivCoverReport.RenderControl(w_c); // DivCoverReport is the control which contains the cover report card
            string coverReport = sw_c.GetStringBuilder().ToString();
            CQ.SendMail("frontdesk@abundalife.com",
                CQ.ProjectName + " - Cover Report of Questionnaire Report Number " + Convert.ToString(ViewState["QuestionnaireId"]),
                CQ.PrepareCoverReport(Convert.ToString(ViewState["QuestionnaireId"]), 
                coverReport.Replace("style=\"display: none;\"", string.Empty)));

            DivResult.Visible = false; // not visible to patient

            // resetting to default values
            ViewState["DivisionName"] = string.Empty;
            ViewState["SectionId"] = 0;
            ViewState["QuestionnaireId"] = "0";

            Response.AddHeader("REFRESH", "5;URL=Dashboard.aspx"); // Redirecting after 4 seconds
        }

        // This function will show the Questions of the current Division's
        private void ShowQuestion()
        {
            // SQL Query
            sql = "SELECT tbl_questions.QuestionId, Question, Division, Section, SectionName, Answer FROM tbl_questions " 
                + "LEFT OUTER JOIN tbl_history_questionnaire_details ON tbl_questions.QuestionId = " 
                + "tbl_history_questionnaire_details.QuestionId " + "WHERE Division = 'Division " + Convert.ToString(ViewState["DivisionName"])
                + "' AND Section = 'Section " + Convert.ToString(ViewState["SectionId"]) + "';";

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

                // Assigning avlues to controls i.e. Division, Section, SectionName
                LtrDivision.Text = Convert.ToString(sqlDR.GetString("Division"));
                LtrSection.Text = Convert.ToString(sqlDR.GetString("Section"));
                // LtrSectionName.Text = Convert.ToString(sqlDR.GetString("SectionName")); // not in use as of now
            }
            else
            {
                // Displaying Message
                LblMessage.Text = CQ.Message("Details not found!", 'e');
                Response.AddHeader("REFRESH", "5;URL=SignIn.aspx"); // Redirecting after 2 seconds
            }
            
            sqlConnection.Close(); // Closing Connection

            #region "filling Questions in the grid"
            // SQLCommand Object Initialization
            sqlCommand.CommandText = sql;
            sqlCommand.Connection = sqlConnection;

            // Opening Connection
            sqlConnection.Open();

            // Executing SQL Query
            sqlDR = sqlCommand.ExecuteReader();

            DataTable dTable = new DataTable(); // DataTable Object
            dTable.Load(sqlDR); // Loading data in the DataTable

            RptQuestions.DataSource = dTable;
            RptQuestions.DataBind(); // binding

            sqlConnection.Close(); // Closing Connection
            #endregion
        }

        // This function will be used for looping the questions in the current Division's
        private void LoopSection()
        {
            foreach (RepeaterItem row in RptQuestions.Items) // Looping
            {
                HiddenField HdnQuestionId = (HiddenField)row.FindControl("HdnQuestionId");
                TextBox TxtQ = (TextBox)row.FindControl("TxtQ");

                if (HdnQuestionId != null && TxtQ != null)
                    SaveAnswer(Convert.ToInt32(HdnQuestionId.Value), Convert.ToString(TxtQ.Text.Trim()));
            }
        }

        // This function will save the Answers of the current Division's
        private void SaveAnswer(int pQuestionId, string pAnswer)
        {
            // SQL Query
            sql = "SELECT DetailId FROM tbl_history_questionnaire_details WHERE QuestionnaireId = " 
                        + Convert.ToString(ViewState["QuestionnaireId"]) + " AND QuestionId = " + Convert.ToString(pQuestionId) + ";";

            // SQLCommand Object Initialization
            sqlCommand.CommandText = sql;
            sqlCommand.Connection = sqlConnection;

            // Opening Connection
            sqlConnection.Open();
            sqlDR = sqlCommand.ExecuteReader();

            // if has rows, means already answered
            if (sqlDR.HasRows == true) // Updating 
                sql = "UPDATE tbl_history_questionnaire_details SET Answer = \'" + pAnswer
                    + "\' WHERE QuestionnaireId = " + Convert.ToString(ViewState["QuestionnaireId"]) + " AND QuestionId = "
                    + Convert.ToString(pQuestionId) + ";";
            else // Inserting
                sql = "INSERT INTO tbl_history_questionnaire_details(QuestionnaireId, QuestionId, Answer) " +
                "VALUES(" + Convert.ToString(ViewState["QuestionnaireId"]) + ", " + Convert.ToString(pQuestionId) + ", \'" 
                + pAnswer + "\')";

            sqlDR.Close(); // closing DataReader object
            sqlCommand = null; // setting to null

            sqlCommand = new MySqlCommand(sql, sqlConnection);

            // Executing SQL Query
            sqlCommand.ExecuteNonQuery();

            // Updating Additional Information given by patient to the database
            if (pQuestionId == 346) // Last Question
            {
                // SQL Query
                sql = "UPDATE tbl_history_questionnaire SET AdditionalInformation = \'"
                    + TxtAdditionalInformation.Text.Trim() + "\' WHERE QuestionnaireId = " 
                    + Convert.ToString(ViewState["QuestionnaireId"]);
                
                // SQLCommand Object Initialization
                sqlCommand.CommandText = sql;
                sqlCommand.Connection = sqlConnection;

                sqlCommand = new MySqlCommand(sql, sqlConnection);

                // Executing SQL Query
                sqlCommand.ExecuteNonQuery();
            }

            sqlConnection.Close(); // Closing Connection
        }

        // This function will be used to display the scores (Division and Section wise)
        private void DisplaySectionWiseScores()
        {
            for (int count = 1; count <= 51; count++) // Looping in the first division
            {
                sql = "SELECT Answer FROM tbl_questions " // SQL Query
                    + "LEFT OUTER JOIN tbl_history_questionnaire_details ON tbl_questions.QuestionId = "
                    + "tbl_history_questionnaire_details.QuestionId WHERE Division = 'Division A' AND Section = 'Section "
                    + Convert.ToString(count) + "' AND QuestionnaireId = " + Convert.ToString(ViewState["QuestionnaireId"]) + ";";
                graphArrayDivision1[count - 1] = ShowResult(sql, "A", count);
            }

            for (int count = 1; count <= 11; count++) // Looping in the second division
            {
                sql = "SELECT Answer FROM tbl_questions " // SQL Query
                    + "LEFT OUTER JOIN tbl_history_questionnaire_details ON tbl_questions.QuestionId = "
                    + "tbl_history_questionnaire_details.QuestionId WHERE Division = 'Division B' AND Section = 'Section "
                    + Convert.ToString(count) + "' AND QuestionnaireId = " + Convert.ToString(ViewState["QuestionnaireId"]) + ";";
                graphArrayDivision2[count - 1] = ShowResult(sql, "B", count);
            }

            for (int count = 1; count <= 31; count++) // Looping in the third division
            {
                sql = "SELECT Answer FROM tbl_questions " // SQL Query
                    + "LEFT OUTER JOIN tbl_history_questionnaire_details ON tbl_questions.QuestionId = "
                    + "tbl_history_questionnaire_details.QuestionId WHERE Division = 'Division C' AND Section = 'Section "
                    + Convert.ToString(count) + "' AND QuestionnaireId = " + Convert.ToString(ViewState["QuestionnaireId"]) + ";";
                graphArrayDivision3[count - 1] = ShowResult(sql, "C", count);
            }

            for (int count = 1; count <= 7; count++) // Looping in the fourth division
            {
                sql = "SELECT Answer FROM tbl_questions " // SQL Query
                    + "LEFT OUTER JOIN tbl_history_questionnaire_details ON tbl_questions.QuestionId = "
                    + "tbl_history_questionnaire_details.QuestionId WHERE Division = 'Division D' AND Section = 'Section "
                    + Convert.ToString(count) + "' AND QuestionnaireId = " + Convert.ToString(ViewState["QuestionnaireId"]) + ";";
                graphArrayDivision4[count - 1] = ShowResult(sql, "D", count);
            }

            sql = "SELECT Answer FROM tbl_questions " // SQL Query - fifth division
                + "LEFT OUTER JOIN tbl_history_questionnaire_details ON tbl_questions.QuestionId = "
                + "tbl_history_questionnaire_details.QuestionId WHERE Division = 'Division E' AND Section = 'Section 1' AND QuestionnaireId = " 
                + Convert.ToString(ViewState["QuestionnaireId"]) + ";";
            graphArrayDivision5[0] = ShowResult(sql, "E", 1);

            sql = "SELECT Answer FROM tbl_questions " // SQL Query - sixth division
                + "LEFT OUTER JOIN tbl_history_questionnaire_details ON tbl_questions.QuestionId = "
                + "tbl_history_questionnaire_details.QuestionId WHERE Division = 'Division F' AND Section = 'Section 1' AND QuestionnaireId = "
                + Convert.ToString(ViewState["QuestionnaireId"]) + ";";
            graphArrayDivision6[0] = ShowResult(sql, "F", 1);
            graphArrayDivision6[1] = graphArrayDivision6[0]; // as said by client
            graphArrayDivision6[2] = graphArrayDivision6[0]; // as said by client
            graphArrayDivision6[3] = graphArrayDivision6[0]; // as said by client
            graphArrayDivision6[4] = graphArrayDivision6[0]; // as said by client
        }

        // This function will be used to display the scores (Division and Section wise)
        private int ShowResult(string pSql, string pSection, int pCount)
        {
            double result = 0;

            // SQLCommand Object Initialization
            sqlCommand.CommandText = pSql;
            sqlCommand.Connection = sqlConnection;

            // Opening Connection
            sqlConnection.Open();

            // Executing SQL Query
            sqlDR = sqlCommand.ExecuteReader();

            // putting score in the literal control
            Literal Ltr = (Literal)DivResult.FindControl("LtrDivision" + pSection + "Section" + Convert.ToString(pCount) + "Score");
            Literal LtrCover = (Literal)DivResult.FindControl("LtrDiv" + pSection + "Sec" + Convert.ToString(pCount) + "Score");
            Literal LtrResult = (Literal)DivResult.FindControl("LtrDivision" + pSection + "Section" + Convert.ToString(pCount) + "Result");

            // if has rows
            if (sqlDR.HasRows == true)
            {
                result = 0;
                string value = "0";
                int numOfItems = 0;

                while (sqlDR.Read()) // reading one by one
                {
                    value = Convert.ToString(sqlDR.GetString("Answer"));

                    if (value == "")
                        value = "0";

                    numOfItems = numOfItems + 1;
                    result = result + Convert.ToInt32(value); // summing up
                }

                result = Math.Round(Convert.ToDouble(result / numOfItems));

                if (Ltr != null && LtrCover!= null && LtrResult != null)
                {
                    if (result == 4 || result == 5)
                    {
                        Ltr.Text = "<span class=redtextbold>" + Convert.ToString(result) + "</span>";
                        LtrCover.Text = "<span class=redtextbold>" + Convert.ToString(result) + "</span>";
                    }
                    else if (result == 0)
                    {
                        Ltr.Text = "<span class=bluetextbold>" + Convert.ToString(result) + "</span>";
                        LtrCover.Text = "<span class=bluetextbold>" + Convert.ToString(result) + "</span>";
                    }
                    else
                    {
                        Ltr.Text = "<span class=greentextbold>" + Convert.ToString(result) + "</span>";
                        LtrCover.Text = "<span class=greentextbold>" + Convert.ToString(result) + "</span>";
                    }

                    // As per said by Client - Special Condition - S
                    // Section f use 20 questions and calculate for first field answer 1 answers (output) place the same output number in 2-5. 
                    if (Ltr.ID == "LtrDivisionFSection1Score")
                    {
                        LtrDivisionFSection2Score.Text = Ltr.Text;
                        LtrDivisionFSection3Score.Text = Ltr.Text;
                        LtrDivisionFSection4Score.Text = Ltr.Text;
                        LtrDivisionFSection5Score.Text = Ltr.Text;

                        LtrDivFSec2Score.Text = LtrCover.Text;
                        LtrDivFSec3Score.Text = LtrCover.Text;
                        LtrDivFSec4Score.Text = LtrCover.Text;
                        LtrDivFSec5Score.Text = LtrCover.Text;
                    }
                    // As per said by Client - Special Condition - E

                    switch (Convert.ToInt32(Math.Round(result)))
                    {
                        case 0:
                            // As per said by Client - Special Condition
                            // Section f use 20 questions and calculate for first field answer 1 answers (output) place the same output number in 2-5. 
                            if (LtrResult.ID == "LtrDivisionFSection1Result")
                            {
                                LtrResult.Text += "<span class=bluetextbold>N/A</span>";
                                LtrDivisionFSection2Result.Text += "<span class=bluetextbold>N/A</span>";
                                LtrDivisionFSection3Result.Text += "<span class=bluetextbold>N/A</span>";
                                LtrDivisionFSection4Result.Text += "<span class=bluetextbold>N/A</span>";
                                LtrDivisionFSection5Result.Text += "<span class=bluetextbold>N/A</span>";
                            }
                            else
                                LtrResult.Text += "<span class=bluetextbold>N/A</span>";
                            break;
                        case 1:
                            // As per said by Client - Special Condition
                            // Section f use 20 questions and calculate for first field answer 1 answers (output) place the same output number in 2-5. 
                            if (LtrResult.ID == "LtrDivisionFSection1Result")
                            {
                                LtrResult.Text += "<span class=greentextbold>Borderline Deficient.</span>";
                                LtrDivisionFSection2Result.Text += "<span class=greentextbold>Borderline Deficient.</span>";
                                LtrDivisionFSection3Result.Text += "<span class=greentextbold>Borderline Deficient.</span>";
                                LtrDivisionFSection4Result.Text += "<span class=greentextbold>Borderline Deficient.</span>";
                                LtrDivisionFSection5Result.Text += "<span class=greentextbold>Borderline Deficient.</span>";
                            }
                            else
                            {
                                if (pSection == "D" && pCount == 1)
                                    LtrResult.Text += "<span class=greentextbold>early</span>";
                                else if (pSection == "D" && (pCount == 2 || pCount == 3 || pCount == 4 || pCount == 5 || pCount == 6 || pCount == 7))
                                    LtrResult.Text += "<span class=greentextbold>Borderline</span>";
                                else if (pSection == "E" && pCount == 1)
                                    LtrResult.Text += "<span class=greentextbold>suddenly</span>";
                                else
                                    LtrResult.Text += "<span class=greentextbold>Borderline Deficient.</span>";
                            }
                            break;
                        case 2:
                            // As per said by Client - Special Condition
                            // Section f use 20 questions and calculate for first field answer 1 answers (output) place the same output number in 2-5. 
                            if (LtrResult.ID == "LtrDivisionFSection1Result")
                            {
                                LtrResult.Text += "<span class=greentextbold>Mildly Deficient.</span>";
                                LtrDivisionFSection2Result.Text += "<span class=greentextbold>Mildly Deficient.</span>";
                                LtrDivisionFSection3Result.Text += "<span class=greentextbold>Mildly Deficient.</span>";
                                LtrDivisionFSection4Result.Text += "<span class=greentextbold>Mildly Deficient.</span>";
                                LtrDivisionFSection5Result.Text += "<span class=greentextbold>Mildly Deficient.</span>";
                            }
                            else
                            {
                                if (pSection == "D" && pCount == 1)
                                    LtrResult.Text += "<span class=greentextbold>advanced</span>";
                                else if (pSection == "D" && (pCount == 2 || pCount == 3 || pCount == 4 || pCount == 5 || pCount == 6 || pCount == 7))
                                    LtrResult.Text += "<span class=greentextbold>Mild</span>";
                                else if (pSection == "E" && pCount == 1)
                                    LtrResult.Text += "<span class=greentextbold>Mildly</span>";
                                else
                                    LtrResult.Text += "<span class=greentextbold>Mildly Deficient.</span>";
                            }
                            break;
                        case 3:
                            // As per said by Client - Special Condition
                            // Section f use 20 questions and calculate for first field answer 1 answers (output) place the same output number in 2-5. 
                            if (LtrResult.ID == "LtrDivisionFSection1Result")
                            {
                                LtrResult.Text += "<span class=greentextbold>Significantly Deficient.</span>";
                                LtrDivisionFSection2Result.Text += "<span class=greentextbold>Significantly Deficient.</span>";
                                LtrDivisionFSection3Result.Text += "<span class=greentextbold>Significantly Deficient.</span>";
                                LtrDivisionFSection4Result.Text += "<span class=greentextbold>Significantly Deficient.</span>";
                                LtrDivisionFSection5Result.Text += "<span class=greentextbold>Significantly Deficient.</span>";
                            }
                            else
                            {
                                if (pSection == "D" && pCount == 1)
                                    LtrResult.Text += "<span class=greentextbold>significantly advanced</span>";
                                else if (pSection == "D" && (pCount == 2 || pCount == 3 || pCount == 4 || pCount == 5 || pCount == 6 || pCount == 7))
                                    LtrResult.Text += "<span class=greentextbold>Significant</span>";
                                else if (pSection == "E" && pCount == 1)
                                    LtrResult.Text += "<span class=greentextbold>significantly</span>";
                                else
                                    LtrResult.Text += "<span class=greentextbold>Significantly Deficient.</span>";
                            }
                            break;
                        case 4:
                        case 5:
                            // As per said by Client - Special Condition
                            // Section f use 20 questions and calculate for first field answer 1 answers (output) place the same output number in 2-5. 
                            if (LtrResult.ID == "LtrDivisionFSection1Result")
                            {
                                LtrResult.Text += "<span class=redtextbold>Seriously Deficient.</span>";
                                LtrDivisionFSection2Result.Text += "<span class=redtextbold>Seriously Deficient.</span>";
                                LtrDivisionFSection3Result.Text += "<span class=redtextbold>Seriously Deficient.</span>";
                                LtrDivisionFSection4Result.Text += "<span class=redtextbold>Seriously Deficient.</span>";
                                LtrDivisionFSection5Result.Text += "<span class=redtextbold>Seriously Deficient.</span>";
                            }
                            else
                            {
                                if (pSection == "D" && pCount == 1)
                                    LtrResult.Text += "<span class=redtextbold>seriously advanced</span>";
                                else if (pSection == "D" && (pCount == 2 || pCount == 3 || pCount == 4 || pCount == 5 || pCount == 6 || pCount == 7))
                                    LtrResult.Text += "<span class=greentextbold>Serious</span>";
                                else if (pSection == "E" && pCount == 1)
                                    LtrResult.Text += "<span class=greentextbold>seriously</span>";
                                else
                                    LtrResult.Text += "<span class=redtextbold>Seriously Deficient.</span>";
                            }
                            break;
                    }
                }
            }
            else
            {
                if (Ltr != null && LtrCover!= null && LtrResult != null)
                {
                    Ltr.Text = "<span class=bluetextbold>0</span>";
                    LtrCover.Text = "<span class=bluetextbold>0</span>";
                    LtrResult.Text += "<span class=bluetextbold>N/A</span>";

                    // As per said by Client - Special Condition - S
                    // Section f use 20 questions and calculate for first field answer 1 answers (output) place the same output number in 2-5. 
                    if (Ltr.ID == "LtrDivisionFSection1Score")
                    {
                        LtrDivisionFSection2Score.Text = Ltr.Text;
                        LtrDivisionFSection3Score.Text = Ltr.Text;
                        LtrDivisionFSection4Score.Text = Ltr.Text;
                        LtrDivisionFSection5Score.Text = Ltr.Text;

                        LtrDivFSec2Score.Text = LtrCover.Text;
                        LtrDivFSec3Score.Text = LtrCover.Text;
                        LtrDivFSec4Score.Text = LtrCover.Text;
                        LtrDivFSec5Score.Text = LtrCover.Text;

                        LtrDivisionFSection2Result.Text += "<span class=bluetextbold>N/A</span>";
                        LtrDivisionFSection3Result.Text += "<span class=bluetextbold>N/A</span>";
                        LtrDivisionFSection4Result.Text += "<span class=bluetextbold>N/A</span>";
                        LtrDivisionFSection5Result.Text += "<span class=bluetextbold>N/A</span>";
                    }
                    // As per said by Client - Special Condition - E
                }
            }

            sqlDR.Close();
            sqlConnection.Close(); // Closing Connection

            return Convert.ToInt32(result);
        }

        // This function will be used to display the Additional Information given by the patient
        private void DisplayAdditionalInformation()
        {
            sql = "SELECT AdditionalInformation FROM tbl_history_questionnaire WHERE QuestionnaireId = " // SQL Query
                + Convert.ToString(ViewState["QuestionnaireId"]) + ";";

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
                sqlDR.Read(); // reading row
                LtrAdditionInformation.Text = Convert.ToString(sqlDR.GetString("AdditionalInformation"));
                
                if (LtrAdditionInformation.Text.Trim() == string.Empty)
                    LtrAdditionInformation.Text = "Not given";

                LtrAddInfo.Text = LtrAdditionInformation.Text; // copying
            }

            sqlDR.Close();
            sqlConnection.Close(); // Closing Connection
        }

        // This function / event is fired when user wants to answer "Division A" Questions
        protected void BtnDivisionA_Click(object sender, EventArgs e)
        {
            LoopSection(); // Saving The current Division's Answers in the database

            ViewState["DivisionName"] = "A";
            ViewState["SectionId"] = 1;

            ShowQuestion(); // Showng Current Division's Questions
        }

        // This function / event is fired when user wants to answer "Division B" Questions
        protected void BtnDivisionB_Click(object sender, EventArgs e)
        {
            LoopSection(); // Saving The current Division's Answers in the database

            ViewState["DivisionName"] = "B";
            ViewState["SectionId"] = 1;

            ShowQuestion(); // Showng Current Division's Questions
        }

        // This function / event is fired when user wants to answer "Division C" Questions
        protected void BtnDivisionC_Click(object sender, EventArgs e)
        {
            LoopSection(); // Saving The current Division's Answers in the database

            ViewState["DivisionName"] = "C";
            ViewState["SectionId"] = 1;

            ShowQuestion(); // Showng Current Division's Questions
        }

        // This function / event is fired when user wants to answer "Division D" Questions
        protected void BtnDivisionD_Click(object sender, EventArgs e)
        {
            LoopSection(); // Saving The current Division's Answers in the database

            ViewState["DivisionName"] = "D";
            ViewState["SectionId"] = 1;

            ShowQuestion(); // Showng Current Division's Questions
        }

        // This function / event is fired when user wants to answer "Division E" Questions
        protected void BtnDivisionE_Click(object sender, EventArgs e)
        {
            LoopSection(); // Saving The current Division's Answers in the database

            ViewState["DivisionName"] = "E";
            ViewState["SectionId"] = 1;

            ShowQuestion(); // Showng Current Division's Questions
        }

        // This function / event is fired when user wants to answer "Division F" Questions
        protected void BtnDivisionF_Click(object sender, EventArgs e)
        {
            LoopSection(); // Saving The current Division's Answers in the database

            ViewState["DivisionName"] = "F";
            ViewState["SectionId"] = 1;
            BtnSubmitTest.Visible = true;
            ParaAdditionalInformation.Visible = true;

            ShowQuestion(); // Showng Current Division's Questions
        }

        // This function will be used to display the graph
        private void DisplayGraph()
        {
            string graph = "<div style=\"overflow:auto; width:930px;\"><table class=\"tblgraph\" style=\"width:4000px; display:none;\">";
            graph += "<caption></caption>"; // Division A 
            graph += "<thead><tr><td></td>";
            graph += "<th scope=\"col\">Sec. 1</th><th scope=\"col\">Sec. 2</th><th scope=\"col\">Sec. 3</th><th scope=\"col\">Sec. 4</th>";
            graph += "<th scope=\"col\">Sec. 5</th><th scope=\"col\">Sec. 6</th><th scope=\"col\">Sec. 7</th><th scope=\"col\">Sec. 8</th>";
            graph += "<th scope=\"col\">Sec. 9</th><th scope=\"col\">Sec. 10</th><th scope=\"col\">Sec. 11</th><th scope=\"col\">Sec. 12</th>";
            graph += "<th scope=\"col\">Sec. 13</th><th scope=\"col\">Sec. 14</th><th scope=\"col\">Sec. 15</th><th scope=\"col\">Sec. 16</th>";
            graph += "<th scope=\"col\">Sec. 17</th><th scope=\"col\">Sec. 18</th><th scope=\"col\">Sec. 19</th><th scope=\"col\">Sec. 20</th>";
            graph += "<th scope=\"col\">Sec. 21</th><th scope=\"col\">Sec. 22</th><th scope=\"col\">Sec. 23</th><th scope=\"col\">Sec. 24</th>";
            graph += "<th scope=\"col\">Sec. 25</th><th scope=\"col\">Sec. 26</th><th scope=\"col\">Sec. 27</th><th scope=\"col\">Sec. 28</th>";
            graph += "<th scope=\"col\">Sec. 29</th><th scope=\"col\">Sec. 30</th><th scope=\"col\">Sec. 31</th><th scope=\"col\">Sec. 32</th>";
            graph += "<th scope=\"col\">Sec. 33</th><th scope=\"col\">Sec. 34</th><th scope=\"col\">Sec. 35</th><th scope=\"col\">Sec. 36</th>";
            graph += "<th scope=\"col\">Sec. 37</th><th scope=\"col\">Sec. 38</th><th scope=\"col\">Sec. 39</th><th scope=\"col\">Sec. 40</th>";
            graph += "<th scope=\"col\">Sec. 41</th><th scope=\"col\">Sec. 42</th><th scope=\"col\">Sec. 43</th><th scope=\"col\">Sec. 44</th>";
            graph += "<th scope=\"col\">Sec. 45</th><th scope=\"col\">Sec. 46</th><th scope=\"col\">Sec. 47</th><th scope=\"col\">Sec. 48</th>";
            graph += "<th scope=\"col\">Sec. 49</th><th scope=\"col\">Sec. 50</th><th scope=\"col\">Sec. 51</th>";
            graph += "</tr></thead><tbody><tr><th scope=\"row\">Section&#39;s Score</th>";

            for (int counter = 1; counter <= 51; counter++)
                graph += "<td>" + Convert.ToString(graphArrayDivision1[counter - 1]) + "</td>";

            graph += "</tr></tbody></table><br /></div>";
            graph += "<table class=\"tblgraph\" style=\"width:800px; display:none;\"><caption></caption><thead><tr><td></td>"; // Division B
            graph += "<th scope=\"col\">Sec. 1</th><th scope=\"col\">Sec. 2</th><th scope=\"col\">Sec. 3</th><th scope=\"col\">Sec. 4</th>";
            graph += "<th scope=\"col\">Sec. 5</th><th scope=\"col\">Sec. 6</th><th scope=\"col\">Sec. 7</th><th scope=\"col\">Sec. 8</th>";
            graph += "<th scope=\"col\">Sec. 9</th><th scope=\"col\">Sec. 10</th><th scope=\"col\">Sec. 11</th>";
            graph += "</tr></thead><tbody><tr><th scope=\"row\">Section&#39;s Score</th>";

            for (int counter = 1; counter <= 11; counter++)
                graph += "<td>" + Convert.ToString(graphArrayDivision2[counter - 1]) + "</td>";

            graph += "</tr></tbody></table>";
            graph += "<div class=\"tblgraph\" style=\"overflow:auto; width:900px;\"><table style=\"width:2500px; display:none;\"><caption></caption><thead><tr><td></td>"; // Division C
            graph += "<th scope=\"col\">Sec. 1</th><th scope=\"col\">Sec. 2</th><th scope=\"col\">Sec. 3</th><th scope=\"col\">Sec. 4</th>";
            graph += "<th scope=\"col\">Sec. 5</th><th scope=\"col\">Sec. 6</th><th scope=\"col\">Sec. 7</th><th scope=\"col\">Sec. 8</th>";
            graph += "<th scope=\"col\">Sec. 9</th><th scope=\"col\">Sec. 10</th><th scope=\"col\">Sec. 11</th><th scope=\"col\">Sec. 12</th>";
            graph += "<th scope=\"col\">Sec. 13</th><th scope=\"col\">Sec. 14</th><th scope=\"col\">Sec. 15</th><th scope=\"col\">Sec. 16</th>";
            graph += "<th scope=\"col\">Sec. 17</th><th scope=\"col\">Sec. 18</th><th scope=\"col\">Sec. 19</th><th scope=\"col\">Sec. 20</th>";
            graph += "<th scope=\"col\">Sec. 21</th><th scope=\"col\">Sec. 22</th><th scope=\"col\">Sec. 23</th><th scope=\"col\">Sec. 24</th>";
            graph += "<th scope=\"col\">Sec. 25</th><th scope=\"col\">Sec. 26</th><th scope=\"col\">Sec. 27</th><th scope=\"col\">Sec. 28</th>";
            graph += "<th scope=\"col\">Sec. 29</th><th scope=\"col\">Sec. 30</th><th scope=\"col\">Sec. 31</th>";
            graph += "</tr></thead><tbody><tr><th scope=\"row\">Section&#39;s Score</th>";

            for (int counter = 1; counter <= 31; counter++)
                graph += "<td>" + Convert.ToString(graphArrayDivision3[counter - 1]) + "</td>";

            graph += "</tr></tbody></table><br /></div>";
            graph += "<table class=\"tblgraph\" style=\"width:800px; display:none;\"><caption></caption><thead><tr><td></td>"; // Division D
            graph += "<th scope=\"col\">Sec. 1</th><th scope=\"col\">Sec. 2</th><th scope=\"col\">Sec. 3</th><th scope=\"col\">Sec. 4</th>";
            graph += "<th scope=\"col\">Sec. 5</th><th scope=\"col\">Sec. 6</th><th scope=\"col\">Sec. 7</th>";
            graph += "</tr></thead><tbody><tr><th scope=\"row\">Section&#39;s Score</th>";

            for (int counter = 1; counter <= 7; counter++)
                graph += "<td>" + Convert.ToString(graphArrayDivision4[counter - 1]) + "</td>";

            graph += "</tr></tbody></table>";
            graph += "<table class=\"tblgraph\" style=\"width:800px; display:none;\"><caption></caption><thead><tr><td></td>"; // Division E
            graph += "<th scope=\"col\">Sec. 1</th></tr></thead><tbody><tr><th scope=\"row\">Section&#39;s Score</th>";

            graph += "<td>" + Convert.ToString(graphArrayDivision5[0]) + "</td>";

            graph += "</tr></tbody></table>";
            graph += "<table class=\"tblgraph\" style=\"width:800px; display:none;\"><caption></caption><thead><tr><td></td>"; // Division F
            graph += "<th scope=\"col\">Sec. 1</th><th scope=\"col\">Sec. 2</th><th scope=\"col\">Sec. 3</th><th scope=\"col\">Sec. 4</th>";
            graph += "<th scope=\"col\">Sec. 5</th></tr></thead><tbody><tr><th scope=\"row\">Section&#39;s Score</th>";

            for (int counter = 1; counter <= 5; counter++)
                graph += "<td>" + Convert.ToString(graphArrayDivision6[counter - 1]) + "</td>";

            graph += "</tr></tbody></table>";

            LtrGraph.Text = graph;
        }
    }
}