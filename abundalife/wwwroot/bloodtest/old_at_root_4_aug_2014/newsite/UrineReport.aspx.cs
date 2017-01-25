using System;
using System.Configuration;
using System.Web;
using MySql.Data.MySqlClient;



namespace abundalife1001
{
    public partial class UrineReport : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection myConnection = new MySqlConnection(ConfigurationSettings.AppSettings["DBConnectionString"].ToString());
        MySql.Data.MySqlClient.MySqlCommand myCommand = new MySql.Data.MySqlClient.MySqlCommand();
        MySql.Data.MySqlClient.MySqlDataReader myDR;

        protected void Page_Load(object sender, EventArgs e)
        {
           
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

            sql = "Select customers_urine_id,customer_id,ascorbicacid,color,specificGravity,PHNegative," +
                    "UrineGlucose,Bilirubin," +
                    "Keytone,UrineBlood,UrineProtein,Urubilinogen,Nitrite,Leukocytes,Cast,Mucus,RB," +
                    "EpithelialCells,CalciumOxalate,TriplePhosphate,UrineUricAcid,Amorphous,Bacteria," +
                    "SalivaPH,SugarRefractometor,Conductivity,NitrateNitrogen,AmmonicalNitrogen,Indican" +
               " from customers_urine where customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"])+ " order by 1 desc LIMIT 1";

            myCommand.CommandText = sql;
            myCommand.Connection = myConnection;
            myConnection.Open();
            myDR = myCommand.ExecuteReader();

            while (myDR.Read())
            {
                u_score_ascorbicacid.Text = myDR.GetString("ascorbicacid").ToString();
                //color.Text = myDR.GetString("color").ToString();

                u_score_spec_gravity.Text = myDR.GetString("specificGravity").ToString();
                u_score_urine_ph.Text = myDR.GetString("PHNegative").ToString();
                u_score_urine_gluc.Text = myDR.GetString("UrineGlucose").ToString();
                u_score_bilirubin_urine.Text = myDR.GetString("Bilirubin").ToString();
                u_score_ketone.Text = myDR.GetString("Keytone").ToString();
                u_score_urinary_occ_blood.Text = myDR.GetString("UrineBlood").ToString();
                u_score_urinary_protein.Text = myDR.GetString("UrineProtein").ToString();
                u_score_urobilinogen.Text = myDR.GetString("Urubilinogen").ToString();
                u_score_nitrite.Text = myDR.GetString("Nitrite").ToString();
                u_score_leukocytes.Text = myDR.GetString("Leukocytes").ToString();
                u_score_cast.Text = myDR.GetString("Cast").ToString();
                u_score_mucus.Text = myDR.GetString("Mucus").ToString();
                u_score_urine_rbc.Text = myDR.GetString("RB").ToString();
                u_score_epithelial.Text = myDR.GetString("EpithelialCells").ToString();
                u_score_cal_ox.Text = myDR.GetString("CalciumOxalate").ToString();
                u_score_tri_phos.Text = myDR.GetString("TriplePhosphate").ToString();
                u_score_uric_acid.Text = myDR.GetString("UrineUricAcid").ToString();
                u_score_amorphous.Text = myDR.GetString("Amorphous").ToString();
                u_score_bacteria.Text = myDR.GetString("Bacteria").ToString();

                // rest text field's value not assigned in the code

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
