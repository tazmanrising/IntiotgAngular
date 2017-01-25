using System;
using System.Collections;
using System.Web;
using abundalife1001.Questionnaire;

namespace abundalife1001
{
    public class Global : System.Web.HttpApplication
    {
        // This function executes when an unhandled error occurs...
        void Application_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError().GetBaseException(); // Getting Last Error
            string errorDescription = "<br /><b>MESSAGE:</b> " + ex.Message +  // Logging it in in a string
                                      "<br /><b>PAGE NAME:</b> " + Request.Path +
                                      "<br /><b>QUERYSTRING:</b> " + Request.QueryString.ToString() +
                                      "<br /><b>METHOD:</b> " + ex.TargetSite +
                                      "<br /><b>STACKTRACE:</b> " + ex.StackTrace +
                                      "<br /><b>PARAMETERS:</b> is/are as follows:";

            foreach (DictionaryEntry pair in ex.Data) // Exception's data dictionary.
                errorDescription += "<br />" + pair.Key + " = " + pair.Value;

            // Sending error mail to administrator - // Utilities.Extensions.ToLogException(ex.ToString()); 
            CQ.SendMail("tomsproxy@gmail.com", CQ.ProjectName + " ERROR : "
                + DateTime.Now.ToShortDateString() + " - " + DateTime.Now.ToShortTimeString(), errorDescription);
        }
    }
}