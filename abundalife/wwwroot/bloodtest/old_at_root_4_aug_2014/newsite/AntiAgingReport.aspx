<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AntiAgingReport.aspx.cs"
    Inherits="abundalife1001.AntiAging" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Abunda Life Medical Nutrition Testing Clinic</title>
    <link href="css/report-style.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript" src="js/jquery-1.4.1.min.js"></script>

    <script language="javascript" type="text/javascript" src="js/test_function.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="xid" runat="server" />
    <div id="main_container">
        <div id="div_Header">
            <!--Glucose test starts here-->
            <%--<div class="report-logo">
            <a href="default.aspx" title="Home">
                <img alt="header-logo" src="images/logo.png" /></a>
        </div>
        <div class="report-header">
            Naturopathic Abunda Life 1001
            <br />
            Nutritional Testing & Personal Health Evaluation
        </div>--%>
            <div class="report-logo2">
                <a href="default.aspx" title="Home">
                    <img alt="header-logo" src="images/img-logo2.jpg" /></a></div>
            <div class="clear">
            </div>
            <%--<div class="patient-name">
            Patient Name:<asp:Label ID="lblName" runat="server"></asp:Label>
        </div>s
        <div class="report-date">
            Date:<asp:Label ID="lblDate" runat="server"></asp:Label>
        </div>--%>
            <div class="patient-name">
                For:&nbsp;<asp:Label ID="lblName" runat="server"></asp:Label>
            </div>
            <div class="report-date">
                Date:&nbsp;<asp:Label ID="lblDate" runat="server"></asp:Label>
            </div>
            <div class="buttons print">
                <asp:Button ID="btnBloodReports" runat="server" Text="Blood Report" CssClass="left"
                    OnClick="btnBloodReports_Click" />
                <asp:Button ID="btnUrineReport" runat="server" Text="Urine Report" CssClass="header-btn"
                    OnClick="btnUrineReport_Click" />
                <asp:Button ID="btnSalivaReport" runat="server" Text="Saliva Report" CssClass="header-btn"
                    OnClick="btnSalivaReport_Click" />
                <asp:Button ID="btnAntiAging" runat="server" Text="Anti Aging Report" CssClass="header-btn"
                    OnClick="btnAntiAging_Click" />
                <asp:Button ID="btnBack" runat="server" Text="Back to Main Menu" CssClass="header-btn"
                    OnClick="BackToMainMenu" />
                <button id="btnPrintAll" onclick="javascript :PrintAll();return false;" class="header-btn">
                    Print All</button>
            </div>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4" class="heading">
                        Abunda Life Medical Nutrition Testing Clinic<br />
                        Early Warning Advanced Preventive Medicine<br />
                        Extended Anti Aging Profile Laboratory Diagnostic Test Results
                    </td>
                </tr>
            </table>
        </div>
        <div id="div_Frutosamine">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Frutosamine</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_Frutosamine">
                                    230</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">210 - 250</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 190 - 270</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_Frutosamine" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('Frutosamine');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_Frutosamine">
                <h3>
                    Frutosamine stand alone indicators generally associated with:</h3>
                <button id="btn_Frutosamine" onclick="javascript :print('Frutosamine');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_Frutosamine" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_Frutosamine" style="display: none">
                <h3>
                    Generally associated with Low Frutosamine:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_Frutosamine" style="display: none">
                <h3>
                    Generally associated with High Frutosamine:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_total_lipo_protein">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Total Lipo Protein B</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_total_lipo_protein">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 75</strong>
                        </td>
                        <td width="25%">
                           <strong class="red">0 - 109</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_total_lipo_protein" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('total_lipo_protein');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_total_lipo_protein">
                <h3>
                    Total Lipo Protein B stand alone indicators generally associated with:</h3>
                <button id="btn_total_lipo_protein" onclick="javascript :print('total_lipo_protein');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_total_lipo_protein" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_total_lipo_protein" style="display: none">
                <h3>
                    Generally associated with Low Total Lipo Protein B:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_total_lipo_protein" style="display: none">
                <h3>
                    Generally associated with High Total Lipo Protein B:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_FolicAcid">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Folic Acid</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_FolicAcid">
                                    12</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">9 - 15</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 4.2 - 19.9</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_FolicAcid" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('FolicAcid');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_FolicAcid">
                <h3>
                    Folic Acid stand alone indicators generally associated with:</h3>
                <button id="btn_FolicAcid" onclick="javascript :print('FolicAcid');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_FolicAcid" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_FolicAcid" style="display: none">
                <h3>
                    Generally associated with Low Folic Acid:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_FolicAcid" style="display: none">
                <h3>
                    Generally associated with High FolicAcid:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_VitaminB12">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Vitamin B 12</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_VitaminB12">
                                    850</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">750 - 1200</strong>
                        </td>
                        <td width="25%">
                         <strong class="red">   211 - 946</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_VitaminB12" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('VitaminB12');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_VitaminB12">
                <h3>
                    Vitamin B 12 stand alone indicators generally associated with:</h3>
                <button id="btn_VitaminB12" onclick="javascript :print('VitaminB12');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_VitaminB12" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_VitaminB12" style="display: none">
                <h3>
                    Generally associated with Low Vitamin B 12:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_VitaminB12" style="display: none">
                <h3>
                    Generally associated with High Vitamin B 12:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_Zinc">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Zinc</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_Zinc">
                                    150</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">135 - 175</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">  68 - 161</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_Zinc" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('Zinc');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_Zinc">
                <h3>
                    Zinc stand alone indicators generally associated with:</h3>
                <button id="btn_Zinc" onclick="javascript :print('Zinc');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_Zinc" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_Zinc" style="display: none">
                <h3>
                    Generally associated with Low Zinc:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_Zinc" style="display: none">
                <h3>
                    Generally associated with High Zinc:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_VitaminD">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            250 OH Vitamin D</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_VitaminD">
                                    60</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">40 - 60</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">9.5 - 53</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_VitaminD" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('VitaminD');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_VitaminD">
                <h3>
                    250 OH Vitamin D stand alone indicators generally associated with:</h3>
                <button id="btn_VitaminD" onclick="javascript :print('VitaminD');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_VitaminD" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_VitaminD" style="display: none">
                <h3>
                    Generally associated with Low 250 OH Vitamin D:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_VitaminD" style="display: none">
                <h3>
                    Generally associated with High 250 OH Vitamin D:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_VitaminD1">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            VITAMIN D1 25 DIHYDROXY</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_VitaminD1">
                                    60</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">50 - 70</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 25 - 66</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_VitaminD1" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('VitaminD1');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_VitaminD1">
                <h3>
                    VITAMIN D1 25 DIHYDROXY stand alone indicators generally associated with:</h3>
                <button id="btn_VitaminD1" onclick="javascript :print('VitaminD1');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_VitaminD1" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_VitaminD1" style="display: none">
                <h3>
                    Generally associated with Low VITAMIN D1 25 DIHYDROXY:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_VitaminD1" style="display: none">
                <h3>
                    Generally associated with High VITAMIN D1 25 DIHYDROXY:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_VitaminC">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Vitamin C</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_VitaminC">
                                    40</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">20 - 60</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 2 - 20</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_VitaminC" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('VitaminC');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_VitaminC">
                <h3>
                    Vitamin C stand alone indicators generally associated with:</h3>
                <button id="btn_VitaminC" onclick="javascript :print('VitaminC');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_VitaminC" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_VitaminC" style="display: none">
                <h3>
                    Generally associated with Low Vitamin C:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_VitaminC" style="display: none">
                <h3>
                    Generally associated with High Vitamin C:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_VitaminB">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Thiamin Free Vitamin B1</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_VitaminB">
                                    16</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">12 - 20</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 2.7 - 13.1</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_VitaminB" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('VitaminB');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_VitaminB">
                <h3>
                    Thiamin Free Vitamin B1 stand alone indicators generally associated with:</h3>
                <button id="btn_VitaminB" onclick="javascript :print('VitaminB');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_VitaminB" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_VitaminB" style="display: none">
                <h3>
                    Generally associated with Low Thiamin Free Vitamin B1:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_VitaminB" style="display: none">
                <h3>
                    Generally associated with High Thiamin Free Vitamin B1:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_VitaminB6">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Vitamin B6 Pyridoxin</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_VitaminB6">
                                    75</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">50 - 100</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">  5 - 50</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_VitaminB6" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('VitaminB6');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_VitaminB6">
                <h3>
                    Vitamin B6 Pyridoxin stand alone indicators generally associated with:</h3>
                <button id="btn_VitaminB6" onclick="javascript :print('VitaminB6');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_VitaminB6" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_VitaminB6" style="display: none">
                <h3>
                    Generally associated with Low Vitamin B6 Pyridoxin:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_VitaminB6" style="display: none">
                <h3>
                    Generally associated with High Vitamin B6 Pyridoxin:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_VitaminA">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Vitamin A</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_VitaminA">
                                    75</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">60 - 100</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">  30 - 75</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_VitaminA" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('VitaminA');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_VitaminA">
                <h3>
                    Vitamin A stand alone indicators generally associated with:</h3>
                <button id="btn_VitaminA" onclick="javascript :print('VitaminA');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_VitaminA" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_VitaminA" style="display: none">
                <h3>
                    Generally associated with Low Vitamin A:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_VitaminA" style="display: none">
                <h3>
                    Generally associated with High Vitamin A:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_LeadBlood">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Lead Blood</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_LeadBlood">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 10</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">0 - 25</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_LeadBlood" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('LeadBlood');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_LeadBlood">
                <h3>
                    Lead Blood stand alone indicators generally associated with:</h3>
                <button id="btn_LeadBlood" onclick="javascript :print('LeadBlood');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_LeadBlood" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_LeadBlood" style="display: none">
                <h3>
                    Generally associated with Low Lead Blood:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_LeadBlood" style="display: none">
                <h3>
                    Generally associated with High Lead Blood:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_MercuryBlood">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Mercury Blood</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_MercuryBlood">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 3</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 0 - 5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_MercuryBlood" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('MercuryBlood');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_MercuryBlood">
                <h3>
                    Mercury Blood stand alone indicators generally associated with:</h3>
                <button id="btn_MercuryBlood" onclick="javascript :print('MercuryBlood');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_MercuryBlood" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_MercuryBlood" style="display: none">
                <h3>
                    Generally associated with Low Mercury Blood:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_MercuryBlood" style="display: none">
                <h3>
                    Generally associated with High Mercury Blood:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_ArsenicBlood">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Arsenic Blood</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_ArsenicBlood">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 7</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 0 - 11</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_ArsenicBlood" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('ArsenicBlood');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_ArsenicBlood">
                <h3>
                    Arsenic Blood stand alone indicators generally associated with:</h3>
                <button id="btn_ArsenicBlood" onclick="javascript :print('ArsenicBlood');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_ArsenicBlood" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_ArsenicBlood" style="display: none">
                <h3>
                    Generally associated with Low Arsenic Blood:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_ArsenicBlood" style="display: none">
                <h3>
                    Generally associated with High Arsenic Blood:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_VitaminB2">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Vitamin B2 (Riboflavin)</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_VitaminB2">
                                    15</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">10 - 20</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">  3 - 15</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_VitaminB2" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('VitaminB2');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_VitaminB2">
                <h3>
                    Vitamin B2 (Riboflavin) stand alone indicators generally associated with:</h3>
                <button id="btn_VitaminB2" onclick="javascript :print('VitaminB2');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_VitaminB2" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_VitaminB2" style="display: none">
                <h3>
                    Generally associated with Low Vitamin B2 (Riboflavin):</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_VitaminB2" style="display: none">
                <h3>
                    Generally associated with High Vitamin B2 (Riboflavin):</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_Gluten">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Gluten</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_Gluten">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 0</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">  0 - 0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_Gluten" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('Gluten');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_Gluten">
                <h3>
                    Gluten stand alone indicators generally associated with:</h3>
                <button id="btn_Gluten" onclick="javascript :print('Gluten');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_Gluten" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_Gluten" style="display: none">
                <h3>
                    Generally associated with Low Gluten:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_Gluten" style="display: none">
                <h3>
                    Generally associated with High Gluten:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_TPylori">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            T Pylori</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_TPylori">
                                    -75</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">50 - 75</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 100+</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_TPylori" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('TPylori');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_TPylori">
                <h3>
                    T Pylori stand alone indicators generally associated with:</h3>
                <button id="btn_TPylori" onclick="javascript :print('TPylori');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_TPylori" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_TPylori" style="display: none">
                <h3>
                    Generally associated with Low T Pylori:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_TPylori" style="display: none">
                <h3>
                    Generally associated with High T Pylori:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_caa">
            <!--Candida Albicans Antibody  test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Candida Albicans Antibody
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_caa">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 600</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 250 - 750</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_caa" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('caa');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_caa">
                <h3>
                    Candida Albicans Antibody stand alone indicators generally associated with:</h3>
                <button id="btn_caa" onclick="javascript :print('caa');return false;" class="print display-none">
                    Print</button>
                <p>
                    Candida, yeast, parasite, fungus toxicity gauge</p>
            </div>
            <div class="ideal equal" id="equal_caa" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_caa" style="display: none">
                <h3>
                    Generally associated with Low Candida Albicans Antibody:</h3>
                <p>
                    Low is desirable. Zero is ideal</p>
            </div>
            <div class="high" id="high_caa" style="display: none">
                <h3>
                    Generally associated with High Candida Albicans Antibody:</h3>
                <p>
                    Antibiotic use, radiation exposure, excess use of medications, birth control pills,
                    psychotropic drugs, aspirin, over the counter drugs, alcohol, soda, diet soda, sugar,
                    devitalized foods, constipation (having less than a bowel movement for each meal),
                    cellular oxygen deficiency, mal-absorption, sub-clinical dehydration, multiple food
                    allergies, weak immune system, autointoxication, chemotherapy</p>
                <h3>
                    Corresponding need for nutritional support for High Candida Albicans Antibody:</h3>
                <p>
                    Jug One Protocol, Jug Two Protocol, Morning Health Drink, Yogurt Health Drink, Green
                    drink, Bedtime Bowel Tonic, Enzyme Therapy, Fiber Max, Maxi Cleanse, Enzyme Therapy,
                    Candida Formula, Absorption Enhancer</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, celery, broccoli, garlic, horseradish</p>
                <h3>
                    Support:</h3>
                <p>
                    Detoxification, immune system, stomach, colon. (Homeopathic Remedies: #4, #40, #63,
                    #807, #820)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_LipoProteinA">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Lipo Protein A</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_LipoProteinA">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 15</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">  0 - 30</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_LipoProteinA" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('LipoProteinA');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_LipoProteinA">
                <h3>
                    Lipo Protein A stand alone indicators generally associated with:</h3>
                <button id="btn_LipoProteinA" onclick="javascript :print('LipoProteinA');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_LipoProteinA" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_LipoProteinA" style="display: none">
                <h3>
                    Generally associated with Low Lipo Protein A:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_LipoProteinA" style="display: none">
                <h3>
                    Generally associated with High Lipo Protein A:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_Fibrinogen">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Fibrinogen</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_Fibrinogen">
                                    290</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">250 - 330</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">150 - 430</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_Fibrinogen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('Fibrinogen');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_Fibrinogen">
                <h3>
                    Fibrinogen stand alone indicators generally associated with:</h3>
                <button id="btn_Fibrinogen" onclick="javascript :print('Fibrinogen');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_Fibrinogen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_Fibrinogen" style="display: none">
                <h3>
                    Generally associated with Low Fibrinogen:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_Fibrinogen" style="display: none">
                <h3>
                    Generally associated with High Fibrinogen:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_dhea">
            <!--Serum Dehydroepiandosterone – (DHEA Sulfate) test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Serum Dehydroepiandosterone – (DHEA Sulfate)</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_dhea">
                                    150</label>
                            </strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">100 - 200</strong>
                        </td>
                        <td width="25%">
                           <strong class="red">28 - 175</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_dhea" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('dhea');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_dhea">
                <h3>
                    DHEA sulfate stand alone indicators generally associated with:</h3>
                <button id="btn_dhea" onclick="javascript :print('dhea');return false;" class="print display-none">
                    Print</button>
                <button id="btn_dhea2" onclick="javascript :print('dhea2');return false;" class="print display-none">
                    Print</button>
                <p>
                    Quality of life, physiological stress, adrenal, hormone indicator</p>
            </div>
            <div class="ideal display-none" id="ideal_dhea2">
                <h3>
                    DHEA sulfate stand alone indicators generally associated with:</h3>
                <p>
                    Quality of life, physiological stress, adrenal, hormone indicator</p>
            </div>
            <div class="ideal equal" id="equal_dhea" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_dhea" style="display: none">
                <h3>
                    Generally associated with Low DHEA Sulfate:</h3>
                <p>
                    Cancer susceptibility, high cholesterol, arthrosclerosis, loss of sex drive, hypertension,
                    anxiety, memory loss, pre-Alzheimer’s, sleep disorders, immune deficiencies, loss
                    of muscle, gain of body fat and flab, strong early warning of diabetes, osteoporosis,
                    multiple nutritional deficiencies</p>
                <h3>
                    Corresponding need for nutritional support for Low DHEA Sulfate:</h3>
                <p>
                    Adrenal Hormone Restoration Therapy, Royal Queen Bee Jelly, Mega B Complex, Super
                    Food Drink, Tigers Food, Duo C Complex, L-Arginine Complex, L-Carnitine, Endurall,
                    I-Thyroid</p>
            </div>
            <div class="high" id="high_dhea" style="display: none">
                <h3>
                    Generally associated with High DHEA Sulfate:</h3>
                <p>
                    Over use of medications, alcohol, sugar, devitalized foods, birth control pills,
                    stress overwhelm, adrenal burn out</p>
                <h3>
                    Corresponding need for nutritional support for High DHEA Sulfate:</h3>
                <p>
                    I-Thyroid, Bio-Identical Human Growth Hormone Restoration Therapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, avocado, zucchini, mushroom, apple, orange</p>
                <h3>
                    Support:</h3>
                <p>
                    Hormones, thyroid, nerves, pituitary. (Homeopathic Remedies: #17, #802, #803, #804,
                    #806)</p>
            </div>
            <div class="ideal equal" id="equal_dhea2" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_dhea2" style="display: none">
                <h3>
                    Generally associated with Low DHEA Sulfate:</h3>
                <p>
                    Cancer susceptibility, high cholesterol, arthrosclerosis, loss of sex drive, hypertension,
                    anxiety, memory loss, pre-Alzheimer’s, sleep disorders, immune deficiencies, loss
                    of muscle, gain of body fat and flab, strong early warning of diabetes, osteoporosis,
                    multiple nutritional deficiencies</p>
                <h3>
                    Corresponding need for nutritional support for Low DHEA Sulfate:</h3>
                <p>
                    Adrenal Hormone Restoration Therapy, Royal Queen Bee Jelly, Mega B Complex, Super
                    Food Drink, Tigers Food, Duo C Complex, L-Arginine Complex, L-Carnitine, Endurall,
                    I-Thyroid</p>
            </div>
            <div class="high" id="high_dhea2" style="display: none">
                <h3>
                    Generally associated with High DHEA Sulfate:</h3>
                <p>
                    Over use of medications, alcohol, sugar, devitalized foods, birth control pills,
                    stress overwhelm, adrenal burn out</p>
                <h3>
                    Corresponding need for nutritional support for High DHEA Sulfate:</h3>
                <p>
                    I-Thyroid, Bio-Identical Human Growth Hormone Restoration Therapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, avocado, zucchini, mushroom, apple, orange</p>
                <h3>
                    Support:</h3>
                <p>
                    Hormones, thyroid, nerves, pituitary. (Homeopathic Remedies: #17, #802, #803, #804,
                    #806)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_ifg1">
            <!--Insulin Like Growth Factor – (IGF-1) test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Insulin Like Growth Factor – (IGF-1)</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_ifg1">
                                    400</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">200 - 600</strong>
                        </td>
                        <td width="25%">
                           <strong class="red">118 - 550</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_ifg1" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('ifg1');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_ifg1">
                <h3>
                    IGF-1 stand alone indicators generally associated with:</h3>
                <button id="btn_ifg1" onclick="javascript :print('ifg1');return false;" class="print display-none">
                    Print</button>
                <p>
                    Physiological aging gauge, pituitary function, body’s ability to repair.</p>
            </div>
            <div class="ideal equal" id="equal_ifg1" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_ifg1" style="display: none">
                <h3>
                    Generally associated with Low IGF-1:</h3>
                <p>
                    Premature aging, poor protein assimilation, lack of exercise, sleep disorders, stress
                    overwhelm, hypopitutaryism, anxiety, diabetes, deficiency in human growth hormone.</p>
                <h3>
                    Corresponding need for nutritional support for Low IGF-1:</h3>
                <p>
                    L-Arginine Complex, Super Food Drink, 28 super Amino Acids, L-Glutamine, L-Carnitine,
                    Super Endurance.</p>
            </div>
            <div class="high" id="high_ifg1" style="display: none">
                <h3>
                    Generally associated with High IGF-1:</h3>
                <p>
                    Over medication, over stimulation of the pituitary, under performing thyroid.</p>
                <h3>
                    Corresponding need for nutritional support for High IGF-1:</h3>
                <p>
                    I-Thyroid.</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Bio-Identical Hormone Restoration Therapy Factor, Human Growth (HGH) Restoration
                    Therapy
                </p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, zucchini, avocado, apple, Thyroid Broth.</p>
                <h3>
                    Support:</h3>
                <p>
                    Adrenals, thyroid, pituitary. (Homeopathic Remedies: #802, #805, #806)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_TestosteroneMen">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Testosterone (Men)
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_TestosteroneMen">
                                    600</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">300 - 900</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 28 - 800</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_TestosteroneMen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('TestosteroneMen');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_TestosteroneMen">
                <h3>
                    Testosterone (Men) stand alone indicators generally associated with:</h3>
                <button id="btn_TestosteroneMen" onclick="javascript :print('TestosteroneMen');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_TestosteroneMen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_TestosteroneMen" style="display: none">
                <h3>
                    Generally associated with Low Testosterone (Men) :</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_TestosteroneMen" style="display: none">
                <h3>
                    Generally associated with High Testosterone (Men) :</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_TestosteroneWomen">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Testosterone (Women)
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_TestosteroneWomen">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 0</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">  0 - 0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_TestosteroneWomen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('TestosteroneWomen');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_TestosteroneWomen">
                <h3>
                    Testosterone (Women) stand alone indicators generally associated with:</h3>
                <button id="btn_TestosteroneWomen" onclick="javascript :print('TestosteroneWomen');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_TestosteroneWomen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_TestosteroneWomen" style="display: none">
                <h3>
                    Generally associated with Low Testosterone (Women) :</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_TestosteroneWomen" style="display: none">
                <h3>
                    Generally associated with High Testosterone (Women) :</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_TestosteroneMenFree">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Testosterone Men (Free)
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_TestosteroneMenFree">
                                    3.0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">2.0 - 4.0</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 1.6 - 2.9</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_TestosteroneMenFree" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('TestosteroneMenFree');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_TestosteroneMenFree">
                <h3>
                    Testosterone Men (Free) stand alone indicators generally associated with:</h3>
                <button id="btn_TestosteroneMenFree" onclick="javascript :print('TestosteroneMenFree');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_TestosteroneMenFree" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_TestosteroneMenFree" style="display: none">
                <h3>
                    Generally associated with Low Testosterone Men (Free):</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_TestosteroneMenFree" style="display: none">
                <h3>
                    Generally associated with High Testosterone Men (Free):</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_PSA">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Prostatic Specific Antigen (PSA)</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_PSA">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">2.9</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">  4.0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_PSA" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('PSA');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_PSA">
                <h3>
                    Prostatic Specific Antigen (PSA) stand alone indicators generally associated with:</h3>
                <button id="btn_PSA" onclick="javascript :print('PSA');return false;" class="print display-none">
                    Print</button>
                <p>
                    Prostate health</p>
            </div>
            <div class="ideal equal" id="equal_PSA" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_PSA" style="display: none">
                <h3>
                    Generally associated with Low Prostatic Specific Antigen (PSA):</h3>
                <p>
                    Low is desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_PSA" style="display: none">
                <h3>
                    Generally associated with High Prostatic Specific Antigen (PSA):</h3>
                <p>
                    Prostatitis, benign enlarged prostate, lower spine subluxation, constipation, zinc
                    deficiency, prostate cancer, urinary tract infection, impacted colon</p>
                <h3>
                    Corresponding need for nutritional support for High PSA:</h3>
                <p>
                    San Palmetto, PSA, Cranberry Juice Concentrate, Co-Enzyme Q-10, Vitamin E Complex,
                    Wheat Germ Oil, Super Oil, Omega 3/6 Essential Fatty Acids, Duo C Complex, Green
                    Drink, Bowel Tonic, Turmeric, Ionic Zinc, Cobalt, Prostate Formula, Fiber Max, maxi
                    Cleanse, Enzyme Therapy, Chinese Garlic, Natures Healer, Silver, Magnesium, Germanium</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, tomato, parsley, mushroom, avocado</p>
                <h3>
                    Support:</h3>
                <p>
                    Prostate, colon. (Homeopathic Remedies: #4, #40, #835)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_PSAFree">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Free PSA</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_PSAFree">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 12</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 0 - 25</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_PSAFree" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('PSAFree');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_PSAFree">
                <h3>
                    Free PSA stand alone indicators generally associated with:</h3>
                <button id="btn_PSAFree" onclick="javascript :print('PSAFree');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_PSAFree" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_PSAFree" style="display: none">
                <h3>
                    Generally associated with Low Free PSA:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_PSAFree" style="display: none">
                <h3>
                    Generally associated with High Free PSA:</h3>
                <p>
                    coming soon
                </p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_SHBG">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Sex Hormone Binding Globulin</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_SHBG">
                                    66</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">36 - 96</strong>
                        </td>
                        <td width="25%">
                         <strong class="red">   18.0 - 114.0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_SHBG" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('SHBG');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_SHBG">
                <h3>
                    Sex Hormone Binding Globulin stand alone indicators generally associated with:</h3>
                <button id="btn_SHBG" onclick="javascript :print('SHBG');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_SHBG" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_SHBG" style="display: none">
                <h3>
                    Generally associated with Low Sex Hormone Binding Globulin:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_SHBG" style="display: none">
                <h3>
                    Generally associated with High Sex Hormone Binding Globulin:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_dht">
            <!--Dihydrotestosterone – (DHT) test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Dihydrotestosterone – (DHT)</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_dht">
                                    40</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">30 - 50</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 30 - 85</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_dht" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('dht');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_dht">
                <h3>
                    DHT stand alone indicators generally associated with:</h3>
                <button id="btn_dht" onclick="javascript :print('dht');return false;" class="print display-none">
                    Print</button>
                <p>
                    Manly characteristics</p>
            </div>
            <div class="ideal equal" id="equal_dht" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_dht" style="display: none">
                <h3>
                    Generally associated with Low DHT:</h3>
                <p>
                    Poor muscle tone, loss of libido, soft bones, depression, loss of courage, fatigue,
                    loss of animation of life, weakening heart</p>
                <h3>
                    Corresponding need for nutritional support for Low DHT:</h3>
                <p>
                    L-Arginine Complex, L-Glutamine, Macho Vita, Ginseng, Male Hormone Restoration Factors,
                    Vitamin E Complex, Co-Enzyme Q-10, Natures Healer, 28 Super Amino Acids, Wheat Germ
                    Oil, Pumpkin Seed Oil. Macho Herba</p>
            </div>
            <div class="high" id="high_dht" style="display: none">
                <h3>
                    Generally associated with High DHT:</h3>
                <p>
                    San Palmetto, PSA, natures Healer, Immune Power Formula, Vitamin E Complex, Omega
                    3/6 Essential Fatty Acids, Duo C Complex, Hypericum, Valerian Root, Pineal Restoration,
                    Ionic Magnesium, Lithium, Cobalt</p>
                <h3>
                    Corresponding need for nutritional support for High DHT:</h3>
                <p>
                    San Palmetto, PSA, natures Healer, Immune Power Formula, Vitamin E Complex, Omega
                    3/6 Essential Fatty Acids, Duo C Complex, Hypericum, Valerian Root, Pineal Restoration,
                    Ionic Magnesium, Lithium, Cobalt</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Parsley, celery, tomato.</p>
                <h3>
                    Support:</h3>
                <p>
                    Male hormones, prostate. (Homeopathic Remedies: #44, #803, #809, #835)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_estradiol_men">
            <!--Estradiol (Men) starts here---->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Estradiol (Men)</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_estradiol_men">
                                    30</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">10 - 60</strong>
                        </td>
                        <td width="25%">
                           <strong class="red">20 - 75</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_estradiol_men" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('estradiol_men');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_estradiol_men">
                <h3>
                    Estradiol stand alone indicators generally associated with:</h3>
                <button id="btn_estradiol_men" onclick="javascript :print('estradiol_men');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Hormonal balance.</p>
            </div>
            <div class="ideal equal" id="equal_estradiol_men" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_estradiol_men" style="display: none">
                <h3>
                    Estradiol stand alone indicators generally associated with:</h3>
                <button id="btn_estradiol_men" onclick="javascript :print('estradiol_men');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Hormonal balance.</p>
                <h3>
                    Corresponding need for nutritional support for Low Estradiol:</h3>
                <p>
                    Adrenal Hormone Restoration Factors, Vitamin E Complex, Ionic Zinc, Omega 3/6 Essential
                    Fatty Acids, Pineal Hormone restoration Factors, Wheat Germ Oil, Ionic Magnesium,
                    Super Oil.</p>
            </div>
            <div class="high" id="high_estradiol_men" style="display: none">
                <h3>
                    Generally associated with High Estradiol:</h3>
                <p>
                    Testosterone deficiency, human growth hormone deficiency, thyroid imbalance, premature
                    aging, impotence, infertility, male pattern balding, benign prostate hypertrophy,
                    urinary difficulties, heart muscle weakness, excess use of medications, beta blockers,
                    cardio-vascular drugs, high blood pressure drugs, anti-fungals, antibiotics, cortisol,
                    alcohol, devitalized foods, diet soda, coffee, sugar, sugar substitutes, gynecomastia,
                    erectile dysfunction.</p>
                <h3>
                    Corresponding need for nutritional support for High Estradiol:</h3>
                <p>
                    Vitamin E Complex, Wheat Germ Oil, Co-Enzyme Q-10, Alfalfa, Lipoic Acid, L-Carnitine,
                    L-Arginine, Jug One Protocol, Ionic Zinc, Sulfur, Germanium, Cobalt, Macho Herba</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, kale, tomato, avocado, broccoli.</p>
                <h3>
                    Support:</h3>
                <p>
                    Male hormone system, pituitary. (Homeopathic Remedies: # 22, #44, #803, #805)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_estradiol_female">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Estradiol (Women)</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_estradiol_female">
                                    1.10</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">1.005 - 1.015</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">1.005 - 1.020</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_estradiol_female" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('estradiol_female');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_estradiol_female">
                <h3>
                    Estradiol stand alone indicators generally associated with:</h3>
                <button id="btn_estradiol_female" onclick="javascript :print('estradiol_female');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Predominant female hormone.</p>
            </div>
            <div class="ideal equal" id="equal_estradiol_female" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_estradiol_female" style="display: none">
                <h3>
                    Generally associated with Low Estradiol:</h3>
                <p>
                    Ovarian fatigue, menopause, perri menopause, complete or partial hysterectomy and/or
                    removal of the ovaries, muscle loss, bone loss, loss of interest in sex, body fat
                    gain, premature aging, hot flashes, vaginal dryness, vaginal itching, hypo amenorrhea,
                    urterus protapse, vaginal protapse, painful intercourse, recurrent cystitis, bladder
                    protapse, osteoarthritis type conditions, night sweats, memory loss, depression,
                    wrinkles, droopy breasts.</p>
                <h3>
                    Corresponding need for nutritional support for Low Estradiol:</h3>
                <p>
                    Female Hormone Restoration Factors, Adrenal Hormone Restoration Factors, Oil of
                    Evening Primrose, Female Vigor, Lady Tonic, Wheat Germ Oil, Super Oil, Vitamin E
                    Complex, Black Cohash, I-Thyroid</p>
            </div>
            <div class="high" id="high_estradiol_female" style="display: none">
                <h3>
                    Generally associated with High Estradiol:</h3>
                <p>
                    Over medication, excess use of alcohol, sugar, devitalized foods, adrenal exhaustion,
                    progesterone deficiency, human growth hormone deficiency, excess body fat storing,
                    obesity, PMS, increased risk of female cancers.</p>
                <h3>
                    Corresponding need for nutritional support for High Estradiol:</h3>
                <p>
                    Female Hormone Restoration Factors, Oil of Evening Primrose, Bio-Identical Female
                    Restoration Therapy, Ferma Herba, Wheat Germ Oil, Super Oil, Ultra E Complex, Fema
                    Vita,
                </p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Avocado, kale, broccoli, sweet potato.</p>
                <h3>
                    Support:</h3>
                <p>
                    Female system, thyroid, pituitary. (Homeopathic Remedies: #23, #44, #804, #805,
                    #806, #810)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_MidFollicular">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Mid Follicular</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_MidFollicular">
                                    80</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">70 - 90</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">24 - 114</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_MidFollicular" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('MidFollicular');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_MidFollicular">
                <h3>
                    Mid Follicular stand alone indicators generally associated with:</h3>
                <button id="btn_MidFollicular" onclick="javascript :print('MidFollicular');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_MidFollicular" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_MidFollicular" style="display: none">
                <h3>
                    Generally associated with Low Mid Follicular:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_MidFollicular" style="display: none">
                <h3>
                    Generally associated with High Mid Follicular:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_PeriOvulatory">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Peri Ovulatory</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_PeriOvulatory">
                                    400</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">300 - 500</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 62 - 534</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_PeriOvulatory" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('PeriOvulatory');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_PeriOvulatory">
                <h3>
                    Peri Ovulatory stand alone indicators generally associated with:</h3>
                <button id="btn_PeriOvulatory" onclick="javascript :print('PeriOvulatory');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_PeriOvulatory" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_PeriOvulatory" style="display: none">
                <h3>
                    Generally associated with Low Peri Ovulatory:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_PeriOvulatory" style="display: none">
                <h3>
                    Generally associated with High Peri Ovulatory:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_MidLuteal">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Mid Luteal</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_MidLuteal">
                                    250</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">200 - 300</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">  80 - 273</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_MidLuteal" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('MidLuteal');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_MidLuteal">
                <h3>
                    Mid Luteal stand alone indicators generally associated with:</h3>
                <button id="btn_MidLuteal" onclick="javascript :print('MidLuteal');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_MidLuteal" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_MidLuteal" style="display: none">
                <h3>
                    Generally associated with Low Mid Luteal:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_MidLuteal" style="display: none">
                <h3>
                    Generally associated with High Mid Luteal:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="test-container">
            <div align="center" class="test-box">
                SPECIAL BLOOD TESTS: WOMEN</div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_PostMenopausal">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Post Menopausal</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_PostMenopausal">
                                    250</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">200 - 300</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">  20 - 88</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_PostMenopausal" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('PostMenopausal');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_PostMenopausal">
                <h3>
                    Post Menopausal stand alone indicators generally associated with:</h3>
                <button id="btn_PostMenopausal" onclick="javascript :print('PostMenopausal');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_PostMenopausal" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_PostMenopausal" style="display: none">
                <h3>
                    Generally associated with Low Post Menopausal:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_PostMenopausal" style="display: none">
                <h3>
                    Generally associated with High Post Menopausal:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_Prolactin">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Prolactin</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_Prolactin">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                           <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_Prolactin" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('Prolactin');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_Prolactin">
                <h3>
                    Prolactin stand alone indicators generally associated with:</h3>
                <button id="btn_Prolactin" onclick="javascript :print('Prolactin');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_Prolactin" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_Prolactin" style="display: none">
                <h3>
                    Generally associated with Low Prolactin:</h3>
                <p>
                    coming soom</p>
            </div>
            <div class="high" id="high_Prolactin" style="display: none">
                <h3>
                    Generally associated with High Prolactin:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_LH">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            LH</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_LH">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_LH" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('LH');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_LH">
                <h3>
                    LH stand alone indicators generally associated with:</h3>
                <button id="btn_LH" onclick="javascript :print('LH');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_LH" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_LH" style="display: none">
                <h3>
                    Generally associated with Low LH:</h3>
                <p>
                    coming soom</p>
            </div>
            <div class="high" id="high_LH" style="display: none">
                <h3>
                    Generally associated with High LH:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_FSH">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            FSH</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_FSH">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                           <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_FSH" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('FSH');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_FSH">
                <h3>
                    FSH stand alone indicators generally associated with:</h3>
                <button id="btn_FSH" onclick="javascript :print('FSH');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_FSH" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_FSH" style="display: none">
                <h3>
                    Generally associated with Low FSH:</h3>
                <p>
                    coming soom</p>
            </div>
            <div class="high" id="high_FSH" style="display: none">
                <h3>
                    Generally associated with High FSH:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_EstradiolE2">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Estradiol E2</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_EstradiolE2">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                           <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_EstradiolE2" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('EstradiolE2');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_EstradiolE2">
                <h3>
                    Estradiol E2 stand alone indicators generally associated with:</h3>
                <button id="btn_EstradiolE2" onclick="javascript :print('EstradiolE2');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_EstradiolE2" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_EstradiolE2" style="display: none">
                <h3>
                    Generally associated with Low Estradiol E2:</h3>
                <p>
                    coming soom</p>
            </div>
            <div class="high" id="high_EstradiolE2" style="display: none">
                <h3>
                    Generally associated with High Estradiol E2:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_EstroneE2">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Estrone E2</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_EstroneE2">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_EstroneE2" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('EstroneE2');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_EstroneE2">
                <h3>
                    Estrone E2 stand alone indicators generally associated with:</h3>
                <button id="btn_EstroneE2" onclick="javascript :print('EstroneE2');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_EstroneE2" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_EstroneE2" style="display: none">
                <h3>
                    Generally associated with Low Estrone E2:</h3>
                <p>
                    coming soom</p>
            </div>
            <div class="high" id="high_EstroneE2" style="display: none">
                <h3>
                    Generally associated with High Estrone E2:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_shbg_women">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Sex Binding Globulin – (SHBG – Women)</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_shbg_women">
                                    20</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">1 - 40</strong>
                        </td>
                        <td width="25%">
                           <strong class="red">1 - 114</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_shbg_women" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('shbg_women');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_shbg_women">
                <h3>
                    SHBG stand alone indicators generally associated with SHBG:</h3>
                <button id="btn_shbg_women" onclick="javascript :print('shbg_women');" class="print display-none">
                    Print</button>
                <p>
                    Female sex hormone in circulation, hormone availability</p>
            </div>
            <div class="ideal equal" id="equal_shbg_women" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_shbg_women" style="display: none">
                <h3>
                    Generally associated with Low SHBG:</h3>
                <p>
                    Desirable</p>
            </div>
            <div class="high" id="high_shbg_women" style="display: none">
                <h3>
                    Generally associated with High SHBG:</h3>
                <p>
                    Hypothryoid, liver sluggishness, female hormones are bound and unavailable in free
                    form, polycystic ovarian precursor, secondary effects of birth control pills, breast
                    cancer e early warning, autointoxication, trapped lymphatic toxins, toxic bowel,
                    cellular deficiency, hormone imbalance</p>
                <h3>
                    Corresponding need for nutritional support for High SHBG:</h3>
                <p>
                    Ionic Liquid Minerals, Zinc, Cobalt, Magnesium. Choline, Citrus Bio-Flavanoid, Fiber
                    Max,Vitamin B Complex 1000, Inositol, Selenium, Taurine, Vitamin’s E, C, B-3</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Zucchini, avocado, mushroom</p>
                <h3>
                    Support:</h3>
                <p>
                    Female system, pituitary, thyroid. (Homeopathic Remedies: #44, #804, #805, #806,
                    #810)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_AG">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            AG</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_AG">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_AG" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('AG');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_AG">
                <h3>
                    AG stand alone indicators generally associated with AG:</h3>
                <button id="btn_AG" onclick="javascript :print('AG');" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_AG" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_AG" style="display: none">
                <h3>
                    Generally associated with Low AG:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_AG" style="display: none">
                <h3>
                    Generally associated with High AG:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="test-container">
            <div align="center" class="test-box">
                SPECIAL BLOOD TESTS: MEN</div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_EstradiolE2Men">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Estradiol E2</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_EstradiolE2Men">
                                    45</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">30 - 60</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">20 - 75</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_EstradiolE2Men" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('EstradiolE2Men');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_EstradiolE2Men">
                <h3>
                    Estradiol E2 stand alone indicators generally associated with:</h3>
                <button id="btn_EstradiolE2Men" onclick="javascript :print('EstradiolE2Men');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_EstradiolE2Men" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_EstradiolE2Men" style="display: none">
                <h3>
                    Generally associated with Low Estradiol E2:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_EstradiolE2Men" style="display: none">
                <h3>
                    Generally associated with High Estradiol E2:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_TestosteroneTotalMen">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Testosterone Total</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_TestosteroneTotalMen">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 0</strong>
                        </td>
                        <td width="25%">
<strong class="red">0 - 0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_TestosteroneTotalMen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('TestosteroneTotalMen');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_TestosteroneTotalMen">
                <h3>
                    Testosterone Total stand alone indicators generally associated with:</h3>
                <button id="btn_TestosteroneTotalMen" onclick="javascript :print('TestosteroneTotalMen');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_TestosteroneTotalMen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_TestosteroneTotalMen" style="display: none">
                <h3>
                    Generally associated with Low Testosterone Total:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_TestosteroneTotalMen" style="display: none">
                <h3>
                    Generally associated with High Testosterone Total:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_TestosteroneFreeMen">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Testosterone Free
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_TestosteroneFreeMen">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 0</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 0 - 0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_TestosteroneFreeMen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('TestosteroneFreeMen');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_TestosteroneFreeMen">
                <h3>
                    Testosterone Free stand alone indicators generally associated with:</h3>
                <button id="btn_TestosteroneFreeMen" onclick="javascript :print('TestosteroneFreeMen');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_TestosteroneFreeMen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_TestosteroneFreeMen" style="display: none">
                <h3>
                    Generally associated with Low Testosterone Free:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_TestosteroneFreeMen" style="display: none">
                <h3>
                    Generally associated with High Testosterone Free:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_DHTMen">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Dihydro Testosterone DHT</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_DHTMen">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 0</strong>
                        </td>
                        <td width="25%">
                           <strong class="red"> 0 - 0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_DHTMen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('DHTMen');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_DHTMen">
                <h3>
                    DHT stand alone indicators generally associated with:</h3>
                <button id="btn_DHTMen" onclick="javascript :print('DHTMen');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_DHTMen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_DHTMen" style="display: none">
                <h3>
                    Generally associated with Low DHT:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_DHTMen" style="display: none">
                <h3>
                    Generally associated with High DHT:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_ProlactinMen">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Prolactin</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_ProlactinMen">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                           <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_ProlactinMen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('ProlactinMen');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_ProlactinMen">
                <h3>
                    Prolactin stand alone indicators generally associated with:</h3>
                <button id="btn_ProlactinMen" onclick="javascript :print('ProlactinMen');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_ProlactinMen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_ProlactinMen" style="display: none">
                <h3>
                    Generally associated with Low Prolactin:</h3>
                <p>
                    coming soom</p>
            </div>
            <div class="high" id="high_ProlactinMen" style="display: none">
                <h3>
                    Generally associated with High Prolactin:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_LHMen">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            LH</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_LHMen">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                           <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_LHMen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('LHMen');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_LHMen">
                <h3>
                    LH stand alone indicators generally associated with:</h3>
                <button id="btn_LHMen" onclick="javascript :print('LHMen');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_LHMen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_LHMen" style="display: none">
                <h3>
                    Generally associated with Low LH:</h3>
                <p>
                    coming soom</p>
            </div>
            <div class="high" id="high_LHMen" style="display: none">
                <h3>
                    Generally associated with High LH:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_FSHMen">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            FSH</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_FSHMen">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_FSHMen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('FSHMen');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_FSHMen">
                <h3>
                    FSH stand alone indicators generally associated with:</h3>
                <button id="btn_FSHMen" onclick="javascript :print('FSHMen');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_FSHMen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_FSHMen" style="display: none">
                <h3>
                    Generally associated with Low FSH:</h3>
                <p>
                    coming soom</p>
            </div>
            <div class="high" id="high_FSHMen" style="display: none">
                <h3>
                    Generally associated with High FSH:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_EstroneE1">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Estrone E1</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_EstroneE1">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                           <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_EstroneE1" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('EstroneE1');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_EstroneE1">
                <h3>
                    Estrone E1 stand alone indicators generally associated with:</h3>
                <button id="btn_EstroneE1" onclick="javascript :print('EstroneE1');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_EstroneE1" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_EstroneE1" style="display: none">
                <h3>
                    Generally associated with Low Estrone E1:</h3>
                <p>
                    coming soom</p>
            </div>
            <div class="high" id="high_EstroneE1" style="display: none">
                <h3>
                    Generally associated with High Estrone E1:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_AGMen">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            AG</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_AGMen">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_AGMen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('AGMen');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_AGMen">
                <h3>
                    AG stand alone indicators generally associated with:</h3>
                <button id="btn_AGMen" onclick="javascript :print('AGMen');" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_AGMen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_AGMen" style="display: none">
                <h3>
                    Generally associated with Low AG:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_AGMen" style="display: none">
                <h3>
                    Generally associated with High AG:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_SHBGMen">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            SHBG</h1>
                    </td>
                </tr>
                <tr>
                    <td width="25%">
                        <h2>
                        Ideal</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Preventive Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Orthodox Medicine Range</h1>
                    </td>
                    <td width="25%">
                        <h2>
                        Your test Score</h1>
                    </td>
                </tr>
            </table>
            <div class="values">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_SHBGMen">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 0</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">  0 - 0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_SHBGMen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('SHBGMen');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_SHBGMen">
                <h3>
                    SHBG stand alone indicators generally associated with:</h3>
                <button id="btn_SHBGMen" onclick="javascript :print('SHBGMen');return false;" class="print display-none">
                    Print</button>
                <p>
                    coming soon</p>
            </div>
            <div class="ideal equal" id="equal_SHBGMen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_SHBGMen" style="display: none">
                <h3>
                    Generally associated with Low SHBG:</h3>
                <p>
                    coming soon</p>
            </div>
            <div class="high" id="high_SHBGMen" style="display: none">
                <h3>
                    Generally associated with High SHBG:</h3>
                <p>
                    coming soon</p>
            </div>
        </div>
    </div>
    </form>

    <script type="text/javascript">

        ShowResult('Frutosamine');
        ShowResult('total_lipo_protein');
        ShowResult('FolicAcid');
        ShowResult('VitaminB12');
        ShowResult('Zinc');
        ShowResult('VitaminD');
        ShowResult('VitaminD1');
        ShowResult('VitaminC');
        ShowResult('VitaminB');
        ShowResult('VitaminB6');
        ShowResult('VitaminA');
        ShowResult('LeadBlood');
        ShowResult('MercuryBlood');
        ShowResult('ArsenicBlood');
        ShowResult('VitaminB2');
        ShowResult('Gluten');
        ShowResult('TPylori');
        ShowResult('caa');
        ShowResult('LipoProteinA');
        ShowResult('Fibrinogen');
        ShowResult('dhea');
        ShowResult('ifg1');
        ShowResult('TestosteroneMen');
        ShowResult('TestosteroneWomen');
        ShowResult('TestosteroneMenFree');
        ShowResult('PSA');
        ShowResult('PSAFree');
        ShowResult('SHBG');
        ShowResult('dht');
        ShowResult('estradiol_men');
        ShowResult('estradiol_female');
        ShowResult('MidFollicular');
        ShowResult('PeriOvulatory');
        ShowResult('MidLuteal');
        ShowResult('PostMenopausal');
        ShowResult('Prolactin');
        ShowResult('LH');
        ShowResult('FSH');
        ShowResult('EstradiolE2');
        ShowResult('EstroneE2');
        ShowResult('shbg_women');
        ShowResult('AG');
        ShowResult('EstradiolE2Men');
        ShowResult('TestosteroneTotalMen');
        ShowResult('TestosteroneFreeMen');
        ShowResult('DHTMen');
        ShowResult('ProlactinMen');
        ShowResult('LHMen');
        ShowResult('FSHMen');
        ShowResult('EstroneE1');
        ShowResult('AGMen');
        ShowResult('SHBGMen');    
      
    </script>

</body>
</html>
