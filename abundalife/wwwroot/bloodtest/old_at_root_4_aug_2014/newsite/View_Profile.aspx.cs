using System;
using System.Web;
using MySql.Data.MySqlClient;
using System.Configuration;


namespace abundalife1001
{
    public partial class View_Profile : System.Web.UI.Page
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

                name.Text = myDR.GetString("first_name").ToString() + " " + myDR.GetString("last_name").ToString();
                //xid.Value = myDR.GetString("id").ToString();
            }

            myConnection.Close();

            xid.Value = HttpContext.Current.Request.QueryString["ID"];
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
               " from customers_blood where customer_id = " + Convert.ToInt32(HttpContext.Current.Request.QueryString["ID"]);
            myCommand.CommandText = sql;
            myCommand.Connection = myConnection;
            myConnection.Open();
            myDR = myCommand.ExecuteReader();
            while (myDR.Read())
            {
                glucose.Text = myDR.GetString("glucose").ToString();
                bun.Text = myDR.GetString("bun").ToString();
                creatine.Text = myDR.GetString("creatine").ToString();
                buncreatineratio.Text = myDR.GetString("buncreatineratio").ToString();
                sodium.Text = myDR.GetString("sodium").ToString();
                potassium.Text = myDR.GetString("potassium").ToString();
                sodiumpotassiumratio.Text = myDR.GetString("sodiumpotassiumratio").ToString();
                aniongap.Text = myDR.GetString("aniongap").ToString();
                chloride.Text = myDR.GetString("chloride").ToString();
                carbondioxide.Text = myDR.GetString("carbondioxide").ToString();
                cholesterol.Text = myDR.GetString("cholesterol").ToString();
                triglyceride.Text = myDR.GetString("triglyceride").ToString();
                HDLCholesterol.Text = myDR.GetString("HDLCholesterol").ToString();
                LDLCholesterol.Text = myDR.GetString("LDLCholesterol").ToString();
                VLDLCholesterol.Text = myDR.GetString("VLDLCholesterol").ToString();
                CholesterolHDLRatio.Text = myDR.GetString("CholesterolHDLRatio").ToString();
                LDLHDLRatio.Text = myDR.GetString("LDLHDLRatio").ToString();
                calcium.Text = myDR.GetString("calcium").ToString();
                phosphorus.Text = myDR.GetString("phosphorus").ToString();
                CalciumPhosRatio.Text = myDR.GetString("CalciumPhosRatio").ToString();
                AlkalinePhosphatase.Text = myDR.GetString("AlkalinePhosphatase").ToString();
                AST.Text = myDR.GetString("AST").ToString();
                ALT.Text = myDR.GetString("ALT").ToString();
                GT.Text = myDR.GetString("GT").ToString();
                LactateDhydrog.Text = myDR.GetString("LactateDhydrog").ToString();
                BilirubinTotal.Text = myDR.GetString("BilirubinTotal").ToString();
                uricacid.Text = myDR.GetString("uricacid").ToString();
                totalprotein.Text = myDR.GetString("totalprotein").ToString();
                albumin.Text = myDR.GetString("albumin").ToString();
                CalciumAlbuminRatio.Text = myDR.GetString("CalciumAlbuminRatio").ToString();
                Globulin.Text = myDR.GetString("Globulin").ToString();
                AGRatio.Text = myDR.GetString("AGRatio").ToString();
                T3Uptake.Text = myDR.GetString("T3Uptake").ToString();
                T4Total.Text = myDR.GetString("T4Total").ToString();
                T4Free.Text = myDR.GetString("T4Free").ToString();
                FreeThyroxneIndex.Text = myDR.GetString("FreeThyroxneIndex").ToString();
                ThyroidStimHorm.Text = myDR.GetString("ThyroidStimHorm").ToString();
                IronBindCapac.Text = myDR.GetString("IronBindCapac").ToString();
                iron.Text = myDR.GetString("iron").ToString();
                PercentSaturat.Text = myDR.GetString("PercentSaturat").ToString();
                Ferritin.Text = myDR.GetString("Ferritin").ToString();
                rbc.Text = myDR.GetString("rbc").ToString();
                Hemoglobin.Text = myDR.GetString("Hemoglobin").ToString();
                Hematocrit.Text = myDR.GetString("Hematocrit").ToString();
                mcv.Text = myDR.GetString("mcv").ToString();
                mch.Text = myDR.GetString("mch").ToString();
                mchc.Text = myDR.GetString("mchc").ToString();
                rdw.Text = myDR.GetString("rdw").ToString();
                PlateletCount.Text = myDR.GetString("PlateletCount").ToString();
                mpv.Text = myDR.GetString("mpv").ToString();
                AbsolNeutrophis.Text = myDR.GetString("AbsolNeutrophis").ToString();
                wbc.Text = myDR.GetString("wbc").ToString();
                Neutrophils.Text = myDR.GetString("Neutrophils").ToString();
                Lymphocytes.Text = myDR.GetString("Lymphocytes").ToString();
                Monocytes.Text = myDR.GetString("Monocytes").ToString();
                Ensinophils.Text = myDR.GetString("Ensinophils").ToString();
                Basophisis.Text = myDR.GetString("Basophisis").ToString();
                AbsoluteLymphocytes.Text = myDR.GetString("AbsoluteLymphocytes").ToString();
                Bands.Text = myDR.GetString("Bands").ToString();
                AbsoluteMonocytes.Text = myDR.GetString("AbsoluteMonocytes").ToString();
                MixedCells.Text = myDR.GetString("MixedCells").ToString();
                AbsolMixCells.Text = myDR.GetString("AbsolMixCells").ToString();
                EosinophilCountAbsol.Text = myDR.GetString("EosinophilCountAbsol").ToString();
                BasophilsAbsoluteCount.Text = myDR.GetString("BasophilsAbsoluteCount").ToString();
                AtypicalLymphs.Text = myDR.GetString("AtypicalLymphs").ToString();
 
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
