<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
CodeBehind="Default.aspx.cs" Inherits="Web._Default" %>

<asp:Content ID="CntP" runat="server" ContentPlaceHolderID="Cp">
<tr>
<td colspan="2">
<div align="center">
<table width="100%" border="0" cellpadding="0">
<tr>
<td>
<asp:Literal ID ="LtrMessage" runat="server"></asp:Literal>
<table width="100%" border="0" cellpadding="4" cellspacing="2" bgcolor="#328b49">
<tr><td colspan="2" align="center"><span class="style8">REPORT OF FINDING FOR :</span><br /><br /></td></tr>
<tr>
<td width="45%" style="text-align:right;"><span class="style7">Patient Name : </span><span class="red">*</span></td>
<td><asp:TextBox ID="TxtPatientName" runat="server" MaxLength="50" 
onkeypress="return AllowAlphabet(event);"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator 
ID="RqdPN" runat="server" ControlToValidate="TxtPatientName" SetFocusOnError="true" ErrorMessage="required !" 
CssClass="white"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td style="text-align:right;"><span class="style7">Gender : </span><span class="red">*</span></td>
<td><asp:DropDownList ID="DrpGender" runat="server">
<asp:ListItem Text="-- Select --" Value=""></asp:ListItem>
<asp:ListItem Text="Male" Value="M"></asp:ListItem>
<asp:ListItem Text="Female" Value="F"></asp:ListItem>
</asp:DropDownList>&nbsp;<asp:RequiredFieldValidator 
ID="RqdGender" runat="server" ControlToValidate="DrpGender" SetFocusOnError="true" ErrorMessage="required !" 
CssClass="white"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td style="text-align:right;"><span class="style7">Test Name : </span></td>
<td><asp:TextBox ID="TxtTestName" runat="server" MaxLength="50" 
onkeypress="return NotAllowSpecialChar(event);"></asp:TextBox></td>
</tr>
<tr>
<td style="text-align:right;"><span class="style7">Test Date : </span><span class="red">*</span></td>
<td><asp:TextBox ID="TxtDate" runat="server" MaxLength="10" onkeypress="return NotAllow(event);"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator 
ID="RqdDate" runat="server" ControlToValidate="TxtDate" SetFocusOnError="true" ErrorMessage="required !" 
CssClass="white"></asp:RequiredFieldValidator></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table width="100%" class="border">
<tr>
<td class="pd5" align="center">
<span class="style2">This type of evaluation is designed to serve as an advanced 
preventative medicine educational tool. It represents the latest scientific breakthrough in laboratory diagnostics 
cross-correlated with the patients symptoms, body signs and history and the science of iridology using 21st 
century computer technology for nutrition, hormonal  toxicity and metabolic assessment purposes.
<br /><br />This evaluation does not attempt to diagnose, treat or prescribe for any named 
medical condition. It's purpose is to assist proactive subscribers to Abunda Life’s natural healing 
philosophy and belief system into a more healthful way of life and to assist such responsible 
individuals to achieve their God given potential, nutritional optimization and high level wellness 
of body, mind and spirit.</span></td>
</tr>
</table>
</td>
</tr>
</table>
</div>
</td>
</tr>
<tr><td colspan="2" align="center"><img src="images/logo-collage.jpg" alt="" /></td></tr>
<tr>
<td colspan="2" align="center">
<img src="images/smallerChurchMedNutTestingClin-1964.jpg" alt="" /><br />
<h3 align="center"><strong>208 third Ave. (steps to  ocean) Asbury Park, NJ 07712</strong><br />
Phone: 732-775-7575                       Fax: 732-502-0899<br />
<a href="http://www.myabundalife.com/" target="_blank" class="style4">www.myabundalife.com</a></h3>
<h5 align="center"><em>“I have come that Ye may have life and have it more abundantly”</em>  John 10:10</h5>
</td>
</tr>
<tr>
<td colspan="2">
<ul style="list-style-type:lower-alpha; text-align:left; margin-left:30%;">
<li>If results are pending - leave blank</li>
<li>If Normal - enter 0</li>
<li>If Negative - enter 0</li>
<li>If Positive - enter 1</li>
</ul>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td align="center">
<table width="80%" border="0" align="center" cellpadding="3" id="TblInput">
<tr>
<td colspan="6" bgcolor="#328b49">
<div align="center"><span class="style9">Nutritional Testing and  <br />
Personal Health Evaluation</span></div></td>
</tr>
<tr>
<td colspan="6" bgcolor="#d6272c" class="style8">CHEMISTRY</td>
</tr>
<tr>
<td width="4%"><span class="style13">1.</span></td>
<td width="31%"><span class="style13">CHOLESTROL</span></td>
<td width="15%"><asp:TextBox ID="TxtCHOLESTROL" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td width="4%"><span class="style13">2.</span></td>
<td width="31%"><span class="style13">TRIGLYCERIDE</span></td>
<td width="15%"><asp:TextBox ID="TxtTRIGLYCERIDE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">3.</span></td>
<td><span class="style13">GLUCOSE</span></td>
<td><asp:TextBox ID="TxtGLUCOSE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">4.</span></td>
<td><span class="style13">SODIUM</span></td>
<td><asp:TextBox ID="TxtSODIUM" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">5.</span></td>
<td><span class="style13">POTASSIUM</span></td>
<td><asp:TextBox ID="TxtPOTASSIUM" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">6.</span></td>
<td><span class="style13">CHLORIDE</span></td>
<td><asp:TextBox ID="TxtCHLORIDE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">7.</span></td>
<td><span class="style13">CARBON DIOXIDE (CO2)</span></td>
<td><asp:TextBox ID="TxtCARBON_DIOXIDE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">8.</span></td>
<td><span class="style13">BUN</span></td>
<td><asp:TextBox ID="TxtBUN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">9.</span></td>
<td><span class="style13">CREATININE</span></td>
<td><asp:TextBox ID="TxtCREATININE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">10.</span></td>
<td><span class="style13">BUN/CREATININE RATIO</span></td>
<td><asp:TextBox ID="TxtBUN_CREAT" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">11.</span></td>
<td><span class="style13">URIC ACID</span></td>
<td><asp:TextBox ID="TxtURIC" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">12.</span></td>
<td><span class="style13">CALCIUM</span></td>
<td><asp:TextBox ID="TxtCALCIUM" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">13.</span></td>
<td><span class="style13">PHOSPHOROUS</span></td>
<td><asp:TextBox ID="TxtPHOSPHOROUS" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">14.</span></td>
<td><span class="style13">TOTAL PROTEIN</span></td>
<td><asp:TextBox ID="TxtTOTAL_PROTEIN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">15.</span></td>
<td><span class="style13">ALBUMIN, SERUM</span></td>
<td><asp:TextBox ID="TxtALBUMIN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">16.</span></td>
<td><span class="style13">GLOBULIN</span></td>
<td><asp:TextBox ID="TxtGLOBULIN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">17.</span></td>
<td><span class="style13">ALBUMIN/GLOBULIN RATIO</span></td>
<td><asp:TextBox ID="TxtALBUMIN_GLOBULIN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">18.</span></td>
<td><span class="style13">ALKALINE PHOSPHATASE</span></td>
<td><asp:TextBox ID="TxtALKALINE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">19.</span></td>
<td><span class="style13">SGOT (AST)</span></td>
<td><asp:TextBox ID="TxtSGOT" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">20.</span></td>
<td><span class="style13">SGPT (ALT)</span></td>
<td><asp:TextBox ID="TxtSGPT" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">21.</span></td>
<td><span class="style13">LACTATE DEHYDROGENASE (LDH)</span></td>
<td><asp:TextBox ID="TxtLACTATE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">22.</span></td>
<td><span class="style13">BILIRUBIN, TOTAL</span></td>
<td><asp:TextBox ID="TxtBILIRUBIN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">23.</span></td>
<td><span class="style13">IRON</span></td>
<td><asp:TextBox ID="TxtIRON" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">24.</span></td>
<td><span class="style13">HDL-CHOLESTEROL</span></td>
<td><asp:TextBox ID="TxtHDL" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">25.</span></td>
<td><span class="style13">LDL-CHOLESTEROL</span></td>
<td><asp:TextBox ID="TxtLDL" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">26.</span></td>
<td><span class="style13">CHOLESTEROL/HDL RATIO</span></td>
<td><asp:TextBox ID="TxtCHOL" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">27.</span></td>
<td><span class="style13">GAMMA GT</span></td>
<td><asp:TextBox ID="TxtGAMMA_CT" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">28.</span></td>
<td><span class="style13">IRON BINDING CAPACITY</span></td>
<td><asp:TextBox ID="TxtIRON_BINDING" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">29.</span></td>
<td><span class="style13">VLDL</span></td>
<td><asp:TextBox ID="TxtVLDL_CHEMISTRY" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td colspan="3">&nbsp;</td>
</tr>
<tr>
<td colspan="6" bgcolor="#d6272c" class="style8">HEMATOLOGY</td>
</tr>
<tr>
<td><span class="style13">1.</span></td>
<td><span class="style13">WBC</span></td>
<td><asp:TextBox ID="TxtWBC" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">2.</span></td>
<td><span class="style13">RBC</span></td>
<td><asp:TextBox ID="TxtRBC" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">3.</span></td>
<td><span class="style13">HEMOGLOBIN</span></td>
<td><asp:TextBox ID="TxtHEMOGLOBIN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">4.</span></td>
<td><span class="style13">HEMATOCRIT</span></td>
<td><asp:TextBox ID="TxtHEMATOCRIT" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">5.</span></td>
<td><span class="style13">MCV</span></td>
<td><asp:TextBox ID="TxtMCV" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">6.</span></td>
<td><span class="style13">MCH</span></td>
<td><asp:TextBox ID="TxtMCH" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">7.</span></td>
<td><span class="style13">MCHC</span></td>
<td><asp:TextBox ID="TxtMCHC" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">8.</span></td>
<td><span class="style13">RDW</span></td>
<td><asp:TextBox ID="TxtRDW" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">9.</span></td>
<td><span class="style13">PLATELET COUNT</span></td>
<td><asp:TextBox ID="TxtPLATELET_COUNT" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">10.</span></td>
<td><span class="style13">NEUTROPHILS</span></td>
<td><asp:TextBox ID="TxtNETROPHILS" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">11.</span></td>
<td><span class="style13">LYMPHOCYTES</span></td>
<td><asp:TextBox ID="TxtLYMPHOCYTES" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">12.</span></td>
<td><span class="style13">MONOCYTES</span></td>
<td><asp:TextBox ID="TxtMONOCYTES" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">13.</span></td>
<td><span class="style13">EOSINOPHILS</span></td>
<td><asp:TextBox ID="TxtEOSINOPHILS" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">14.</span></td>
<td><span class="style13">BASOPHILS</span></td>
<td><asp:TextBox ID="TxtBASOPHILS" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">15.</span></td>
<td><span class="style13">MPV</span></td>
<td><asp:TextBox ID="TxtMPV" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td colspan="3">&nbsp;</td>
</tr>
<tr>
<td colspan="6" bgcolor="#d6272c" class="style8">URINALYSIS</td>
</tr>
<tr>
<td><span class="style13">1.</span></td>
<td><span class="style13">SPECIFIC GRAVITY</span></td>
<td><asp:TextBox ID="TxtSPECIFIC_GRAVITY" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">2.</span></td>
<td><span class="style13">PH</span></td>
<td><asp:TextBox ID="TxtPH" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">3.</span></td>
<td><span class="style13">U GLUCOSE</span></td>
<td><asp:TextBox ID="TxtU_GLUCOSE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">4.</span></td>
<td><span class="style13">BILIRUBIN, URINE</span></td>
<td><asp:TextBox ID="TxtBILIRUBIN_URINE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">5.</span></td>
<td><span class="style13">KETONE</span></td>
<td><asp:TextBox ID="TxtKETONE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">6.</span></td>
<td><span class="style13">BLOOD</span></td>
<td><asp:TextBox ID="TxtBLOOD" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">7.</span></td>
<td><span class="style13">PROTEIN</span></td>
<td><asp:TextBox ID="TxtPROTEIN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">8.</span></td>
<td><span class="style13">UROBILINOGEN</span></td>
<td><asp:TextBox ID="TxtUROBILINOGEN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">9.</span></td>
<td><span class="style13">NITRITE</span></td>
<td><asp:TextBox ID="TxtNITRITE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">10.</span></td>
<td><span class="style13">LEUKOCYTES</span></td>
<td><asp:TextBox ID="TxtLEUKOCYTES" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">11.</span></td>
<td><span class="style13">CAST</span></td>
<td><asp:TextBox ID="TxtCAST" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">12.</span></td>
<td><span class="style13">MUCUS</span></td>
<td><asp:TextBox ID="TxtMUCUS" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">13.</span></td>
<td><span class="style13">WBC URINE</span></td>
<td><asp:TextBox ID="TxtWBC_URINE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">14.</span></td>
<td><span class="style13">RBC URINE</span></td>
<td><asp:TextBox ID="TxtRBC_URINE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">15.</span></td>
<td><span class="style13">EPITHELIAL CELLS</span></td>
<td><asp:TextBox ID="TxtEPITHELIAL_CELLS" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">16.</span></td>
<td><span class="style13">CALCIUM OXALATE</span></td>
<td><asp:TextBox ID="TxtCALCIUM_OXALATE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">17.</span></td>
<td><span class="style13">TRIPLE PHOSPHATE</span></td>
<td><asp:TextBox ID="TxtTRIPLE_PHOSPHATE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">18.</span></td>
<td><span class="style13">URIC ACID CRYSTALS</span></td>
<td><asp:TextBox ID="TxtURIC_ACID_CRYSTALS" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">19.</span></td>
<td><span class="style13">AMORPHOUS</span></td>
<td><asp:TextBox ID="TxtAMORPHOUS" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">20.</span></td>
<td><span class="style13">BACTERIA</span></td>
<td><asp:TextBox ID="TxtBACTERIA" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td colspan="6" bgcolor="#d6272c" class="style8">ANA</td>
</tr>
<tr>
<td><span class="style13">1.</span></td>
<td><span class="style13">ANTI-NUCLEAR ANTIBODY</span></td>
<td><asp:TextBox ID="TxtANTI_NUCLEAR_ANTIBODY" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td colspan="3">&nbsp;</td>
</tr>
<tr>
<td colspan="6" bgcolor="#d6272c" class="style8">THYROID</td>
</tr>
<tr>
<td><span class="style13">1.</span></td>
<td><span class="style13">T4, FREE</span></td>
<td><asp:TextBox ID="TxtT4_FREE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">2.</span></td>
<td><span class="style13">THYROID STIM. HORMONE</span></td>
<td><asp:TextBox ID="TxtTHYROID_STIM" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">3.</span></td>
<td><span class="style13">T4,TOTAL</span></td>
<td><asp:TextBox ID="TxtT4_TOTAL" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">4.</span></td>
<td><span class="style13">T3 UPTAKE</span></td>
<td><asp:TextBox ID="TxtT3_UPTAKE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">5.</span></td>
<td><span class="style13">FREE THYROXINE INDEX</span></td>
<td><asp:TextBox ID="TxtFREE_THYROXINE_INDEX" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td colspan="3">&nbsp;</td>
</tr>
<tr>
<td colspan="6" bgcolor="#d6272c" class="style8">&nbsp;</td>
</tr>
<tr>
<td><span class="style13">1.</span></td>
<td><span class="style13">BASOPHILS, ABSOLUTE COUNT</span></td>
<td><asp:TextBox ID="TxtBASOPHILS_ABSOLUTE_COUNT" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">2.</span></td>
<td><span class="style13">CARCINOEMBRYONIC ANTIGEN</span></td>
<td><asp:TextBox ID="TxtCARCINOEMBRYONIC_ANTIGEN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">3.</span></td>
<td><span class="style13">C-PEPTIDE, SERUM</span></td>
<td><asp:TextBox ID="TxtC_PEPTIDE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">4.</span></td>
<td><span class="style13">ESTRADIOL</span></td>
<td><asp:TextBox ID="TxtESTRADIOL" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">5.</span></td>
<td><span class="style13">FERRITIN</span></td>
<td><asp:TextBox ID="TxtFERRITIN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">6.</span></td>
<td><span class="style13">CORTISOL</span></td>
<td><asp:TextBox ID="TxtCORTISOL" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">7.</span></td>
<td><span class="style13">HEMOGLOBIN A1c</span></td>
<td><asp:TextBox ID="TxtHEMOGLOBIN_A1C" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">8.</span></td>
<td><span class="style13">INSULINLIKE GROWTH FACT</span></td>
<td><asp:TextBox ID="TxtINSULINLIKE_GROWTH_FACT" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">9.</span></td>
<td><span class="style13">ALPHA-FETOPROTEIN, TUMOR</span></td>
<td><asp:TextBox ID="TxtALPHA_FETOPROTEIN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">10.</span></td>
<td><span class="style13">INSULIN</span></td>
<td><asp:TextBox ID="TxtINSULIN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">11.</span></td>
<td><span class="style13">HOMOCTSTEINE</span></td>
<td><asp:TextBox ID="TxtHOMOCTSTEINE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">12.</span></td>
<td><span class="style13">TESTOSTERONE, FREE</span></td>
<td><asp:TextBox ID="TxtTESTOSTERONE_FREE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">13.</span></td>
<td><span class="style13">C-REACT, PROTEIN CARDIAC</span></td>
<td><asp:TextBox ID="TxtC_REACT_PROTEIN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">14.</span></td>
<td><span class="style13">PROGESTERONE</span></td>
<td><asp:TextBox ID="TxtPROGESTERONE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">15.</span></td>
<td><span class="style13">SODIUM/POTASSIUM RATIO</span></td>
<td><asp:TextBox ID="TxtSODIUM_POTASSIUM_RATIO" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">16.</span></td>
<td><span class="style13">CALCIUM/ALBUMIN RATIO</span></td>
<td><asp:TextBox ID="TxtCALCIUM_ALBUMIN_RATIO" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">17.</span></td>
<td><span class="style13">ABSOLUTE NEUTROPHILS</span></td>
<td><asp:TextBox ID="TxtABSOLUTE_NEUTROPHILS_1" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">18.</span></td>
<td><span class="style13">BANDS</span></td>
<td><asp:TextBox ID="TxtBANDS_1" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">19.</span></td>
<td><span class="style13">ABSOLUTE MONOCYTES</span></td>
<td><asp:TextBox ID="TxtABSOLUTE_MONOCYTES_1" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">20.</span></td>
<td><span class="style13">MIXED CELLS</span></td>
<td><asp:TextBox ID="TxtMIXED_CELLS" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">21.</span></td>
<td><span class="style13">ABSOLUTE MIXED CELLS</span></td>
<td><asp:TextBox ID="TxtABSOLUTE_MIXED_CELLS" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">22.</span></td>
<td><span class="style13">ATYPICAL LYMPHS</span></td>
<td><asp:TextBox ID="TxtATYPICAL_LYMPHS" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">23.</span></td>
<td><span class="style13">TESTOSTERONE, TOTAL</span></td>
<td><asp:TextBox ID="TxtTESTOSTERONE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">24.</span></td>
<td><span class="style13">LEPTIN</span></td>
<td><asp:TextBox ID="TxtLEPITIN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">25.</span></td>
<td><span class="style13">CA 15-3, SERUM</span></td>
<td><asp:TextBox ID="TxtCA_15_3" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">26.</span></td>
<td><span class="style13">CA 19-9</span></td>
<td><asp:TextBox ID="TxtCA_19_9" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">27.</span></td>
<td><span class="style13">PERCENT SATURATION</span></td>
<td><asp:TextBox ID="TxtPERCENT" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">28.</span></td>
<td><span class="style13">SEX HORMONE BINDING GLOB.</span></td>
<td><asp:TextBox ID="TxtSEX_HORMONE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">29.</span></td>
<td><span class="style13">C-REACTIVE PROTEIN, hS</span></td>
<td><asp:TextBox ID="TxtC_REACTIVE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">30.</span></td>
<td><span class="style13">ERYTHROCYTE SED RATE</span></td>
<td><asp:TextBox ID="TxtERYTHROCYTE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">31.</span></td>
<td><span class="style13">RHEUMATOID ARTH. AB. SCRN</span></td>
<td><asp:TextBox ID="TxtRHEUMATOID" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">32.</span></td>
<td><span class="style13">DHEA-S</span></td>
<td><asp:TextBox ID="TxtDHEA_S" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">33.</span></td>
<td><span class="style13">CA-125</span></td>
<td><asp:TextBox ID="TxtCA_125" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">34.</span></td>
<td><span class="style13">SS-A (ANTI-R0)</span></td>
<td><asp:TextBox ID="TxtSS_A" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">35.</span></td>
<td><span class="style13">SS-B (ANTI-La)</span></td>
<td><asp:TextBox ID="TxtSS_B" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">36.</span></td>
<td><span class="style13">PREGNENOLONE </span></td>
<td><asp:TextBox ID="TxtPREGNENOLONE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">37.</span></td>
<td><span class="style13">FIBRINOGEN</span></td>
<td><asp:TextBox ID="TxtFIBRINOGEN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">38.</span></td>
<td><span class="style13">EOSINOPHIL CT. ABSOLUTE</span></td>
<td><asp:TextBox ID="TxtEOSINOPHIL_CT_ABSOLUTE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">39.</span></td>
<td><span class="style13">INDICAN</span></td>
<td><asp:TextBox ID="TxtINDICAN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">40.</span></td>
<td><span class="style13">ESTRONE, SERUM</span></td>
<td><asp:TextBox ID="TxtESTRONE" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">41.</span></td>
<td><span class="style13">PROSTATIC SPEC. ANTIGEN</span></td>
<td><asp:TextBox ID="TxtPROSTATIC_SPEC_ANTIGEN" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">42.</span></td>
<td><span class="style13">CANDIDA ALBICANS ANTIBODY</span></td>
<td><asp:TextBox ID="TxtCANDIDA_ALBICANS_ANTIBODY" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
<td><span class="style13">43.</span></td>
<td><span class="style13">LACTIC ACID</span></td>
<td><asp:TextBox ID="TxtLACTIC_ACID" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
<td><span class="style13">44.</span></td>
<td><span class="style13">CREATININE, URINE, RANDOM</span></td>
<td><asp:TextBox ID="TxtCREATININE_URINE_RANDOM" runat="server" CssClass="style17" MaxLength="5" onkeypress="return AllowNumberWithDot(event);"></asp:TextBox></td>
</tr>
<tr>
</tr>
<tr><td colspan="6" align="center"><br />
<asp:Button ID="BtnSubmit" runat="server" Text="Submit Test Findings" OnClick="BtnSubmit_Click" /><br /></td></tr>
</table>
</td>
</tr>
</asp:Content>
<asp:Content ID="CntH" runat="server" ContentPlaceHolderID="Ch">
<script src="js/libs/calendar/jquery-1.8.2.js" type="text/javascript" language="javascript"></script>
<script src="js/libs/calendar/jquery-ui.js" type="text/javascript" language="javascript"></script>
<link rel="stylesheet" href="js/libs/calendar/jquery-ui.css" type="text/css" />
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
$(document).ready(function () {
$("#Cp_TxtDate").datepicker({
numberOfMonths: [1, 1],
dateFormat: "m/d/yy",
yearRange: '-2:+2',
changeYear: false
});
});
</script>
</asp:Content>