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
    public partial class ViewPatients : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection myConnection = new MySqlConnection(ConfigurationSettings.AppSettings["DBConnectionString"].ToString());
        MySql.Data.MySqlClient.MySqlCommand myCommand = new MySql.Data.MySqlClient.MySqlCommand();
        MySql.Data.MySqlClient.MySqlDataReader myDR;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.AutoGenerateColumns = false;

            myCommand.CommandText = "Select id,first_name,last_name,email,telephone,fax from customers";
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

       
        protected void lnkButton_Click(object sender, CommandEventArgs e)
        {
            myFunction(e.CommandArgument.ToString());

        }

        protected void lnkButtonview_Click(object sender, CommandEventArgs e)
        {
            myViewFunction(e.CommandArgument.ToString());

        }

        protected void lnkButtonPerson_Click(object sender, CommandEventArgs e)
        {
            EditPerson(e.CommandArgument.ToString());
        }

        private void EditPerson(string id)
        {
            Response.Redirect("Edit_Person.aspx?ID=" + id.ToString());
        }

        private void myViewFunction(string id)
        {
            //Response.Write("Do some action with row " + rowIndex.ToString());
            Response.Redirect("View_Profile.aspx?ID=" + id.ToString());

        }
        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    Response.Write("test");
        //    int index = Convert.ToInt32(e.CommandArgument);
        //    //myFunction(index);
        //}

        //private void myFunction(int rowIndex)
        private void myFunction(string id)
        {
            //Response.Write("Do some action with row " + rowIndex.ToString());
            //Response.Redirect("Insert_Profile.aspx?ID="+id.ToString());
            Response.Redirect("Complete_Patient.aspx?ID=" + id.ToString());

        }


    }
}
