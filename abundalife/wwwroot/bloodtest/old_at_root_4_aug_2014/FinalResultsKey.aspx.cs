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
    public partial class FinalResultsKey : System.Web.UI.Page
    {


        MySql.Data.MySqlClient.MySqlConnection myConnection = new MySqlConnection(ConfigurationSettings.AppSettings["DBConnectionString"].ToString());
        MySql.Data.MySqlClient.MySqlCommand myCommand = new MySql.Data.MySqlClient.MySqlCommand();
        MySql.Data.MySqlClient.MySqlDataReader myDR;


        protected void Page_Load(object sender, EventArgs e)
        {


            string sql = "Select id,first_name,last_name,email,telephone,fax from customers" +
                     " where id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
            myCommand.CommandText = sql;
            myCommand.Connection = myConnection;

            myConnection.Open();
            myDR = myCommand.ExecuteReader();


            while (myDR.Read())
            {

                //name.Text = myDR.GetString("first_name").ToString() + " " + myDR.GetString("last_name").ToString();
                xid.Value = myDR.GetString("id").ToString();
            }
            
            if (Page.IsPostBack)
            {
                
                string results = "";
                MySql.Data.MySqlClient.MySqlConnection conn;
                conn = new MySql.Data.MySqlClient.MySqlConnection();
                conn.ConnectionString = ConfigurationSettings.AppSettings["DBConnectionString"].ToString();
                conn.Open();

                
                string val = "";
                int i = 0;

                foreach (string name in Request.Form.AllKeys)
                {
                    if (name != "")
                    {
                        if ((Request.Form.AllKeys[i].IndexOf("__VIEWSTATE") != -1) || (Request.Form.AllKeys[i].IndexOf("submit") != -1) || (Request.Form.AllKeys[i].IndexOf("xid") != -1) || (Request.Form.AllKeys[i].IndexOf("__EVENTVALIDATION") != -1))
                        {
                            
                        }
                        else
                        {
                            val += Request.Form.AllKeys[i] + ",";
                        }
                        
                        i++;
                       
                    }
                }//end for

                val = val.Remove(val.Length - 1, 1);


                string cb = "INSERT INTO customers_results(customer_id,one,two,three,four,five,six,seven,eight,nine,ten,eleven,twelve)" +
                    "values(" + Request.Form["xid"] + "," + val + ")";

                MySqlCommand cmd = new MySqlCommand(cb, conn);
                int rowCount = cmd.ExecuteNonQuery();
                
                
                //string xx = "";
                //Response.Redirect("View_Profile.aspx?ID=" + Request.Form["xid"]);

                Response.Redirect("FinalResultsPrint.aspx?ID=" + Request.Form["xid"]);


            }





        }
    }
}
