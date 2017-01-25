using System;
using System.Web.Security;

namespace abundalife1001
{
    public partial class Create_User1 : System.Web.UI.Page
    {
        clsData clsData = new clsData();

        protected void SignOut(object sender, EventArgs e)
        {
            //delete the users auth cookie and sign out
            FormsAuthentication.SignOut();
            //redirect the user to their referring page
            Response.Redirect(Request.UrlReferrer.ToString());
        }

        protected void BackToMainMenu(object sender, EventArgs e)
        {           
            Response.Redirect("Default.aspx",false);
        }
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Label1.Text = clsData.ins_user(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text);
        }
    }
}
