using System;
using System.Configuration;
using System.Web;
using MySql.Data.MySqlClient;

namespace abundalife1001
{
    public partial class SalivaReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySql.Data.MySqlClient.MySqlConnection myConnection = new MySqlConnection(ConfigurationSettings.AppSettings["DBConnectionString"].ToString());
            MySql.Data.MySqlClient.MySqlCommand myCommand = new MySql.Data.MySqlClient.MySqlCommand();
            MySql.Data.MySqlClient.MySqlDataReader myDR;

            xid.Value = HttpContext.Current.Request.QueryString["ID"];

            string sql = "Select id,first_name,last_name,email,telephone,fax from customers" +
                         " where id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
            myCommand.CommandText = sql;
            myCommand.Connection = myConnection;

            myConnection.Open();
            myDR = myCommand.ExecuteReader();


            while (myDR.Read())
            {

                lblName.Text = myDR.GetString("first_name").ToString() + " " + myDR.GetString("last_name").ToString();
                xid.Value = myDR.GetString("id").ToString();
            }

            lblDate.Text = DateTime.Now.ToString("MM/dd/yyyy");

            myConnection.Close();

            sql = "Select customers_saliva_id,customer_id,sugarrefractometer,conductivity," +
                "nitratenitrogen,ammonicalnitrogen,indican,creativeprotein," +
                "homocystein,lacticacid,cortisol,cortisoldhea,insulin," +
                "estrogen,psa,testosterone,menprogesterone,womenprogesterone," +
                "fibbinogen,ca125 from customers_saliva where customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"])+" order by 1 desc LIMIT 1";

            myCommand.CommandText = sql;
            myCommand.Connection = myConnection;
            myConnection.Open();
            myDR = myCommand.ExecuteReader();

            while (myDR.Read())
            {  
                u_score_conductivity.Text = myDR.GetString("conductivity").ToString();
                u_score_nitrte_nitro.Text = myDR.GetString("nitratenitrogen").ToString();
                u_score_ammo_nitrte.Text = myDR.GetString("ammonicalnitrogen").ToString();
                u_score_indican.Text = myDR.GetString("indican").ToString();
                u_score_sugar_refrac.Text = myDR.GetString("sugarrefractometer").ToString();
                u_score_crp.Text = myDR.GetString("creativeprotein").ToString();
                u_score_homocysteine.Text = myDR.GetString("homocystein").ToString();
                u_score_lactic.Text = myDR.GetString("lacticacid").ToString();
                u_score_cortisol.Text = myDR.GetString("cortisol").ToString();
                u_score_cortisoldhea.Text = myDR.GetString("cortisoldhea").ToString();
                u_score_insuln.Text = myDR.GetString("insulin").ToString();
                u_score_estrogen.Text = myDR.GetString("estrogen").ToString();
                u_score_psa_men.Text = myDR.GetString("psa").ToString();
                u_score_testosterone.Text = myDR.GetString("testosterone").ToString();
                u_score_progestrone_men.Text = myDR.GetString("menprogesterone").ToString();
                u_score_progestrone_women.Text = myDR.GetString("womenprogesterone").ToString();
                u_score_fibrinogen.Text = myDR.GetString("fibbinogen").ToString();
                u_score_ca_125.Text = myDR.GetString("ca125").ToString();
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

        protected void btnBloodReports_Click(object sender, EventArgs e)
        {
            Response.Redirect("BloodReports.aspx?ID=" + xid.Value);
        }

        protected void btnUrineReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("UrineReport.aspx?ID=" + xid.Value);
        }

        protected void btnSalivaReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("SalivaReport.aspx?ID=" + xid.Value);
        }

        protected void btnAntiAging_Click(object sender, EventArgs e)
        {
            Response.Redirect("AntiAgingReport.aspx?ID=" + xid.Value);
        }

        protected void BackToMainMenu(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }

    }
}
