<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalivaReport.aspx.cs" Inherits="abundalife1001.SalivaReport" %>

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
                        In House Urine/Saliva Tests
                    </td>
                </tr>
            </table>
        </div>
        <div id="div_sugar_refrac">
            <!--Sugar Refractometer Test test starts here---->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Sugar Refractometer Test</h1>
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
                                <label id="i_score_sugar_refrac">
                                    3.2</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">2.2 - 4.2</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">2.2 - 5.9</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_sugar_refrac" runat="server"></asp:TextBox>
                            <a href="#" onclick="resultOfTest('sugar_refrac');" class="show-result">Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_sugar_refrac">
                <h3>
                    Sugar Refractometer stand alone indicators generally associated with:</h3>
                <button id="btn_sugar_refrac" onclick="javascript :print('sugar_refrac');" class="print display-none">
                    Print</button>
                <p>
                    Blood sugar and bio-energy.</p>
            </div>
            <div class="ideal equal" id="equal_sugar_refrac" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_sugar_refrac" style="display: none">
                <h3>
                    Generally associated with Low Sugar Refractometer:</h3>
                <p>
                    Hypoglycemia, out of gas, mood swings.</p>
                <h3>
                    Corresponding need for nutritional support for Low Sugar Refractometer:</h3>
                <p>
                    Super Drink, Mega B Complex 1000, Stress & Tonic Protector, Pancreatian, 28 super
                    Amino Acids, Super Oil Wheat Germ Oil, L-Arginine Complex, Chromium Picolonate,
                    super Endurance, Alfalfa Juice, L-Carnitine, Co-Enzyme Q-10, Ionic Vanadium, Chromium,
                    Germanium, Lithium, Gold, Selenium, Zinc.</p>
            </div>
            <div class="high" id="high_sugar_refrac" style="display: none">
                <h3>
                    Generally associated with High Sugar Refractometer:</h3>
                <p>
                    Metabolic syndrome, early stage diabetes, metabolic acidosis, over use of medications,
                    alcohol, sugar, trans fats, carbohydrates, devitalized food, over eating at one
                    meal then going too long to next meal, cellular oxygen deficiency, lack of exercise,
                    mal-absorption, excess body fat weight, syndrome X.</p>
                <h3>
                    Corresponding need for nutritional support for High Sugar Refractometer:</h3>
                <p>
                    Alpha Lipoic Acid, Golden Seal Root, Mega B Complex 1000, Co-Enzyme Q-10, Blood
                    Sugar & Energy Stabilizing Formula, L-Cystein, L-Carnitine, L-Argine, Endurall,
                    Ionic Chromium, Vanadium, Selenium, Pancreatin.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Avocado, apple, zucchini</p>
                <h3>
                    Support:</h3>
                <p>
                    Pancreas, adrenals. (Homeopathic Remedies: #29, #32, #43, #818, #829)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_conductivity">
            <!--Conductivity test starts here---->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Conductivity</h1>
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
                                <label id="i_score_conductivity">
                                    6</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">6- 11</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">6 - 16</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_conductivity" runat="server"></asp:TextBox>
                            <a href="#" onclick="resultOfTest('conductivity');" class="show-result">Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_conductivity">
                <h3>
                    Conductivity stand alone indicators generally associated with:</h3>
                <button id="btn_conductivity" onclick="javascript :print('conductivity');" class="print display-none">
                    Print</button>
                <p>
                    Toxicity, metabolic efficiency, cellular hydration, electrolyte, mineral gauge,
                    metabolic efficiency, body fat storing or burning indicator.</p>
            </div>
            <div class="ideal equal" id="equal_conductivity" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_conductivity" style="display: none">
                <h3>
                    Generally associated with Low Conductivity:</h3>
                <p>
                    Electrolyte imbalance, over hydration, mineral depletion.</p>
                <h3>
                    Corresponding need for nutritional support for Low Conductivity:</h3>
                <p>
                    Irish Moss/Kelp, Sea Vegetable Extract Tonic, Ionic Potassium, Magnesium, Calcium.</p>
            </div>
            <div class="high" id="high_conductivity" style="display: none">
                <h3>
                    Generally associated with High Conductivity:</h3>
                <p>
                    Sub-clinical dehydration, autointoxication, metabolic acidosis, lymphatic congestion,
                    cells holding toxic fluids, cellular oxygen deficiency, over use of medications,
                    birth control pills, antibiotics, aspirin type substances, coffee, soda, sugar,
                    devitalized foods, over eating, lack of exercise, excess body fat, mal-absorption,
                    constipation, mineral deficiency, electrolyte imbalance.</p>
                <h3>
                    Corresponding need for nutritional support for High Conductivity:</h3>
                <p>
                    Jug One Protocol, Green Drink, Bedtime Bowel Tonic.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Apple, zucchini, celery, parsley.</p>
                <h3>
                    Support:</h3>
                <p>
                    Posterior pituitary, kidneys, lymphatic system. (Homeopathic Remedies: #817, #823)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_nitrte_nitro">
            <!--Nitrate Nitrogen test starts here---->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Nitrate Nitrogen</h1>
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
                                <label id="i_score_nitrte_nitro">
                                    3</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">2 - 4</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">1 - 5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_nitrte_nitro" runat="server"></asp:TextBox>
                            <a href="#" onclick="resultOfTest('nitrte_nitro');" class="show-result">Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_nitrte_nitro">
                <h3>
                    Nitrate Nitrogen stand alone indicators generally associated with:</h3>
                <button id="btn_nitrte_nitro" onclick="javascript :print('nitrte_nitro');" class="print display-none">
                    Print</button>
                <p>
                    Protein utilization, food transition time, toxicity, general overall health status.</p>
            </div>
            <div class="ideal equal" id="equal_nitrte_nitro" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_nitrte_nitro" style="display: none">
                <h3>
                    Generally associated with Low Nitrate Nitrogen:</h3>
                <p>
                    Low is desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_nitrte_nitro" style="display: none">
                <h3>
                    Generally associated with High Nitrate Nitrogen:</h3>
                <p>
                    Highly toxic condition, mal-absorption, hypochlorhydria, dirty colon.</p>
                <h3>
                    Corresponding need for nutritional support for High Nitrate Nitrogen:</h3>
                <p>
                    Morning Health Drink, Jug One Protocol, Green Drink, Bedtime Bowel Tonic, Maxi Cleanse,
                    Fiber Max.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, fig, plum.</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, colon. (Homeopathic Remedies: #8, #10, #40, #63, #819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_ammo_nitrte">
            <!--Ammonical Nitrogen test starts here---->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Ammonical Nitrogen</h1>
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
                                <label id="i_score_ammo_nitrte">
                                    3</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">2 - 4</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">1 - 5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_ammo_nitrte" runat="server"></asp:TextBox>
                            <a href="#" onclick="resultOfTest('ammo_nitrte');" class="show-result">Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_ammo_nitrte">
                <h3>
                    Ammonical Nitrogen stand alone indicators generally associated with:</h3>
                <button id="btn_ammo_nitrte" onclick="javascript :print('ammo_nitrte');" class="print display-none">
                    Print</button>
                <p>
                    Amino acid digestion, food transition time, toxicity, general health status.</p>
            </div>
            <div class="ideal equal" id="equal_ammo_nitrte" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_ammo_nitrte" style="display: none">
                <h3>
                    Generally associated with Low Ammonical Nitrogen:</h3>
                <p>
                    Low is desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_ammo_nitrte" style="display: none">
                <h3>
                    Generally associated with High Ammonical Nitrogen:</h3>
                <p>
                    Poor protein to amino acid conversion, autointoxication, dirty colon.</p>
                <h3>
                    Corresponding need for nutritional support for High Ammonical Nitrogen:</h3>
                <p>
                    Jug One Protocol, Green Drink, Bedtime Bowel Tonic.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Lemon, spinach, kale, fig, plum</p>
                <h3>
                    Support:</h3>
                <p>
                    Digestion, liver, colon. (Homeopathic Remedies; #7, #8, #10, #820)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_indican">
            <!--Indican test starts here---->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Indican</h1>
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
                            <strong >
                                <label id="i_score_indican">
                                    300</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">300 - 600</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">250 - 750</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_indican" runat="server"></asp:TextBox>
                            <a href="#" onclick="resultOfTest('indican');" class="show-result">Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_indican">
                <h3>
                    Indican stand alone indicators generally associated with:</h3>
                <button id="btn_indican" onclick="javascript :print('indican');" class="print display-none">
                    Print</button>
                <p>
                    Colon health, bowel toxicity, efficient food transition, autointoxication.</p>
            </div>
            <div class="ideal equal" id="equal_indican" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_indican" style="display: none">
                <h3>
                    Generally associated with Low Indican:</h3>
                <p>
                    Low is desirable.
                </p>
            </div>
            <div class="high" id="high_indican" style="display: none">
                <h3>
                    Generally associated with High Indican:</h3>
                <p>
                    Colon toxicity, constipation (having less than a bowel movement for each meal that
                    you eat), toxins backing up into cells, immune system being over run, lymphatic
                    congestion, energy being diverted to neutralize toxins, bouts with physical and
                    mental fatigue, bloating, toxic fluid retention, excess body fat, autointoxication.</p>
                <h3>
                    Corresponding need for nutritional support for High Indican:</h3>
                <p>
                    Jug One Protocol, Jug Two Protocol, Morning Health Drink, Yogurt Health Drink, Green
                    Drink, Bedtime Bowel Tonic, Fiber Max, Maxi Cleanse.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, broccoli, cauliflower, apple.</p>
                <h3>
                    Support:</h3>
                <p>
                    Detoxification. (Homeopathic Remedies: #40, #63, #819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_crp">
            <!--C-Reactive Protein  test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            C-Reactive Protein</h1>
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
                                <label id="i_score_crp">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 3</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0 - 6</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_crp" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('crp');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_crp">
                <h3>
                    C-Reactive Protein stand alone indicators generally associated with:</h3>
                <button id="btn_crp" onclick="javascript :print('crp');return false;" class="print display-none">
                    Print</button>
                <p>
                    Inflammatory marker, after effect of the body, scavenger/clean up process, early
                    warning marker of cardio-vascular disease, peripheral vascular disease, cellular
                    breakdown, cancer, Alzheimer’s, early stage infection gauge</p>
            </div>
            <div class="ideal equal" id="equal_crp" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_crp" style="display: none">
                <h3>
                    Generally associated with Low C-Reactive Protein:</h3>
                <p>
                    Low is desirable. Zero is ideal</p>
            </div>
            <div class="high" id="high_crp" style="display: none">
                <h3>
                    Generally associated with High C-Reactive Protein:</h3>
                <p>
                    Inflammatory and/or degenerative condition, excess sugar, constipation, cellular
                    oxygen deficiency, toxicity, diabetes, mellitus, hypothyroidism, obstruction, pancreatitis,
                    pregnancy, liver malfunction, early warning of cardio-vascular disease, future stroke,
                    rheumatoid arthritis, cancer, T.B., pneumonia, SLE, Alzheimer’s, low grade infection,
                    colon toxicity, bacteria infection, fungal condition, over use of medications, trapped
                    lymphatic toxins</p>
                <h3>
                    Corresponding need for nutritional support for High C-Reactive Protein:</h3>
                <p>
                    Enzyme Therapy, L-Carnitine, L-Arginine Complex, Hawthorn Berry, Capsicum, Alpha
                    Lipoic Acid, Co-Enzyme Q-10, Bromoline, Omega 3/6 Essential Fatty Acids, Wheat Germ
                    Oil, Vitamin E Complex, Brain Flush, Lipotropic Factors, Phasphadtyl Choline, Duo
                    C Complex, Green Drink, Green Tea Extract, Immune Power Formula, N-Acetyl Cysteine,
                    Turmeric.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, avocado, mushroom, broccoli, cauliflower</p>
                <h3>
                    Support:</h3>
                <p>
                    Cardio-vascular system, immune system, brain. (Homeopathic Remedies: #66, #807,
                    #814, #825)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_homocysteine">
            <!--Homocysteine test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Homocysteine</h1>
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
                                <label id="i_score_homocysteine">
                                    3.9</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 7</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">4.0 - 15.4</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_homocysteine" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('homocysteine');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_homocysteine">
                <h3>
                    Homocysteine stand alone indicators generally associated with:</h3>
                <button id="btn_homocysteine" onclick="javascript :print('homocysteine');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Early warning stroke, cardio-vascular disease, cancer, Alzheimer’s.</p>
            </div>
            <div class="ideal equal" id="equal_homocysteine" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_homocysteine" style="display: none">
                <h3>
                    Generally associated with Low Homocysteine:</h3>
                <p>
                    Mal-absorption syndrome, deficiencies in enzymes and proteins, homeopathic remedies:
                    #18, #29, #32, #805</p>
                <h3>
                    Corresponding need for nutritional support for Low Homocysteine:</h3>
                <p>
                    Cysteine, Methionine, L-Carnitine, L-Glutamine, L-Arginine.</p>
            </div>
            <div class="high" id="high_homocysteine" style="display: none">
                <h3>
                    Generally associated with High Homocysteine:</h3>
                <p>
                    Inflammation, 100 times more predictive than cholesterol for cardio-vascular disease,
                    lack of fitness, early warnings of stroke, cancer, Alzheimer’s, depression, dementia,
                    arterial stiffness, repressed anger.</p>
                <h3>
                    Corresponding need for nutritional support for High Homocysteine:</h3>
                <p>
                    Vitamin B Complex, Vitamin B-12, Co-Enzyme Q-10, L-Arginine, Zinc, DMG, L-Carnitine,
                    Folic Acid, Pyridoxine, Enzymes Therapy</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Super Nutritional Drip, Naturopathic Detoxification, Nutritional Saturation
                    Therapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, zucchini, spinach, avocado, mushroom.</p>
                <h3>
                    Support:</h3>
                <p>
                    Cardio-vascular system, brain. (Homeopathic Remedies: #43, #812, #814, #825)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_lactic">
            <!--Lactic Acid test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Lactic Acid</h1>
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
                                <label id="i_score_lactic">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 9.5</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">4.5 - 1.8</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_lactic" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('lactic');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_lactic">
                <h3>
                    Lactic Acid stand alone indicators generally associated with:</h3>
                <button id="btn_lactic" onclick="javascript :print('lactic');return false;" class="print display-none">
                    Print</button>
                <p>
                    Level of oxygen at cell level.</p>
            </div>
            <div class="ideal equal" id="equal_lactic" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_lactic" style="display: none">
                <h3>
                    Generally associated with Low Lactic Acid:</h3>
                <p>
                    Low is desirable. Zero is ideal</p>
            </div>
            <div class="high" id="high_lactic" style="display: none">
                <h3>
                    Generally associated with High Lactic Acid:</h3>
                <p>
                    Cellular oxygen deficiency, precursor to metabolic acidosis, the environment necessary
                    for Candida, fungal, yeast, viral parasite, bacteria infections, autointoxication,
                    chronic fatigue syndrome, muscle fatigue, low fitness level, slow repair, sore muscles,
                    sluggish metabolism, excess body fat accumulation, mal-absorption, skin disorders,
                    brain fog, forgetfulness, inability to cooperate, broken brain disorders, premature
                    aging, early warning of degenerative disease, stroke, heart disease, immune system
                    vulnerability, low tolerance to stress, depression disorientation, exhaustion, pre
                    cancer warning</p>
                <h3>
                    Corresponding need for nutritional support for High Lactic Acid:</h3>
                <p>
                    Green Drink, L-Arginine Complex, L-Carnitine, Co-Enzyme Q-10, Vitamin E Complex,
                    Wheat Germ Oil</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, zucchini, spinach</p>
                <h3>
                    Support:</h3>
                <p>
                    Lungs, cardio-vascular, muscles. (Homeopathic Remedies: #825, #826)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_cortisol">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Cortisol</h1>
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
                                <label id="i_score_cortisol">
                                    12.5</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">7.2 - 17.2</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">4.3 - 22.4</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_cortisol" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('cortisol');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_cortisol">
                <h3>
                    Cortisol stand alone indicators generally associated with:</h3>
                <button id="btn_cortisol" onclick="javascript :print('cortisol');return false;" class="print display-none">
                    Print</button>
                <p>
                    Stress indicator, the effects of the mind and emotions are having on the organs,
                    nerves, cells and immune system.</p>
            </div>
            <div class="ideal equal" id="equal_cortisol" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_cortisol" style="display: none">
                <h3>
                    Generally associated with Low Cortisol:</h3>
                <p>
                    Hypoglycemia, hypotension, out of gas, adrenal exhaustion, chronic fatigue syndrome,
                    connective tissue disease, depression, hypothyroid, allergies, suppressed immune
                    system, loss of strength, psoriasis, nerve burn out, reduced work capacity, eczema,
                    premature aging, anxiety, nervous exhaustion, rheumatoid and/or arthritic type conditions,
                    hypopituitaryism, human growth hormone deficiency, multiple nutrition deficiency
                    syndrome.</p>
                <h3>
                    Corresponding need for nutritional support for Low Cortisol:</h3>
                <p>
                    Adrenal Hormone Restoration, Royal Queen Bee Jelly, Macho Herba, Bio-Identical Hormone
                    Restoration, Human Growth Hormone Restoration Therapy</p>
            </div>
            <div class="high" id="high_cortisol" style="display: none">
                <h3>
                    Generally associated with High Cortisol:</h3>
                <p>
                    Obesity, cancer, hypertension, deficiencies in magnesium, vitamin C, citrus bio-flavanoids,
                    B complex, pantothemic acid, adrenal exhaustion, nervous breakdown, stressed out
                    thyroid problems, nerves and body in a state of high alert, excess cortisol level
                    due to worry, anxiety, stress, anger, fear, trauma, carcinoma, high blood pressure,
                    high cholesterol, early warning heart disease, stroke, immune breakdown, G.I. type
                    diseases.</p>
                <h3>
                    Corresponding need for nutritional support for High Cortisol:</h3>
                <p>
                    Nerve Builder, Mega B Complex 1000, Duo C Complex, Stress & Tonic Protector, Adrenal
                    Hormone Restoration Factors, Pineal Hormone Restoration Factors, Cal/Mag, Hypericum,
                    Valerian Root.</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, tomato, zucchini.</p>
                <h3>
                    Support:</h3>
                <p>
                    Nerves, brain, immune system. (Homeopathic Remedies: #17, #807, #812, #814)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_cortisoldhea">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Cortisol/ DHEA Ratio</h1>
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
                                <label id="i_score_cortisoldhea">
                                    300</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">188 - 433.4</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">659 - 5559</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_cortisoldhea" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('cortisoldhea');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_cortisoldhea">
                <h3>
                    Cortisol DHEA Ratio stand alone indicators generally associated with:</h3>
                <button id="btn_cortisoldhea" onclick="javascript :print('cortisoldhea');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Stress, Anxiety, weight gain, exaustion, fatigue, low libido.</p>
            </div>
            <div class="ideal equal" id="equal_cortisoldhea" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_cortisoldhea" style="display: none">
                <h3>
                    Generally associated with Low Cortisol DHEA Ratio:</h3>
                <p>
                    Anxiety</p>
            </div>
            <div class="high" id="high_cortisoldhea" style="display: none">
                <h3>
                    Generally associated with High Cortisol DHEA Ratio:</h3>
                <p>
                    Wiped out</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_insuln">
            <!--Insulin test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Insulin</h1>
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
                                <label id="i_score_insuln">
                                    3</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 6</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">6 - 27</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_insuln" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('insuln');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_insuln">
                <h3>
                    Insulin stand alone indicators generally associated with:</h3>
                <button id="btn_insuln" onclick="javascript :print('insuln');return false;" class="print display-none">
                    Print</button>
                <p>
                    Insulin gauge, diabetes, hypoglycemia and metabolic syndrome, body fat weight gain</p>
            </div>
            <div class="ideal equal" id="equal_insuln" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_insuln" style="display: none">
                <h3>
                    Generally associated with Low Insulin:</h3>
                <p>
                    Pancreatic insufficiency, hypopituitaryism, human growth hormone (HGH) deficiency</p>
                <h3>
                    Corresponding need for nutritional support for Low Insulin:</h3>
                <p>
                    L-Glutamine, L-Arginine, L-Carnitine, Pancreatin, Enzyme Therapy, Mega B complex
                    1000, Enzyme Therapy, Super Oil
                </p>
            </div>
            <div class="high" id="high_insuln" style="display: none">
                <h3>
                    Generally associated with High Insulin:</h3>
                <p>
                    Insulin resistance, diabetes, stress tension, anxiety, excess sugar, junk foods,
                    carbohydrates, medications, alcohol, obesity, lack of fitness, liver sluggishness,
                    kidney disorder, early heart disease warning, hypertension and dyslipidema.</p>
                <h3>
                    Corresponding need for nutritional support for High Insulin:</h3>
                <p>
                    Mega B Complex 1000, Golden Seal Root, Gymena Sylvestre, RNA/DNA, Blood Sugar and
                    Energy Stabilizer, Endurall, G.T.F. Factors, Super Food Drink, Licorice Root, Ginseng,
                    Green Drink, 28 Super Amino Acids, L-Arginine Complex, Pancreatic, Adrenal Hormone
                    Restoration Factors, Queen Bee Jelly, Alpha Lipoic Acid, Co-Enzyme Q-10, Thiamine,
                    Magnesium, Potassium, Chromium.</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Bio-Identical Hormone Restoration Therapy, I.V. Alpha Lipoic Acid Therapy, Fitness
                    Medicine, Naturopathic Detoxification Ozone Therapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Zucchini, kale, broccoli, cauliflower.</p>
                <h3>
                    Support:</h3>
                <p>
                    Pancreas, adrenals. (Homeopathic Remedies; #818, #829)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_estrogen">
            <!--estrogen test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Estrogen</h1>
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
                                <label id="i_score_estrogen">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_estrogen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('estrogen');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_estrogen">
                <h3>
                    Estrogen stand alone indicators generally associated with:</h3>
                <button id="btn_estrogen" onclick="javascript :print('estrogen');return false;" class="print display-none">
                    Print</button>
                <p>
                </p>
            </div>
            <div class="ideal equal" id="equal_estrogen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_estrogen" style="display: none">
                <h3>
                    Generally associated with Low estrogen:</h3>
                <p>
                </p>
            </div>
            <div class="high" id="high_estrogen" style="display: none">
                <h3>
                    Generally associated with High estrogen:</h3>
                <p>
                </p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_psa_men">
            <!--PSA - Men test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            PSA - Men</h1>
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
                                <label id="i_score_psa_men">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">2.9</strong>
                        </td>
                        <td width="25%">
                          <strong class="red">4.0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_psa_men" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('psa_men');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_psa_men">
                <h3>
                    PSA stand alone indicators generally associated with:</h3>
                <button id="btn_psa_men" onclick="javascript :print('psa_men');return false;" class="print display-none">
                    Print</button>
                <p>
                    Prostate health</p>
            </div>
            <div class="ideal equal" id="equal_psa_men" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_psa_men" style="display: none">
                <h3>
                    Generally associated with Low PSA:</h3>
                <p>
                    Low is desirable. Zero is ideal</p>
            </div>
            <div class="high" id="high_psa_men" style="display: none">
                <h3>
                    Generally associated with High PSA:</h3>
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
        <div id="div_testosterone">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Testosterone</h1>
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
                            <strong class="red">
                                <label id="i_score_testosterone">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_testosterone" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('testosterone');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_testosterone">
                <h3>
                    Testosterone stand alone indicators generally associated with:</h3>
                <button id="btn_testosterone" onclick="javascript :print('testosterone');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                </p>
            </div>
            <div class="ideal equal" id="equal_testosterone" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_testosterone" style="display: none">
                <h3>
                    Generally associated with Low Testosterone:</h3>
                <p>
                </p>
            </div>
            <div class="high" id="high_testosterone" style="display: none">
                <h3>
                    Generally associated with High Testosterone:</h3>
                <p>
                </p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_progestrone_men">
            <!--Progesterone test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Men Progesterone
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
                                <label id="i_score_progestrone_men">
                                    0.42</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0.32 - 0.52</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0.10 - 0.84</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_progestrone_men" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('progestrone_men');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_progestrone_men">
                <h3>
                    Men Progesterone stand alone indicators generally associated with:</h3>
                <button id="btn_progestrone_men" onclick="javascript :print('progestrone_men');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                </p>
            </div>
            <div class="ideal equal" id="equal_progestrone_men" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_progestrone_men" style="display: none">
                <h3>
                    Generally associated with Low Men Progesterone:</h3>
                <p>
                </p>
            </div>
            <div class="high" id="high_progestrone_men" style="display: none">
                <h3>
                    Generally associated with High Men Progesterone:</h3>
                <p>
                </p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_progestrone_women">
            <!--Progesterone test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Women Progesterone</h1>
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
                                <label id="i_score_progestrone_women">
                                    0.42</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0.32 - 0.52</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0.10 - 0.84</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_progestrone_women" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('progestrone_women');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_progestrone_women">
                <h3>
                    Women Progesterone stand alone indicators generally associated with:</h3>
                <button id="btn_progestrone_women" onclick="javascript :print('progestrone_women');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                </p>
            </div>
            <div class="ideal equal" id="equal_progestrone_women" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_progestrone_women" style="display: none">
                <h3>
                    Generally associated with Low Women Progesterone:</h3>
                <p>
                </p>
            </div>
            <div class="high" id="high_progestrone_women" style="display: none">
                <h3>
                    Generally associated with High Progesterone women:</h3>
                <p>
                </p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_fibrinogen">
            <!--Fibrinogen test starts here-->
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
                                <label id="i_score_fibrinogen">
                                    250</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">200 - 300</strong>
                        </td>
                        <td width="25%">
                          <strong class="red"> 200 - 400</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_fibrinogen" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('fibrinogen');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_fibrinogen">
                <h3>
                    Fibrinogen stand alone indicators generally associated with:</h3>
                <button id="btn_fibrinogen" onclick="javascript :print('fibrinogen');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Inflammatory marking, early cardio-vascular disease and/or stroke warning, early
                    Alzheimer’s warning</p>
            </div>
            <div class="ideal equal" id="equal_fibrinogen" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_fibrinogen" style="display: none">
                <h3>
                    Generally associated with Low Fibrinogen:</h3>
                <p>
                    Multiple nutritional deficiencies syndrome, liver sluggishness, mal-absorption syndrome,
                    efficiency in enzymes, junk food habit, excess sugar, hypochlorhydria, spontaneous
                    bleeding, early heart disease warning, excess aspirin, blood thinners, medication</p>
                <h3>
                    Corresponding need for nutritional support for Low Fibrinogen:</h3>
                <p>
                    Beta Carotene, Mega B Complex 1000, Stress & Toxin Protector, Duo C Complex, 57
                    Super Minerals, Vitamin D-3 Complex, Green Drink, Jug One Protocol</p>
            </div>
            <div class="high" id="high_fibrinogen" style="display: none">
                <h3>
                    Generally associated with High Fibrinogen:</h3>
                <p>
                    Excess blood sledging, unexplained excess body fat weight gain, underlying inflammation,
                    leaky gut, intestinal bacterial over growth, bowel toxicity, slow food transition,
                    acute infection, premature aging, under performing pituitary, human growth hormone
                    deficiency, trauma, tissue damage, body/mind physiological stress indicator, heart
                    disease, stroke, Alzheimer’s early warning</p>
                <h3>
                    Corresponding need for nutritional support for High Fibrinogen:</h3>
                <p>
                    L-Carnitine, L-Arginine, I-Thyroid, Co-Enzyme Q-10, Super Oil, Borage Oil, Vitamin
                    E Complex, Alpha Lipoic Acid, Duo C Complex, Yogurt Health Drink, Mega B Complex
                    1000, Stress & Toxin Protector</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, zucchini, tomato, mushroom, peas</p>
                <h3>
                    Support:</h3>
                <p>
                    Gut. (Homeopathic Remedies: #7, #8)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_ca_125">
            <!--Carcino Antigen – (ca_125)  test starts here-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Carcino Antigen – (CA-125)
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
                                <label id="i_score_ca_125">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 10</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0 - 20</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_ca_125" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('ca_125');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_ca_125">
                <h3>
                    CA-125 stand alone indicators generally associated with:</h3>
                <button id="btn_ca_125" onclick="javascript :print('ca_125');return false;" class="print display-none">
                    Print</button>
                <p>
                    Pre-ovarian cancer screening, early stage immune competency</p>
            </div>
            <div class="ideal equal" id="equal_ca_125" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_ca_125" style="display: none">
                <h3>
                    Generally associated with LowCA-125:</h3>
                <p>
                    Low is desirable. Zero is ideal</p>
            </div>
            <div class="high" id="high_ca_125" style="display: none">
                <h3>
                    Generally associated with High CA-125:</h3>
                <p>
                    Cancer cells beginning to over run the immune system, pre-ovarian tumor warning,
                    highly toxic condition neutralizing the body’s ability to contain and destroy all
                    the cancer cells</p>
                <h3>
                    Corresponding need for nutritional support for High CA-125:</h3>
                <p>
                    Intensive naturopathic detoxification and nutritional saturation therapy is indicated</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Peas, celery, tomato, mushroom, garlic</p>
                <h3>
                    Support:</h3>
                <p>
                    Immune system. (Homeopathic Remedies: #4, #20, #807)</p>
            </div>
        </div>
    </div>
    </form>

    <script type="text/javascript">
        //ShowResult('salive_ph');
        ShowResult('sugar_refrac');
        ShowResult('conductivity');
        ShowResult('nitrte_nitro');
        ShowResult('ammo_nitrte');
        ShowResult('indican');
        ShowResult('crp');
        ShowResult('homocysteine');
        ShowResult('lactic');
        ShowResult('cortisol');
        ShowResult('cortisoldhea');
        ShowResult('insuln');
        ShowResult('estrogen');
        ShowResult('psa_men');
        ShowResult('testosterone');
        ShowResult('progestrone_men');
        ShowResult('progestrone_women');
        ShowResult('fibrinogen');
        ShowResult('ca_125');
    </script>

</body>
</html>
