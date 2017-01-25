using System;
using System.Configuration;
using System.Web;
using MySql.Data.MySqlClient;


namespace abundalife1001
{
    public partial class View_Urine : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection myConnection = new MySqlConnection(ConfigurationSettings.AppSettings["DBConnectionString"].ToString());
        MySql.Data.MySqlClient.MySqlCommand myCommand = new MySql.Data.MySqlClient.MySqlCommand();
        MySql.Data.MySqlClient.MySqlDataReader myDR;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            xid.Value = HttpContext.Current.Request.QueryString["ID"]; 

            string sql = "Select customers_urine_id,customer_id,ascorbicacid,color,specificGravity,PHNegative," +
                    "UrineGlucose,Bilirubin," +
                    "Keytone,UrineBlood,UrineProtein,Urubilinogen,Nitrite,Leukocytes,Cast,Mucus,RB," +
                    "EpithelialCells,CalciumOxalate,TriplePhosphate,UrineUricAcid,Amorphous,Bacteria," +
                    "SalivaPH,SugarRefractometor,Conductivity,NitrateNitrogen,AmmonicalNitrogen,Indican" +
               " from customers_urine where customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
            myCommand.CommandText = sql;
            myCommand.Connection = myConnection;
            myConnection.Open();
            myDR = myCommand.ExecuteReader();
            while (myDR.Read())
            {
                ascorbicacid.Text = myDR.GetString("ascorbicacid").ToString();
                //color.Text = myDR.GetString("color").ToString();
                specificGravity.Text = myDR.GetString("specificGravity").ToString();
                PHNegative.Text = myDR.GetString("PHNegative").ToString();
                UrineGlucose.Text = myDR.GetString("UrineGlucose").ToString();
                Bilirubin.Text = myDR.GetString("Bilirubin").ToString();
                Keytone.Text = myDR.GetString("Keytone").ToString();
                UrineBlood.Text = myDR.GetString("UrineBlood").ToString();
                UrineProtein.Text = myDR.GetString("UrineProtein").ToString();
                Urubilinogen.Text = myDR.GetString("Urubilinogen").ToString();
                Amorphous.Text = myDR.GetString("Amorphous").ToString();
                Bacteria.Text = myDR.GetString("Bacteria").ToString();
                //SalivaPH.Text = myDR.GetString("SalivaPH").ToString();
                //SugarRefractometor.Text = myDR.GetString("SugarRefractometor").ToString();
                //Conductivity.Text = myDR.GetString("Conductivity").ToString();
                //NitrateNitrogen.Text = myDR.GetString("NitrateNitrogen").ToString();
                //AmmonicalNitrogen.Text = myDR.GetString("AmmonicalNitrogen").ToString();
                //Indican.Text = myDR.GetString("Indican").ToString();


            }
        }

        protected void Blood_Click(object sender, EventArgs e)
        {
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
