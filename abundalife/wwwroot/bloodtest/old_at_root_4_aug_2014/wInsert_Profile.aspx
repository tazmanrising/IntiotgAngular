<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert_Profile.aspx.cs" Inherits="abundalife1001.Insert_Profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Patient Blood & Urine</title>
    <style type="text/css">
<!--
.red12 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.style3 {
	font-size: 18px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style4 {
	color: #990000;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 24px;
}
.style6 {
	color: #FFFFFF;
	font-weight: bold;
}
.style7 {color: #FFFFFF}
.style8 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FFFFFF; }
.style9 {font-size: 18px; font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FFFFFF; }
.style10 {font-size: 10px}
.style13 {font-size: 10px; font-weight: bold; }
.style14 {color: #FFFFFF; font-weight: bold; font-size: 10px; }
.style17 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	color: #990000;
	font-weight: bold;
}
#form1 .style14 #Neutrophils {
}
.style21 {color: #996600; font-size: 14px; font-weight: bold; }
.MAINHEAD {
	font-size: 22px;
	font-weight: bolder;
	color: #FFF;
	text-decoration: underline;
}
       
-->
    </style>
</head>
<body>
    <form name="form1" id="form1" runat="server">
    <asp:HiddenField ID="xid" runat="server" />
    <div>
      <table width="610" border="0" cellpadding="0">
        <tr>
          <td width="606" colspan="2"><div align="center" class="style3">
            <p><img src="images/9-08ChurchMedNutTestingClin-1964.jpg" width="238" height="112" /><br />
                Naturopathic  Doctors 1001<br />
            Nutritional Testing and Personal Health Evaluation</p>
            </div></td>
        </tr>
        
        <tr>
          <td colspan="2" valign="top"><div align="center">
            <table width="100%" border="0" cellpadding="0">
              <tr>
                <td><table width="100%" border="0" cellpadding="2" bordercolor="#006600" bgcolor="#006600">
                  <tr>
                    <td colspan="2"><span class="style6">Report of finding for:</span></td>
                  </tr>
                  <tr>
                    <td><span class="style8">Name:</span>
                      <span class="style7">
                      <input name="Name" type="text" id="Name" value="Input Patient Name" size="50" />
                      </span></td>
                    <td><div align="right" class="style7"><span class="red12">Date:</span>
                      <input name="Date" type="text" id="Date" value="00/00/00" size="10" maxlength="10" />
                    </div></td>
                  </tr>
                </table></td>
              </tr>
            </table>
            <div align="justify">
              <table width="100%" border="5" cellpadding="0" cellspacing="5" bordercolor="#006600">
                <tr>
                  <td bordercolor="#FFFFFF"><span class="style2">This  type   of  evaluation  is   designed  to  serve as an advanced preventative medicine  educational tool.  It represents the  latest scientific breakthrough in laboratory diagnostics cross-correlated with  the patients symptoms, body signs and history and the science of iridology  using 21st century computer technology for nutrition, hormonal  toxicity and metabolic assessment purposes. </span> <br />
                    <br />
                    <span class="style2">This evaluation does not  attempt to diagnose, treat or prescribe for any named medical condition.  Its purpose is to assist proactive  subscribers to Abunda Life’s natural healing philosophy and belief system into a more  healthful way of life and to assist such responsible individuals to achieve  their God given potential, nutritional optimization and high level wellness of  body, mind and spirit.</span></td>
                </tr>
              </table>
            </div>
            </div></td>
        </tr>
        <tr>
          <td colspan="2"><div align="center">
            <h3><img src="images/logo-collage.jpg" width="434" height="328" /></h3>
          </div></td>
        </tr>
        <tr>
          <td colspan="2" valign="top"><div align="center">
            <h3 align="center"><img src="images/smallerChurchMedNutTestingClin-1964.jpg" alt="" width="132" height="63" /><br />
                <strong>208 third Ave. (steps to  ocean) Asbury Park, NJ 07712</strong><br />
              Phone: 732-775-7575                       Fax: 732-502-0899<br />
  <a href="http://www.Abundalife.com" class="style4">www.Abundalife.com</a></h3>
            <h5 align="center"><em>“I have come that Ye may have life and have it more abundantly”</em>  John 10:10</h5>
          </div></td>
        </tr>
        <tr>
          <td colspan="2" valign="top"><h3 align="left">&nbsp;</h3>          </td>
        </tr>
        <tr>
          <td height="1400" colspan="2" align="center" valign="top"><div align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/bg2.jpg">
              <tr>
                <td height="1381" align="center" valign="top"><table width="80%" border="0" align="center" cellpadding="0" bgcolor="#FFFFFF">
                  <tr>
                    <td colspan="6" bgcolor="#006600"><div align="center"><span class="style9">Nutritional Testing and  <br />
                      Personal Health Evaluation</span></div></td>
                  </tr>
                  
                  <tr>
                    <td colspan="6" bgcolor="#990000"><div align="center" class="style9">BLOOD TESTS</div></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">1.</span></td>
                    <td valign="top"><span class="style13">Glucose</span></td>
                    <td><input name="Glucose" type="text" class="style17" id="Glucose" size="10" /></td>
                    <td width="4%" valign="top"><span class="style13">2.</span></td>
                    <td width="27%" valign="top"><span class="style13">Bun</span></td>
                    <td width="21%"><input name="bun" type="text" class="style17" id="bun" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">3.</span></td>
                    <td valign="top"><span class="style13">Creatine</span></td>
                    <td><input name="creatine" type="text" class="style17" id="creatine" size="10" /></td>
                    <td valign="top"><span class="style13">4.</span></td>
                    <td valign="top"><span class="style13">Bun/Creatine Ratio</span></td>
                    <td><input name="buncreatineratio" type="text" class="style17" id="buncreatineratio" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">5.</span></td>
                    <td valign="top"><span class="style13">Sodium</span></td>
                    <td><input name="sodium" type="text" class="style17" id="sodium" size="10" /></td>
                    <td valign="top"><span class="style13">6.</span></td>
                    <td valign="top"><span class="style13">Potassium</span></td>
                    <td><input name="potassium" type="text" class="style17" id="potassium" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">7.</span></td>
                    <td valign="top"><span class="style13">Sodium/Potassium Ratio</span></td>
                    <td><input name="sodiumpotassiumratio" type="text" class="style17" id="sodiumpotassiumratio" size="10" /></td>
                    <td valign="top"><span class="style13">8.</span></td>
                    <td valign="top"><span class="style13">Anion Gap</span></td>
                    <td><input name="AnionGap" type="text" class="style17" id="AnionGap" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">9.</span></td>
                    <td valign="top"><span class="style13">Chloride</span></td>
                    <td><input name="Chloride" type="text" class="style17" id="Chloride" size="10" /></td>
                    <td valign="top"><span class="style13">10.</span></td>
                    <td valign="top"><span class="style13">Carbon Dioxide</span></td>
                    <td><input name="CarbonDioxide" type="text" class="style17" id="CarbonDioxide" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">11.</span></td>
                    <td valign="top"><span class="style13">Cholesterol</span></td>
                    <td><input name="Cholesterol" type="text" class="style17" id="Cholesterol" size="10" /></td>
                    <td valign="top"><span class="style13">12.</span></td>
                    <td valign="top"><span class="style13">Triglyceride</span></td>
                    <td><input name="Triglyceride" type="text" class="style17" id="Triglyceride" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">13.</span></td>
                    <td valign="top"><span class="style13">HDL Cholesterol</span></td>
                    <td><input name="HDLCholesterol" type="text" class="style17" id="HDLCholesterol" size="10" /></td>
                    <td valign="top"><span class="style13">14.</span></td>
                    <td valign="top"><span class="style13">LDL Cholesterol</span></td>
                    <td><input name="LDLCholesterol" type="text" class="style17" id="LDLCholesterol" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">15.</span></td>
                    <td valign="top"><span class="style13">VLDL Cholesterol</span></td>
                    <td><input name="VLDLCholesterol" type="text" class="style17" id="VLDLCholesterol" size="10" /></td>
                    <td valign="top"><span class="style13">16.</span></td>
                    <td valign="top"><span class="style13">Cholesterol/HDL Ratio</span></td>
                    <td><input name="CholesterolHDLRatio" type="text" class="style17" id="CholesterolHDLRatio" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">17.</span></td>
                    <td valign="top"><span class="style13">LDL/HDL Ratio</span></td>
                    <td><input name="LDLHDLRatio" type="text" class="style17" id="LDLHDLRatio" size="10" /></td>
                    <td valign="top"><span class="style13">18.</span></td>
                    <td valign="top"><span class="style13">Calcium</span></td>
                    <td><input name="Calcium" type="text" class="style17" id="Calcium" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style13">19.</span></td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style13">Phosphorus</span></td>
                    <td><input name="Phosphorus" type="text" class="style17" id="Phosphorus" size="10" /></td>
                    <td valign="top"><span class="style13">20.</span></td>
                    <td valign="top"><span class="style13">Calcium/Phosphorus Ratio</span></td>
                    <td><input name="CalciumPhosRatio" type="text" class="style17" id="CalciumPhosRatio" size="10" /></td>
                  </tr>
                  
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style13">21.</span></td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style13">Alkaline Phosphatase</span></td>
                    <td><input name="AlkalinePhosphatase" type="text" class="style17" id="AlkalinePhosphatase" size="10" /></td>
                    <td valign="top"><span class="style13">22.</span></td>
                    <td valign="top"><span class="style13">SGOT (AST)</span></td>
                    <td><input name="AST" type="text" class="style17" id="AST" size="10" /></td>
                  </tr>
                  
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style13">23.</span></td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style13">SGPT (ALT)</span></td>
                    <td bgcolor="#FFFFFF"><input name="ALT" type="text" class="style17" id="ALT" size="10" /></td>
                    <td valign="top"><span class="style13">24.</span></td>
                    <td valign="top"><span class="style13">GAMMA – (GT) </span></td>
                    <td><input name="GT" type="text" class="style17" id="GT" size="10" /></td>
                  </tr>
                  
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style13">25.</span></td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style13">Lactate Dehydrogenase</span></td>
                    <td bgcolor="#FFFFFF"><input name="LactateDhydrog" type="text" class="style17" id="LactateDhydrog" size="10" /></td>
                    <td valign="top"><span class="style13">26.</span></td>
                    <td valign="top"><span class="style13">Bilirubin Total</span></td>
                    <td><input name="BilirubinTotal" type="text" class="style17" id="BilirubinTotal" size="10" /></td>
                  </tr>
                  
                  <tr>
                    <td width="5%" valign="top" class="style10"><span class="style13">27.</span></td>
                    <td width="22%" valign="top" class="style13">Uric Acid</td>
                    <td width="21%" class="style14"><input name="UricAcid" type="text" class="style17" id="UricAcid" size="10" /></td>
                    <td valign="top" class="style10"><span class="style13">28.</span></td>
                    <td valign="top" class="style10"><span class="style13">Total Protein</span></td>
                    <td class="style14" id="TotalProtein"><input name="TotalProtein" type="text" class="style17" id="TotalProtein" size="10" /></td>
                  </tr>
                  
                  <tr>
                    <td valign="top" class="style13"><span class="style10">29</span>.</td>
                    <td valign="top" class="style13"><strong>Albumin</strong></td>
                    <td class="style14"><input name="Albumin" type="text" class="style17" id="Albumin" size="10" /></td>
                    <td valign="top"><span class="style13">30.</span></td>
                    <td valign="top"><span class="style10"><strong> Calcium/Albumin Ratio</strong></span></td>
                    <td class="style14"><input name="CalciumAlbuminRatio" type="text" class="style17" id="CalciumAlbuminRatio" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">31.</span></td>
                    <td valign="top"><span class="style10"><strong> Globulin</strong></span></td>
                    <td class="style14"><input name="Globulin" type="text" class="style17" id="Globulin" size="10" /></td>
                    <td valign="top"><span class="style13">32.</span></td>
                    <td valign="top"><span class="style10"><strong>(A/G Ratio) – Albumin Ration</strong></span></td>
                    <td class="style14"><input name="AGRatio" type="text" class="style17" id="AGRatio" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">33.</span></td>
                    <td valign="top"><span class="style10"><strong>T3 Uptake</strong></span></td>
                    <td class="style14"><input name="T3Uptake" type="text" class="style17" id="T3Uptake" size="10" /></td>
                    <td valign="top"><span class="style13">34.</span></td>
                    <td valign="top"><span class="style10"><strong>T4 Total</strong></span></td>
                    <td class="style14"><input name="T4Total" type="text" class="style17" id="T4Total" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">35.</span></td>
                    <td valign="top"><span class="style10"><strong>T4 Free</strong></span></td>
                    <td class="style14"><input name="T4Free" type="text" class="style17" id="T4Free" size="10" /></td>
                    <td valign="top"><span class="style13">36.</span></td>
                    <td valign="top"><span class="style10"><strong>Free Thyroxine Index</strong></span></td>
                    <td class="style14"><input name="FreeThyroxneIndex" type="text" class="style17" id="FreeThyroxneIndex" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">37.</span></td>
                    <td valign="top"><span class="style10"><strong>Thyroid Stimulating Hormone</strong></span></td>
                    <td class="style14"><input name="ThyroidStimHorm" type="text" class="style17" id="ThyroidStimHorm" size="10" /></td>
                    <td valign="top"><span class="style13">38.</span></td>
                    <td valign="top"><span class="style10"><strong>Iron Binding Capacity</strong></span></td>
                    <td class="style14"><input name="IronBindCapac" type="text" class="style17" id="IronBindCapac" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">39.</span></td>
                    <td valign="top"><span class="style10"><strong>Iron</strong></span></td>
                    <td class="style14"><input name="Iron" type="text" class="style17" id="Iron" size="10" /></td>
                    <td valign="top"><span class="style13">40.</span></td>
                    <td valign="top"><span class="style10"><strong>Percent Saturation</strong></span></td>
                    <td class="style14"><input name="PercentSaturat" type="text" class="style17" id="PercentSaturat" size="10" /></td>
                  </tr>
                  
                  <tr>
                    <td valign="top"><span class="style13">41.</span></td>
                    <td valign="top"><span class="style10"><strong>Ferritin</strong></span></td>
                    <td class="style14"><input name="Ferritin" type="text" class="style17" id="Ferritin" size="10" /></td>
                    <td valign="top"><span class="style13">42.</span></td>
                    <td valign="top"><span class="style10"><strong>RBC</strong></span></td>
                    <td class="style14"><input name="RBC" type="text" class="style17" id="RBC" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">43.</span></td>
                    <td valign="top"><span class="style10"><strong>Hemoglobin</strong></span></td>
                    <td class="style14"><input name="Hemoglobin" type="text" class="style17" id="Hemoglobin" size="10" /></td>
                    <td valign="top"><span class="style13">44.</span></td>
                    <td valign="top"><span class="style10"><strong>Hematocrit</strong></span></td>
                    <td class="style14"><input name="Hematocrit" type="text" class="style17" id="Hematocrit" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">45.</span></td>
                    <td valign="top"><span class="style10"><strong>MCV</strong></span></td>
                    <td class="style14"><input name="MCV" type="text" class="style17" id="MCV" size="10" /></td>
                    <td valign="top"><span class="style13">46.</span></td>
                    <td valign="top"><span class="style10"><strong>MCH</strong></span></td>
                    <td class="style14"><input name="MCH" type="text" class="style17" id="MCH" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">47.</span></td>
                    <td valign="top"><span class="style10"><strong>MCHC</strong></span></td>
                    <td class="style14"><input name="MCHC" type="text" class="style17" id="MCHC" size="10" /></td>
                    <td valign="top"><span class="style13">48.</span></td>
                    <td valign="top"><span class="style10"><strong>RDW</strong></span></td>
                    <td class="style14"><input name="RDW" type="text" class="style17" id="RDW" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">49.</span></td>
                    <td valign="top"><span class="style10"><strong>Platelet Count</strong></span></td>
                    <td class="style14"><input name="PlateletCount" type="text" class="style17" id="PlateletCount" size="10" /></td>
                    <td valign="top"><span class="style13">50.</span></td>
                    <td valign="top"><span class="style10"><strong>MPV</strong></span></td>
                    <td class="style14"><input name="MPV" type="text" class="style17" id="MPV" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">51.</span></td>
                    <td valign="top"><span class="style10"><strong>Absolute Neutrophils</strong></span></td>
                    <td class="style14"><input name="AbsolNeutrophis" type="text" class="style17" id="AbsolNeutrophis" size="10" /></td>
                    <td valign="top"><span class="style13">52.</span></td>
                    <td valign="top"><span class="style10"><strong>WBC</strong></span></td>
                    <td class="style14"><input name="WBC" type="text" class="style17" id="WBC" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">53.</span></td>
                    <td valign="top"><span class="style10"><strong> Neutrophils</strong></span></td>
                    <td class="style14"><input name="Neutrophils" type="text" class="style17" id="Neutrophils" size="10" /></td>
                    <td valign="top"><span class="style13">54.</span></td>
                    <td valign="top"><span class="style10"><strong>Lymphocytes</strong></span></td>
                    <td class="style14"><input name="Lymphocytes" type="text" class="style17" id="Lymphocytes" size="10" /></td>
                  </tr>
                  
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style13">55.</span></td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style10"><strong>Monocytes</strong></span></td>
                    <td bgcolor="#FFFFFF" class="style14"><input name="Monocytes" type="text" class="style17" id="Monocytes" size="10" /></td>
                    <td valign="top"><span class="style13">56.</span></td>
                    <td valign="top"><span class="style10"><strong>Eosinophils</strong></span></td>
                    <td class="style14"><input name="Ensinophils" type="text" class="style17" id="Ensinophils" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">57.</span></td>
                    <td valign="top"><span class="style10"><strong>Basophils</strong></span></td>
                    <td class="style14"><input name="Basophisis" type="text" class="style17" id="Basophisis" size="10" /></td>
                    <td valign="top"><span class="style13">58.</span></td>
                    <td valign="top"><span class="style10"><strong>Absolute Lymphocytes</strong></span></td>
                    <td class="style14"><input name="AbsoluteLymphocytes" type="text" class="style17" id="AbsoluteLymphocytes" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style13">59.</span></td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style10"><strong>Bands</strong></span></td>
                    <td bgcolor="#FFFFFF" class="style14"><input name="Bands" type="text" class="style17" id="Bands" size="10" /></td>
                    <td valign="top"><span class="style13">60.</span></td>
                    <td valign="top"><span class="style10"><strong>Absolute Monocytes</strong></span></td>
                    <td class="style14"><input name="AbsoluteMonocytes" type="text" class="style17" id="AbsoluteMonocytes" size="10" /></td>
                  </tr>
                  
                  <tr>
                    <td valign="top"><span class="style13">61.</span></td>
                    <td valign="top"><span class="style10"><strong>Mixed Cells</strong></span></td>
                    <td class="style14"><input name="MixedCells" type="text" class="style17" id="MixedCells" size="10" /></td>
                    <td valign="top"><span class="style13">62.</span></td>
                    <td valign="top"><span class="style10"><strong>Absolute Mixed Cells</strong></span></td>
                    <td class="style14"><input name="AbsolMixCells" type="text" class="style17" id="AbsolMixCells" size="10" /></td>
                  </tr>
                  
                  <tr>
                    <td valign="top"><span class="style13">63.</span></td>
                    <td valign="top"><span class="style10"><strong>Eosinophil Count Absolute</strong></span></td>
                    <td class="style14"><input name="EosinophilCountAbsol" type="text" class="style17" id="EosinophilCountAbsol" size="10" /></td>
                    <td valign="top"><span class="style13">64.</span></td>
                    <td valign="top"><span class="style10"><strong>Basophils Absolute Count</strong></span></td>
                    <td class="style14"><input name="BasophilsAbsoluteCount" type="text" class="style17" id="BasophilsAbsoluteCount" size="10" /></td>
                  </tr>
                  
                  <tr>
                    <td valign="top"><span class="style13">65.</span></td>
                    <td valign="top"><span class="style10"><strong>Atypical Lymphs</strong></span></td>
                    <td class="style14"><input name="AtypicalLymphs" type="text" class="style17" id="AtypicalLymphs" size="10" /></td>
                    <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
                    <td bgcolor="#FFFFFF" class="style14">&nbsp;</td>
                  </tr>
                  <tr valign="top" bgcolor="#FFFFFF">
                    <td colspan="6" bgcolor="#FFFFFF"><div align="center">
                      <table width="100%" border="0" cellpadding="0">
                        <tr>
                          <td bgcolor="#996600"><div align="center" class="style8">URINE ANALYSIS</div></td>
                        </tr>
                      </table>
                    </div></td>
                    </tr>
                  <tr>
                    <td valign="top"><span class="style13">66.</span></td>
                    <td valign="top" class="style10"><strong class="style10">A</strong><strong class="style13">scorbic Acid</strong></td>
                    <td class="style21"><input name="ascorbicacid" type="text" class="style21" id="ascorbicacid" size="10" /></td>
                    <td valign="top"><span class="style13">67.</span></td>
                    <td valign="top" class="style10"><strong class="style10">Color </strong></td>
                    <td class="style21"><input name="color" type="text" class="style21" id="color" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style13">68.</span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style10"><span class="style10"><strong>Specific Gravitys</strong></span></td>
                    <td bgcolor="#FFFFFF" class="style21"><input name="specificGravity" type="text" class="style21" id="specificGravity" size="10" /></td>
                    <td valign="top"><span class="style13">69.</span></td>
                    <td valign="top" class="style10"><strong class="style10">PH – Negative = 0</strong></td>
                    <td class="style21"><input name="PHNegative" type="text" class="style21" id="PHNegative" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">70.</span></td>
                    <td valign="top" class="style10"><strong class="style10">Glucose</strong></td>
                    <td class="style21"><input name="UrineGlucose" type="text" class="style21" id="UrineGlucose" size="10" /></td>
                    <td valign="top"><span class="style13">71.</span></td>
                    <td valign="top" class="style10"><strong class="style10">Bilirubin</strong></td>
                    <td class="style21"><input name="Bilirubin" type="text" class="style21" id="Bilirubin" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">72.</span></td>
                    <td valign="top" class="style10"><span class="style10"><strong>Keytone</strong></span><strong> </strong></td>
                    <td class="style21"><span class="style10"><strong class="style10">
                      <input name="Keytone" type="text" class="style21" id="Keytone" size="10" />
                    </strong></span></td>
                    <td valign="top"><span class="style13">73.</span></td>
                    <td valign="top" class="style10"><strong class="style10">Blood</strong></td>
                    <td class="style21"><input name="UrineBlood" type="text" class="style21" id="UrineBlood" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">74.</span></td>
                    <td valign="top" class="style10"><strong>Protein</strong></td>
                    <td class="style21"><input name="UrineProtein" type="text" class="style21" id="UrineProtein" size="10" /></td>
                    <td valign="top"><span class="style13">75.</span></td>
                    <td valign="top" class="style10"><strong> Urubilinogen</strong></td>
                    <td class="style21"><input name="Urubilinogen" type="text" class="style21" id="Urubilinogen" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style13">76.</span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style10"><span class="style10"><strong>Nitrite</strong></span></td>
                    <td bgcolor="#FFFFFF" class="style21"><input name="Nitrite" type="text" class="style21" id="Nitrite" size="10" /></td>
                    <td valign="top"><span class="style13">77.</span></td>
                    <td valign="top" class="style10"><strong>Leukocytes</strong></td>
                    <td class="style21"><input name="Leukocytes" type="text" class="style21" id="Leukocytes" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">78.</span></td>
                    <td valign="top" class="style10"><strong> Cast</strong></td>
                    <td class="style21"><input name="Cast" type="text" class="style21" id="Cast" size="10" /></td>
                    <td valign="top"><span class="style13">79.</span></td>
                    <td valign="top" class="style10"><strong>Mucus</strong></td>
                    <td class="style21"><input name="Mucus" type="text" class="style21" id="Mucus" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top" class="style13">80.</td>
                    <td valign="top" class="style10"><strong>RB</strong></td>
                    <td class="style21"><input name="RB" type="text" class="style21" id="RB" size="10" /></td>
                    <td valign="top" class="style13">81.</td>
                    <td valign="top" class="style10"><strong>Epithelial  Cells</strong></td>
                    <td class="style21"><input name="EpithelialCells" type="text" class="style21" id="EpithelialCells" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top" class="style13">82.</td>
                    <td valign="top" class="style10"><strong>Calcium Oxalate</strong></td>
                    <td class="style21"><input name="CalciumOxalate" type="text" class="style21" id="CalciumOxalate" size="10" /></td>
                    <td valign="top" class="style13">83.</td>
                    <td valign="top" class="style10"><strong>Triple  Phosphate</strong></td>
                    <td class="style21"><input name="TriplePhosphate" type="text" class="style21" id="TriplePhosphate" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top" class="style13">84.</td>
                    <td valign="top" class="style10"><strong>Uric Acid</strong></td>
                    <td class="style21"><input name="UricAcid" type="text" class="style21" id="UricAcid" size="10" /></td>
                    <td valign="top" class="style13">85.</td>
                    <td valign="top" class="style10"><strong>Amorphous</strong></td>
                    <td class="style21"><input name="Amorphous" type="text" class="style21" id="Amorphous" size="10" /></td>
                  </tr>
                  
                  <tr>
                    <td valign="top" class="style13">86.</td>
                    <td valign="top" class="style10"><strong>Bacteria</strong></td>
                    <td class="style21"><input name="Bacteria" type="text" class="style21" id="Bacteria" size="10" /></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style10">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style10">&nbsp;</td>
                    <td bgcolor="#FFFFFF" class="style21">&nbsp;</td>
                  </tr>
                  <tr valign="top" bgcolor="#FFFFFF">
                    <td height="19" colspan="6" bgcolor="#706A86"><div align="center" class="style8">                      IN HOUSE URINE</div></td>
                    </tr>
                  <tr>
                    <td valign="top"><span class="style13">87.</span></td>
                    <td valign="top" class="style13">Sugar Refractometer Test</td>
                    <td class="style21"><input name="sugrefrac" type="text" class="style21" id="sugrefrac" size="10" /></td>
                    <td valign="top"><span class="style13">88.</span></td>
                    <td valign="top" class="style13">Conductivity</td>
                    <td class="style21"><input name="conductivity" type="text" class="style21" id="conductivity" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">89.</span></td>
                    <td valign="top" class="style13">Nitrate Nitrogen</td>
                    <td class="style21"><input name="nitnitrogen" type="text" class="style21" id="nitnitrogen" size="10" /></td>
                    <td valign="top"><span class="style13">90.</span></td>
                    <td valign="top" class="style13">Ammocical Nitrogen</td>
                    <td class="style21"><input name="ammonitro" type="text" class="style21" id="ammonitro" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">91.</span></td>
                    <td valign="top" class="style10"><strong>Indican</strong></td>
                    <td class="style21"><input name="indican" type="text" class="style21" id="indican" size="10" /></td>
                    <td valign="top"><span class="style13">92.</span></td>
                    <td valign="top" class="style10"><strong>C-Reative Protien</strong></td>
                    <td class="style21"><input name="creatprot" type="text" class="style21" id="creatprot" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><span class="style13">93.</span></td>
                    <td valign="top" class="style10"><strong>Homocystein</strong></td>
                    <td class="style21"><input name="homocystein" type="text" class="style21" id="homocystein" size="10" /></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">94.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style10"><strong>Lactic Acid</strong></td>
                    <td bgcolor="#FFFFFF" class="style21"><input name="lactacid" type="text" class="style21" id="lactacid" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top" class="style13">95.</td>
                    <td valign="top" class="style13">Cortisol</td>
                    <td class="style21"><input name="cortisol" type="text" class="style21" id="cortisol" size="10" /></td>
                    <td valign="top" class="style13">96..</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style10"><strong>Cortisol/ DHEA Ratio</strong></td>
                    <td bgcolor="#FFFFFF" class="style21"><input name="cortidhearat" type="text" class="style21" id="cortidhearat" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top" class="style13">97.</td>
                    <td valign="top" class="style10"><strong>Insulin</strong></td>
                    <td class="style21"><input name="insulin" type="text" class="style21" id="insulin" size="10" /></td>
                    <td valign="top" class="style13">98.</td>
                    <td valign="top" class="style10"><span class="style13">Estrogen</span></td>
                    <td class="style21"><input name="estrogen" type="text" class="style21" id="estrogen" size="10" /></td>
                  </tr>
                  
                  <tr>
                    <td valign="top" class="style13">99.</td>
                    <td valign="top" class="style13">PSA</td>
                    <td class="style21"><input name="psa" type="text" class="style21" id="psa" size="10" /></td>
                    <td valign="top" class="style13">100.</td>
                    <td valign="top" class="style13">Testosteron</td>
                    <td class="style21"><input name="testosteron" type="text" class="style21" id="testosteron" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top" class="style13">101.</td>
                    <td valign="top" class="style13">Men: Progesteron</td>
                    <td class="style21"><input name="menprogest" type="text" class="style21" id="menprogest" size="10" /></td>
                    <td valign="top" class="style13">102.</td>
                    <td valign="top" class="style13">Women: Progesteron</td>
                    <td class="style21"><input name="womenprogest" type="text" class="style21" id="womenprogest" size="10" /></td>
                  </tr>
                  <tr>
                    <td valign="top" class="style13">103.</td>
                    <td valign="top" class="style13">Fibbinogen</td>
                    <td class="style21"><input name="fibbinogen" type="text" class="style21" id="fibbinogen" size="10" /></td>
                    <td valign="top" class="style13">104.</td>
                    <td valign="top" class="style13">CA-125</td>
                    <td class="style21"><input name="ca125" type="text" class="style21" id="ca125" size="10" /></td>
                  </tr>
                  
                  <tr valign="top" bgcolor="#FFFFFF">
                    <td colspan="6" bgcolor="#FF0066"><div align="center"><span class="style8">EXTENDED NUTRITIONAL TESTING/ SPECIAL TESTS</span></div></td>
                    </tr>
                  <tr>
                    <td valign="top" class="style13">105.</td>
                    <td valign="top" class="style13">Frutosamine</td>
                    <td valign="top" class="style21"><input name="frutosamine" type="text" class="style21" id="frutosamine" size="10" /></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">106.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Total Liboprotein B</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine2" type="text" class="style21" id="frutosamine2" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">107.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Folic Acid</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine3" type="text" class="style21" id="frutosamine3" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">108.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Vitamin B12</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine4" type="text" class="style21" id="frutosamine4" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">109.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Zinc</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine5" type="text" class="style21" id="frutosamine5" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">110.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">250 OH Vitamin D</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine6" type="text" class="style21" id="frutosamine6" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">111.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Vitamin D1 25 Dihydroxy (3)</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine7" type="text" class="style21" id="frutosamine7" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">112.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Vitamin C</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine8" type="text" class="style21" id="frutosamine8" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">113.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Thiamin Free Vitamin B1</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine9" type="text" class="style21" id="frutosamine9" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">114.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Vitamin B6 Pyridoxin</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine10" type="text" class="style21" id="frutosamine10" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">115.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Vitamin A</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine11" type="text" class="style21" id="frutosamine11" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">116.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Lead Blood</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine12" type="text" class="style21" id="frutosamine12" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">117.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Mercury Blood</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine13" type="text" class="style21" id="frutosamine13" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">118.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Arsenic Blood</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine14" type="text" class="style21" id="frutosamine14" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">119.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Vitamin B2 (Riboflavin)</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine15" type="text" class="style21" id="frutosamine15" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">120.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Gluten</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine16" type="text" class="style21" id="frutosamine16" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">121.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">T. Pylori</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine17" type="text" class="style21" id="frutosamine17" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">122.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Candida</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine18" type="text" class="style21" id="frutosamine18" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">123.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Lipo Protein A (LP (A)</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine19" type="text" class="style21" id="frutosamine19" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">124.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Fibrinogen</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine20" type="text" class="style21" id="frutosamine20" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">125.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">DHEA Sulfate</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine21" type="text" class="style21" id="frutosamine21" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">126.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">IGF-1 (Insulin like Growth Factor</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine22" type="text" class="style21" id="frutosamine22" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">127.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Men: Teststerone (Total)</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine23" type="text" class="style21" id="frutosamine23" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">128.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Women: Testosterone (Total)</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine24" type="text" class="style21" id="frutosamine24" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">129.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Men: Testosterone (Free)</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine25" type="text" class="style21" id="frutosamine25" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">130.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Prostatic Specific Antigen (PSA)</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine26" type="text" class="style21" id="frutosamine26" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">131.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Free PSA</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine27" type="text" class="style21" id="frutosamine27" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">132.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Sex Hormone Binding Globulin</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine28" type="text" class="style21" id="frutosamine28" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">133.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Dihydrotestostrone (DHT)</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine29" type="text" class="style21" id="frutosamine29" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">134.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Estradiol (Men)</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine30" type="text" class="style21" id="frutosamine30" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">135.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Estradiol (Female)</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine31" type="text" class="style21" id="frutosamine31" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">136.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Mid-Follicular</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine32" type="text" class="style21" id="frutosamine32" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">137.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Peri Ovulatory</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine33" type="text" class="style21" id="frutosamine33" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">138.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Mid Luteal</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine34" type="text" class="style21" id="frutosamine34" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td colspan="6" valign="top" bgcolor="#669900" class="style13"><div align="center" class="style8">SPECIAL BLOOD TESTS: WOMEN</div></td>
                    </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">139.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Post Menopausal</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine35" type="text" class="style21" id="frutosamine35" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">140.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Prolactin</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine36" type="text" class="style21" id="frutosamine36" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">141.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">LH</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine37" type="text" class="style21" id="frutosamine37" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">142.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">FSH</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine38" type="text" class="style21" id="frutosamine38" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">143.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Estradiol (E2)</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine39" type="text" class="style21" id="frutosamine39" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">144.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Estrone (E2)</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine40" type="text" class="style21" id="frutosamine40" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">145.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">SHBG</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine41" type="text" class="style21" id="frutosamine41" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">146.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">AG</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine42" type="text" class="style21" id="frutosamine42" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td colspan="6" valign="top" bgcolor="#669900" class="style13"><div align="center" class="style8">SPECIAL BLOOD TESTS: MEN</div></td>
                    </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">147.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Estradiol (E2 MEN)</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine43" type="text" class="style21" id="frutosamine43" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">148.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Testosterone (Total)</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine44" type="text" class="style21" id="frutosamine44" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">149.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Testosterone (Free)</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine45" type="text" class="style21" id="frutosamine45" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">150.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Dihydro Testosterone (DHT)</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine46" type="text" class="style21" id="frutosamine46" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">151.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Prolactin</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine47" type="text" class="style21" id="frutosamine47" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">152.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">LH</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine48" type="text" class="style21" id="frutosamine48" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">153.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">FSH</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine49" type="text" class="style21" id="frutosamine49" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">154.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Estrone (E1)</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine50" type="text" class="style21" id="frutosamine50" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">155.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">Androstanediol Glucuronide (AG)</td>
                    <td valign="top" bgcolor="#FFFFFF"><span class="style21">
                      <input name="frutosamine51" type="text" class="style21" id="frutosamine51" size="10" />
                    </span></td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">156.</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">SHBG</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14"><span class="style21">
                      <input name="frutosamine52" type="text" class="style21" id="frutosamine52" size="10" />
                    </span></td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14">&nbsp;</td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14">&nbsp;</td>
                  </tr>
                  <tr>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style13">&nbsp;</td>
                    <td valign="top" bgcolor="#FFFFFF" class="style14">&nbsp;</td>
                  </tr>
                  <tr bgcolor="#FFFFFF">
                    <td colspan="6" bgcolor="#FFFFFF" class="style10">&nbsp;</td>
                    </tr>
                  
                </table>
                <br /></td>
              </tr>
              <tr>
                <td align="center" valign="top">&nbsp;</td>
              </tr>
            </table>
            <div align="left"></div>
            <div align="left"></div>
</div></td>
        </tr>
      </table>
    </div>
    </form>
</body>
</html>

