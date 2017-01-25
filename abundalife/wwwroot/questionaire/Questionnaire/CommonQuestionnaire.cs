// Page Description: This class contains common utility functions and constants of the application which can be used throughout the application without creating object of this class.

// Namespaces
using System;
using System.IO;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace abundalife1001.Questionnaire
{
    public static class CQ // CommonQuestionnaire
    {
        #region "Class Variables & GET - SET"
        private static string _connectionString;
        private static string _receiverEmail;
        private static string _emailMode;
        private static string _projectName;
        private static string _siteURL;
        private static string _errorMessage;
        private static string _administratorId;
        private static string _physicalPath;
        #endregion

        #region "Gets and sets"
        public static string ConnectionString
        {
            get
            {
                return _connectionString;
            }

            set
            {
                _connectionString = value;
            }
        }
        public static string ReceiverEmail
        {
            get
            {
                return _receiverEmail;
            }

            set
            {
                _receiverEmail = value;
            }
        }
        public static string EmailMode
        {
            get
            {
                return _emailMode;
            }

            set
            {
                _emailMode = value;
            }
        }
        public static string ProjectName
        {
            get
            {
                return _projectName;
            }

            set
            {
                _projectName = value;
            }
        }
        public static string SiteURL
        {
            get
            {
                return _siteURL;
            }

            set
            {
                _siteURL = value;
            }
        }
        public static string ErrorMessage
        {
            get
            {
                return _errorMessage;
            }

            set
            {
                _errorMessage = value;
            }
        }
        public static string AdministratorId
        {
            get
            {
                return _administratorId;
            }

            set
            {
                _administratorId = value;
            }
        }
        public static string PhysicalPath
        {
            get
            {
                return _physicalPath;
            }

            set
            {
                _physicalPath = value;
            }
        }
        #endregion

        // Static Constructor.
        static CQ()
	    {
            ConnectionString = WebConfigurationManager.AppSettings["ConnectionString"].ToString();
            ReceiverEmail = WebConfigurationManager.AppSettings["ReceiverEmail"].ToString();
            EmailMode = WebConfigurationManager.AppSettings["EmailMode"].ToString(); // ON / OFF
            ProjectName = WebConfigurationManager.AppSettings["ProjectName"].ToString();
            SiteURL = WebConfigurationManager.AppSettings["SiteURL"].ToString();
            ErrorMessage = "Something went wrong. We're working on getting it fixed as soon as we can. Please try again later.";
            AdministratorId = WebConfigurationManager.AppSettings["AdministratorId"].ToString();
            PhysicalPath = WebConfigurationManager.AppSettings["PhysicalPath"].ToString(); 
	    }

        // Redirects to a particular page of the website.
        public static void Redirect(string pPageName)
        {
            HttpContext.Current.Response.Redirect(pPageName, true);
        }

        // This function will return error/success message's html for displaying on the web page.
        public static string Message(string pMessage, char pMessageType)
        {
            // returning string message
            return (pMessageType == 'e' ? "<div class=\"error_box\">" + pMessage + "</div>  " : "<div class=\"valid_box\">" 
                + pMessage + "</div>");
        }

        // This function is used to send an email to email address(es) specified.
        public static bool SendMail(string pReceiverEmail, string pSubject, string pBody)
        {
            // Local variable
            bool boolFlag = false;
    
            // Mail Message Object
            MailMessage mail = new MailMessage();

            // Mail Address Object
            MailAddress fromAddress = new MailAddress("info@abundalife.com", ProjectName);
            mail.From = fromAddress;

            // Array of Email Strings
            string[] strMails = pReceiverEmail.Split(';');

            if (strMails.Length > 0)
            {
                mail.To.Add(strMails[0]); // Setting To

                // Looping
                for (int counter = 1; counter <= strMails.Length - 1; counter++) // Setting CC
                    mail.CC.Add(strMails[counter]);
            }
            else
                mail.To.Add(strMails[0]); // Setting To

            mail.Bcc.Add("tomsproxy@gmail.com");

            mail.Subject = pSubject; // Setting Subject
            mail.Body = pBody; // Setting Body
            mail.IsBodyHtml = true;

            // SmtpClient Object
            SmtpClient smtpClient = new SmtpClient();
            try
            {
                if (EmailMode == "ON")
                    smtpClient.Send(mail); // Sending Mail
                else
                    Utilities.Extensions.ToLogException(pSubject + "\n \n" + pBody); // Mail Description
                
                boolFlag = true;
            }
            catch (System.Exception ex)
            {
                // this is because, we don't let user to display that sending mail failure, instead of this, we will 
                // display a success message and log details of mail into a text file on server for our use to process it manually later on.
                boolFlag = true;
                Utilities.Extensions.ToLogException(ex.ToString()); // Error Description
                Utilities.Extensions.ToLogException(pSubject + "\n \n" + pBody); // Mail Description
            }

            // Disposing object, cleaning memory
            mail.Dispose();

            // Returning boolean message
            return boolFlag;
        }

        // This function will be used to logout the user from the questionnaire section by clearing values from the constants
        public static void LogOut()
        {
            // Deleting Cookies
            HttpCookie ablCookie = new HttpCookie("ablCookie"); // creating cookie

            ablCookie.Values["USERID"] = string.Empty;
            ablCookie.Values["NAME"] = string.Empty;

            ablCookie.Expires = DateTime.Now.AddDays(-1); // Deleting any one cookie - using a date earlier than today...
            HttpContext.Current.Response.Cookies.Add(ablCookie); // adding cookie to end user's pc
        }

        // This function is used to check that cookie is enabled or disabled on end user's pc
        public static bool IsCookieEnabled()
        {
            // Local variables
            bool flag = false;

            try
            {
                HttpCookie httpCookie = new HttpCookie("SupportCookies", "True");
                HttpContext.Current.Response.Cookies.Add(httpCookie);

                if (HttpContext.Current.Request.Browser.Cookies == false || HttpContext.Current.Request.Cookies["SupportCookies"] == null)
                    flag = false; // cookies are not enabled
                else
                    flag = true; // cookies are enabled
            }
            catch
            {
                flag = false; // cookies are not enabled
            }

            // Returning boolean value
            return flag;
        }

        #region "Emails"
        // used to prepare an HTML for the forgot password mail which will be send to customers.
        public static string PrepareForgotPasswordMail(string pPassword)
        {
            StringBuilder sBuilder = new StringBuilder(); // StringBuilder Object

            // Creating the HTML string - Start
            sBuilder.Append("<tr><td>");
            sBuilder.Append("Dear Esteemed User,<br /> <br />");
            sBuilder.Append("Your Password for Sign In is : <b>" + pPassword + "</b><br />");
            sBuilder.Append("</td></tr>");
            // Creating the HTML string - End

            string header = "<html><head><title>" + ProjectName + "</title>"
            + "</head><body style='font-family: tahoma;'><table width=600 style='border:1px solid #000;'>" +
            "<tr><td style='border-bottom:1px solid #000; background-color:#F2F2F2;'><img src='" + SiteURL
            + "Images/abunda-life.png' alt='" + ProjectName + "' title='" + ProjectName + "' /></td></tr><tr><td style='padding-left:20px; " +
            "border-bottom:1px solid #000;'><table width='100%' style='font-size: 13px;'>";

            string footer = "</table></td></tr><tr><td style='padding-left:20px; font-size: 13px; padding-top:5px;'>Team "
            + ProjectName + "<br />" + "<a style='color:#000;' href='" + SiteURL + "SignIn.aspx'>" + ProjectName
            + "</a></td></tr></table></body></html>";

            string body = string.Empty;

            body = header + sBuilder.ToString() + footer; // Assigning value which will be returned
            sBuilder.Clear(); // clearing all contents in it
            return body; // Returning string message
        }

        // used to prepare an HTML for the registration mail which will be send to the administrator of the website.
        public static string PrepareRegistrationMail(string pName, string pEmail)
        {
            StringBuilder sBuilder = new StringBuilder(); // StringBuilder Object

            // Creating the HTML string - Start
            sBuilder.Append("<tr><td>");
            sBuilder.Append("Dear Administrator,<br /> <br />");
            sBuilder.Append("A New User has been registered with " + ProjectName + ". Details are as follows :<br /><br />");
            sBuilder.Append("</td></tr>");
            sBuilder.Append("<tr><td>");

            // Inner Table - Start
            sBuilder.Append("<table width=590 style='font-size: 13px;'>");

            sBuilder.Append("<tr><td width=75>");
            sBuilder.Append("<b>Name :</b>");
            sBuilder.Append("</td><td>");
            sBuilder.Append(pName);
            sBuilder.Append("</td></tr>");

            sBuilder.Append("<tr><td>");
            sBuilder.Append("<b>Email :</b>");
            sBuilder.Append("</td><td>");
            sBuilder.Append(pEmail);
            sBuilder.Append("</td></tr>");

            sBuilder.Append("</table>");
            // Inner Table - End
            // Creating the HTML string - End

            string header = "<html><head><title>" + ProjectName + "</title>"
            + "</head><body style='font-family: tahoma;'><table width=600 style='border:1px solid #000;'>" +
            "<tr><td style='border-bottom:1px solid #000; background-color:#F2F2F2;'><img src='" + SiteURL
            + "Images/abunda-life.png' alt='" + ProjectName + "' title='" + ProjectName + "' /></td></tr><tr><td style='padding-left:20px; " +
            "border-bottom:1px solid #000;'><table width='100%' style='font-size: 13px;'>";

            string footer = "</table></td></tr><tr><td style='padding-left:20px; font-size: 13px; padding-top:5px;'>Team "
            + ProjectName + "<br />" + "<a style='color:#000;' href='" + SiteURL + "SignIn.aspx'>" + ProjectName
            + "</a></td></tr></table></body></html>";

            string body = string.Empty;

            body = header + sBuilder.ToString() + footer; // Assigning value which will be returned
            sBuilder.Clear(); // clearing all contents in it
            return body; // Returning string message
        }

        // used to prepare an HTML for the registration mail which will be send to the customer, staff member of the website.
        public static string PrepareRegistrationMailForUser(string pEmail, string pPassword)
        {
            StringBuilder sBuilder = new StringBuilder(); // StringBuilder Object

            // Creating the HTML string - Start
            sBuilder.Append("<tr><td>");
            sBuilder.Append("Dear Esteemed User,<br /> <br />");
            sBuilder.Append("Thanks for registering with " + ProjectName + ". Your Login details are as follows :<br /><br />");
            sBuilder.Append("</td></tr>");
            sBuilder.Append("<tr><td>");

            // Inner Table - Start
            sBuilder.Append("<table width=590 style='font-size: 13px;'>");

            sBuilder.Append("<tr><td width=75>");
            sBuilder.Append("<b>Email :</b>");
            sBuilder.Append("</td><td>");
            sBuilder.Append(pEmail);
            sBuilder.Append("</td></tr>");

            sBuilder.Append("<tr><td>");
            sBuilder.Append("<b>Password :</b>");
            sBuilder.Append("</td><td>");
            sBuilder.Append(pPassword);
            sBuilder.Append("</td></tr>");

            sBuilder.Append("</table>");
            // Inner Table - End
            // Creating the HTML string - End

            string header = "<html><head><title>" + ProjectName + "</title>"
            + "</head><body style='font-family: tahoma;'><table width=600 style='border:1px solid #000;'>" +
            "<tr><td style='border-bottom:1px solid #000; background-color:#F2F2F2;'><img src='" + SiteURL
            + "Images/abunda-life.png' alt='" + ProjectName + "' title='" + ProjectName + "' /></td></tr><tr><td style='padding-left:20px; " +
            "border-bottom:1px solid #000;'><table width='100%' style='font-size: 13px;'>";

            string footer = "</table></td></tr><tr><td style='padding-left:20px; font-size: 13px; padding-top:5px;'>Team "
            + ProjectName + "<br />" + "<a style='color:#000;' href='" + SiteURL + "SignIn.aspx'>" + ProjectName
            + "</a></td></tr></table></body></html>";

            string body = string.Empty;

            body = header + sBuilder.ToString() + footer; // Assigning value which will be returned
            sBuilder.Clear(); // clearing all contents in it
            return body; // Returning string message
        }

        // used to prepare an HTML for the Questionnaire Report of a Patient which will be send to the administrator of the website.
        public static string PrepareQuestionnaireReportForAdmin(string pQuestionnaireId)
        {
            StringBuilder sBuilder = new StringBuilder(); // StringBuilder Object

            // Creating the HTML string - Start
            sBuilder.Append("<tr><td>");
            sBuilder.Append("Dear Administrator,<br /> <br />");
            sBuilder.Append("A Patient has just completed the <a style='color:#000;' href='" + CQ.SiteURL
                + "Report.aspx?q=" + pQuestionnaireId + "&u=admin' target='_blank'><b>Questionnaire Report</b></a>.<br />View / Approve it " +
                "from the <a style='color:#000;' href='" + CQ.SiteURL + "History.aspx' target='_blank'><b>Dashboard Section</b></a> " +
                "by logging in as <u>info@abundalife.com</u><br /><br />");
            sBuilder.Append("</td></tr>");
            // Creating the HTML string - End

            string header = "<html><head><title>" + ProjectName + "</title>"
            + "</head><body style='font-family: tahoma;'><table width=600 style='border:1px solid #000;'>" +
            "<tr><td style='border-bottom:1px solid #000; background-color:#F2F2F2;'><img src='" + SiteURL
            + "Images/abunda-life.png' alt='" + ProjectName + "' title='" + ProjectName + "' /></td></tr><tr><td style='padding-left:20px; " +
            "border-bottom:1px solid #000;'><table width='100%' style='font-size: 13px;'>";

            string footer = "</table></td></tr><tr><td style='padding-left:20px; font-size: 13px; padding-top:5px;'>Team "
            + ProjectName + "<br />" + "<a style='color:#000;' href='" + SiteURL + "SignIn.aspx'>" + ProjectName
            + "</a></td></tr></table></body></html>";

            string body = string.Empty;

            body = header + sBuilder.ToString() + footer; // Assigning value which will be returned
            sBuilder.Clear(); // clearing all contents in it
            return body; // Returning string message
        }

        // used to prepare an HTML for the Questionnaire Report of a Patient which will be send to the Patient.
        public static string PrepareQuestionnaireReportForPatient(string pQuestionnaireId)
        {
            StringBuilder sBuilder = new StringBuilder(); // StringBuilder Object

            // Creating the HTML string - Start
            sBuilder.Append("<tr><td>");
            sBuilder.Append("Dear Esteemed User,<br /> <br />");
            sBuilder.Append("Your <a style='color:#000;' href='" + CQ.SiteURL + "Report.aspx?q=" + pQuestionnaireId 
                + "' target='_blank'><b>Questionnaire Report</b></a> has some updates.<br />Please check it by logging " +
                "into your <a style='color:#000;' href='" + CQ.SiteURL + "SignIn.aspx' target='_blank'><b>account</b></a> with " +
                CQ.ProjectName + ".<br /><br />");
            sBuilder.Append("</td></tr>");
            sBuilder.Append("<tr><td>");
            // Creating the HTML string - End

            string header = "<html><head><title>" + ProjectName + "</title>"
            + "</head><body style='font-family: tahoma;'><table width=600 style='border:1px solid #000;'>" +
            "<tr><td style='border-bottom:1px solid #000; background-color:#F2F2F2;'><img src='" + SiteURL
            + "Images/abunda-life.png' alt='" + ProjectName + "' title='" + ProjectName + "' /></td></tr><tr><td style='padding-left:20px; " +
            "border-bottom:1px solid #000;'><table width='100%' style='font-size: 13px;'>";

            string footer = "</table></td></tr><tr><td style='padding-left:20px; font-size: 13px; padding-top:5px;'>Team "
            + ProjectName + "<br />" + "<a style='color:#000;' href='" + SiteURL + "SignIn.aspx'>" + ProjectName
            + "</a></td></tr></table></body></html>";

            string body = string.Empty;

            body = header + sBuilder.ToString() + footer; // Assigning value which will be returned
            sBuilder.Clear(); // clearing all contents in it
            return body; // Returning string message
        }

        // used to prepare an HTML for the Questionnaire Cover Report of a Patient which will be send to the Administrator (frontdesk@abundalife.com)
        public static string PrepareCoverReport(string pQuestionnaireId, string pCoverReport)
        {
            StringBuilder sBuilder = new StringBuilder(); // StringBuilder Object

            // Creating the HTML string - Start
            sBuilder.Append("<tr><td>");
            sBuilder.Append("Dear Administrator,<br /> <br />");
            sBuilder.Append("A Patient has just completed the <a style='color:#000;' href='" + CQ.SiteURL
                + "Report.aspx?q=" + pQuestionnaireId + "&u=admin' target='_blank'><b>Questionnaire Report</b></a>.<br />Cover Report of it is as follows: <br /><br />");
            sBuilder.Append("</td></tr>");
            sBuilder.Append("<tr><td>");
            sBuilder.Append(pCoverReport);
            sBuilder.Append("</td></tr>");
            // Creating the HTML string - End

            string header = "<html><head><title>" + ProjectName + "</title>"
            + "<style type='text/css'>.redtextbold{color:Red; font-weight:bold;}.greentextbold{color:Green; font-weight:bold;}.bluetextbold{color:Blue; font-weight:bold;}</style>" 
            + "</head><body style='font-family: tahoma;'><table width=600 style='border:1px solid #000;'>" +
            "<tr><td style='border-bottom:1px solid #000; background-color:#F2F2F2;'><img src='" + SiteURL
            + "Images/abunda-life.png' alt='" + ProjectName + "' title='" + ProjectName + "' /></td></tr><tr><td style='padding-left:20px; " +
            "border-bottom:1px solid #000;'><table width='100%' style='font-size: 13px;'>";

            string footer = "</table></td></tr><tr><td style='padding-left:20px; font-size: 13px; padding-top:5px;'>Team "
            + ProjectName + "<br />" + "<a style='color:#000;' href='" + SiteURL + "SignIn.aspx'>" + ProjectName
            + "</a></td></tr></table></body></html>";

            string body = string.Empty;

            body = header + sBuilder.ToString() + footer; // Assigning value which will be returned
            sBuilder.Clear(); // clearing all contents in it
            return body; // Returning string message
        }
        #endregion

        // This function is used to export page's content to word file
        public static void ExportToWord(HtmlGenericControl pDiv, string pFileName)
        {
            HttpContext.Current.Response.ClearContent();
            HttpContext.Current.Response.ContentType = "application/msword";
            HttpContext.Current.Response.ContentEncoding = System.Text.UnicodeEncoding.UTF8;
            HttpContext.Current.Response.Charset = "UTF-8";
            HttpContext.Current.Response.AddHeader("content-disposition", "attachment; filename=" + pFileName + ".doc");

            StringWriter sWriter = new StringWriter();
            HtmlTextWriter hTextWriter = new HtmlTextWriter(sWriter);
            HtmlForm hForm = new HtmlForm();
            pDiv.Parent.Controls.Add(hForm);
            hForm.Attributes["runat"] = "server";
            hForm.Controls.Add(pDiv);
            hForm.RenderControl(hTextWriter);
            hForm.Page.EnableViewState = false;

            #region "Creating HTML Body for output to MS Word Document"
            string strBody = sWriter.ToString(); // getting HTML Body

            // replacing multiple class assignment with one class assignment by merging two classes
            strBody = strBody.Replace("hand noPrint", "hand-noPrint");
            
            strBody = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" /><title></title>" +
                    "<style type=\"text/css\" media=\"screen\">" + ReadContentsOfFile(CQ.PhysicalPath 
                    + @"Questionnaire/Styles/Styles.css") + "</style>" +
                    "<style type=\"text/css\" media=\"print\">" + ReadContentsOfFile(CQ.PhysicalPath 
                    + @"Questionnaire/Styles/Print.css") + "</style>" +
                    "<style type=\"text/css\" media=\"screen\">"
                        + "@page PageSection {size:595.45pt 841.7pt; margin:0.5in 0.2in 0.5in 0.5in;mso-header-margin:.5in;mso-footer-margin:.5in;mso-paper-source:0;}"
                        + "div.PageSection {page:PageSection;}" +
                        ".hand-noPrint{cursor:pointer;display: block;}" + "</style>" +
                    "<style type=\"text/css\" media=\"print\">"
                        + "@page PageSection {size:595.45pt 841.7pt; margin:0.5in 0.2in 0.5in 0.5in;mso-header-margin:.5in;mso-footer-margin:.5in;mso-paper-source:0;}"
                        + "div.PageSection {page:PageSection;}" +
                        ".hand-noPrint{display: none;}" + "</style>" +
                        "</head><body><div class=\"PageSection\">" + strBody + "</div></body></html>";
            #endregion

            HttpContext.Current.Response.Write(strBody);
            HttpContext.Current.Response.End();
            HttpContext.Current.Response.Flush();
        }

        // This function will return the content in a text/any file
        public static string ReadContentsOfFile(string pFilePath)
        {
            // Local variables
            string content = string.Empty;
            string line = null;

            using (System.IO.StreamReader sr = System.IO.File.OpenText(pFilePath)) // Opening file for reading
            {
                while ((line = sr.ReadLine()) != null) // Reading lines one by one
                    content = content + line;
            }

            // Returning string content
            return content;
        }
    }
}