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
    public partial class FinalResultsPrint : System.Web.UI.Page
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

            myConnection.Close();
            /////////////////////////////////
            string results = "";

            try
            {
                string sql2 = "select customers_results_id, customer_id,name, id " +
                "from customers_results cr,results1 r " +
                "where cr.one = r.id and customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
                myCommand.CommandText = sql2;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myDR = myCommand.ExecuteReader();
                while (myDR.Read()){
                    test1.Text = myDR.GetString("name").ToString();}
                myConnection.Close();
                sql2 = "select customers_results_id, customer_id,name, id " +
                "from customers_results cr,results1 r " +
                "where cr.two = r.id and customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
                myCommand.CommandText = sql2;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myDR = myCommand.ExecuteReader();
                while (myDR.Read()){
                    test2.Text = myDR.GetString("name").ToString();}
                myConnection.Close();
                sql2 = "select customers_results_id, customer_id,name, id " +
               "from customers_results cr,results1 r " +
               "where cr.three = r.id and customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
                myCommand.CommandText = sql2;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myDR = myCommand.ExecuteReader();
                while (myDR.Read())
                {
                    test3.Text = myDR.GetString("name").ToString();
                }
                myConnection.Close();
                sql2 = "select customers_results_id, customer_id,name, id " +
               "from customers_results cr,results1 r " +
               "where cr.four = r.id and customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
                myCommand.CommandText = sql2;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myDR = myCommand.ExecuteReader();
                while (myDR.Read())
                {
                    test4.Text = myDR.GetString("name").ToString();
                }
                myConnection.Close();
                sql2 = "select customers_results_id, customer_id,name, id " +
               "from customers_results cr,results1 r " +
               "where cr.five = r.id and customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
                myCommand.CommandText = sql2;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myDR = myCommand.ExecuteReader();
                while (myDR.Read())
                {
                    test5.Text = myDR.GetString("name").ToString();
                }
                myConnection.Close();
                sql2 = "select customers_results_id, customer_id,name, id " +
               "from customers_results cr,results1 r " +
               "where cr.six = r.id and customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
                myCommand.CommandText = sql2;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myDR = myCommand.ExecuteReader();
                while (myDR.Read())
                {
                    test6.Text = myDR.GetString("name").ToString();
                }
                myConnection.Close();
                sql2 = "select customers_results_id, customer_id,name, id " +
               "from customers_results cr,results1 r " +
               "where cr.seven = r.id and customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
                myCommand.CommandText = sql2;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myDR = myCommand.ExecuteReader();
                while (myDR.Read())
                {
                    test7.Text = myDR.GetString("name").ToString();
                }
                myConnection.Close();
                sql2 = "select customers_results_id, customer_id,name, id " +
               "from customers_results cr,results1 r " +
               "where cr.eight = r.id and customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
                myCommand.CommandText = sql2;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myDR = myCommand.ExecuteReader();
                while (myDR.Read())
                {
                    test8.Text = myDR.GetString("name").ToString();
                }
                myConnection.Close();
                sql2 = "select customers_results_id, customer_id,name, id " +
               "from customers_results cr,results1 r " +
               "where cr.nine = r.id and customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
                myCommand.CommandText = sql2;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myDR = myCommand.ExecuteReader();
                while (myDR.Read())
                {
                    test9.Text = myDR.GetString("name").ToString();
                }
                myConnection.Close();
                sql2 = "select customers_results_id, customer_id,name, id " +
               "from customers_results cr,results1 r " +
               "where cr.ten = r.id and customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
                myCommand.CommandText = sql2;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myDR = myCommand.ExecuteReader();
                while (myDR.Read())
                {
                    test10.Text = myDR.GetString("name").ToString();
                }
                myConnection.Close();
                sql2 = "select customers_results_id, customer_id,name, id " +
               "from customers_results cr,results1 r " +
               "where cr.eleven = r.id and customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
                myCommand.CommandText = sql2;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myDR = myCommand.ExecuteReader();
                while (myDR.Read())
                {
                    test11.Text = myDR.GetString("name").ToString();
                }
                myConnection.Close();
                sql2 = "select customers_results_id, customer_id,name, id " +
               "from customers_results cr,results1 r " +
               "where cr.twelve = r.id and customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
                myCommand.CommandText = sql2;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myDR = myCommand.ExecuteReader();
                while (myDR.Read())
                {
                    test12.Text = myDR.GetString("name").ToString();
                }
                myConnection.Close();
            }
            catch (Exception ex){
                results = ex.ToString() + " -- Failed by catch";}
                //Label1.Text = results;
            
        }
    }
}
