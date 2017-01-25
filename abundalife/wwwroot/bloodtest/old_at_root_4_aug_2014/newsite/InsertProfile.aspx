<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="InsertProfile.aspx.cs" Inherits="abundalife1001.InsertProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="xid" runat="server" />
    <div>
        <table width="610" border="0" align="center" cellpadding="0">
            <tr>
                <td colspan="2" valign="top">
                    <div align="center">
                        <table width="100%" border="0" cellpadding="0">
                            <tr>
                                <td>
                                    <div class="profile-container">
                                        <table width="100%" border="0" cellpadding="2" class="profile-box">
                                            <tr>
                                                <td colspan="2">
                                                    <span class="report">Report of finding for:</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="style8">Name:</span> <span class="style7">
                                                        <asp:TextBox ID="name" runat="server" CssClass="profile-textbox"></asp:TextBox>
                                                    </span>
                                                </td>
                                                <td>
                                                    <div align="right" class="style7">
                                                        <span class="red12">Date:</span>
                                                        <asp:TextBox ID="xdate" runat="server" CssClass="profile-textbox"></asp:TextBox>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <div>
                                            <p>
                                                This type of evaluation is designed to serve as an advanced preventative medicine
                                                educational tool. It represents the latest scientific breakthrough in laboratory
                                                diagnostics cross-correlated with the patients symptoms, body signs and history
                                                and the science of iridology using 21st century computer technology for nutrition,
                                                hormonal toxicity and metabolic assessment purposes.</p>
                                            <p>
                                                This evaluation does not attempt to diagnose, treat or prescribe for any named medical
                                                condition. Its purpose is to assist proactive subscribers to Abunda Life’s natural
                                                healing philosophy and belief system into a more healthful way of life and to assist
                                                such responsible individuals to achieve their God given potential, nutritional optimization
                                                and high level wellness of body, mind and spirit.</p>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2" valign="top">
                    <h3 align="left">
                        &nbsp;</h3>
                </td>
            </tr>
            <tr>
                <td height="1400" colspan="2" align="center" valign="top">
                    <div align="center">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="report-table">
                            <tr>
                                <td height="1381" align="center" valign="top">
                                    <table width="100%" border="0" align="center" cellpadding="0" bgcolor="#FFFFFF">
                                        <tr>
                                            <td colspan="6">
                                                <div align="center">
                                                    <span class="profile-nut">Nutritional Testing and Personal Health Evaluation</span></div>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr class="test-container">
                                            <td colspan="6">
                                                <div align="center" class="test-box">
                                                    BLOOD TESTS</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <span class="style13">1.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Glucose</span>
                                            </td>
                                            <td>
                                                <input name="Glucose" type="text" class="style17" id="Glucose" size="10" />
                                            </td>
                                            <td width="4%" valign="top">
                                                <span class="style13">2.</span>
                                            </td>
                                            <td width="25%" valign="top">
                                                <span class="style13">Bun</span>
                                            </td>
                                            <td width="4%">
                                                <input name="bun" type="text" class="style17" id="bun" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <span class="style13">3.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Creatinine</span>
                                            </td>
                                            <td>
                                                <input name="creatine" type="text" class="style17" id="creatine" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">4.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Bun/Creatinine Ratio</span>
                                            </td>
                                            <td>
                                                <input name="buncreatineratio" type="text" class="style17" id="buncreatineratio"
                                                    size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <span class="style13">5.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Sodium</span>
                                            </td>
                                            <td>
                                                <input name="sodium" type="text" class="style17" id="sodium" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">6.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Potassium</span>
                                            </td>
                                            <td>
                                                <input name="potassium" type="text" class="style17" id="potassium" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <span class="style13">7.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Sodium/Potassium Ratio</span>
                                            </td>
                                            <td>
                                                <input name="sodiumpotassiumratio" type="text" class="style17" id="sodiumpotassiumratio"
                                                    size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">8.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Anion Gap</span>
                                            </td>
                                            <td>
                                                <input name="AnionGap" type="text" class="style17" id="AnionGap" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <span class="style13">9.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Chloride</span>
                                            </td>
                                            <td>
                                                <input name="Chloride" type="text" class="style17" id="Chloride" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">10.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Carbon Dioxide (Co2)</span>
                                            </td>
                                            <td>
                                                <input name="CarbonDioxide" type="text" class="style17" id="CarbonDioxide" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <span class="style13">11.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Cholesterol</span>
                                            </td>
                                            <td>
                                                <input name="Cholesterol" type="text" class="style17" id="Cholesterol" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">12.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Triglyceride</span>
                                            </td>
                                            <td>
                                                <input name="Triglyceride" type="text" class="style17" id="Triglyceride" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <span class="style13">13.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">HDL - Cholesterol</span>
                                            </td>
                                            <td>
                                                <input name="HDLCholesterol" type="text" class="style17" id="HDLCholesterol" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">14.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">LDL - Cholesterol</span>
                                            </td>
                                            <td>
                                                <input name="LDLCholesterol" type="text" class="style17" id="LDLCholesterol" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <span class="style13">15.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">VLDL - Cholesterol</span>
                                            </td>
                                            <td>
                                                <input name="VLDLCholesterol" type="text" class="style17" id="VLDLCholesterol" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">16.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Cholesterol/HDL Ratio</span>
                                            </td>
                                            <td>
                                                <input name="CholesterolHDLRatio" type="text" class="style17" id="CholesterolHDLRatio"
                                                    size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <span class="style13">17.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">LDL/HDL Ratio</span>
                                            </td>
                                            <td>
                                                <input name="LDLHDLRatio" type="text" class="style17" id="LDLHDLRatio" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">18.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Calcium</span>
                                            </td>
                                            <td>
                                                <input name="Calcium" type="text" class="style17" id="Calcium" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style13">19.</span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style13">Phosphorus</span>
                                            </td>
                                            <td>
                                                <input name="Phosphorus" type="text" class="style17" id="Phosphorus" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">20.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Calcium/Phosphorus Ratio</span>
                                            </td>
                                            <td>
                                                <input name="CalciumPhosRatio" type="text" class="style17" id="CalciumPhosRatio"
                                                    size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style13">21.</span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style13">Alkaline Phosphatase</span>
                                            </td>
                                            <td>
                                                <input name="AlkalinePhosphatase" type="text" class="style17" id="AlkalinePhosphatase"
                                                    size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">22.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">SGOT (AST)</span>
                                            </td>
                                            <td>
                                                <input name="AST" type="text" class="style17" id="AST" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style13">23.</span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style13">SGPT (ALT)</span>
                                            </td>
                                            <td bgcolor="#FFFFFF">
                                                <input name="ALT" type="text" class="style17" id="ALT" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">24.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">GAMMA – (GT) </span>
                                            </td>
                                            <td>
                                                <input name="GT" type="text" class="style17" id="GT" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style13">25.</span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style13">Lactate Dehydrogenase</span>
                                            </td>
                                            <td bgcolor="#FFFFFF">
                                                <input name="LactateDhydrog" type="text" class="style17" id="LactateDhydrog" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">26.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style13">Bilirubin Total</span>
                                            </td>
                                            <td>
                                                <input name="BilirubinTotal" type="text" class="style17" id="BilirubinTotal" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="5%" valign="top" class="style10">
                                                <span class="style13">27.</span>
                                            </td>
                                            <td width="22%" valign="top" class="style13">
                                                Uric Acid
                                            </td>
                                            <td width="21%" class="style14">
                                                <input name="UricAcid" type="text" class="style17" id="UricAcid" size="10" />
                                            </td>
                                            <td valign="top" class="style10">
                                                <span class="style13">28.</span>
                                            </td>
                                            <td valign="top" class="style10">
                                                <span class="style13">Total Protein</span>
                                            </td>
                                            <td class="style14">
                                                <input name="TotalProtein" type="text" class="style17" id="TotalProtein" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                <span class="style10">29</span>.
                                            </td>
                                            <td valign="top" class="style13">
                                                <strong>Albumin</strong>
                                            </td>
                                            <td class="style14">
                                                <input name="Albumin" type="text" class="style17" id="Albumin" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">30.</span>
                                            </td>
                                            <td valign="top">
                                                <span class="style10"><strong>Calcium/Albumin Ratio</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="CalciumAlbuminRatio" type="text" class="style17" id="CalciumAlbuminRatio"
                                                    size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="19" valign="top">
                                                <span class="style13">31.</span>
                                            </td>
                                            <td valign="top">
                                                <strong class="style10">Iron</strong>
                                            </td>
                                            <td class="style14">
                                                <input name="Iron" type="text" class="style17" id="Iron" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">32.</span>
                                            </td>
                                            <td valign="top">
                                                <strong class="style10">Iron Binding Capacity</strong>
                                            </td>
                                            <td class="style14">
                                                <input name="IronBindCapac" type="text" class="style17" id="IronBindCapac" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                33.
                                            </td>
                                            <td valign="top">
                                                <strong class="style10">WBC</strong>
                                            </td>
                                            <td class="style14">
                                                <input name="WBC" type="text" class="style17" id="WBC" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                34.
                                            </td>
                                            <td valign="top">
                                                <strong class="style10">RBC</strong>
                                            </td>
                                            <td class="style14">
                                                <input name="RBC" type="text" class="style17" id="RBC" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                35.
                                            </td>
                                            <td valign="top" class="style13">
                                                Hemoglobin
                                            </td>
                                            <td class="style14">
                                                <input name="Hemoglobin" type="text" class="style17" id="Hemoglobin" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                36.
                                            </td>
                                            <td valign="top" class="style13">
                                                Hematocrit
                                            </td>
                                            <td class="style14">
                                                <input name="Hematocrit" type="text" class="style17" id="Hematocrit" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                37.
                                            </td>
                                            <td valign="top" class="style13">
                                                <strong>MCV</strong>
                                            </td>
                                            <td class="style14">
                                                <input name="MCV" type="text" class="style17" id="MCV" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                38.
                                            </td>
                                            <td valign="top" class="style13">
                                                <strong>MCH</strong>
                                            </td>
                                            <td class="style14">
                                                <input name="MCH" type="text" class="style17" id="MCH" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                39.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>MCHC</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="MCHC" type="text" class="style17" id="MCHC" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                40.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>RDW</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="RDW" type="text" class="style17" id="RDW" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                41.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>Platelet Count</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="PlateletCount" type="text" class="style17" id="PlateletCount" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                42.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>Neutrophils</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="Neutrophils" type="text" class="style17" id="Neutrophils" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                43.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>Lymphocytes</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="Lymphocytes" type="text" class="style17" id="Lymphocytes" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                44.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>Monocytes</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="Monocytes" type="text" class="style17" id="Monocytes" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                45.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>Eosinophils</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="Ensinophils" type="text" class="style17" id="Ensinophils" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                46.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>Basophils</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="Basophisis" type="text" class="style17" id="Basophisis" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                <span class="style13">47.</span>
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>Globulin</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="Globulin" type="text" class="style17" id="Globulin" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style13">48.</span>
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>(A/G Ratio) – Albumin Ratio</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="AGRatio" type="text" class="style17" id="AGRatio" size="10" />
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td valign="top" class="style13">
                                                49.
                                            </td>
                                            <td valign="top">
                                                <span class="style10"><strong>Ferritin</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="Ferritin" type="text" class="style17" id="Ferritin" size="10" />
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                50.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>MPV</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="MPV" type="text" class="style17" id="MPV" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                51.
                                            </td>
                                            <td valign="top">
                                                <span class="style10"><strong>Absolute Neutrophils</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="AbsolNeutrophis" type="text" class="style17" id="AbsolNeutrophis" size="10" />
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                52.
                                            </td>
                                            <td valign="top">
                                                <span class="style10"><strong>Absolute Lymphocytes</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="AbsoluteLymphocytes" type="text" class="style17" id="AbsoluteLymphocytes"
                                                    size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                53.
                                            </td>
                                            <td valign="top">
                                                <span class="style10"><strong>Bands</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="Bands" type="text" class="style17" id="Bands" size="10" />
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                54.
                                            </td>
                                            <td valign="top">
                                                <span class="style10"><strong>Absolute Monocytes</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="AbsoluteMonocytes" type="text" class="style17" id="AbsoluteMonocytes"
                                                    size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                55.
                                            </td>
                                            <td valign="top">
                                                <span class="style10"><strong>Mixed Cells</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="MixedCells" type="text" class="style17" id="MixedCells" size="10" />
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                56.
                                            </td>
                                            <td valign="top">
                                                <span class="style10"><strong>Absolute Mixed Cells</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="AbsolMixCells" type="text" class="style17" id="AbsolMixCells" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                57.
                                            </td>
                                            <td valign="top">
                                                <span class="style10"><strong>Atypical Lymphs</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="AtypicalLymphs" type="text" class="style17" id="AtypicalLymphs" size="10" />
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                58.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>T4 Free</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="T4Free" type="text" class="style17" id="T4Free" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                59.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>Thyroid Stimulating Hormone</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="ThyroidStimHorm" type="text" class="style17" id="ThyroidStimHorm" size="10" />
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                60.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>T4 Total</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="T4Total" type="text" class="style17" id="T4Total" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                61.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>T3 Uptake</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="T3Uptake" type="text" class="style17" id="T3Uptake" size="10" />
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                62.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>Free Thyroxine Index</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="FreeThyroxneIndex" type="text" class="style17" id="FreeThyroxneIndex"
                                                    size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                63.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>Percent Saturation</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="PercentSaturat" type="text" class="style17" id="PercentSaturat" size="10" />
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                64.
                                            </td>
                                            <td valign="top">
                                                <span class="style10"><strong>Eosinophil Count Absolute</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="EosinophilCountAbsol" type="text" class="style17" id="EosinophilCountAbsol"
                                                    size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                65.
                                            </td>
                                            <td valign="top" class="style13">
                                                <span class="style10"><strong>Basophils Absolute Count</strong></span>
                                            </td>
                                            <td class="style14">
                                                <input name="BasophilsAbsoluteCount" type="text" class="style17" id="BasophilsAbsoluteCount"
                                                    size="10" />
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                            </td>
                                            <td valign="top">
                                            </td>
                                            <td class="style14">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr class="test-container">
                                            <td colspan="6">
                                                <div align="center" class="test-box">
                                                    URINE ANALYSIS</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <span class="style13">66.</span>
                                            </td>
                                            <td valign="top" class="style10">
                                                <strong class="style10">A</strong><strong class="style13">scorbic Acid</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="ascorbicacid" type="text" class="style21" id="ascorbicacid" size="10" />
                                            </td>
                                            <td valign="top">
                                                <span class="style13">67.</span>
                                            </td>
                                            <td valign="top" class="style10">
                                                <strong class="style10">Color </strong>
                                            </td>
                                            <td class="style21">
                                                <input name="color" type="text" class="style21" id="color" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                68<span class="style13">.</span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style10">
                                                <span class="style10"><strong>Specific Gravitys</strong></span>
                                            </td>
                                            <td bgcolor="#FFFFFF" class="style21">
                                                <input name="specificGravity" type="text" class="style21" id="specificGravity" size="10" />
                                            </td>
                                            <td valign="top">
                                                69.</td>
                                            <td valign="top" class="style10">
                                                <strong class="style10">PH – Negative = 0</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="PHNegative" type="text" class="style21" id="PHNegative" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <span class="style13">70.</span>
                                            </td>
                                            <td valign="top" class="style10">
                                                <strong class="style10">Glucose</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="UrineGlucose" type="text" class="style21" id="UrineGlucose" size="10" />
                                            </td>
                                            <td valign="top">
                                                71.</td>
                                            <td valign="top" class="style10">
                                                <strong class="style10">Bilirubin</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="Bilirubin" type="text" class="style21" id="Bilirubin" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                72.</td>
                                            <td valign="top" class="style10">
                                                <span class="style10"><strong>Keytone</strong></span><strong> </strong>
                                            </td>
                                            <td class="style21">
                                                <span class="style10"><strong class="style10">
                                                    <input name="Keytone" type="text" class="style21" id="Keytone" size="10" />
                                                </strong></span>
                                            </td>
                                            <td valign="top">
                                                73.</td>
                                            <td valign="top" class="style10">
                                                <strong class="style10">Blood</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="UrineBlood" type="text" class="style21" id="UrineBlood" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                74.</td>
                                            <td valign="top" class="style10">
                                                <strong>Protein</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="UrineProtein" type="text" class="style21" id="UrineProtein" size="10" />
                                            </td>
                                            <td valign="top">
                                                75.</td>
                                            <td valign="top" class="style10">
                                                <strong>Urobilinogen</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="Urubilinogen" type="text" class="style21" id="Urubilinogen" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                76.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style10">
                                                <span class="style10"><strong>Nitrite</strong></span>
                                            </td>
                                            <td bgcolor="#FFFFFF" class="style21">
                                                <input name="Nitrite" type="text" class="style21" id="Nitrite" size="10" />
                                            </td>
                                            <td valign="top">
                                                77.</td>
                                            <td valign="top" class="style10">
                                                <strong>Leukocytes</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="Leukocytes" type="text" class="style21" id="Leukocytes" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                78.</td>
                                            <td valign="top" class="style10">
                                                <strong>Cast</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="Cast" type="text" class="style21" id="Cast" size="10" />
                                            </td>
                                            <td valign="top">
                                                79.</td>
                                            <td valign="top" class="style10">
                                                <strong>Mucus</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="Mucus" type="text" class="style21" id="Mucus" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                80.</td>
                                            <td valign="top" class="style10">
                                                <strong>RBC</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="RB" type="text" class="style21" id="RB" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                81.</td>
                                            <td valign="top" class="style10">
                                                <strong>Epithelial Cells</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="EpithelialCells" type="text" class="style21" id="EpithelialCells" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                82.</td>
                                            <td valign="top" class="style10">
                                                <strong>Calcium Oxalate</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="CalciumOxalate" type="text" class="style21" id="CalciumOxalate" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                83.</td>
                                            <td valign="top" class="style10">
                                                <strong>Triple Phosphate</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="TriplePhosphate" type="text" class="style21" id="TriplePhosphate" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                84.</td>
                                            <td valign="top" class="style10">
                                                <strong>Uric Acid</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="UrineUricAcid" type="text" class="style21" id="UrineUricAcid" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                85.</td>
                                            <td valign="top" class="style10">
                                                <strong>Amorphous</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="Amorphous" type="text" class="style21" id="Amorphous" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                86.</td>
                                            <td valign="top" class="style10">
                                                <strong>Bacteria</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="Bacteria" type="text" class="style21" id="Bacteria" size="10" />
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                            </td>
                                            <td valign="top" class="style13">
                                            </td>
                                            <td class="style14">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr class="test-container">
                                            <td colspan="6">
                                                <div align="center" class="test-box">
                                                    IN HOUSE URINE</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <span class="style13">87.</span>
                                            </td>
                                            <td valign="top" class="style13">
                                                Sugar Refractometer Test
                                            </td>
                                            <td class="style21">
                                                <input name="sugarrefractometer" type="text" class="style21" id="sugarrefractometer"
                                                    size="10" />
                                            </td>
                                            <td valign="top">
                                                88.</td>
                                            <td valign="top" class="style13">
                                                Conductivity
                                            </td>
                                            <td class="style21">
                                                <input name="conductivity" type="text" class="style21" id="conductivity" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                89.</td>
                                            <td valign="top" class="style13">
                                                Nitrate Nitrogen
                                            </td>
                                            <td class="style21">
                                                <input name="NitrateNitrogen" type="text" class="style21" id="NitrateNitrogen" size="10" />
                                            </td>
                                            <td valign="top">
                                                90.</td>
                                            <td valign="top" class="style13">
                                                Ammocical Nitrogen
                                            </td>
                                            <td class="style21">
                                                <input name="AmmonicalNitrogen" type="text" class="style21" id="AmmonicalNitrogen"
                                                    size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                91.</td>
                                            <td valign="top" class="style10">
                                                <strong>Indican</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="indican" type="text" class="style21" id="indican" size="10" />
                                            </td>
                                            <td valign="top">
                                                92.</td>
                                            <td valign="top" class="style10">
                                                <strong>C-Reative Protien</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="creativeprotein" type="text" class="style21" id="creativeprotein" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                93.</td>
                                            <td valign="top" class="style10">
                                                <strong>Homocystein</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="homocystein" type="text" class="style21" id="homocystein" size="10" />
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                94.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style10">
                                                <strong>Lactic Acid</strong>
                                            </td>
                                            <td bgcolor="#FFFFFF" class="style21">
                                                <input name="lacticacid" type="text" class="style21" id="lacticacid" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                95.</td>
                                            <td valign="top" class="style13">
                                                Cortisol
                                            </td>
                                            <td class="style21">
                                                <input name="cortisol" type="text" class="style21" id="cortisol" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                96.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style10">
                                                <strong>Cortisol/ DHEA Ratio</strong>
                                            </td>
                                            <td bgcolor="#FFFFFF" class="style21">
                                                <input name="cortisoldhea" type="text" class="style21" id="cortisoldhea" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                97.</td>
                                            <td valign="top" class="style10">
                                                <strong>Insulin</strong>
                                            </td>
                                            <td class="style21">
                                                <input name="insulin" type="text" class="style21" id="insulin" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                98.</td>
                                            <td valign="top" class="style10">
                                                <span class="style13">Estrogen</span>
                                            </td>
                                            <td class="style21">
                                                <input name="estrogen" type="text" class="style21" id="estrogen" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                99.</td>
                                            <td valign="top" class="style13">
                                                PSA
                                            </td>
                                            <td class="style21">
                                                <input name="psa" type="text" class="style21" id="psa" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                100.</td>
                                            <td valign="top" class="style13">
                                                Testosterone
                                            </td>
                                            <td class="style21">
                                                <input name="testosterone" type="text" class="style21" id="testosterone" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                101.</td>
                                            <td valign="top" class="style13">
                                                Men: Progesterone
                                            </td>
                                            <td class="style21">
                                                <input name="menprogesterone" type="text" class="style21" id="menprogesterone" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                102.</td>
                                            <td valign="top" class="style13">
                                                Women: Progesterone
                                            </td>
                                            <td class="style21">
                                                <input name="womenprogesterone" type="text" class="style21" id="womenprogesterone"
                                                    size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                103.</td>
                                            <td valign="top" class="style13">
                                                Fibbinogen
                                            </td>
                                            <td class="style21">
                                                <input name="fibbinogen" type="text" class="style21" id="fibbinogen" size="10" />
                                            </td>
                                            <td valign="top" class="style13">
                                                104.</td>
                                            <td valign="top" class="style13">
                                                CA-125
                                            </td>
                                            <td class="style21">
                                                <input name="ca125" type="text" class="style21" id="ca125" size="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr class="test-container">
                                            <td colspan="6">
                                                <div align="center" class="test-box">
                                                    EXTENDED NUTRITIONAL TESTING/ SPECIAL TESTS</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" class="style13">
                                                105.</td>
                                            <td valign="top" class="style13">
                                                Frutosamine
                                            </td>
                                            <td valign="top" class="style21">
                                                <input name="FRUCTOSAMINE" type="text" class="style21" id="FRUCTOSAMINE" size="10" />
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                106.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Total Liboprotein B
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="TOTALLIPOPROTEINB" type="text" class="style21" id="TOTALLIPOPROTEINB"
                                                        size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                107.
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Folic Acid
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="FOLICACID" type="text" class="style21" id="FOLICACID" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                108.
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Vitamin B12
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="VITAMINB12" type="text" class="style21" id="VITAMINB12" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                109.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Zinc
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="ZINC" type="text" class="style21" id="ZINC" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                110.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                250 OH Vitamin D
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="VITAMIND2500" type="text" class="style21" id="VITAMIND2500" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                111.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Vitamin D1 25 Dihydroxy (3)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="VITAMIND125DIHYDROXY" type="text" class="style21" id="VITAMIND125DIHYDROXY"
                                                        size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                112.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Vitamin C
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="VITAMINC" type="text" class="style21" id="VITAMINC" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                113.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Thiamin Free Vitamin B1
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="THIAMINFREEVITAMINB1" type="text" class="style21" id="THIAMINFREEVITAMINB1"
                                                        size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                114.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Vitamin B6 Pyridoxin
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="VITAMINB6PYRIDOXIN" type="text" class="style21" id="VITAMINB6PYRIDOXIN"
                                                        size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                115.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Vitamin A
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="VITAMINA" type="text" class="style21" id="VITAMINA" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                116.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Lead Blood
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="LEADBLOOD" type="text" class="style21" id="LEADBLOOD" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                117.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Mercury Blood
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="MERCURYBLOOD" type="text" class="style21" id="MERCURYBLOOD" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                118.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Arsenic Blood
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="ARSENICBLOOD" type="text" class="style21" id="ARSENICBLOOD" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                119.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Vitamin B2 (Riboflavin)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="VITAMINB2RIBOFLAVIN" type="text" class="style21" id="VITAMINB2RIBOFLAVIN"
                                                        size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                120.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Gluten
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="GLUTEN" type="text" class="style21" id="GLUTEN" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                121.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                T. Pylori
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="PYLORI" type="text" class="style21" id="PYLORI" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                122.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Candida
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="CANDIDA" type="text" class="style21" id="CANDIDA" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                123.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Lipo Protein A (LP (A)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="LIPOPROTEINA" type="text" class="style21" id="LIPOPROTEINA" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                124.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Fibrinogen
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="FIBRINOGEN" type="text" class="style21" id="FIBRINOGEN" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                125.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                DHEA Sulfate
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="DHEASULFATE" type="text" class="style21" id="DHEASULFATE" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                126.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                IGF-1 (Insulin like Growth Factor
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="IGF1" type="text" class="style21" id="IGF1" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                127.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Men: Teststerone (Total)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="MENTESTOSTERONETOTAL" type="text" class="style21" id="MENTESTOSTERONETOTAL"
                                                        size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                128.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Women: Testosterone (Total)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="WOMENTESTOSTERONETOTAL" type="text" class="style21" id="WOMENTESTOSTERONETOTAL"
                                                        size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                129.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Men: Testosterone (Free)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="MENTESTOSTERONEFREE" type="text" class="style21" id="MENTESTOSTERONEFREE"
                                                        size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                130.
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Prostatic Specific Antigen (PSA)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="PROSTATICSPECIFICANTIGEN" type="text" class="style21" id="PROSTATICSPECIFICANTIGEN"
                                                        size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                131.
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Free PSA
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="FREEPSA" type="text" class="style21" id="FREEPSA" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                132.
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Sex Hormone Binding Globulin
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="SEXHORMONEBINDINGGLOBULIN" type="text" class="style21" id="SEXHORMONEBINDINGGLOBULIN"
                                                        size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                133.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Dihydrotestostrone (DHT)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="DIHYDROTESTOSTRONE" type="text" class="style21" id="DIHYDROTESTOSTRONE"
                                                        size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                134.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Estradiol (Men)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="ESTRADIOLMEN" type="text" class="style21" id="ESTRADIOLMEN" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                135.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Estradiol (Female)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="ESTRADIOLFEMALE" type="text" class="style21" id="ESTRADIOLFEMALE" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                136.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Mid-Follicular
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="MIDFOLLICULAR" type="text" class="style21" id="MIDFOLLICULAR" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                137.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Peri Ovulatory
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="PERIOVULATORY" type="text" class="style21" id="PERIOVULATORY" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                138.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Mid Luteal
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="MIDLUTEAL" type="text" class="style21" id="MIDLUTEAL" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr class="test-container">
                                            <td colspan="6">
                                                <div align="center" class="test-box">
                                                    SPECIAL BLOOD TESTS: WOMEN</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                139.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Post Menopausal
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="POSTMENOPAUSAL" type="text" class="style21" id="POSTMENOPAUSAL" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                140.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Prolactin
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="PROLACTIN2" type="text" class="style21" id="PROLACTIN2" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                141.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                LH
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="LH" type="text" class="style21" id="LH" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                142.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                FSH
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="FSH" type="text" class="style21" id="FSH" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                143.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Estradiol (E2)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="ESTRADIOLE2" type="text" class="style21" id="ESTRADIOLE2" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                144.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Estrone (E2)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="EstroneE2" type="text" class="style21" id="EstroneE2" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                145.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                SHBG
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="SHBG" type="text" class="style21" id="SHBG" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                146.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                AG
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="AG" type="text" class="style21" id="AG" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr class="test-container">
                                            <td colspan="6">
                                                <div align="center" class="test-box">
                                                    SPECIAL BLOOD TESTS: MEN</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                147.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Estradiol (E2 MEN)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="ESTRADIOLE2MEN" type="text" class="style21" id="ESTRADIOLE2MEN" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                148.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Testosterone (Total)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="TESTOSTERONETOTAL" type="text" class="style21" id="TESTOSTERONETOTAL"
                                                        size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                149.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Testosterone (Free)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="TESTOSTERONEFREE" type="text" class="style21" id="TESTOSTERONEFREE"
                                                        size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                150.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Dihydro Testosterone (DHT)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="DIHYDROTESTOSTERONEDHT" type="text" class="style21" id="DIHYDROTESTOSTERONEDHT"
                                                        size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                151.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Prolactin
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="PROLACTIN" type="text" class="style21" id="PROLACTIN" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                152.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                LH
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="frutosamine48" type="text" class="style21" id="frutosamine48" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                153.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                FSH
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="frutosamine49" type="text" class="style21" id="frutosamine49" size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                154.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Estrone (E1)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="ESTRONEE1" type="text" class="style21" id="ESTRONEE1" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                155.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                Androstanediol Glucuronide (AG)
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF">
                                                <span class="style21">
                                                    <input name="ANDROSTANEDIOLGLUCURONIDE" type="text" class="style21" id="ANDROSTANEDIOLGLUCURONIDE"
                                                        size="10" />
                                                </span>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                156.</td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                SHBG
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                <span class="style21">
                                                    <input name="frutosamine52" type="text" class="style21" id="frutosamine52" size="10" />
                                                </span>
                                            </td>
                                        </tr>
                                       
                                        <tr>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                &nbsp;
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style13">
                                                &nbsp;
                                            </td>
                                            <td colspan="3" valign="top" bgcolor="#FFFFFF">
                                                <div align="center">
                                                    <input type="submit" name="submit" value="Enter" />
                                                </div>
                                            </td>
                                            <td valign="top" bgcolor="#FFFFFF" class="style14">
                                                &nbsp;
                                            </td>
                                        </tr>
                                       
                                    </table>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                        <div align="left">
                        </div>
                        <div align="left">
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
