using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace abundalife1001
{
    public partial class AntiAging : System.Web.UI.Page
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

                lblName.Text = myDR.GetString("first_name").ToString() + " " + myDR.GetString("last_name").ToString();
                xid.Value = myDR.GetString("id").ToString();
            }

            lblDate.Text = DateTime.Now.ToString("MM/dd/yyyy");

            myConnection.Close();


            sql = "Select customers_special_id,customer_id,FRUCTOSAMINE," +
            "TOTALLIPOPROTEINB,FOLICACID,VITAMINB12,ZINC," +
            "VITAMIND2500,VITAMIND125DIHYDROXY,VITAMINC,THIAMINFREEVITAMINB1," +
            "VITAMINB6PYRIDOXIN,VITAMINA,LEADBLOOD,MERCURYBLOOD,ARSENICBLOOD," +
            "VITAMINB2RIBOFLAVIN,GLUTEN,PYLORI,CANDIDA,LIPOPROTEINA,FIBRINOGEN," +
            "DHEASULFATE,IGF1,MENTESTOSTERONETOTAL,WOMENTESTOSTERONETOTAL," +
            "MENTESTOSTERONEFREE,PROSTATICSPECIFICANTIGEN,FREEPSA," +
            "SEXHORMONEBINDINGGLOBULIN,DIHYDROTESTOSTRONE,ESTRADIOLMEN," +
            "ESTRADIOLFEMALE,MIDFOLLICULAR,PERIOVULATORY,MIDLUTEAL," +
            "POSTMENOPAUSAL,PROLACTIN2,LH,FSH,ESTRADIOLE2,EstroneE2," +
            "SHBG,AG,ESTRADIOLE2MEN,TESTOSTERONETOTAL,TESTOSTERONEFREE," +
            "DIHYDROTESTOSTERONEDHT,PROLACTIN,ESTRONEE1,ANDROSTANEDIOLGLUCURONIDE,LHMen,FSHMen,SHBGMen" +
            " FROM customers_special where customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"])+" order by 1 desc LIMIT 1";
            myCommand.CommandText = sql;
            myCommand.Connection = myConnection;
            myConnection.Open();
            myDR = myCommand.ExecuteReader();

            while (myDR.Read())
            {
                u_score_Frutosamine.Text = myDR.GetString("FRUCTOSAMINE").ToString();
                u_score_total_lipo_protein.Text = myDR.GetString("TOTALLIPOPROTEINB").ToString();
                u_score_FolicAcid.Text = myDR.GetString("FOLICACID").ToString();
                u_score_VitaminB12.Text = myDR.GetString("VITAMINB12").ToString();
                u_score_Zinc.Text = myDR.GetString("ZINC").ToString();
                u_score_VitaminD.Text = myDR.GetString("VITAMIND2500").ToString();
                u_score_VitaminD1.Text = myDR.GetString("VITAMIND125DIHYDROXY").ToString();
                u_score_VitaminC.Text = myDR.GetString("VITAMINC").ToString();
                u_score_VitaminB.Text = myDR.GetString("THIAMINFREEVITAMINB1").ToString();
                u_score_VitaminB6.Text = myDR.GetString("VITAMINB6PYRIDOXIN").ToString();
                u_score_VitaminA.Text = myDR.GetString("VITAMINA").ToString();
                u_score_LeadBlood.Text = myDR.GetString("LEADBLOOD").ToString();
                u_score_MercuryBlood.Text = myDR.GetString("MERCURYBLOOD").ToString();
                u_score_ArsenicBlood.Text = myDR.GetString("ARSENICBLOOD").ToString();
                u_score_VitaminB2.Text = myDR.GetString("VITAMINB2RIBOFLAVIN").ToString();
                u_score_Gluten.Text = myDR.GetString("GLUTEN").ToString();
                u_score_TPylori.Text = myDR.GetString("PYLORI").ToString();
                u_score_caa.Text = myDR.GetString("CANDIDA").ToString();
                u_score_LipoProteinA.Text = myDR.GetString("LIPOPROTEINA").ToString();
                u_score_Fibrinogen.Text = myDR.GetString("FIBRINOGEN").ToString();
                u_score_dhea.Text = myDR.GetString("DHEASULFATE").ToString();
                u_score_ifg1.Text = myDR.GetString("IGF1").ToString();
                u_score_TestosteroneMen.Text = myDR.GetString("MENTESTOSTERONETOTAL").ToString();
                u_score_TestosteroneWomen.Text = myDR.GetString("WOMENTESTOSTERONETOTAL").ToString();
                u_score_TestosteroneMenFree.Text = myDR.GetString("MENTESTOSTERONEFREE").ToString();
                u_score_PSA.Text = myDR.GetString("PROSTATICSPECIFICANTIGEN").ToString();
                u_score_PSAFree.Text = myDR.GetString("FREEPSA").ToString();
                u_score_SHBG.Text = myDR.GetString("SEXHORMONEBINDINGGLOBULIN").ToString();
                u_score_dht.Text = myDR.GetString("DIHYDROTESTOSTRONE").ToString();
                u_score_estradiol_men.Text = myDR.GetString("ESTRADIOLMEN").ToString();
                u_score_estradiol_female.Text = myDR.GetString("ESTRADIOLFEMALE").ToString();
                u_score_MidFollicular.Text = myDR.GetString("MIDFOLLICULAR").ToString();
                u_score_PeriOvulatory.Text = myDR.GetString("PERIOVULATORY").ToString();
                u_score_MidLuteal.Text = myDR.GetString("MIDLUTEAL").ToString();
                u_score_PostMenopausal.Text = myDR.GetString("POSTMENOPAUSAL").ToString();
                u_score_Prolactin.Text = myDR.GetString("PROLACTIN2").ToString();
                u_score_LH.Text = myDR.GetString("LH").ToString();
                u_score_FSH.Text = myDR.GetString("FSH").ToString();
                u_score_EstradiolE2.Text = myDR.GetString("ESTRADIOLE2").ToString();
                u_score_EstroneE2.Text = myDR.GetString("EstroneE2").ToString();
                u_score_shbg_women.Text = myDR.GetString("SHBG").ToString();
                u_score_AG.Text = myDR.GetString("AG").ToString();
                u_score_EstradiolE2Men.Text = myDR.GetString("ESTRADIOLE2MEN").ToString();
                u_score_TestosteroneTotalMen.Text = myDR.GetString("TESTOSTERONETOTAL").ToString();
                u_score_TestosteroneFreeMen.Text = myDR.GetString("TESTOSTERONEFREE").ToString();
                u_score_DHTMen.Text = myDR.GetString("DIHYDROTESTOSTERONEDHT").ToString();
                u_score_ProlactinMen.Text = myDR.GetString("PROLACTIN").ToString();

                u_score_LHMen.Text = myDR.GetString("LHMen").ToString();
                u_score_FSHMen.Text = myDR.GetString("FSHMen").ToString();
                u_score_SHBGMen.Text = myDR.GetString("SHBGMen").ToString();
                
                u_score_EstroneE1.Text = myDR.GetString("ESTRONEE1").ToString();
                u_score_AGMen.Text = myDR.GetString("ANDROSTANEDIOLGLUCURONIDE").ToString();
               
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
