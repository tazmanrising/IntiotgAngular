using System;
using System.Configuration;
using System.Web;
using MySql.Data.MySqlClient;

namespace abundalife1001
{
    public partial class View_Saliva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySql.Data.MySqlClient.MySqlConnection myConnection = new MySqlConnection(ConfigurationSettings.AppSettings["DBConnectionString"].ToString());
            MySql.Data.MySqlClient.MySqlCommand myCommand = new MySql.Data.MySqlClient.MySqlCommand();
            MySql.Data.MySqlClient.MySqlDataReader myDR;


            xid.Value = HttpContext.Current.Request.QueryString["ID"];

            string sql = "Select customers_saliva_id,customer_id,sugarrefractometer,conductivity," +
                "nitratenitrogen,ammonicalnitrogen,indican,creativeprotein," +
                "homocystein,lacticacid,cortisol,cortisoldhea,insulin," +
                "estrogen,psa,testosterone,menprogesterone,womenprogesterone," +
                "fibbinogen,ca125 from customers_saliva where customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
            myCommand.CommandText = sql;
            myCommand.Connection = myConnection;
            myConnection.Open();
            myDR = myCommand.ExecuteReader();
            while (myDR.Read())
            {
                sugarrefractometer.Text = myDR.GetString("sugarrefractometer").ToString();
                conductivity.Text = myDR.GetString("conductivity").ToString();
                nitratenitrogen.Text = myDR.GetString("nitratenitrogen").ToString();
                ammonicalnitrogen.Text = myDR.GetString("ammonicalnitrogen").ToString();
                indican.Text = myDR.GetString("indican").ToString();
                creativeprotein.Text = myDR.GetString("creativeprotein").ToString();
                homocystein.Text = myDR.GetString("homocystein").ToString();
                lacticacid.Text = myDR.GetString("lacticacid").ToString();
                cortisol.Text = myDR.GetString("cortisol").ToString();
                cortisoldhea.Text = myDR.GetString("cortisoldhea").ToString();
                insulin.Text = myDR.GetString("insulin").ToString();
                estrogen.Text = myDR.GetString("estrogen").ToString();
                psa.Text = myDR.GetString("psa").ToString();
                testosterone.Text = myDR.GetString("testosterone").ToString();
                menprogesterone.Text = myDR.GetString("menprogesterone").ToString();
                womenprogesterone.Text = myDR.GetString("womenprogesterone").ToString();
                fibbinogen.Text = myDR.GetString("fibbinogen").ToString();
                ca125.Text = myDR.GetString("ca125").ToString();
            }
        }

        protected void Blood_Click(object sender, EventArgs e)
        {
            //string t = "View_Profile.aspx?ID=" + xid.Value;
            Response.Redirect("BloodReports.aspx?ID=" + xid.Value);
        }

        protected void Urine_Click(object sender, EventArgs e)
        {
            Response.Redirect("UrineReport.aspx?ID=" + xid.Value);
        }

        protected void Saliva_Click(object sender, EventArgs e)
        {
            Response.Redirect("SalivaReport.aspx?ID=" + xid.Value);
        }

        protected void Special_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Special.aspx?ID=" + xid.Value);
        }

        protected void Result_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Results.aspx?ID=" + xid.Value);
        }
    }
}
