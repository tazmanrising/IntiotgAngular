using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MySql.Data.MySqlClient;

namespace abundalife1001
{
    public partial class View_Users : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection myConnection = new MySqlConnection(ConfigurationSettings.AppSettings["DBConnectionString"].ToString());
        MySql.Data.MySqlClient.MySqlCommand myCommand = new MySql.Data.MySqlClient.MySqlCommand();
        MySql.Data.MySqlClient.MySqlDataReader myDR;

        protected void SignOut(object sender, EventArgs e)
        {
            //delete the users auth cookie and sign out
            FormsAuthentication.SignOut();
            //redirect the user to their referring page
            Response.Redirect(Request.UrlReferrer.ToString());
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.AutoGenerateColumns = false;

            myCommand.CommandText = "Select user_id, login,first_name, last_name,email from user";
            myCommand.Connection = myConnection;

            myConnection.Open();
            myDR = myCommand.ExecuteReader();
            
            DataTable dt = new DataTable();

            dt.Load(myDR);


           // while (myDR.Read())
           // {
                
           //     myDR.GetString(0);
           // }

            //GridView1.DataSource = myDR;
            //GridView1.DataBind();

            DataSet ds = new DataSet();
            ds.Tables.Add(dt);


            //DataSet dsActivity = myDR.get.GetActivityDetails();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();



            myConnection.Close();

        }

       


        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView row = e.Row.DataItem as DataRowView;
                Label lblCustName = e.Row.FindControl("lblCustName") as Label;
                if (lblCustName != null)
                    lblCustName.Text = row["custname"].ToString();
                HyperLink hlEdit = e.Row.FindControl("hlEdit") as HyperLink;
                if (hlEdit != null)
                    hlEdit.NavigateUrl = "editcust.aspx?id=" + row["id"].ToString();
            }
        } 


    }
}
