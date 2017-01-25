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
    public partial class View_Special : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection myConnection = new MySqlConnection(ConfigurationSettings.AppSettings["DBConnectionString"].ToString());
        MySql.Data.MySqlClient.MySqlCommand myCommand = new MySql.Data.MySqlClient.MySqlCommand();
        MySql.Data.MySqlClient.MySqlDataReader myDR;

        protected void Page_Load(object sender, EventArgs e)
        {


            xid.Value = HttpContext.Current.Request.QueryString["ID"];
            string sql = "Select customers_special_id,customer_id,FRUCTOSAMINE," +
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
           "DIHYDROTESTOSTERONEDHT,PROLACTIN,ESTRONEE1,ANDROSTANEDIOLGLUCURONIDE" +
           " FROM customers_special where customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
            myCommand.CommandText = sql;
            myCommand.Connection = myConnection;
            myConnection.Open();
            myDR = myCommand.ExecuteReader();
            while (myDR.Read())
            {
                FRUCTOSAMINE.Text = myDR.GetString("FRUCTOSAMINE").ToString();
                TOTALLIPOPROTEINB.Text = myDR.GetString("TOTALLIPOPROTEINB").ToString();
                FOLICACID.Text = myDR.GetString("FOLICACID").ToString();
                VITAMINB12.Text = myDR.GetString("VITAMINB12").ToString();
                ZINC.Text = myDR.GetString("ZINC").ToString();
                VITAMIND2500.Text = myDR.GetString("VITAMIND2500").ToString();
                VITAMIND125DIHYDROXY.Text = myDR.GetString("VITAMIND125DIHYDROXY").ToString();
                VITAMINC.Text = myDR.GetString("VITAMINC").ToString();
                THIAMINFREEVITAMINB1.Text = myDR.GetString("THIAMINFREEVITAMINB1").ToString();
                VITAMINB6PYRIDOXIN.Text = myDR.GetString("VITAMINB6PYRIDOXIN").ToString();
                VITAMINA.Text = myDR.GetString("VITAMINA").ToString();
                LEADBLOOD.Text = myDR.GetString("LEADBLOOD").ToString();
                MERCURYBLOOD.Text = myDR.GetString("MERCURYBLOOD").ToString();
                ARSENICBLOOD.Text = myDR.GetString("ARSENICBLOOD").ToString();
                VITAMINB2RIBOFLAVIN.Text = myDR.GetString("VITAMINB2RIBOFLAVIN").ToString();
                GLUTEN.Text = myDR.GetString("GLUTEN").ToString();
                PYLORI.Text = myDR.GetString("PYLORI").ToString();
                CANDIDA.Text = myDR.GetString("CANDIDA").ToString();
                LIPOPROTEINA.Text = myDR.GetString("LIPOPROTEINA").ToString();
                FIBRINOGEN.Text = myDR.GetString("FIBRINOGEN").ToString();
                DHEASULFATE.Text = myDR.GetString("DHEASULFATE").ToString();
                IGF1.Text = myDR.GetString("IGF1").ToString();
                MENTESTOSTERONETOTAL.Text = myDR.GetString("MENTESTOSTERONETOTAL").ToString();
                WOMENTESTOSTERONETOTAL.Text = myDR.GetString("WOMENTESTOSTERONETOTAL").ToString();
                MENTESTOSTERONEFREE.Text = myDR.GetString("MENTESTOSTERONEFREE").ToString();
                PROSTATICSPECIFICANTIGEN.Text = myDR.GetString("PROSTATICSPECIFICANTIGEN").ToString();
                FREEPSA.Text = myDR.GetString("FREEPSA").ToString();
                SEXHORMONEBINDINGGLOBULIN.Text = myDR.GetString("SEXHORMONEBINDINGGLOBULIN").ToString();
                DIHYDROTESTOSTRONE.Text = myDR.GetString("DIHYDROTESTOSTRONE").ToString();
                ESTRADIOLMEN.Text = myDR.GetString("ESTRADIOLMEN").ToString();
                ESTRADIOLFEMALE.Text = myDR.GetString("ESTRADIOLFEMALE").ToString();
                MIDFOLLICULAR.Text = myDR.GetString("MIDFOLLICULAR").ToString();
                PERIOVULATORY.Text = myDR.GetString("PERIOVULATORY").ToString();
                MIDLUTEAL.Text = myDR.GetString("MIDLUTEAL").ToString();
                POSTMENOPAUSAL.Text = myDR.GetString("POSTMENOPAUSAL").ToString();
                PROLACTIN2.Text = myDR.GetString("PROLACTIN2").ToString();
                LH.Text = myDR.GetString("LH").ToString();
                FSH.Text = myDR.GetString("FSH").ToString();
                ESTRADIOLE2.Text = myDR.GetString("ESTRADIOLE2").ToString();
                EstroneE2.Text = myDR.GetString("EstroneE2").ToString();
                SHBG.Text = myDR.GetString("SHBG").ToString();
                AG.Text = myDR.GetString("AG").ToString();
                ESTRADIOLE2MEN.Text = myDR.GetString("ESTRADIOLE2MEN").ToString();
                TESTOSTERONETOTAL.Text = myDR.GetString("TESTOSTERONETOTAL").ToString();
                TESTOSTERONEFREE.Text = myDR.GetString("TESTOSTERONEFREE").ToString();
                DIHYDROTESTOSTERONEDHT.Text = myDR.GetString("DIHYDROTESTOSTERONEDHT").ToString();
                PROLACTIN.Text = myDR.GetString("PROLACTIN").ToString();
                ESTRONEE1.Text = myDR.GetString("ESTRONEE1").ToString();
                ANDROSTANEDIOLGLUCURONIDE.Text = myDR.GetString("ANDROSTANEDIOLGLUCURONIDE").ToString();
            }
        }

        protected void Blood_Click(object sender, EventArgs e)
        {
            //string t = "View_Profile.aspx?ID=" + xid.Value;
            Response.Redirect("View_Profile.aspx?ID=" + xid.Value);
        }

        protected void Urine_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Urine.aspx?ID=" + xid.Value);
        }

        protected void Saliva_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Saliva.aspx?ID=" + xid.Value);
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
