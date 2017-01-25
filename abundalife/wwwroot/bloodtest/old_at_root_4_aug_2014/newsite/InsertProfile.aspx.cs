using System;
using System.Configuration;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace abundalife1001
{
    public partial class InsertProfile : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection myConnection = new MySqlConnection(ConfigurationSettings.AppSettings["DBConnectionString"].ToString());
        MySql.Data.MySqlClient.MySqlCommand myCommand = new MySql.Data.MySqlClient.MySqlCommand();
        MySql.Data.MySqlClient.MySqlDataReader myDR;

        protected void Page_Load(object sender, EventArgs e)
        {

            xdate.Text = DateTime.Now.ToShortDateString();


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
                xid.Value = myDR.GetString("id").ToString();
            }


            if (Page.IsPostBack)
            {
                string val = "";
                int i = 0;

                //foreach (string name in Request.Form.AllKeys)
                //{
                //    if (name != "")
                //    {
                //        //val = Request.Form[name];
                //        //val += Request.Form.AllKeys[i] + " = " + Request.Form[i];

                //        val += "string " + Request.Form.AllKeys[i] + " = Request.Form[\"" + Request.Form.AllKeys[i] + "\"];<br>if(" + Request.Form.AllKeys[i] + " == \"\"){" + Request.Form.AllKeys[i] + " = \"0\";}<br>";
                //        i++;
                //    }
                //}


                //Response.Write(val);

                string results = "";
                MySql.Data.MySqlClient.MySqlConnection conn;
                conn = new MySql.Data.MySqlClient.MySqlConnection();
                conn.ConnectionString = ConfigurationSettings.AppSettings["DBConnectionString"].ToString();
                conn.Open();

                string cb = "INSERT INTO customers_blood(customer_id,glucose,bun,creatine,buncreatineratio,sodium,potassium," +
                    "sodiumpotassiumratio,aniongap,chloride,carbondioxide,cholesterol,triglyceride,HDLCholesterol," +
                    "LDLCholesterol,VLDLCholesterol,CholesterolHDLRatio,LDLHDLRatio,calcium,phosphorus,CalciumPhosRatio," +
                    "AlkalinePhosphatase,AST,ALT,GT,LactateDhydrog,BilirubinTotal,uricacid,totalprotein,albumin," +
                    "CalciumAlbuminRatio,Globulin,AGRatio,T3Uptake,T4Total,T4Free,FreeThyroxneIndex,ThyroidStimHorm," +
                    "IronBindCapac,iron,PercentSaturat,Ferritin,rbc,Hemoglobin,Hematocrit,mcv,mch,mchc,rdw," +
                    "PlateletCount,mpv,AbsolNeutrophis,wbc,Neutrophils,Lymphocytes,Monocytes,Ensinophils,Basophisis," +
                    "AbsoluteLymphocytes,Bands,AbsoluteMonocytes,MixedCells,AbsolMixCells,EosinophilCountAbsol," +
                    "BasophilsAbsoluteCount,AtypicalLymphs)" +
                    "values(" + xid.Value + ",\'" + Request.Form["glucose"] + "\',\'" + Request.Form["bun"] + "\',\'" + Request.Form["creatine"] + "\',\'" +
                    Request.Form["buncreatineratio"] + "\',\'" + Request.Form["sodium"] + "\',\'" + Request.Form["potassium"] + "\',\'" +
                    Request.Form["sodiumpotassiumratio"] + "\',\'" + Request.Form["aniongap"] + "\',\'" + Request.Form["chloride"] + "\',\'" +
                    Request.Form["carbondioxide"] + "\',\'" + Request.Form["cholesterol"] + "\',\'" + Request.Form["triglyceride"] + "\',\'" +
                    Request.Form["HDLCholesterol"] + "\',\'" + Request.Form["LDLCholesterol"] + "\',\'" + Request.Form["VLDLCholesterol"] + "\',\'" +
                    Request.Form["CholesterolHDLRatio"] + "\',\'" + Request.Form["LDLHDLRatio"] + "\',\'" + Request.Form["calcium"] + "\',\'" +
                    Request.Form["phosphorus"] + "\',\'" + Request.Form["CalciumPhosRatio"] + "\',\'" + Request.Form["AlkalinePhosphatase"] + "\',\'" +
                    Request.Form["AST"] + "\',\'" + Request.Form["ALT"] + "\',\'" + Request.Form["GT"] + "\',\'" + Request.Form["LactateDhydrog"] + "\',\'" +
                    Request.Form["BilirubinTotal"] + "\',\'" + Request.Form["uricacid"] + "\',\'" + Request.Form["totalprotein"] + "\',\'" +
                    Request.Form["albumin"] + "\',\'" + Request.Form["CalciumAlbuminRatio"] + "\',\'" + Request.Form["Globulin"] + "\',\'" +
                    Request.Form["AGRatio"] + "\',\'" + Request.Form["T3Uptake"] + "\',\'" + Request.Form["T4Total"] + "\',\'" +
                    Request.Form["T4Free"] + "\',\'" + Request.Form["FreeThyroxneIndex"] + "\',\'" + Request.Form["ThyroidStimHorm"] + "\',\'" +
                    Request.Form["IronBindCapac"] + "\',\'" + Request.Form["iron"] + "\',\'" + Request.Form["PercentSaturat"] + "\',\'" +
                    Request.Form["Ferritin"] + "\',\'" + Request.Form["rbc"] + "\',\'" + Request.Form["Hemoglobin"] + "\',\'" +
                    Request.Form["Hematocrit"] + "\',\'" + Request.Form["mcv"] + "\',\'" + Request.Form["mch"] + "\',\'" + Request.Form["mchc"] + "\',\'" +
                    Request.Form["rdw"] + "\',\'" + Request.Form["PlateletCount"] + "\',\'" + Request.Form["mpv"] + "\',\'" +
                    Request.Form["AbsolNeutrophis"] + "\',\'" + Request.Form["wbc"] + "\',\'" + Request.Form["Neutrophils"] + "\',\'" +
                    Request.Form["Lymphocytes"] + "\',\'" + Request.Form["Monocytes"] + "\',\'" + Request.Form["Ensinophils"] + "\',\'" +
                    Request.Form["Basophisis"] + "\',\'" + Request.Form["AbsoluteLymphocytes"] + "\',\'" + Request.Form["Bands"] + "\',\'" +
                    Request.Form["AbsoluteMonocytes"] + "\',\'" + Request.Form["MixedCells"] + "\',\'" + Request.Form["AbsolMixCells"] + "\',\'" +
                    Request.Form["EosinophilCountAbsol"] + "\',\'" + Request.Form["BasophilsAbsoluteCount"] + "\',\'" +
                    Request.Form["AtypicalLymphs"] + "\')";


                //string cbb = "INSERT INTO customers_blood(customer_id,glucose)"+
                //    "values(" + Request.Form["xid"] + "," + glucose + ")";
                //MySqlCommand cmd = new MySqlCommand("INSERT INTO address(address,address2,city,state,zip) " +
                //    "VALUES(\'" + TextBox5.Text + "\',\'" + TextBox6.Text + "\',\'" + TextBox7.Text + "\',\'" 
                //+ TextBox8.Text + "\',\'" + TextBox9.Text + "\')", conn);



                MySqlCommand cmd = new MySqlCommand(cb, conn);
                int rowCount = cmd.ExecuteNonQuery();

                string cu = "Insert into customers_urine(customer_id,ascorbicacid,color,specificGravity,PHNegative,UrineGlucose,Bilirubin," +
                    "Keytone,UrineBlood,UrineProtein,Urubilinogen,Nitrite,Leukocytes,Cast,Mucus,RB," +
                    "EpithelialCells,CalciumOxalate,TriplePhosphate,UrineUricAcid,Amorphous,Bacteria," +
                    "SalivaPH,SugarRefractometor,Conductivity,NitrateNitrogen,AmmonicalNitrogen,Indican)" +
                    "values(" + xid.Value+ ",\'" + Request.Form["ascorbicacid"] + "\',\'" + Request.Form["color"] + "\',\'" + Request.Form["specificGravity"] + "\',\'" +
                    Request.Form["PHNegative"] + "\',\'" + Request.Form["UrineGlucose"] + "\',\'" + Request.Form["Bilirubin"] + "\',\'" +
                    Request.Form["Keytone"] + "\',\'" + Request.Form["UrineBlood"] + "\',\'" + Request.Form["UrineProtein"] + "\',\'" +
                    Request.Form["Urubilinogen"] + "\',\'" + Request.Form["Nitrite"] + "\',\'" + Request.Form["Leukocytes"] + "\',\'" +
                    Request.Form["Cast"] + "\',\'" + Request.Form["Mucus"] + "\',\'" + Request.Form["RB"] + "\',\'" +
                    Request.Form["EpithelialCells"] + "\',\'" + Request.Form["CalciumOxalate"] + "\',\'" + Request.Form["TriplePhosphate"] + "\',\'" +
                    Request.Form["UrineUricAcid"] + "\',\'" + Request.Form["Amorphous"] + "\',\'" + Request.Form["Bacteria"] + "\',\'" +
                    Request.Form["SalivaPH"] + "\',\'" + Request.Form["SugarRefractometor"] + "\',\'" + Request.Form["Conductivity"] + "\',\'" +
                    Request.Form["NitrateNitrogen"] + "\',\'" + Request.Form["AmmonicalNitrogen"] + "\',\'" + Request.Form["Indican"] + "\')";


                MySqlCommand cmd2 = new MySqlCommand(cu, conn);
                rowCount = cmd2.ExecuteNonQuery();


                string cs = "Insert into customers_saliva(customer_id,sugarrefractometer,conductivity," +
                "nitratenitrogen,ammonicalnitrogen,indican,creativeprotein," +
                "homocystein,lacticacid,cortisol,cortisoldhea,insulin," +
                "estrogen,psa,testosterone,menprogesterone,womenprogesterone," +
                "fibbinogen,ca125)values(" + xid.Value + ",\'" + Request.Form["sugarrefractometer"] + "\',\'" + Request.Form["conductivity"] + "\',\'" +
                Request.Form["nitratenitrogen"] + "\',\'" + Request.Form["ammonicalnitrogen"] + "\',\'" +
                Request.Form["indican"] + "\',\'" + Request.Form["creativeprotein"] + "\',\'" +
                Request.Form["homocystein"] + "\',\'" + Request.Form["lacticacid"] + "\',\'" +
                Request.Form["cortisol"] + "\',\'" + Request.Form["cortisoldhea"] + "\',\'" +
                Request.Form["insulin"] + "\',\'" + Request.Form["estrogen"] + "\',\'" +
                Request.Form["psa"] + "\',\'" + Request.Form["testosterone"] + "\',\'" +
                Request.Form["menprogesterone"] + "\',\'" + Request.Form["womenprogesterone"] + "\',\'" +
                Request.Form["fibbinogen"] + "\',\'" + Request.Form["ca125"] + "\')";

                MySqlCommand cmd3 = new MySqlCommand(cs, conn);
                rowCount = cmd3.ExecuteNonQuery();


                string csp = "Insert into customers_special(customer_id,FRUCTOSAMINE," +
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
               "DIHYDROTESTOSTERONEDHT,PROLACTIN,LHMen,FSHMen,SHBGMen,ESTRONEE1,ANDROSTANEDIOLGLUCURONIDE )" +
               "values(" + xid.Value + ",\'" + Request.Form["FRUCTOSAMINE"] + "\',\'" +
                Request.Form["TOTALLIPOPROTEINB"] + "\',\'" + Request.Form["FOLICACID"] + "\',\'" +
                Request.Form["VITAMINB12"] + "\',\'" + Request.Form["ZINC"] + "\',\'" +
                Request.Form["VITAMIND2500"] + "\',\'" + Request.Form["VITAMIND125DIHYDROXY"] + "\',\'" +
                Request.Form["VITAMINC"] + "\',\'" + Request.Form["THIAMINFREEVITAMINB1"] + "\',\'" +
                Request.Form["VITAMINB6PYRIDOXIN"] + "\',\'" + Request.Form["VITAMINA"] + "\',\'" +
                Request.Form["LEADBLOOD"] + "\',\'" + Request.Form["MERCURYBLOOD"] + "\',\'" +
                Request.Form["ARSENICBLOOD"] + "\',\'" + Request.Form["VITAMINB2RIBOFLAVIN"] + "\',\'" +
                Request.Form["GLUTEN"] + "\',\'" + Request.Form["PYLORI"] + "\',\'" +
                Request.Form["CANDIDA"] + "\',\'" + Request.Form["LIPOPROTEINA"] + "\',\'" +
                Request.Form["FIBRINOGEN"] + "\',\'" + Request.Form["DHEASULFATE"] + "\',\'" +
                Request.Form["IGF1"] + "\',\'" + Request.Form["MENTESTOSTERONETOTAL"] + "\',\'" +
                Request.Form["WOMENTESTOSTERONETOTAL"] + "\',\'" + Request.Form["MENTESTOSTERONEFREE"] + "\',\'" +
                Request.Form["PROSTATICSPECIFICANTIGEN"] + "\',\'" + Request.Form["FREEPSA"] + "\',\'" +
                Request.Form["SEXHORMONEBINDINGGLOBULIN"] + "\',\'" + Request.Form["DIHYDROTESTOSTRONE"] + "\',\'" +
                Request.Form["ESTRADIOLMEN"] + "\',\'" + Request.Form["ESTRADIOLFEMALE"] + "\',\'" +
                Request.Form["MIDFOLLICULAR"] + "\',\'" + Request.Form["PERIOVULATORY"] + "\',\'" +
                Request.Form["MIDLUTEAL"] + "\',\'" + Request.Form["POSTMENOPAUSAL"] + "\',\'" +
                Request.Form["PROLACTIN2"] + "\',\'" + Request.Form["LH"] + "\',\'" +
                Request.Form["FSH"] + "\',\'" + Request.Form["ESTRADIOLE2"] + "\',\'" +
                Request.Form["EstroneE2"] + "\',\'" + Request.Form["SHBG"] + "\',\'" +
                Request.Form["AG"] + "\',\'" + Request.Form["ESTRADIOLE2MEN"] + "\',\'" +
                Request.Form["TESTOSTERONETOTAL"] + "\',\'" + Request.Form["TESTOSTERONEFREE"] + "\',\'" +
                Request.Form["DIHYDROTESTOSTERONEDHT"] + "\',\'" + Request.Form["PROLACTIN"] + "\',\'" +
                Request.Form["frutosamine48"] + "\',\'" + Request.Form["frutosamine49"] + "\',\'" + Request.Form["frutosamine52"] + "\',\'" +
                Request.Form["ESTRONEE1"] + "\',\'" + Request.Form["ANDROSTANEDIOLGLUCURONIDE"] + "\')";


                //LH frutosamine48
                //FSH frutosamine49
                //SHBG frutosamine52

                MySqlCommand cmd4 = new MySqlCommand(csp, conn);
                rowCount = cmd4.ExecuteNonQuery();


                Response.Redirect("BloodReports.aspx?ID=" + xid.Value);


            }



        }
    }
}
