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
        .style23
        {
            height: 1420px;
        }
        .style24
        {
            height: 1619px;
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
          <td width="606"><div align="center" class="style3">
            <p><img src="images/9-08ChurchMedNutTestingClin-1964.jpg" width="238" height="112" /><br />
                Naturopathic  Doctors 1001<br />
            Nutritional Testing and Personal Health Evaluation</p>
            </div></td>
        </tr>
        
        <tr>
          <td valign="top"><div align="center">
            <table width="100%" border="0" cellpadding="0">
              <tr>
                <td><table width="100%" border="0" cellpadding="2" bordercolor="#006600" bgcolor="#006600">
                  <tr>
                    <td colspan="2"><span class="style6">Report of finding for:</span></td>
                  </tr>
                  <tr>
                    <td><span class="style8">Name:</span>
                      <span class="style7">&nbsp;</span><asp:TextBox ID="name" runat="server" Width="195px"></asp:TextBox>
                                                </td>
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
          <td><div align="center">
            <h3><img src="images/logo-collage.jpg" width="434" height="328" /></h3>
          </div></td>
        </tr>
        <tr>
          <td valign="top"><div align="center">
            <h3 align="center"><img src="images/smallerChurchMedNutTestingClin-1964.jpg" alt="" width="132" height="63" /><br />
                <strong>208 third Ave. (steps to  ocean) Asbury Park, NJ 07712</strong><br />
              Phone: 732-775-7575                       Fax: 732-502-0899<br />
  <a href="http://www.Abundalife.com" class="style4">www.Abundalife.com</a></h3>
            <h5 align="center"><em>“I have come that Ye may have life and have it more abundantly”</em>  John 10:10</h5>
          </div></td>
        </tr>
        <tr>
          <td valign="top"><h3 align="left">*page break here</h3>
          </td>
        </tr>
        <tr>
          <td align="center" valign="top" class="style23"><div align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/bg2.jpg">
              <tr>
                <td align="center" valign="top" class="style24"><table width="80%" border="0" align="center" cellpadding="0">
                  <tr>
                    <td height="55" colspan="6">&nbsp;</td>
                  </tr>
                  <tr>
                    <td colspan="6" bgcolor="#006600"><div align="center"><span class="style9">
                        Nutritional Testing and  <br />
                        Personal Health Evaluation</span></div></td>
                  </tr>
                  <tr>
                    <td colspan="6" bgcolor="#990000"><div align="center" class="style9">BLOOD TESTS</div></td>
                  </tr>
                  <tr>
                    <td width="4%"><span class="style13">1.</span></td>
                    <td width="29%"><span class="style13">Glucose</span></td>
                    <td width="19%"><input name="Glucose" type="text" class="style17" id="Glucose" size="10" /></td>
                    <td width="5%" class="style10"><span class="style13">27.</span></td>
                    <td width="22%" class="style13">Uric Acid</td>
                    <td width="21%" class="style14"><input name="UricAcid" type="text" class="style17" id="UricAcid" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">2.</span></td>
                    <td><span class="style13">Bun</span></td>
                    <td><input name="bun" type="text" class="style17" id="bun" size="10" /></td>
                    <td class="style10"><span class="style13">28.</span></td>
                    <td class="style10"><span class="style13">Total Protein</span></td>
                    <td class="style14"><input name="TotalProtein" type="text" class="style17" id="TotalProtein" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">3.</span></td>
                    <td><span class="style13">Creatine</span></td>
                    <td><input name="creatine" type="text" class="style17" id="creatine" size="10" /></td>
                    <td class="style13"><span class="style10">29</span>.</td>
                    <td class="style13"><strong>Albumin</strong></td>
                    <td class="style14"><input name="Albumin" type="text" class="style17" id="Albumin" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">4.</span></td>
                    <td><span class="style13">Bun/Creatine Ratio</span></td>
                    <td><input name="buncreatineratio" type="text" class="style17" id="buncreatineratio" size="10" /></td>
                    <td><span class="style10">30.</span></td>
                    <td><span class="style10"><strong> Calcium/Albumin Ratio</strong></span></td>
                    <td class="style14"><input name="CalciumAlbuminRatio" type="text" class="style17" id="CalciumAlbuminRatio" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">5.</span></td>
                    <td><span class="style13">Sodium</span></td>
                    <td><input name="sodium" type="text" class="style17" id="sodium" size="10" /></td>
                    <td><span class="style10">31.</span></td>
                    <td><span class="style10"><strong> Globulin</strong></span></td>
                    <td class="style14"><input name="Globulin" type="text" class="style17" id="Globulin" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">6.</span></td>
                    <td><span class="style13">Potassium</span></td>
                    <td><input name="potassium" type="text" class="style17" id="potassium" size="10" /></td>
                    <td><span class="style10">32.</span></td>
                    <td><span class="style10"><strong>(A/G Ratio) – Albumin Ration</strong></span></td>
                    <td class="style14"><input name="AGRatio" type="text" class="style17" id="AGRatio" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">7.</span></td>
                    <td><span class="style13">Sodium/Potassium Ratio</span></td>
                    <td><input name="sodiumpotassiumratio" type="text" class="style17" id="sodiumpotassiumratio" size="10" /></td>
                    <td><span class="style10">33.</span></td>
                    <td><span class="style10"><strong>T3 Uptake</strong></span></td>
                    <td class="style14"><input name="T3Uptake" type="text" class="style17" id="T3Uptake" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">8.</span></td>
                    <td><span class="style13">Anion Gap</span></td>
                    <td><input name="AnionGap" type="text" class="style17" id="AnionGap" size="10" /></td>
                    <td><span class="style10">34.</span></td>
                    <td><span class="style10"><strong>T4 Total</strong></span></td>
                    <td class="style14"><input name="T4Total" type="text" class="style17" id="T4Total" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">9.</span></td>
                    <td><span class="style13">Chloride</span></td>
                    <td><input name="Chloride" type="text" class="style17" id="Chloride" size="10" /></td>
                    <td><span class="style10">35.</span></td>
                    <td><span class="style10"><strong>T4 Free</strong></span></td>
                    <td class="style14"><input name="T4Free" type="text" class="style17" id="T4Free" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">10.</span></td>
                    <td><span class="style13">Carbon Dioxide</span></td>
                    <td><input name="CarbonDioxide" type="text" class="style17" id="CarbonDioxide" size="10" /></td>
                    <td><span class="style10">36.</span></td>
                    <td><span class="style10"><strong>Free Thyroxine Index</strong></span></td>
                    <td class="style14"><input name="FreeThyroxneIndex" type="text" class="style17" id="FreeThyroxneIndex" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">11.</span></td>
                    <td><span class="style13">Cholesterol</span></td>
                    <td><input name="Cholesterol" type="text" class="style17" id="Cholesterol" size="10" /></td>
                    <td><span class="style10">37.</span></td>
                    <td><span class="style10"><strong>Thyroid Stimulating Hormone</strong></span></td>
                    <td class="style14"><input name="ThyroidStimHorm" type="text" class="style17" id="ThyroidStimHorm" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">12.</span></td>
                    <td><span class="style13">Triglyceride</span></td>
                    <td><input name="Triglyceride" type="text" class="style17" id="Triglyceride" size="10" /></td>
                    <td><span class="style10">38.</span></td>
                    <td><span class="style10"><strong>Iron Binding Capacity</strong></span></td>
                    <td class="style14"><input name="IronBindCapac" type="text" class="style17" id="IronBindCapac" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">13.</span></td>
                    <td><span class="style13">HDL Cholesterol</span></td>
                    <td><input name="HDLCholesterol" type="text" class="style17" id="HDLCholesterol" size="10" /></td>
                    <td><span class="style10">39.</span></td>
                    <td><span class="style10"><strong>Iron</strong></span></td>
                    <td class="style14"><input name="Iron" type="text" class="style17" id="Iron" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">14.</span></td>
                    <td><span class="style13">LDL Cholesterol</span></td>
                    <td><input name="LDLCholesterol" type="text" class="style17" id="LDLCholesterol" size="10" /></td>
                    <td><span class="style10">40.</span></td>
                    <td><span class="style10"><strong>Percent Saturation</strong></span></td>
                    <td class="style14"><input name="PercentSaturat" type="text" class="style17" id="PercentSaturat" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">15.</span></td>
                    <td><span class="style13">VLDL Cholesterol</span></td>
                    <td><input name="VLDLCholesterol" type="text" class="style17" id="VLDLCholesterol" size="10" /></td>
                    <td><span class="style10">41.</span></td>
                    <td><span class="style10"><strong>Ferritin</strong></span></td>
                    <td class="style14"><input name="Ferritin" type="text" class="style17" id="Ferritin" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">16.</span></td>
                    <td><span class="style13">Cholesterol/HDL Ratio</span></td>
                    <td><input name="CholesterolHDLRatio" type="text" class="style17" id="CholesterolHDLRatio" size="10" /></td>
                    <td><span class="style10">42.</span></td>
                    <td><span class="style10"><strong>RBC</strong></span></td>
                    <td class="style14"><input name="RBC" type="text" class="style17" id="RBC" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">17.</span></td>
                    <td><span class="style13">LDL/HDL Ratio</span></td>
                    <td><input name="LDLHDLRatio" type="text" class="style17" id="LDLHDLRatio" size="10" /></td>
                    <td><span class="style10">43.</span></td>
                    <td><span class="style10"><strong>Hemoglobin</strong></span></td>
                    <td class="style14"><input name="Hemoglobin" type="text" class="style17" id="Hemoglobin" size="10" /></td>
                  </tr>
                  <tr>
                    <td height="19"><span class="style13">18.</span></td>
                    <td><span class="style13">Calcium</span></td>
                    <td><input name="Calcium" type="text" class="style17" id="Calcium" size="10" /></td>
                    <td><span class="style10">44.</span></td>
                    <td><span class="style10"><strong>Hematocrit</strong></span></td>
                    <td class="style14"><input name="Hematocrit" type="text" class="style17" id="Hematocrit" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">19.</span></td>
                    <td><span class="style13">Phosphorus</span></td>
                    <td><input name="Phosphorus" type="text" class="style17" id="Phosphorus" size="10" /></td>
                    <td><span class="style10">45.</span></td>
                    <td><span class="style10"><strong>MCV</strong></span></td>
                    <td class="style14"><input name="MCV" type="text" class="style17" id="MCV" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">20.</span></td>
                    <td><span class="style13">Calcium/Phosphorus Ratio</span></td>
                    <td><input name="CalciumPhosRatio" type="text" class="style17" id="CalciumPhosRatio" size="10" /></td>
                    <td><span class="style10">46.</span></td>
                    <td><span class="style10"><strong>MCH</strong></span></td>
                    <td class="style14"><input name="MCH" type="text" class="style17" id="MCH" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">21.</span></td>
                    <td><span class="style13">Alkaline Phosphatase</span></td>
                    <td><input name="AlkalinePhosphatase" type="text" class="style17" id="AlkalinePhosphatase" size="10" /></td>
                    <td><span class="style10">47.</span></td>
                    <td><span class="style10"><strong>MCHC</strong></span></td>
                    <td class="style14"><input name="MCHC" type="text" class="style17" id="MCHC" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">22.</span></td>
                    <td><span class="style13">SGOT (AST)</span></td>
                    <td><input name="AST" type="text" class="style17" id="AST" size="10" /></td>
                    <td><span class="style10">48.</span></td>
                    <td><span class="style10"><strong>RDW</strong></span></td>
                    <td class="style14"><input name="RDW" type="text" class="style17" id="RDW" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">23.</span></td>
                    <td><span class="style13">SGPT (ALT)</span></td>
                    <td><input name="ALT" type="text" class="style17" id="ALT" size="10" /></td>
                    <td><span class="style10">49.</span></td>
                    <td><span class="style10"><strong>Platelet Count</strong></span></td>
                    <td class="style14"><input name="PlateletCount" type="text" class="style17" id="PlateletCount" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">24.</span></td>
                    <td><span class="style13">GAMMA – (GT) </span></td>
                    <td><input name="GT" type="text" class="style17" id="GT" size="10" /></td>
                    <td><span class="style10">50.</span></td>
                    <td><span class="style10"><strong>MPV</strong></span></td>
                    <td class="style14"><input name="MPV" type="text" class="style17" id="MPV" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">25.</span></td>
                    <td><span class="style13">Lactate Dehydrogenase</span></td>
                    <td><input name="LactateDhydrog" type="text" class="style17" id="LactateDhydrog" size="10" /></td>
                    <td><span class="style10">51.</span></td>
                    <td><span class="style10"><strong>Absolute Neutrophils</strong></span></td>
                    <td class="style14"><input name="AbsolNeutrophis" type="text" class="style17" id="AbsolNeutrophis" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style13">26.</span></td>
                    <td><span class="style13">Bilirubin Total</span></td>
                    <td><input name="BilirubinTotal" type="text" class="style17" id="BilirubinTotal" size="10" /></td>
                    <td><span class="style10">52.</span></td>
                    <td><span class="style10"><strong>WBC</strong></span></td>
                    <td class="style14"><input name="WBC" type="text" class="style17" id="WBC" size="10" /></td>
                  </tr>
                  <tr>
                    <td height="110" colspan="6"><span class="style10">.</span></td>
                    </tr>
                  
                  <tr>
                    <td><span class="style10">53.</span></td>
                    <td><span class="style10"><strong> Neutrophils</strong></span></td>
                    <td class="style14"><input name="Neutrophils" type="text" class="style17" id="Neutrophils" size="10" /></td>
                    <td><span class="style10">60.</span></td>
                    <td><span class="style10"><strong>Absolute Monocytes</strong></span></td>
                    <td class="style14"><input name="AbsoluteMonocytes" type="text" class="style17" id="AbsoluteMonocytes" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">54.</span></td>
                    <td><span class="style10"><strong>Lymphocytes</strong></span></td>
                    <td class="style14"><input name="Lymphocytes" type="text" class="style17" id="Lymphocytes" size="10" /></td>
                    <td><span class="style10">61.</span></td>
                    <td><span class="style10"><strong>Mixed Cells</strong></span></td>
                    <td class="style14"><input name="MixedCells" type="text" class="style17" id="MixedCells" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">55.</span></td>
                    <td><span class="style10"><strong>Monocytes</strong></span></td>
                    <td class="style14"><input name="Monocytes" type="text" class="style17" id="Monocytes" size="10" /></td>
                    <td><span class="style10">62.</span></td>
                    <td><span class="style10"><strong>Absolute Mixed Cells</strong></span></td>
                    <td class="style14"><input name="AbsolMixCells" type="text" class="style17" id="AbsolMixCells" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">56.</span></td>
                    <td><span class="style10"><strong>Eosinophils</strong></span></td>
                    <td class="style14"><input name="Ensinophils" type="text" class="style17" id="Ensinophils" size="10" /></td>
                    <td><span class="style10">63.</span></td>
                    <td><span class="style10"><strong>Eosinophil Count Absolute</strong></span></td>
                    <td class="style14"><input name="EosinophilCountAbsol" type="text" class="style17" id="EosinophilCountAbsol" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">57.</span></td>
                    <td><span class="style10"><strong>Basophils</strong></span></td>
                    <td class="style14"><input name="Basophisis" type="text" class="style17" id="Basophisis" size="10" /></td>
                    <td><span class="style10">64.</span></td>
                    <td><span class="style10"><strong>Basophils Absolute Count</strong></span></td>
                    <td class="style14"><input name="BasophilsAbsoluteCount" type="text" class="style17" id="BasophilsAbsoluteCount" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">58.</span></td>
                    <td><span class="style10"><strong>Absolute Lymphocytes</strong></span></td>
                    <td class="style14"><input name="AbsoluteLymphocytes" type="text" class="style17" id="AbsoluteLymphocytes" size="10" /></td>
                    <td><span class="style10">65.</span></td>
                    <td><span class="style10"><strong>Atypical Lymphs</strong></span></td>
                    <td class="style14"><input name="AtypicalLymphs" type="text" class="style17" id="AtypicalLymphs" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">59.</span></td>
                    <td><span class="style10"><strong>Bands</strong></span></td>
                    <td class="style14"><input name="Bands" type="text" class="style17" id="Bands" size="10" /></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="style14">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="23" colspan="6" valign="top"><div align="center">
                      <table width="100%" border="0" cellpadding="0">
                        <tr>
                          <td bgcolor="#996600"><div align="center" class="style8">URINE ANALYSIS</div></td>
                        </tr>
                      </table>
                    </div></td>
                    </tr>
                  <tr>
                    <td><span class="style10">66.</span></td>
                    <td class="style10"><strong class="style10">A</strong><strong class="style13">scorbic 
                        Acid</strong></td>
                    <td class="style21"><input name="ascorbicacid" type="text" class="style21" id="ascorbicacid" size="10" /></td>
                    <td><span class="style10">77.</span></td>
                    <td class="style10"><strong>Leukocytes</strong></td>
                    <td class="style21"><input name="Leukocytes" type="text" class="style21" id="Leukocytes" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">67.</span></td>
                    <td class="style10"><strong class="style10">Color&nbsp;</strong></td>
                    <td class="style21"><input name="color" type="text" class="style21" id="color" size="10" /></td>
                    <td><span class="style10">78.</span></td>
                    <td class="style10"><strong> Cast</strong></td>
                    <td class="style21"><input name="Cast" type="text" class="style21" id="Cast" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">68.</span></td>
                    <td class="style10"><span class="style10"><strong>Specific Gravitys</strong></span></td>
                    <td class="style21"><input name="specificGravity" type="text" class="style21" id="specificGravity" size="10" /></td>
                    <td><span class="style10">79.</span></td>
                    <td class="style10"><strong>Mucus</strong></td>
                    <td class="style21"><input name="Mucus" type="text" class="style21" id="Mucus" size="10" /></td>
                  </tr>
                  <tr>
                    <td height="21"><span class="style10">69.</span></td>
                    <td class="style10"><strong class="style10">PH – Negative = 0</strong></td>
                    <td class="style21"><input name="PHNegative" type="text" class="style21" id="PHNegative" size="10" /></td>
                    <td class="style10">80.</td>
                    <td class="style10"><strong>RB</strong></td>
                    <td class="style21"><input name="RB" type="text" class="style21" id="RB" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">70.</span></td>
                    <td class="style10"><strong class="style10">Glucose</strong></td>
                    <td class="style21"><input name="UrineGlucose" type="text" class="style21" id="UrineGlucose" size="10" /></td>
                    <td class="style10">81.</td>
                    <td class="style10"><strong>Epithelial Cells</strong></td>
                    <td class="style21"><input name="EpithelialCells" type="text" class="style21" id="EpithelialCells" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">71.</span></td>
                    <td class="style10"><strong class="style10">Bilirubin</strong></td>
                    <td class="style21"><input name="Bilirubin" type="text" class="style21" id="Bilirubin" size="10" /></td>
                    <td class="style10">82.</td>
                    <td class="style10"><strong>Calcium Oxalate</strong></td>
                    <td class="style21"><input name="CalciumOxalate" type="text" class="style21" id="CalciumOxalate" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">72.</span></td>
                    <td class="style10"><span class="style10"><strong>Keytone</strong></span><strong>&nbsp;</strong></td>
                    <td class="style21"><span class="style10"><strong class="style10">
                      <input name="Keytone" type="text" class="style21" id="Keytone" size="10" />
                    </strong></span></td>
                    <td class="style10">83.</td>
                    <td class="style10"><strong>Triple Phosphate</strong></td>
                    <td class="style21"><input name="TriplePhosphate" type="text" class="style21" id="TriplePhosphate" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">73.</span></td>
                    <td class="style10"><strong class="style10">Blood</strong></td>
                    <td class="style21"><input name="UrineBlood" type="text" class="style21" id="UrineBlood" size="10" /></td>
                    <td class="style10">84.</td>
                    <td class="style10"><strong>Uric Acid</strong></td>
                    <td class="style21"><input name="UrineUricAcid" type="text" class="style21" id="UrineUricAcid" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">74.</span></td>
                    <td class="style10"><strong>Protein</strong></td>
                    <td class="style21"><input name="UrineProtein" type="text" class="style21" id="UrineProtein" size="10" /></td>
                    <td class="style10">85.</td>
                    <td class="style10"><strong>Amorphous</strong></td>
                    <td class="style21"><input name="Amorphous" type="text" class="style21" id="Amorphous" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">75.</span></td>
                    <td class="style10"><strong> Urubilinogen</strong></td>
                    <td class="style21"><input name="Urubilinogen" type="text" class="style21" id="Urubilinogen" size="10" /></td>
                    <td class="style10">86.</td>
                    <td class="style10"><strong>Bacteria</strong></td>
                    <td class="style21"><input name="Bacteria" type="text" class="style21" id="Bacteria" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">76.</span></td>
                    <td class="style10"><span class="style10"><strong>Nitrite</strong></span></td>
                    <td class="style21"><input name="Nitrite" type="text" class="style21" id="Nitrite" size="10" /></td>
                    <td class="style10">&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td class="style21">&nbsp;</td>
                  </tr>
                  <tr>
                    <td colspan="6" bgcolor="#999900"><div align="center"><span class="style8">&nbsp;IN HOUSE 
                        URINE</span></div></td>
                    </tr>
                  <tr>
                    <td><span class="style10">87..</span></td>
                    <td class="style10"><strong>Saliva PH</strong></td>
                    <td class="style21"><input name="SalivaPH" type="text" class="style21" id="SalivaPH" size="10" /></td>
                    <td class="style10">90.</td>
                    <td class="style10"><strong>Nitrate Nitrogen</strong></td>
                    <td class="style21"><input name="NitrateNitrogen" type="text" class="style21" id="NitrateNitrogen" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">88..</span></td>
                    <td class="style10"><strong>Sugar Refractometor</strong></td>
                    <td class="style21"><input name="SugarRefractometor" type="text" class="style21" id="SugarRefractometor" size="10" /></td>
                    <td class="style10">91.</td>
                    <td class="style10"><strong>Ammonical Nitrogen</strong></td>
                    <td class="style21"><input name="AmmonicalNitrogen" type="text" class="style21" id="AmmonicalNitrogen" size="10" /></td>
                  </tr>
                  <tr>
                    <td><span class="style10">89..</span></td>
                    <td class="style10"><strong>Conductivity</strong></td>
                    <td class="style21"><input name="Conductivity" type="text" class="style21" id="Conductivity" size="10" /></td>
                    <td class="style10">92..</td>
                    <td class="style10"><strong>Indican&nbsp;</strong></td>
                    <td class="style21"><input name="Indican" type="text" class="style21" id="Indican" size="10" /></td>
                  </tr>
                  <tr>
                    <td colspan="6" bgcolor="#9795BA"><div align="center"><span class="style8">EXTENDED 
                        NUTRITIONAL TESTING/ SPECIAL TESTS</span></div></td>
                    </tr>
                  <tr>
                    <td class="style10">&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td class="style14">&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="style10">&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td class="style14">&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="style10">&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td class="style14">&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="style10">&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td class="style10">&nbsp;</td>
                    <td class="style14">&nbsp;</td>
                  </tr>
                  <tr>
                    <td colspan="6" class="style10"></td>
                    </tr>
                  
                  <tr>
                    <td height="19" colspan="6" align="center" valign="top" class="style10"><span class="style10"></span><span class="style10"></span><span class="style10"></span><span class="style10"></span><span class="style10"></span><span class="style10"></span><span class="style10"></span><span class="style10"></span><span class="style10"></span><span class="style10"></span><span class="style10"></span></td>
                    </tr>
                </table>
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="20" valign="top" bgcolor="White"><input type="submit" name="submit" value="Enter" /></td>
                    </tr>
                  </table>
                                    </td>
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
<p>&nbsp;</p>
</body>
</html>

