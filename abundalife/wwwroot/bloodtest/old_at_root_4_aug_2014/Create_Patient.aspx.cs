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
using System.Globalization;


namespace abundalife1001
{
    public partial class Create_Patient : System.Web.UI.Page
    {
        
        //string connStr = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        protected void SignOut(object sender, EventArgs e)
        {
            //delete the users auth cookie and sign out
            FormsAuthentication.SignOut();
            //redirect the user to their referring page
            Response.Redirect(Request.UrlReferrer.ToString());
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            TextBox14.Text = DateTime.Today.ToString("MM/dd/yyyy"); 


            //string dt = DateTime.Today.ToString("dd/MM/yyyy");
            //DateTime rdt = DateTime.Parse(dt,"yyyy,MM,dd",CultureInfo.InvariantCulture).ToShortDateString();
            //TextBox14.Text = DateTime.ParseExact(dt, "yyyy/MM/dd", CultureInfo.InvariantCulture).ToString();

            //DateTime dateValue;
            //string dateString = "2/16/2008 12:15:12 PM";
            //dateValue = DateTime.Parse(dateString);
            //TextBox14.Text = dateValue.ToString();

            //dateValue = DateTime.ParseExact(dt, "yyyy/MM/dd", CultureInfo.InvariantCulture);
            //TextBox14.Text = dateValue.ToString();

            //DateTime.Today.ToString("dd/MM/yyyy");

            /*
            string stringDate = "21/08/2008";  
            DateTime date;  
            string convertedDate = String.Empty;
            if (DateTime.TryParseExact(stringDate, "dd/MM/yyyy", null, DateTimeStyles.None, out date))
            {
                convertedDate = date.ToString("MM/dd/yyyy");
            }

            TextBox14.Text = convertedDate.ToString();
            */
            

           // if (Page.IsPostBack)
           // {
                //Response.Redirect("ViewPatients.aspx");
            //}


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

              string results = "";

              try
              {
                  MySql.Data.MySqlClient.MySqlConnection conn;
                  //MySql.Data.MySqlClient.MySqlCommand cmd;

                  conn = new MySql.Data.MySqlClient.MySqlConnection();
                  //cmd = new MySql.Data.MySqlClient.MySqlCommand();

                  conn.ConnectionString = ConfigurationSettings.AppSettings["DBConnectionString"].ToString();
                  conn.Open();


                  MySqlCommand cmd = new MySqlCommand("INSERT INTO address(address,address2,city,state,zip) " +
                      "VALUES(\'" + TextBox5.Text + "\',\'" + TextBox6.Text + "\',\'" + TextBox7.Text + "\',\'" + TextBox8.Text + "\',\'" + TextBox9.Text + "\')", conn);

                  cmd.ExecuteNonQuery();

                  //conn.Close();

                  MySql.Data.MySqlClient.MySqlConnection myConnection = new MySqlConnection(ConfigurationSettings.AppSettings["DBConnectionString"].ToString());
                  MySql.Data.MySqlClient.MySqlCommand myCommand = new MySql.Data.MySqlClient.MySqlCommand();
                  MySql.Data.MySqlClient.MySqlDataReader myDR;

                  myCommand.CommandText = "Select max(address_id) from address";
                  myCommand.Connection = myConnection;

                  myConnection.Open();
                  myDR = myCommand.ExecuteReader();

                  //DataTable dt = new DataTable();

                  //dt.Load(myDR);

                  string addressid = "";

                   while (myDR.Read())
                   {
                       addressid = myDR.GetString(0);
                   }

                   string stringDate = TextBox14.Text.Trim();
                   DateTime date;
                   string convertedDate = String.Empty;
                   if (DateTime.TryParseExact(stringDate, "MM/dd/yyyy", null, DateTimeStyles.None, out date))
                   {
                       convertedDate = date.ToString("yyyy-MM-dd");
                   }

                   //TextBox14.Text = convertedDate.ToString();


                  MySqlCommand cmd2 = new MySqlCommand("INSERT INTO customers(first_name,last_name,dob,email,telephone,fax,address_id,datenow) " +
                          "VALUES(\'" + TextBox1.Text + "\',\'" + TextBox2.Text + "\',\'" + TextBox3.Text + "\',\'" + TextBox4.Text + "\',\'" + TextBox10.Text + "\',\'" + TextBox11.Text + "\',\'" + addressid + "\',\'" + convertedDate.ToString() + "\')", conn);

                  int rowCount = cmd2.ExecuteNonQuery();
                
                  if (rowCount == 1)
                  {
                      //Insert Success
                      results = "Success";
                  }
                  else
                  {
                      //Insert Fail
                      results = "Failed";
                  }
              }
              catch (Exception ex)
              {
                  results = ex.ToString() + " -- Failed by catch";
              }


              Label1.Text = results;

              Response.Redirect("ViewPatients.aspx");
             
        }

        
        

       

        
    }
}
