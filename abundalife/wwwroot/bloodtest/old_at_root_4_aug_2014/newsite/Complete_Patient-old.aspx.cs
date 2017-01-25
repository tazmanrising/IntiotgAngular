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
    public partial class Complete_Patient : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection myConnection = new MySqlConnection(ConfigurationSettings.AppSettings["DBConnectionString"].ToString());
        MySql.Data.MySqlClient.MySqlCommand myCommand = new MySql.Data.MySqlClient.MySqlCommand();
        MySql.Data.MySqlClient.MySqlDataReader myDR;

        protected void Page_Load(object sender, EventArgs e)
        {


            string results = "";

            try
            {


                string sql = "SELECT id, a.address_id,first_name,last_name,dob,email,telephone,fax,address,address2,city," +
                "state,zip FROM address a inner join customers c on a.address_id = c.address_id" +
                " where id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);

                myCommand.CommandText = sql;
                myCommand.Connection = myConnection;

                myConnection.Open();
                myDR = myCommand.ExecuteReader();

                while (myDR.Read())
                {
                    //addressid = myDR.GetString(0);
                    xid.Value = myDR.GetString("id").ToString();
                    Label1.Text = myDR.GetString("first_name").ToString();
                    Label2.Text = myDR.GetString("last_name").ToString();
                    Label3.Text = myDR.GetString("telephone").ToString();
                    Label4.Text = myDR.GetString("email").ToString();
                    //id.Value = myDR.GetString("id").ToString();
                    //address_id.Value = myDR.GetString("address_id").ToString();

                }


            }
            catch (Exception ex)
            {
                results = ex.ToString() + " -- Failed by catch";
            }


            

        }
    }
}
