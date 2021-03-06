﻿using System;
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
    public partial class Edit_Person : System.Web.UI.Page
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

            if (Page.IsPostBack){
                
                //Update first
                MySql.Data.MySqlClient.MySqlConnection conn;
                conn = new MySql.Data.MySqlClient.MySqlConnection();
                conn.ConnectionString = ConfigurationSettings.AppSettings["DBConnectionString"].ToString();
                conn.Open();

                string cb = "UPDATE CUSTOMERS set " +
                    "first_name = \'" + TextBox1.Text + "\'," +
                    "last_name = \'" + TextBox2.Text + "\'," +
                    "email = \'" + TextBox4.Text + "\'," +
                    "telephone = \'" + TextBox10.Text + "\'," +
                    "fax = \'" + TextBox11.Text + "\' " +
                    " where id = " + id.Value;

                MySqlCommand cmd = new MySqlCommand(cb, conn);
                int rowCount = cmd.ExecuteNonQuery();

                string ca = "UPDATE ADDRESS set " +
                    "address = \'" + TextBox5.Text + "\'," +
                    "address2 = \'" + TextBox6.Text + "\'," +
                    "city = \'" + TextBox7.Text + "\'," +
                    "state = \'" + TextBox8.Text + "\'," +
                    "zip = \'" + TextBox9.Text + "\' " +
                    " where address_id = " + address_id.Value;

                MySqlCommand cmd2 = new MySqlCommand(ca, conn);
                int rowCount2 = cmd2.ExecuteNonQuery();

                Response.Redirect("ViewPatients.aspx");

                
            }


            string results = "";

            try
            {
                                      
              
                string sql = "SELECT id, a.address_id,first_name,last_name,dob,email,telephone,fax,address,address2,city," +
                "state,zip FROM abunda1001.address a inner join abunda1001.customers c on a.address_id = c.address_id" +
                " where id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]); 
                
                myCommand.CommandText = sql;
                myCommand.Connection = myConnection;

                myConnection.Open();
                myDR = myCommand.ExecuteReader();

                while (myDR.Read())
                {
                    //addressid = myDR.GetString(0);
                    TextBox1.Text = myDR.GetString("first_name").ToString();
                    TextBox2.Text = myDR.GetString("last_name").ToString();
                    //TextBox3.Text = myDR.GetString("dob").ToString();
                    TextBox4.Text = myDR.GetString("email").ToString();
                    TextBox10.Text = myDR.GetString("telephone").ToString();
                    TextBox11.Text = myDR.GetString("fax").ToString();
                    TextBox5.Text = myDR.GetString("address").ToString();
                    TextBox6.Text = myDR.GetString("address2").ToString();
                    TextBox7.Text = myDR.GetString("city").ToString();
                    TextBox8.Text = myDR.GetString("state").ToString();
                    TextBox9.Text = myDR.GetString("zip").ToString();
                    id.Value = myDR.GetString("id").ToString();
                    address_id.Value = myDR.GetString("address_id").ToString();

                }

               
            }
            catch (Exception ex)
            {
                results = ex.ToString() + " -- Failed by catch";
            }


            Label1.Text = results;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                                    
           
        }
    }
}
