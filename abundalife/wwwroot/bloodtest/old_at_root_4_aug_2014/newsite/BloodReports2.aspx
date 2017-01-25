<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BloodReports2.aspx.cs"
    Inherits="abundalife1001.Reports2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void u_score_abs_basophils_TextChanged(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Abunda Life Medical Nutrition Testing Clinic</title>
    <link href="css/report-style.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript" src="js/test_function.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="xid" runat="server" onvaluechanged="xid_ValueChanged" />
    <div id="main_container">
      
     
     
           <div id="div_salive_ph">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Saliva PH</h1>
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
                                <label id="i_score_salive_ph">
                                </label>
                            </strong>
                        </td>
                        <td width="25%">
                            <strong></strong>
                        </td>
                        <td width="25%">
                            <strong></strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_salive_ph" runat="server"></asp:TextBox>
                            <a href="#" onclick="resultOfTest('salive_ph');">Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_salive_ph">
                <h3>
                    Saliva PH stand alone indicators generally associated with:</h3>
                <button id="btn_salive_ph" onclick="javascript :print('salive_ph');" class="print display-none">
                    Print</button>
                <p>
                    Enzyme sufficiency, digestive competency</p>
            </div>
            <div class="ideal hidden" id="equal_salive_ph" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low hidden" id="low_salive_ph" style="display: none">
                <h3>
                    Generally associated with Low Saliva PH:</h3>
                <p>
                    Deficiencies in enzymes, slow food transition time, overly acid condition</p>
                <h3>
                    Corresponding need for nutritional support for Saliva PH:</h3>
                <p>
                    Jug One Protocol, Duo C Complex.</p>
            </div>
            <div class="high hidden" id="high_salive_ph" style="display: none">
                <h3>
                    Generally associated with High Saliva PH:</h3>
                <p>
                    Candida Albicans, immune challenge, hypochlorhydria</p>
                <h3>
                    Corresponding need for nutritional support for High Saliva PH:</h3>
                <p>
                    Green Drink, Crude Apple Cider Vinegar, Jug One Protocol.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, squash, tomato.</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, colon, digestion</p>
            </div>
        </div>
    </div>    </form>
    <script type="text/javascript">
        
       
    </script>

</body>
</html>
