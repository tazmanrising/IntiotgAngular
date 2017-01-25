<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UrineReport.aspx.cs" Inherits="abundalife1001.UrineReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Abunda Life Medical Nutrition Testing Clinic</title>
    <link href="css/report-style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/print.css" type="text/css" media="print" />

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
        </div>
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
                        Diagnostic Laboratory Urine Analysis Results
                    </td>
                </tr>
            </table>
        </div>
        <div id="div_ascorbicacid">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Ascorbic Acid</h1>
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
            <div class="values" id="range_ascorbicacid">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_ascorbicacid">
                                    10</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">8 - 12</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">4 - 10</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_ascorbicacid" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('ascorbicacid');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_ascorbicacid">
                <h3>
                    Ascorbic Acid stand alone indicators generally associated with:</h3>
                <button id="btn_ascorbicacid" onclick="javascript :print('ascorbicacid');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Stand alone indicator: Vitamin C absorption</p>
            </div>
            <div class="ideal equal" id="equal_ascorbicacid" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_ascorbicacid" style="display: none">
                <h3>
                    Generally associated with Low Ascorbic Acid:</h3>
                <p>
                    Poor absorption, stress, immune system challenge, vitamin C deficiency, bio-flavanoid
                    deficiency, smoking, medications, sugar excess.</p>
            </div>
            <div class="high" id="high_ascorbicacid" style="display: none">
                <h3>
                    Generally associated with High Ascorbic Acid:</h3>
                <p>
                    Liver dysfunction, toxicity, kidney dysfunction.</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_spec_gravity">
            <table id="h1_spec_gravity" border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Specific Gravity</h1>
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
            <div class="values" id="range_spec_gravity">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_spec_gravity">
                                    1.10</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">1.005 - 1.015</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">1.005 - 1.020</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_spec_gravity" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('spec_gravity');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_spec_gravity">
                <h3>
                    Specific Gravity stand alone indicators generally associated with:</h3>
                <button id="btn_spec_gravity" onclick="javascript :print('spec_gravity');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Posterior pituitary function, cellular hydration. Metabolic efficiency, toxicity
                    levels, body fat storing or burning indicator.</p>
            </div>
            <div class="ideal equal" id="equal_spec_gravity" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_spec_gravity" style="display: none">
                <h3>
                    Generally associated with Low Specific Gravity:</h3>
                <p>
                    Electrolyte Formula, Bio-Ox, Super Salt, Cats Claw, Jug One Protocol, Kidney Tea,
                    Cranberry Complex.</p>
                <h3>
                    Corresponding need for nutritional support for Low Specific Gravity:</h3>
                <p>
                    Electrolyte Formula, Bio-Ox, Super Salt, Cats Claw, Jug One Protocol, Kidney Tea,
                    Cranberry Complex.</p>
            </div>
            <div class="high" id="high_spec_gravity" style="display: none">
                <h3>
                    Generally associated with High Specific Gravity:</h3>
                <p>
                    Cellular dehydration, heart congestion, liver sluggishness, electrolyte depletion,
                    metabolic acidosis, hyper-metabolic state, excess liver metabolites under performing,
                    posterior pituitary.</p>
                <h3>
                    Corresponding need for nutritional support for High Specific Gravity:</h3>
                <p>
                    Jug One Protocol, L-Arginine Complex, Bio-Ox, Electrolyte Formula, Kidney Flush,
                    Liver Detox Formula.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Apple, celery, asparagus, fig.</p>
                <h3>
                    Support:</h3>
                <p>
                    Kidneys, liver, pituitary. (Homeopathic Remedies; #10, #29, #32, #805, #823)</p>
            </div>
        </div>
        <!--Urine PH test starts here---->
        <div class="page-break">
        </div>
        <div id="div_urine_ph">
            <table border="0" id="h1_urine_ph" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Urine PH</h1>
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
            <div class="values" id="range_urine_ph">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_urine_ph">
                                    6.5</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">6.4 - 6.8</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">6.0 - 7.0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_urine_ph" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('urine_ph');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_urine_ph">
                <h3>
                    Urine PH stand alone indicators generally associated with:</h3>
                <button id="btn_urine_ph" onclick="javascript :print('urine_ph');return false;" class="print display-none">
                    Print</button>
                <p>
                    Acid/Alkaline balance.</p>
            </div>
            <div class="ideal equal" id="equal_urine_ph" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_urine_ph" style="display: none">
                <h3>
                    Generally associated with Low Urine PH:</h3>
                <p>
                    Overly acid by-product, toxicity, faulty diet, excess use of sugar, sugar substitutes,
                    diet soda, cola drinks, devitalized foods, lack of greens.</p>
                <h3>
                    Corresponding need for nutritional support for Urine PH:</h3>
                <p>
                    Cal/Mag, Super Green, Jug One Protocol, Acid PH Balancer, Alkaline Water.</p>
            </div>
            <div class="high" id="high_urine_ph" style="display: none">
                <h3>
                    Generally associated with High Urine PH:</h3>
                <p>
                    Urinary tract infection, Candida, bacteria over run, flora imbalance.</p>
                <h3>
                    Corresponding need for nutritional support for High Urine PH:</h3>
                <p>
                    Crude Apple Cider Vinegar, Super C Active, Jug One Protocol, Kidney Flush, Immune
                    Formula.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Mushroom, avocado, sweet potato, celery, tomato, spinach, asparagus, lemon, orange,
                    squash, zucchini.</p>
                <h3>
                    Support:</h3>
                <p>
                    Detoxification, kidneys. (Homeopathic Remedies: #4, #63, #823)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_urine_gluc">
            <!--Urine Glucose test starts here---->
            <table border="0" id="h1_urine_gluc" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Urine Glucose</h1>
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
            <div class="values" id="range_urine_gluc">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_urine_gluc">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - .7</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0 - 1.0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_urine_gluc" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('urine_gluc');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_urine_gluc">
                <h3>
                    Urine Glucose stand alone indicators generally associated with:</h3>
                <button id="btn_urine_gluc" onclick="javascript :print('urine_gluc');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Blood sugar balance.</p>
            </div>
            <div class="ideal equal" id="equal_urine_gluc" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_urine_gluc" style="display: none">
                <h3>
                    Generally associated with Low Urine Glucose:</h3>
                <p>
                    Low is desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_urine_gluc" style="display: none">
                <h3>
                    Generally associated with High Urine Glucose:</h3>
                <p>
                    Syndrome X, uncontrolled diabetes, pancreatic problems, severe metabolic acidosis,
                    kidney dysfunction, blood sugar spilling into urinary tract due to faulty diet,
                    excess use of alcohol, medications, alcohol, sugar, sugar substitutes, devitalized
                    foods, faulty eating habits, insulin resistance, body fat weight gain, fluid retention,
                    chronic fatigue.</p>
                <h3>
                    Corresponding need for nutritional support for High Urine Glucose:</h3>
                <p>
                    Mega B Complex 1000, Super Food, Chromium Picolonate, Licorice Root Complex, Super
                    Drink, Tigers Food, Blood Sugar/Cortisol Formula, Golden Seal Root, GTF Formula</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Apple, sweet potato, beet, orange, avocado, artichoke, zucchini, peas, plum</p>
                <h3>
                    Support:</h3>
                <p>
                    Pancreas, detoxification, liver. (Homeopathic Remedies: #10, #63, #808, #819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_bilirubin_urine">
            <!--Bilirubin test starts here---->
            <table border="0" id="h1_bilirubin_urine" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Bilirubin</h1>
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
            <div class="values" id="range_bilirubin_urine">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_bilirubin_urine">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - .7</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0 - 1.0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_bilirubin_urine" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('bilirubin_urine');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_bilirubin_urine">
                <h3>
                    Bilirubin stand alone indicators generally associated with:</h3>
                <button id="btn_bilirubin_urine" onclick="javascript :print('bilirubin_urine');"
                    class="print display-none">
                    Print</button>
                <p>
                    Liver efficiency.</p>
            </div>
            <div class="ideal equal" id="equal_bilirubin_urine" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_bilirubin_urine" style="display: none">
                <h3>
                    Generally associated with Low Bilirubin:</h3>
                <p>
                    Low is desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_bilirubin_urine" style="display: none">
                <h3>
                    Generally associated with High Bilirubin:</h3>
                <p>
                    Liver sluggishness, liver not functioning efficiently, thickening blood, enzyme
                    deficiency, constipation, enzyme deficiency, toxicity, gall bladder sluggishness,
                    devitalized foods, multiple nutritional deficiencies, over eating, faulty dietary
                    habits.</p>
                <h3>
                    Corresponding need for nutritional support for High Bilirubin:</h3>
                <p>
                    Liver Formula, Bowel Tonic, Jug One Protocol, Green Drink, Milk Thistle, L-Cystein,
                    Organic Sulfur.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, spinach, garlic, lemon, artichoke, mushroom, fig, plum.</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, colon. (Homeopathic Remedies: #10, #40, #819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_ketone">
            <!--Ketone test starts here---->
            <table border="0" id="h1_ketone" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Ketone</h1>
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
            <div class="values" id="range_ketone">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_ketone">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - .7</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0 - 1.0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_ketone" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('ketone');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_ketone">
                <h3>
                    Ketone stand alone indicators generally associated with:</h3>
                <button id="btn_ketone" onclick="javascript :print('ketone');return false;" class="print display-none">
                    Print</button>
                <p>
                </p>
            </div>
            <div class="ideal equal" id="equal_ketone" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_ketone" style="display: none">
                <h3>
                    Generally associated with Low Ketone:</h3>
                <p>
                    Low is desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_ketone" style="display: none">
                <h3>
                    Generally associated with High Ketone:</h3>
                <p>
                    Metabolic acidosis, cells breaking down, severe psychological stress, fasting, over
                    training, muscles &amp; cells breaking down faster than they are repairing, fat
                    burn off by-product, diabetes precursor, fasting, starvation, mal-nutrition, sudden
                    weight loss.</p>
                <h3>
                    Corresponding need for nutritional support for High Ketone:</h3>
                <p>
                    Super Food Drink, 28 Super Amino Acids, RNA/DNA, Tigers Food, L-Carnitine, L-Arginine
                    Complex, L-Glutamine, Green Drink, Endurall.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Sweet potato, artichoke, avocado.</p>
                <h3>
                    Support:</h3>
                <p>
                    Muscles, pituitary, digestion. (Homeopathic Remedies: #802, #803, #804, #820)</p>
            </div>
        </div>
        <!--Urinary Occult Blood test starts here---->
        <div class="page-break">
        </div>
        <div id="div_urinary_occ_blood">
            <table border="0" id="h1_urinary_occ_blood" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Urinary Occult Blood</h1>
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
            <div class="values" id="range_urinary_occ_blood">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_urinary_occ_blood">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - .7</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0 - 1.0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_urinary_occ_blood" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('urinary_occ_blood');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_urinary_occ_blood">
                <h3>
                    Urinary Occult Blood stand alone indicators generally associated with:</h3>
                <button id="btn_urinary_occ_blood" onclick="javascript :print('urinary_occ_blood');"
                    class="print display-none">
                    Print</button>
                <p>
                    Capillary integrity.</p>
            </div>
            <div class="ideal equal" id="equal_urinary_occ_blood" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_urinary_occ_blood" style="display: none">
                <h3>
                    Generally associated with Low Urinary Occult Blood:</h3>
                <p>
                    Low is desirable. Zero is perfect.</p>
            </div>
            <div class="high" id="high_urinary_occ_blood" style="display: none">
                <h3>
                    Generally associated with High Urinary Occult Blood:</h3>
                <p>
                    Collagen breakdown, vitamin C deficiency, kidney stone, trauma, injury, kidney dysfunction,
                    ulcer, excess aspirin, bio-flavanoid deficiency, cellular degeneration, hemorrhoids,
                    hormone imbalance, menstruation, weak capillary wall, potential of internal bleeding
                    and cancer, prostate enlargement, perri menopause.</p>
                <h3>
                    Corresponding need for nutritional support for High Urinary Occult Blood:</h3>
                <p>
                    Duo C Complex, Super C Active, Cranberry Complex, San Palmetto, Blood Building Formula,
                    Endurall, RNA/DNA, Green Drink, Rose Hip/Bio-Flavanoid Formula, Kidney Flush, Jug
                    One Protocol.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Lemon, orange, jalapeno, green pepper, tomato, garlic, plum.</p>
                <h3>
                    Support:</h3>
                <p>
                    Nutritional deficiencies, kidneys. (Homeopathic Remedies: #805, #823)</p>
            </div>
            <!--Protein test starts here---->
        </div>
        <div class="page-break">
        </div>
        <div id="div_urinary_protein">
            <table border="0" id="h1_urinary_protein" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Protein</h1>
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
            <div class="values" id="range_urinary_protein">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_urinary_protein">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_urinary_protein" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('urinary_protein');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_urinary_protein">
                <h3>
                    Protein stand alone indicators generally associated with:</h3>
                <button id="btn_urinary_protein" onclick="javascript :print('urinary_protein');"
                    class="print display-none">
                    Print</button>
                <p>
                    Protein utilization, kidney malfunction.</p>
            </div>
            <div class="ideal equal" id="equal_urinary_protein" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_urinary_protein" style="display: none">
                <h3>
                    Generally associated with Low Protein:</h3>
                <p>
                    Low is desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_urinary_protein" style="display: none">
                <h3>
                    Generally associated with High Protein:</h3>
                <p>
                    Protein wasting, cells breaking down, muscle loss due to toxic overload of the kidneys,
                    human growth hormone deficiency.</p>
                <h3>
                    Corresponding need for nutritional support for High Protein:</h3>
                <p>
                    Super Food Drink, L-Arginine, L-Carnitine, L-Glutamine, Jug One Protocol, Kidney
                    Formula, Bowel Tonic, Cats Claw.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, beet, cabbage, broccoli, kale, parsley.</p>
                <h3>
                    Support:</h3>
                <p>
                    Kidneys, colon, detoxification, nutrition. (Homeopathic Remedies; #8, #823)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_urobilinogen">
            <!--Urobilinogen test starts here---->
            <table border="0" id="h1_urobilinogen" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Urobilinogen</h1>
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
            <div class="values" id="range_urobilinogen">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_urobilinogen">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_urobilinogen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('urobilinogen');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_urobilinogen">
                <h3>
                    Urobilinogen stand alone indicators generally associated with:</h3>
                <button id="btn_urobilinogen" onclick="javascript :print('urobilinogen');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Kidney and liver function.</p>
            </div>
            <div class="ideal equal" id="equal_urobilinogen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_urobilinogen" style="display: none">
                <h3>
                    Generally associated with Low Urobilinogen:</h3>
                <p>
                    Low is desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_urobilinogen" style="display: none">
                <h3>
                    Generally associated with High Urobilinogen:</h3>
                <p>
                    Liver malfunction, kidney overwhelm, colon toxicity, blood toxicity, colon impaction,
                    jaundice precursor, red blood cells breaking down, cellular oxygen deficiency.</p>
                <h3>
                    Corresponding need for nutritional support for High Urobilinogen:</h3>
                <p>
                    Liver Detox, Kidney Flush Formula, Jug One Protocol, Green Drink, Spinach Juice
                    Extract, L-Cystein, Organic Sulfur.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Parsley, cucumber, beet, garlic, kale, asparagus, green onion.</p>
                <h3>
                    Support:</h3>
                <p>
                    Detoxification, kidneys, liver, colon. (Homeopathic Remedies: #4, $10, #823)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_nitrite">
            <!--Nitrite test starts here---->
            <table border="0" id="h1_nitrite" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Nitrite</h1>
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
            <div class="values" id="range_nitrite">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_nitrite">
                                    3</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">2 - 4</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">1 - 5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_nitrite" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('nitrite');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_nitrite">
                <h3>
                    Nitrite stand alone indicators generally associated with:</h3>
                <button id="btn_nitrite" onclick="javascript :print('nitrite');return false;" class="print display-none">
                    Print</button>
                <p>
                    Detoxification, colon, kidney efficiency, constipation indicator, highly toxic condition,
                    slow for transition time.</p>
            </div>
            <div class="ideal equal" id="equal_nitrite" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_nitrite" style="display: none">
                <h3>
                    Generally associated with Low Nitrite:</h3>
                <p>
                    Low is desirable.</p>
            </div>
            <div class="high" id="high_nitrite" style="display: none">
                <h3>
                    Generally associated with High Nitrite:</h3>
                <p>
                    Kidney not clearing efficiently, toxin overwhelm, colon toxicity, overwhelming colon
                    back up, kidney, lungs, mal-absorption, lymphatic congestion, liver overloaded affecting
                    blood chemistry, constipation, slow food transition, autointoxication</p>
                <h3>
                    Corresponding need for nutritional support for High Nitrite:</h3>
                <p>
                    Bowel Tonic, Morning Health Drink, Green Drink, Maxi Cleanse, Fiber Max, Beet, Spinach,
                    Carrot Juice Extracts, Enzyme Therapy, Absorption Enhancer</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, apple, cabbage, green onion, broccoli, fig, plum.</p>
                <h3>
                    Support:</h3>
                <p>
                    Colon, detoxification, kidneys. (Homeopathic Remedies: #40, #61, #63)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_leukocytes">
            <!--Leukocytes test starts here---->
            <table border="0" id="h1_leukocytes" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Leukocytes</h1>
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
            <div class="values" id="range_leukocytes">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_leukocytes">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_leukocytes" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('leukocytes');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_leukocytes">
                <h3>
                    Leukocytes stand alone indicators generally associated with:</h3>
                <button id="btn_leukocytes" onclick="javascript :print('leukocytes');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Urinary tract health, immune system competency.</p>
            </div>
            <div class="ideal equal" id="equal_leukocytes" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_leukocytes" style="display: none">
                <h3>
                    Generally associated with Low Leukocytes:</h3>
                <p>
                    Low is desired. Zero is ideal.</p>
            </div>
            <div class="high" id="high_leukocytes" style="display: none">
                <h3>
                    Generally associated with High Leukocytes:</h3>
                <p>
                    Urinary tract infection, colon toxicity, autointoxication, Candida Albicans, immune
                    system over run with metabolic toxins, suppressed immune function, viral/bacteria
                    infection precursor.</p>
                <h3>
                    Corresponding need for nutritional support for High Leukocytes:</h3>
                <p>
                    Jug One Protocol, Green Drink, Immune Detox Formula, Duo C Complex, Immune Power
                    Formula, Immune Broth, Naturopathic Purification Powder, Chinese Garlic, Oregano
                    Extract, Gold Seal Root.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Lemon, horseradish, broccoli, kale, tomato.</p>
                <h3>
                    Support:</h3>
                <p>
                    Detoxification, immune system. (Homeopathic Remedies; #2, #4, #817)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_cast">
            <!--Cast test starts here---->
            <table border="0" id="h1_cast" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Cast</h1>
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
            <div class="values" id="range_cast">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_cast">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_cast" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('cast');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_cast">
                <h3>
                    Cast stand alone indicators generally associated with:</h3>
                <button id="btn_cast" onclick="javascript :print('cast');return false;" class="print display-none">
                    Print</button>
                <p>
                    Kidney filtration efficiency.</p>
            </div>
            <div class="ideal equal" id="equal_cast" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_cast" style="display: none">
                <h3>
                    Generally associated with Low Cast:</h3>
                <p>
                    Low is desired. Zero is ideal.</p>
                <h3>
                    Corresponding need for nutritional support for Low Cast:</h3>
                <p>
                    Jug One Protocol, Parsley Juice, Green Drink.</p>
            </div>
            <div class="high" id="high_cast" style="display: none">
                <h3>
                    Generally associated with High Cast</h3>
                <p>
                    Urine flow stagnation, urine sediment precipitating within the renal tubes, highly
                    toxic condition</p>
                <h3>
                    Corresponding need for nutritional support for High Cast:</h3>
                <p>
                    Jug One Protocol, Kidney, Liver, Bowel Detox Formula’s, Bowel Tonic, Green Drink,
                    Green Pepper Juice Formula.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, zucchini, parsley, cucumber, eggplant, broccoli, tomato, spinach.</p>
                <h3>
                    Support:</h3>
                <p>
                    Kidney, detoxification, liver. (Homeopathic Remedies; #4, #10, #61)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_mucus">
            <!--Mucus test starts here---->
            <table border="0" id="h1_mucus" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Mucus</h1>
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
            <div class="values" id="range_mucus">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_mucus">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_mucus" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('mucus');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_mucus">
                <h3>
                    Mucus stand alone indicators generally associated with:</h3>
                <button id="btn_mucus" onclick="javascript :print('mucus');return false;" class="print display-none">
                    Print</button>
                <p>
                    Inflammatory marker.</p>
            </div>
            <div class="ideal equal" id="equal_mucus" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_mucus" style="display: none">
                <h3>
                    Generally associated with Low Mucus:</h3>
                <p>
                    Low is desired. Zero is ideal.</p>
            </div>
            <div class="high" id="high_mucus" style="display: none">
                <h3>
                    Generally associated with High Mucus:</h3>
                <p>
                    Inflammation, infection, colitis.</p>
                <h3>
                    Corresponding need for nutritional support for High Mucus:</h3>
                <p>
                    Jug One Protocol, Duo C Complex, Medazyme Therapy, Mucus Cleanse.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Lemon, orange, parsley, asparagus.</p>
                <h3>
                    Support:</h3>
                <p>
                    Kidneys, immune system. (Homeopathic Remedies; #807, #823)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_urine_rbc">
            <!--RBC test starts here---->
            <table border="0" id="h1_urine_rbc" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            RBC</h1>
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
            <div class="values" id="range_urine_rbc">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_urine_rbc">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_urine_rbc" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('urine_rbc');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_urine_rbc">
                <h3>
                    RBC stand alone indicators generally associated with:</h3>
                <button id="btn_urine_rbc" onclick="javascript :print('urine_rbc');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Red blood cells breaking down.</p>
            </div>
            <div class="ideal equal" id="equal_urine_rbc" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_urine_rbc" style="display: none">
                <h3>
                    Generally associated with Low RBC:</h3>
                <p>
                    Low is desired. Zero is ideal.</p>
            </div>
            <div class="high" id="high_urine_rbc" style="display: none">
                <h3>
                    Generally associated with High Urinary RBC:</h3>
                <p>
                    Red blood cells dying off, nutritional deficiency, loss of fighting force.</p>
                <h3>
                    Corresponding need for nutritional support for High Mucus:</h3>
                <p>
                    Red Blood Builder, Blood Building Broth.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, kale, beet.</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver. (Homeopathic Remedies; #19, #819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_epithelial">
            <!--Epithelial Cells test starts here---->
            <table border="0" id="h1_epithelial" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Epithelial Cells</h1>
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
            <div class="values" id="range_epithelial">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_epithelial">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_epithelial" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('epithelial');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_epithelial">
                <h3>
                    Epithelial Cells stand alone indicators generally associated with:</h3>
                <button id="btn_epithelial" onclick="javascript :print('epithelial');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Cellular integrity.</p>
            </div>
            <div class="ideal equal" id="equal_epithelial" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_epithelial" style="display: none">
                <h3>
                    Generally associated with Low Epithelial Cells:</h3>
                <p>
                    Low is desired. Zero is ideal.</p>
            </div>
            <div class="high" id="high_epithelial" style="display: none">
                <h3>
                    Generally associated with High Epithelial Cells:</h3>
                <p>
                    Immune system breaking down, cellular breakdown.</p>
                <h3>
                    Corresponding need for nutritional support for High Mucus:</h3>
                <p>
                    28 Super Amino Acids, Duo C Complex, Super Food Drink.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Green pepper, spinach, kale, garlic, broccoli.</p>
                <h3>
                    Support:</h3>
                <p>
                    Immune system, muscles. (Homeopathic Remedies; #802, #807)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_cal_ox">
            <!--Calcium Oxalate test starts here---->
            <table border="0" id="h1_cal_ox" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Calcium Oxalate</h1>
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
            <div class="values" id="range_cal_ox">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_cal_ox">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_cal_ox" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('cal_ox');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_cal_ox">
                <h3>
                    Calcium Oxalate stand alone indicators generally associated with:</h3>
                <button id="btn_cal_ox" onclick="javascript :print('cal_ox');return false;" class="print display-none">
                    Print</button>
                <p>
                    Early stage kidney stone formation.</p>
            </div>
            <div class="ideal equal" id="equal_cal_ox" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_cal_ox" style="display: none">
                <h3>
                    Generally associated with Low Calcium Oxalate:</h3>
                <p>
                    Low is desired. Zero is ideal.</p>
                <h3>
                    Corresponding need for nutritional support for Low Calcium Oxalate:</h3>
                <p>
                    Ionic Magnesium, Jug One Protocol.</p>
            </div>
            <div class="high" id="high_cal_ox" style="display: none">
                <h3>
                    Generally associated with High Calcium Oxalate:</h3>
                <p>
                    Kidney disorder, metabolic acidosis, calcium out of solution, kidney stone formation.</p>
                <h3>
                    Corresponding need for nutritional support for High Calcium Oxalate:</h3>
                <p>
                    Jug One Protocol, Kidney Formula, Green Drink, Ionic Magnesium, Boron, Kidney Tea,
                    Morning Health Drink, Bedtime Bowel Tonic.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Parsley, celery, asparagus, apple, fig.</p>
                <h3>
                    Support:</h3>
                <p>
                    Kidneys, detoxification. (Homeopathic Remedies; #40, #61, #823)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_tri_phos">
            <!--Triple Phosphate test starts here---->
            <table border="0" id="h1_tri_phos" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Triple Phosphate</h1>
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
            <div class="values" id="range_tri_phos">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_tri_phos">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_tri_phos" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('tri_phos');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_tri_phos">
                <h3>
                    Triple Phosphate stand alone indicators generally associated with:</h3>
                <button id="btn_tri_phos" onclick="javascript :print('tri_phos');return false;" class="print display-none">
                    Print</button>
                <p>
                    Mineral imbalance, calcium balance, parathyroid homeostasis</p>
            </div>
            <div class="ideal equal" id="equal_tri_phos" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_tri_phos" style="display: none">
                <h3>
                    Generally associated with Low Triple Phosphate:</h3>
                <p>
                    Low is desired. Zero is ideal.</p>
            </div>
            <div class="high" id="high_tri_phos" style="display: none">
                <h3>
                    Generally associated with High Triple Phosphate:</h3>
                <p>
                    Bone depletion, calcium out of solution.</p>
                <h3>
                    Corresponding need for nutritional support for High Triple Phosphate:</h3>
                <p>
                    Ionic Cal/Mag, Boron Tonic, Vitamin D-3.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, kale.</p>
                <h3>
                    Support:</h3>
                <p>
                    Kidneys, nutrition. (Homeopathic Remedy: #6)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_uric_acid">
            <!--Uric Acid  test starts here---->
            <table border="0" id="h1_uric_acid" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Uric Acid
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
            <div class="values" id="range_uric_acid">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_uric_acid">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_uric_acid" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('uric_acid');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_uric_acid">
                <h3>
                    Uric Acid stand alone indicators generally associated with:</h3>
                <button id="btn_uric_acid" onclick="javascript :print('uric_acid');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Bad acid, gout gauge. Arthritis, rheumatism, stiffness</p>
            </div>
            <div class="ideal equal" id="equal_uric_acid" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_uric_acid" style="display: none">
                <h3>
                    Generally associated with Low Uric Acid:</h3>
                <p>
                    Low is desired. Zero is ideal.</p>
            </div>
            <div class="high" id="high_uric_acid" style="display: none">
                <h3>
                    Generally associated with High Uric Acid:</h3>
                <p>
                    Pre-gout, connective tissue problems, arthritic/rheumatoid like conditions, uric
                    acid depositing near joints, cartilage and connective tissue joint swelling, inflammation,
                    big toe pain, faulty diet, excess use of devitalized foods.</p>
                <h3>
                    Corresponding need for nutritional support for High Uric Acid:</h3>
                <p>
                    Jug One Protocol, Green Drink, Bowel Tonic, Kidney &amp; Liver Detox Formula, Wheat
                    Grass Juice Concentrate.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, cucumber, parsley, broccoli, cauliflower, garlic, onion, horseradish, plum,
                    apple, fig.</p>
                <h3>
                    Support:</h3>
                <p>
                    Kidneys, detoxification. (Homeopathic Remedies: #4, #40, #61, #823)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_amorphous">
            <!--Amorphous  test starts here---->
            <table border="0" id="h1_amorphous" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Amorphous</h1>
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
            <div class="values" id="range_amorphous">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_amorphous">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_amorphous" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('amorphous');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_amorphous">
                <h3>
                    Amorphous stand alone indicators generally associated with:</h3>
                <button id="btn_amorphous" onclick="javascript :print('amorphous');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Flora balance.
                </p>
            </div>
            <div class="ideal equal" id="equal_amorphous" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_amorphous" style="display: none">
                <h3>
                    Generally associated with Low Amorphous:</h3>
                <p>
                    Low is desired. Zero is ideal.</p>
            </div>
            <div class="high" id="high_amorphous" style="display: none">
                <h3>
                    Generally associated with High Amorphous:</h3>
                <p>
                    Floral imbalance, cellular oxygen deficiency, excess junk foods, fiber, enzyme &amp;
                    multiple nutritional deficiencies</p>
                <h3>
                    Corresponding need for nutritional support for High Amorphous:</h3>
                <p>
                    Mega B Complex 1000, Stress &amp; Toxin Protector, Green Drink.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Parsley, carrot, spinach, fig, apple, yogurt health drink.</p>
                <h3>
                    Support:</h3>
                <p>
                    Spleen. (Homeopathic Remedy: #808)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_bacteria">
            <!--Bacteria  test starts here---->
            <table border="0" id="h1_bacteria" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Bacteria</h1>
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
            <div class="values" id="range_bacteria">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="25%">
                            <strong>
                                <label id="i_score_bacteria">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_bacteria" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('bacteria');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_bacteria">
                <h3>
                    Bacteria stand alone indicators generally associated with:</h3>
                <button id="btn_bacteria" onclick="javascript :print('bacteria');return false;" class="print display-none">
                    Print</button>
                <p>
                    Immune competency, urinary tract infection.</p>
            </div>
            <div class="ideal equal" id="equal_bacteria" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_bacteria" style="display: none">
                <h3>
                    Generally associated with Low Bacteria:</h3>
                <p>
                    Low is desired. Zero is ideal.</p>
            </div>
            <div class="high" id="high_bacteria" style="display: none">
                <h3>
                    Generally associated with High Bacteria:</h3>
                <p>
                    Autointoxication, Candida, bacterial infection, urinary tract infection, burning
                    on urination, immune system over run.</p>
                <h3>
                    Corresponding need for nutritional support for High Bacteria:</h3>
                <p>
                    Jug One Protocol, Kidney, Immune Detox Formula’s, Duo C Complex, Cats Claw, Oregano
                    Oil Extract, Chinese Garlic, Golden Seal Root, Red Clover Blossom.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Jug One Protocol, Kidney, Immune Detox Formula’s, Duo C Complex, Cats Claw, Oregano
                    Oil Extract, Chinese Garlic, Golden Seal Root, Red Clover Blossom.</p>
                <h3>
                    Support:</h3>
                <p>
                    Kidneys, immune system, detoxification. (Homeopathic Remedies: #4, #40, #61, #63)</p>
            </div>
            <!--Saliva PH test starts here---->
        </div>
        </div>
    </form>

    <script type="text/javascript">
        ShowResult('ascorbicacid');        
        ShowResult('spec_gravity');
        ShowResult('urine_ph');
        ShowResult('urine_gluc');
        ShowResult('bilirubin_urine');
        ShowResult('ketone');
        ShowResult('urinary_occ_blood');
        ShowResult('urinary_protein');
        ShowResult('urobilinogen');
        ShowResult('nitrite');
        ShowResult('leukocytes');
        ShowResult('cast');
        ShowResult('mucus');
        ShowResult('urine_rbc');
        ShowResult('epithelial');
        ShowResult('cal_ox');
        ShowResult('tri_phos');
        ShowResult('uric_acid');
        ShowResult('amorphous');
        ShowResult('bacteria');
     
    </script>

</body>
</html>
