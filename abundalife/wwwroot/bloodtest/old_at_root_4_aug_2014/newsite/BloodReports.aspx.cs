using System;
using System.Web;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;
namespace abundalife1001
{
    public partial class Reports : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection myConnection = new MySqlConnection(ConfigurationSettings.AppSettings["DBConnectionString"].ToString());
        MySql.Data.MySqlClient.MySqlCommand myCommand = new MySql.Data.MySqlClient.MySqlCommand();
        MySql.Data.MySqlClient.MySqlDataReader myDR;

        public void Page_Load(object sender, EventArgs e)
        {
            string url = HttpContext.Current.Request.Url.ToString();

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

            //xid.Value = HttpContext.Current.Request.QueryString["ID"];
            string wxid = HttpContext.Current.Request.QueryString["ID"];
            //nid.Text = HttpContext.Current.Request.QueryString["ID"]; 

            sql = "Select blood_customer_id,customer_id,glucose,bun,creatine,buncreatineratio,sodium,potassium," +
              "sodiumpotassiumratio,aniongap,chloride,carbondioxide,cholesterol,triglyceride,HDLCholesterol," +
              "LDLCholesterol,VLDLCholesterol,CholesterolHDLRatio,LDLHDLRatio,calcium,phosphorus,CalciumPhosRatio," +
              "AlkalinePhosphatase,AST,ALT,GT,LactateDhydrog,BilirubinTotal,uricacid,totalprotein,albumin," +
              "CalciumAlbuminRatio,Globulin,AGRatio,T3Uptake,T4Total,T4Free,FreeThyroxneIndex,ThyroidStimHorm," +
              "IronBindCapac,iron,PercentSaturat,Ferritin,rbc,Hemoglobin,Hematocrit,mcv,mch,mchc,rdw," +
              "PlateletCount,mpv,AbsolNeutrophis,wbc,Neutrophils,Lymphocytes,Monocytes,Ensinophils,Basophisis," +
              "AbsoluteLymphocytes,Bands,AbsoluteMonocytes,MixedCells,AbsolMixCells,EosinophilCountAbsol," +
              "BasophilsAbsoluteCount,AtypicalLymphs" +
              " from customers_blood where customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"])+ " order by 1 desc LIMIT 1";

            myCommand.CommandText = sql;
            myCommand.Connection = myConnection;
            myConnection.Open();
            myDR = myCommand.ExecuteReader();
            //DataTable dt = new DataTable();
            //dt.Load(myDR);


            while (myDR.Read())
            {
                u_score_glucose.Text = myDR.GetString("glucose").ToString();
                u_score_bun.Text = myDR.GetString("bun").ToString();
                u_score_creatinine.Text = myDR.GetString("creatine").ToString();
                u_score_bun_creatinine.Text = myDR.GetString("buncreatineratio").ToString();
                u_score_sodium.Text = myDR.GetString("sodium").ToString();
                u_score_potassium.Text = myDR.GetString("potassium").ToString();
                u_score_sod_pot.Text = myDR.GetString("sodiumpotassiumratio").ToString();
                u_score_anion_gap.Text = myDR.GetString("aniongap").ToString();
                u_score_chloride.Text = myDR.GetString("chloride").ToString();
                u_score_co2.Text = myDR.GetString("carbondioxide").ToString();
                u_score_cholesterol.Text = myDR.GetString("cholesterol").ToString();
                u_score_triglyceride.Text = myDR.GetString("triglyceride").ToString();
                u_score_hdl.Text = myDR.GetString("HDLCholesterol").ToString();
                u_score_ldl.Text = myDR.GetString("LDLCholesterol").ToString();
                u_score_vldl.Text = myDR.GetString("VLDLCholesterol").ToString();
                u_score_chol_hdl.Text = myDR.GetString("CholesterolHDLRatio").ToString();
                u_score_ldl_hdl.Text = myDR.GetString("LDLHDLRatio").ToString();
                u_score_calcium.Text = myDR.GetString("calcium").ToString();
                u_score_phosphorus.Text = myDR.GetString("phosphorus").ToString();
                u_score_cal_phos.Text = myDR.GetString("CalciumPhosRatio").ToString();
                u_score_alka_phos.Text = myDR.GetString("AlkalinePhosphatase").ToString();
                u_score_sgot.Text = myDR.GetString("AST").ToString();
                u_score_sgpt.Text = myDR.GetString("ALT").ToString();
                u_score_gamma.Text = myDR.GetString("GT").ToString();
                u_score_ldh.Text = myDR.GetString("LactateDhydrog").ToString();
                u_score_bilirubin.Text = myDR.GetString("BilirubinTotal").ToString();
                u_score_uric.Text = myDR.GetString("uricacid").ToString();
                u_score_tot_protein.Text = myDR.GetString("totalprotein").ToString();
                u_score_albumin.Text = myDR.GetString("albumin").ToString();
                u_score_calcium_albumin.Text = myDR.GetString("CalciumAlbuminRatio").ToString();
                u_score_globulin.Text = myDR.GetString("Globulin").ToString();

                u_score_iron_bnding.Text = myDR.GetString("IronBindCapac").ToString();
                u_score_tot_iron.Text = myDR.GetString("iron").ToString();

                u_score_rbc.Text = myDR.GetString("rbc").ToString();
                u_score_hemoglobin.Text = myDR.GetString("Hemoglobin").ToString();
                u_score_hematocrit.Text = myDR.GetString("Hematocrit").ToString();
                u_score_mvc.Text = myDR.GetString("mcv").ToString();
                u_score_mch.Text = myDR.GetString("mch").ToString();
                u_score_mchc.Text = myDR.GetString("mchc").ToString();
                u_score_rdw.Text = myDR.GetString("rdw").ToString();
                u_score_platelets.Text = myDR.GetString("PlateletCount").ToString();

                u_score_wbc.Text = myDR.GetString("wbc").ToString();
                u_score_neutrophils.Text = myDR.GetString("Neutrophils").ToString();
                u_score_lymphocytes.Text = myDR.GetString("Lymphocytes").ToString();
                u_score_monocytes.Text = myDR.GetString("Monocytes").ToString();
                u_score_eosinophils.Text = myDR.GetString("Ensinophils").ToString();
                u_score_basophils.Text = myDR.GetString("Basophisis").ToString();

                u_score_abs_basophils.Text = myDR.GetString("BasophilsAbsoluteCount").ToString();
                u_score_ferritin.Text = myDR.GetString("Ferritin").ToString();
                u_score_mpv.Text = myDR.GetString("mpv").ToString();
                u_score_abs_neutrophils.Text = myDR.GetString("AbsolNeutrophis").ToString();
                u_score_abs_lymphocytes.Text = myDR.GetString("AbsoluteLymphocytes").ToString();
                u_score_bands.Text = myDR.GetString("Bands").ToString();
                u_score_abs_monocytes.Text = myDR.GetString("AbsoluteMonocytes").ToString();
                u_score_mxd_cells.Text = myDR.GetString("MixedCells").ToString();
                u_score_abs_mxd_cells.Text = myDR.GetString("AbsolMixCells").ToString();
                u_score_atypical.Text = myDR.GetString("AtypicalLymphs").ToString();
                u_score_thyriod_t4_free.Text = myDR.GetString("T4Free").ToString();
                u_score_tsh.Text = myDR.GetString("ThyroidStimHorm").ToString();
                u_score_thyroid_t4.Text = myDR.GetString("T4Total").ToString();
                u_score_thyroid_t3.Text = myDR.GetString("T3Uptake").ToString();
                u_score_thyroid_t7.Text = myDR.GetString("FreeThyroxneIndex").ToString();
                u_score_pts.Text = myDR.GetString("PercentSaturat").ToString();
                u_score_abs_eosinophil.Text = myDR.GetString("EosinophilCountAbsol").ToString();

                u_score_a_g_ratio.Text = myDR.GetString("AGRatio").ToString();
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

        protected void BackToMainMenu(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }


        protected void btnAntiAging_Click(object sender, EventArgs e)
        {
            Response.Redirect("AntiAgingReport.aspx?ID=" + xid.Value);
        }
    }
}
