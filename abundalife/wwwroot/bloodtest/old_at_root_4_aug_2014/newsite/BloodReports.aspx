<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BloodReports.aspx.cs" Inherits="abundalife1001.Reports" %>

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
                Date of Blood Draw:&nbsp;<asp:Label ID="lblDate" runat="server"></asp:Label>
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
                        Nutrabalance Diagnostic Laboratory Blood Analysis Results
                    </td>
                </tr>
            </table>
                <div class="profile-container-blood">
            <p>
                True science is based on cause and effect. This report is based on the science of
                symptomatology which connects your personal symptoms and present state of health
                to nutritional deficiencies. We believe that our Creator designed the human body
                for high level wellness. Every bodily symptom can be traced to a nutritional deficiency
                and every named medical condition is the end result of a long term nutritional deficiency,
                either ignored or worse suppressed with a drug.</p>
            <p>
                Abunda Life's 21st century computerized symptom analysis is a time tested, proven
                and efficacious individual nutritional assessment and educational tool for both
                the patient and busy doctor. It was designed as a stand alone presentation of your
                personal nutritional state even if laboratory diagnostics was not available.</p>
            <p>
                The Abunda Life clinic's total evaluation includes comprehensive laboratory diagnostics
                of blood, urine, saliva, hair and iridology all cross correlated with the naturopathic
                doctors 1001 symptom questions. All these difficult tests are incorporated into
                one master program based on your individual bio-chemistry.</p>
            <p>
                The American Medical Association has stated that 80% of all doctors office visits
                in the U.S. are for complaints and conditions for which there is no valid or effective
                medical treatment. We believe that it is these vague medically non-treatable conditions
                that can best be served with nutritional and naturopathic care.</p>
            <p>
                Natural food based nutritional saturation therapy and other naturopathic modalities
                over the last six decades have proven to be a very effective, sensible and cost
                efficient approach to health care when compared to the orthodox drub medicine model.
                Best of all, unlike pharmaceuticals they are 100% safe, zero deaths have been attributed
                to national food based nutritional therapy. This type of evaluation is able to accurately
                detect and address nutritional deficiencies at their very earliest inception, long
                before they develop into named medical conditions.</p>
            <p>
                Our true scientists tell us that most of our modern day diseases are preventable.
                Degenerate diseases including sudden death heart attack, crippling stroke, life
                debilitation, chronic fatigue syndrome, terrifying Alzheimer's and cancer take many
                years, even decades to develop into a full blown diagnosis.</p>
            <p>
                Abunda Life's naturopathic and nutritional evaluation services enable you to uncover
                your exact nutrition, metabolic and hormonal deficiencies and propensities far in
                advance of serious medical conditions, long before the enemy can gain a foothold.</p>
            <p>
                Your personal report of finding represents the most comprehensive program for nutritional
                purposes developed to date. The program is based on the latest scientific break
                through in laboratory diagnosis all cross correlated with your personal input of
                over 4,000 potential symptoms.
            </p>
            <p>
                Abunda Life's transcendental goal in developing this program is to guide the sincere
                subscriber of the Abunda Life Natural Healing Philosophy to build an indestructible
                immune system, achieve and maintain an ideal body fat weight, develop indefatigable
                physical and mental energy, control stress, become substance free and prevent rapid
                and premature aging with its related degenerative diseases that our true scientists
                tell us are preventable.</p>
            <p>
                We believe that nutritional optimization can help the subscriber of the Abunda Life
                Natural Healing Philosophy achieves this goal.</p>
        </div>
        </div>
    
        <div id="div_glucose">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Glucose</h1>
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
                            <strong class="blue">
                                <label id="i_score_glucose">
                                    90</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">81.9 - 98.1</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">75 - 105</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_glucose" runat="server"></asp:TextBox>
                            <%--   <asp:TextBox ID="u_score_glucose" runat="server" ></asp:TextBox> id="u_score_glucose" />--%>
                            <a href="javascript:void(0);" onclick="resultOfTest('glucose');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_glucose">
                <h3>
                    Glucose stand alone indicators generally associated with:</h3>
                <button id="btn_glucose" onclick="javascript :print('glucose');return false;" class="print display-none">
                    Print</button>
                <p>
                    Pancreatic function, cellular fuel required for physical and mental activity, blood
                    sugar balance, liver efficiency, fuel gauge of every cell of the brain and body,
                    insulin/glucagon hormone balance, even flow of cellular energy, efficient bio-energy
                    flow to every bodily system.</p>
            </div>
            <div class="ideal equal" id="equal_glucose" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_glucose" style="display: none">
                <h3>
                    Generally associated with Low Glucose:</h3>
                <p>
                    General weakness, hypoglycemia, out of fuel, hypothyroid, sluggish liver, adrenal
                    exhaustion, human growth hormone deficiency, nerve burn out, mal-absorption, stresse
                    overwhelm, depression, irritation, personality change, male/female hormonal deficiency,
                    over sensitive, mood swings, anger, endocrine deficiency, hypo-pituitary, enzyme
                    deficiency, insulin overdose, carbohydrate over load, skipping meals, faulty life
                    style, anxiety, nervousness, excess sugar, coffee, alcohol and medications, Mega
                    B Complex deficiency, panathenic acid deficiency, protein shortage, impaired digestion.</p>
                <h3>
                    Corresponding need for nutritional support for Low Glucose:</h3>
                <p>
                    Pituitary Support, Amino Acids, Super Food, Stress & Toxin Protector, L-Carnitine.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Blood sugar Control Formula, Vanadium, Acidosis Correction Formula.</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 29, # 32, # 808, # 829</p>
                <h3>
                    Botanical healing Tea Formulations:</h3>
                <p>
                    Hypoglycemia formula, Energy Tea, Amino Acid Creamed Shiitake, Amino Acid Creamed
                    Zucchini, Amino Acid Creamed Peas, Blood Sugar and Energy Stabilizer.</p>
                <h3>
                    Naturopathic food medicine Formulations:</h3>
                <p>
                    Super Food Drink, Green Drink, Bedtime Bowel Tonic, Super Oil, Blood Sugar and Energy
                    Stabilizing Powder, 87 Sea Minerals.</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Mega B Complex, Licorice Root, Blueberry, Royal Queen Bee Jelly, Adrenal Hormone
                    Restoration Factors, Duo C Complex, Red Blood Cell Builder, RNA/DNA, Endurall, Pancratin
                    Complexs, Ultra E, Resveratrol, L-Arginine, Macho Herba/Fema Herba, Blood Sugar
                    and Cortisol Control.</p>
                <h3>
                    Clinical Treatments Indicated:
                </h3>
                <p>
                    I.V. Super Nutritional, Colon Hydrotherapy</p>
            </div>
            <div class="high" id="high_glucose" style="display: none">
                <h3>
                    Generally associated with High Glucose:</h3>
                <p>
                    Diabetes, Metabolic Syndrome, kidney toxicity, lung toxicity, heart dysfunction,
                    insulin resistance, thyroid dysfunction, enzyme deficiency, free radical pathology,
                    pregnancy, over use of medications, alcohol, sugar and devitalized foods, mal-nutrition,
                    overeating, multiple nutritional deficiencies, acute physical and/or emotional stress,
                    thiamine deficiency, pancreatic insufficiency, liver disorder, pyridoxine deficiency,
                    glucose flooding, low ignition, lack of exercise, decreased ability to utilize minerals,
                    increased oxidation and breakdown of healthy tissue, loss of muscle, increase in
                    fat.</p>
                <h3>
                    Corresponding need for nutritional support for High Glucose:</h3>
                <p>
                    Spirolina, Ginseng, Thiamine.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Diabetic Prevention Formula, chromium, Germanium, Vanadium.</p>
                <h3>
                    Homeopathic Remedies Number:
                </h3>
                <p>
                    # 43, # 17/18, # 12, # 14, # 20</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Pancreas Formula, Liver Detox Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Blood Sugar and Energy Stabilizer, Garden V, Amino Acid Creamed Zucchini, Super
                    Food, Super Oil, Green Drink, Bedtime Bowel Tonic, Yogurt Health Drink</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Golden Seal Root, Mega B Complex 1000, RNA/DNA, Alpha Lipoic Acid, Endurall, Chromium
                    Picolonate, Macho Herba/Fema Herba, Bearberry, Oregon Grape, L-Arginine, N-Acetyl
                    Cysteine, Co-Enzyme Q 10 with Omega 3, Phosphadtyl Choline, Lipotropic Factor, Berberine,
                    Blood Sugar and Cortisol Control Factor, Duo C Complex, Organic Chlorella, Blueberry,
                    Adrenal Restoration, Fat to Energy.
                </p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Alpha Lipoic Acid Drip, Colon Hydrotherapy, Exercise Induced Oxygen Saturation
                    Therapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Apple, spinach, avocado, zucchini.</p>
                <h3>
                    Support:</h3>
                <p>
                    Pancreas, liver, colon, pituitary, adrenal, thyroid, (Homeopathic Remedies, # 10,
                    # 29, # 32, # 43, # 818)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_bun">
            <!-- Bun Test Started -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Blood Urea Nitrogen – (Bun)</h1>
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
                            <strong class="blue">
                                <label id="i_score_bun">
                                    12.0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">10.5 - 16.5</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">7 - 25</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_bun" runat="server"></asp:TextBox>
                            <a href="javascript:void(0)" onclick="resultOfTest('bun');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_bun">
                <h3>
                    Bun stand alone indicators generally associated with:</h3>
                <button id="btn_bun" onclick="javascript :print('bun');return false;" class="print display-none">
                    Print</button>
                <p>
                    Liver function, colon toxicity, protein metabolism, kidney filtration gauge, colon
                    efficiency, nitrogen waste disposal and nitrogen waste disposal and liver efficiency
                    gauge, excess cellular breakdown, excess stress, shock, dehydration.</p>
            </div>
            <div class="ideal equal" id="equal_bun" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_bun" style="display: none">
                <h3>
                    Generally associated with Low Bun:</h3>
                <p>
                    Malnutrition, multiple nutritional deficiencies, celiac disease, drug residue, immune
                    defense deficiency, adrenal depletion, impaired absorption, liver sluggishness,
                    colon toxicity, thyroid under performance, posterior pituitary under performance,
                    human growth hormone deficiency, iodine deficiency, hypochlorhydria, enzyme deficiency,
                    not enough raw vegetables, protein and/or amino acid deficiency, deficiencies in
                    Vitamin E, A, fiber, L-Cysteine, Omega 3and 6 Essential Fatty Acids.</p>
                <h3>
                    Corresponding need for nutritional support for Low Bun:</h3>
                <p>
                    Immune Power Formula, L-Cystine, Absorption Enhancer, Duo C Complex, L-Carnitine,
                    Magnesium, Cranberry Complex, Fiber Max, Maxi Cleanse, Jug One Protocol, Jug Two
                    Protocol, Bedtime Bowel Tonic.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liver Support Formula, Bladder/Kidney, Formula, Toxicity Correction Formula, Iodine,
                    Sulfur.</p>
                <h3>
                    Homeopathic Remedies Number:
                </h3>
                <p>
                    # 5, # 17/18, # 823</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Spinach Juice with Goat’s Whey, liver Detoxification, Kidney Cleanser, Amino Acid
                    Creamed Beets.</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Absorption Enhancer, Milk Thistle, Dandelion Root, I-Thyroid, Super Juice 22 Vegetables,
                    Liver Detox, Cranberry Complex, Bearberry, Cats Claws, Corn Silk, Blueberry.
                </p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Ozone Infused Far Infrared Detoxification Sauna, Ionic Foot
                    Detox Bath</p>
            </div>
            <div class="high" id="high_bun" style="display: none">
                <h3>
                    Generally associated with High Bun:</h3>
                <p>
                    G.I. tract inflammation, autointoxication, liver dysfunction, prostate hyperthyroid,
                    kidney stones, urinary tract obstruction, muscle loss, stress, dehydration, colon
                    toxicity, protein mal-absorption, overeating, toxins building up faster than the
                    kidney clearance, cellular oxygen deficiency, bio-organic sodium deficiency, hypochlorhydria,
                    excess medications and antibiotics, nutritionally depleted foods, infection, liver
                    overwhelmed with toxins form all bodily glands and organs, dehydration, diabetes,
                    deficiencies in organic sulfur, L-Methonine, L-Lysine, L-Cystine</p>
                <h3>
                    Corresponding need for nutritional support for High Bun:</h3>
                <p>
                    Fiber Max, Maxi Cleanse, Jug One Protocol, Jug Two Protocol.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Enzymes, Bio-Ox, Aloe Vera Formula, Sulfur, Germanium, Toxicity Correction.</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 2, # 4, # 10</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Kidney Flush Formula, Detox Formula, Liver Detox Formula.</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Morning Health Drink, Yogurt Health Drink, Super Drink, Green Drink, Bedtime Bowel
                    Tonic, Amino Acid Creamed Asparagus, Amino Acid Creamed Beets, Kidney Cleanser.</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Chlorophyll Concentrate, G.I. Tract Stimulator, Multi Zinc, Absorption Enhancer,
                    Corn Silk</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Hyperbaric Oxygen Therapy, Supervised Naturopathic Detoxification</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Parsley, celery, beet, spinach, fig, cranberry</p>
                <h3>
                    Support:</h3>
                <p>
                    Digestion, colon, liver, kidneys, stomach, nerves. (Homeopathic Remedies: #8, #60,
                    # 823)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_creatinine">
            <!-- Creatinine Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Creatinine</h1>
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
                            <strong class="blue">
                                <label id="i_score_creatinine">
                                    1.0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">.9 - 1.1</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">.7 - 1.2</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_creatinine" runat="server"></asp:TextBox>
                            <%--   <asp:TextBox ID="u_score_glucose" runat="server" ></asp:TextBox> id="u_score_creatinine" />--%>
                            <a href="javascrip:void(0)" onclick="resultOfTest('creatinine');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_creatinine">
                <h3>
                    Creatinine stand alone indicators generally associated with:</h3>
                <button id="btn_creatinine" onclick="javascript :print('creatinine');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Kidney’s ability to efficiently filter creatinine and other toxins from the blood.
                    Kidney clearance of metabolic by-products. Creatinine is the end result of energy
                    production and the by-product in muscle breakdown and kidney function. Muscle construction,
                    muscle breakdown/repair, cellular degeneration/regeneration, deficiencies in paradoxin,
                    phosphadtyl choline, omega 3 and 6 essential fatty acids, Co-Enzyme Q-10, hydrochlorhydria,
                    muscle wasting, atrophy, toxic condition, sluggish waste matter blocking muscle
                    tissue repair</p>
            </div>
            <div class="ideal equal" id="equal_creatinine" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_creatinine" style="display: none">
                <h3>
                    Generally associated with Low Creatinine:</h3>
                <p>
                    Loss of muscle, liver sluggishness, mal-nutrition, dehydration, excess stress, low
                    energy levels, lack of vigorous exercise, body fat gain, kidney and urinary tract
                    problems, amino acid, protein and enzyme deficiency, N-Acetyl Cysteine deficiency,
                    lung problems, heart congestion.</p>
                <h3>
                    Corresponding need for nutritional support for Low Creatinine:</h3>
                <p>
                    L-Arginine, L-Carnitine, Creatin, Super Green, Duo C Complex, Cats Claw, Spirolina,
                    amino Acids, Protein, Super Oil, Jug One Protocol, Green Drink, Morning Health Drink,
                    Bedtime Bowel Tonic, Yogurt Health Drink.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liver Support Formula, Bladder/Kidney, Formula, Toxicity Correction Formula, Iodine,
                    Sulfur.</p>
                <h3>
                    Homeopathic Remedies Number:
                </h3>
                <p>
                    # 5, # 17/18, # 823</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Spinach Juice with Goat’s Whey, liver Detoxification, Kidney Cleanser, Amino Acid
                    Creamed Beets.</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Absorption Enhancer, Milk Thistle, Dandelion Root, I-Thyroid, Super Juice 22 Vegetables,
                    Liver Detox, Cranberry Complex, Bearberry, Cats Claws, Corn Silk, Blueberry.
                </p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Ozone Infused Far Infrared Detoxification Sauna, Ionic Foot
                    Detox Bath</p>
            </div>
            <div class="high" id="high_creatinine" style="display: none">
                <h3>
                    Generally associated with High Bun:</h3>
                <p>
                    G.I. tract inflammation, autointoxication, liver dysfunction, prostate hyperthyroid,
                    kidney stones, urinary tract obstruction, muscle loss, stress, dehydration, colon
                    toxicity, protein mal-absorption, overeating, toxins building up faster than the
                    kidney clearance, cellular oxygen deficiency, bio-organic sodium deficiency, hypochlorhydria,
                    excess medications and antibiotics, nutritionally depleted foods, infection, liver
                    overwhelmed with toxins form all bodily glands and organs, dehydration, diabetes,
                    deficiencies in organic sulfur, L-Methonine, L-Lysine, L-Cystine</p>
                <h3>
                    Corresponding need for nutritional support for High Bun:</h3>
                <p>
                    Fiber Max, Maxi Cleanse, Jug One Protocol, Jug Two Protocol.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Enzymes, Bio-Ox, Aloe Vera Formula, Sulfur, Germanium, Toxicity Correction.</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 2, # 4, # 10</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Kidney Flush Formula, Detox Formula, Liver Detox Formula.</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Morning Health Drink, Yogurt Health Drink, Super Drink, Green Drink, Bedtime Bowel
                    Tonic, Amino Acid Creamed Asparagus, Amino Acid Creamed Beets, Kidney Cleanser.</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Chlorophyll Concentrate, G.I. Tract Stimulator, Multi Zinc, Absorption Enhancer,
                    Corn Silk</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Hyperbaric Oxygen Therapy, Supervised Naturopathic Detoxification</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Parsley, celery, beet, spinach, fig, cranberry</p>
                <h3>
                    Support:</h3>
                <p>
                    Digestion, colon, liver, kidneys, stomach, nerves. (Homeopathic Remedies: #8, #60,
                    # 823)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_bun_creatinine">
            <!-- Bun/Creatinine Ratio Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Bun/Creatinine Ratio</h1>
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
                            <strong class="blue">
                                <label id="i_score_bun_creatinine">
                                    12.50</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">9.5 - 17</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">6 - 25</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_bun_creatinine" runat="server"></asp:TextBox>
                            <%--   <asp:TextBox ID="u_score_glucose" runat="server" ></asp:TextBox> id="u_score_bun_creatinine" />--%>
                            <a href="javascrip:void(0)" onclick="resultOfTest('bun_creatinine');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_bun_creatinine">
                <h3>
                    Bun/Creatinine stand alone indicators generally associated with:</h3>
                <button id="btn_bun_creatinine" onclick="javascript :print('bun_creatinine');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Kidney function, dialysis calculator, efficient protein utilization, hydration,
                    toxic fluid retention</p>
            </div>
            <div class="ideal equal" id="equal_bun_creatinine" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_bun_creatinine" style="display: none">
                <h3>
                    Generally associated with Low Bun/Creatinine Ratio:</h3>
                <p>
                    Tissue swelling in the entire body, enzyme deficiency, muscle loss, protein/amino
                    acid deficiency, kidney not filtering protein by-products, lymphatic congestion,
                    efficiently, under-performing posterior pituitary, mal-absorption syndrome, couch
                    potatoism, muscle atrophy, lack of exercise, body fat gain, toxic fluid retention.</p>
                <h3>
                    Corresponding need for nutritional support for Low Bun/Creatinine Ratio:</h3>
                <p>
                    Iodine/Iodide, Adrenal Hormone Restoration, Mega B Complex, 28 Super Amino Acids,
                    90% Protein, Spirulina, Royal Pollen Complex, Protein.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Bladder/Kidney Formula, Toxicity Correction, Magnesium, Potassium, Metabolic Balancer,
                    Sulfur, Iodine</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 2, # 4, # 5, # 7, # 10, # 834</p>
                <h3>
                    Botanical healing Tea Formulations:</h3>
                <p>
                    Kidney Formula, Kidney Flush, High Phenol Detox Formula.</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Spinach Juice with Goat’s Whey, Kidney Cleanse, Potassium Broth, Amino Acid Creamed
                    Asparagus, Super Food Drink, Kidney Cleanse, Bio-Flavanoids, Cellular Detoxifier,
                    Junglelaya.</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Selenium, Milk Thistle, Dandelion, Liver Detox, Duo C Complex, Ultra E Complex,
                    N-Acetyl Cysteine, Fiber Max, Maxi Cleanse, Turmeric, Corn Silk, L-Arginine, 28
                    Super Amino Acids, Bearberry, Cats Claw, Cranberry Complex.</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Ozone Infused Far Infrared Detoxification Sauna.</p>
            </div>
            <div class="high" id="high_bun_creatinine" style="display: none">
                <h3>
                    Generally associated with High Bun/Creatinine Ratio:</h3>
                <p>
                    Dehydration, kidney dysfunction, colon toxicity, toxic fluid retention, medication
                    excess, junk foods, bad fats, nitrogen by-products building up faster than your
                    immune system can process them, toxicity, overloaded with morbific waste material
                    dumping into vital organs, drug toxicity, colon impaction, kidney’s not filtering
                    toxins efficiently, bloating, weight gain, fatigue, Nitrogen wastes by-products,
                    ammonia and other toxins backed up in the system.
                </p>
                <h3>
                    Corresponding need for nutritional support for High Bun/Creatinine Ratio:</h3>
                <p>
                    Cats Claw, Enzyme Therapy, Bromaline, Antioxidants, Maxi Cleanse, Fiber max, L-Cystein,</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Bladder/Kidney Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 11, # 16, # 823</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Water Retention Formula, Decongestive Tea, Bowel Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Lycopene Broth, Cellular Detoxification, Blood Purification</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Multazyme, Cassia Bark, Herbal Anti Inflammatory, Noni Juice, Liver Protector, Duo
                    C Complex, Fiber Max, Maxi Cleanse, Intestinal Decongestive, Chinese Healing Tonic,
                    Corn Silk</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Ozone Infused Far Infrared Detoxification Sauna</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, parsley, plums, cranberry.</p>
                <h3>
                    Support:</h3>
                <p>
                    Adrenals, thyroid, pituitary, stomach, kidneys, liver, colon. (Homeopathic remedies;
                    # 802,# 806 # 820)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_sodium">
            <!-- Sodium Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Sodium</h1>
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
                            <strong class="blue">
                                <label id="i_score_sodium">
                                    140</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">138 - 142</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">136 - 144</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_sodium" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('sodium');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_sodium">
                <h3>
                    Sodium stand alone indicators generally associated with:</h3>
                <button id="btn_sodium" onclick="javascript :print('sodium');return false;" class="print display-none">
                    Print</button>
                <p>
                    Hydration and electrolyte monitor, outer cell efficiency, carries nutrients to and
                    toxins out of cells, maintains proper osmotic pressure balance, acid/alkaline blood
                    balance, efficient nerve impulse transmission, acid base balance, nerve impulse
                    transition, adrenal, kidney, colon health, heart function.</p>
            </div>
            <div class="ideal equal" id="equal_sodium" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_sodium" style="display: none">
                <h3>
                    Generally associated with Low Sodium:</h3>
                <p>
                    Nerve/adrenal exhaustion, stress, diabetes, hypothyroidism, drugs, diarrhea, mineral
                    deficiency, loss of concentration, mood swings, chronic fatigue, mal-absorption,
                    low immune system, electrolyte, metabolic acidosis, ice cold drink consumptions,
                    diuretic use, dehydration.</p>
                <h3>
                    Corresponding need for nutritional support for Low Sodium:</h3>
                <p>
                    Duo C Absorption Enhancer, Immune Power Formula, Stress and Toxin Protector, Liver
                    Detox Formula, Adrenal Restoration, Jug One protocol, Electrolyte Minerals, 57 Super
                    Minerals, Sea Vegetable Extract, Irish Moss/Kelp, Super Salt.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Electrolyte Formula, Adrenal Formula, Bio-Ox, Sodium Ascorbic, Jug One Protocol</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 827, # 18, # 20</p>
                <h3>
                    Botanical healing Tea Formulations:</h3>
                <p>
                    Adrenal Tea, Nerve Rejuvenator</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    VF-50</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    I-Thyroid, Adrenal hormone Restoration Factor, Mega B Complex, Resveratrol, Nervine</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Mineral Drip, Super Bath</p>
            </div>
            <div class="high" id="high_sodium" style="display: none">
                <h3>
                    Generally associated with High Sodium:</h3>
                <p>
                    Toxic fluid retention, weight gain, high blood pressure, dehydration, diabetes,
                    insipidus, mineral deficiency, malnutrition, junk foods, overeating toxicity, kidney
                    disorder, fad dieting, magnesium deficiency, electrolyte imbalance, adrenal depletion,
                    nerve burn out, stress overwhelm, excess salt intake, poor quality of salt, mal-absorption,
                    hypothyroidism, renal dysfunction, dizziness, nervousness, body’s electric system
                    out of balance. Support required for kidneys, adrenals, posterior pituitary.</p>
                <h3>
                    Corresponding need for nutritional support for High Sodium:</h3>
                <p>
                    Magnesium, Amino Acids, Potassium, Nerve Builder, Chinese Garlic, Naturopathic Purification
                    Powder, Adrenal Hormone restoration, Super Oil, Stress & Toxin Protector.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Electrolyte Formula, 87 Sea Minerals, Liquid Potassium</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 16, # 21</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Adrenal Formula, High Pineal Green Tea, Nerve Rejuvenation Formula, Stress and Tension
                    Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Sea Cal, VF-50, Green Drink, Potassium Broth, Irish Moss/Kelp</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Nerve Builder, Stress & Toxic Protector, Mega B Complex, I-Thyroid, 57 Super Minerals,
                    Adrenal Hormone Restoration Factor, Valerian Root, Hypericum, Royal Queen Bee Jelly,
                    Pineal Hormone Restoration Factor</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Super Bath</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, apple, parsley, squash, cauliflower, plum</p>
                <h3>
                    Support:</h3>
                <p>
                    Adrenals, thyroid, pituitary, nerves, kidneys. (Homeopathic Remedies; # 17, # 823,
                    # 829)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_potassium">
            <!-- Potassium Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Potassium</h1>
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
                            <strong class="blue">
                                <label id="i_score_potassium">
                                    4.4</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">4.0 - 4.8</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">3.5 - 5.3</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_potassium" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('potassium');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_potassium">
                <h3>
                    Potassium stand alone indicators generally associated with:</h3>
                <button id="btn_potassium" onclick="javascript :print('potassium');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Inner cell efficiency, chief electrolyte of intracellular fluid, acid/alkaline PH
                    balance, conductor of electric impulses and nerve fibers, including heart construction,
                    nerve construction and muscle function, electrolyte and cardiac monitor</p>
            </div>
            <div class="ideal equal" id="equal_potassium" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_potassium" style="display: none">
                <h3>
                    Generally associated with Low Potassium:</h3>
                <p>
                    Electrolyte deficiency, dehydration, heart beat irregularities, toxic fluid not
                    eliminating, weight gain, gastric problems, bloating, weight gain, stress, swollen
                    ankles and fingers, diuretic use, blood pressure pill overdose, antibiotic use,
                    mal-absorption, skipping meals, exaggerated PMS and/or menopause symptoms, partial
                    paralysis of hands or legs, cramps, lethargy, muscle loss intestinal inflammation,
                    diabetes, diarrhea, nervousness, anxiety, hyper-motion, adrenals exhausted, overstimulation
                    of adrenals as a result of drugs, sugar, alcohol, under-performing pineal gland,
                    cardiac toxicity causing edema, heart trying to compensate for lack of cell pressure.
                    Deficiencies in Ionic Potassium, RNA/DNA, L-Aginine, L-Carnitine, Vitamin C, Pyridoxine,Ionic
                    Zinc.
                </p>
                <h3>
                    Corresponding need for nutritional support for Low Potassium:</h3>
                <p>
                    Blood Builder, Phosphadtyl Choline, Alfalfa Juice, Black Strap, Irish Moss/Kelp</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Blood Builder, Phosphadtyl Choline, Alfalfa Juice, Black Strap, Irish Moss/Kelp</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 12, # 14</p>
                <h3>
                    Botanical healing Tea Formulations:</h3>
                <p>
                    Cardio Vascular Formula, Circulation Formula, Blood Pressure Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Potassium Broth, Green Drink, VF-50, Nerve Rejuvenation</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Cardio Vascular Formula, Hypericum, Pineal Hormone Restoration, Adrenal Hormone
                    Restoration, Mega B Complex 1000, Wheat Germ Oil, Nanokanias</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Super Bath</p>
            </div>
            <div class="high" id="high_potassium" style="display: none">
                <h3>
                    Generally associated with High Potassium:</h3>
                <p>
                    Uncontrollable diabetes, metabolic acidosis, low insulin, cell damage, adrenal exhaustion,
                    kidney dysfunction, tissue dysfunction, heart muscle laboring, increased risk of
                    cardiac toxicity, heart beginning to become saturated with poisonous waste setting
                    up condition as arterial sclerosis, toxemia, digestive disorders, adrenal exhaustion,
                    blood pressure problems, dehydration, metabolic acidosis, sluggish adrenal glands.
                    Deficiencies in Omega 3/6 Essential Fatty Acids, Vitamin A and B-1, Pantothenic
                    Acid.</p>
                <h3>
                    Corresponding need for nutritional support for High Potassium:</h3>
                <p>
                    Magnesium, Super Juice 22 Vegetables, Super Oil, Maxi Cleanse, Fiber Max, 28 Super
                    Amino Acids, Super Green, Blue/Green algae, Pineal Restoration, Hawthorn Berry,
                    L-Carnitine, Wheat Germ Oil, Cats Claw, Oral Chelation.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Adrenal Formula, Electrolyte Formula, Power Cell, Super C Active, Acidosis Correction
                    Formula, Metabolic Balancer.</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 2, # 3</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Adrenal Formula, Energy Formula, High Phenol Green Tea, Blood Sugar Formula,</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Green Drink</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Royal Queen Bee Jelly, Vitamin E Complex, Cardio Vita, Wheat Germ Oil, L-Carnitine,
                    L-Arginine, Hawthorn Berry, Chinese Garlic, Chlorophyll, Cal/Mag Citrate, 57 Super
                    Minerals, Vitamin F</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Brain Washing Therapy, Ionic Foot Detox Baths, Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, parsley, spinach, kale, zucchini, squash, plum</p>
                <h3>
                    Support:</h3>
                <p>
                    Adrenals. (Homeopathic Remedy: # 829)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_sod_pot">
            <!-- Sodium/Potassium Ratio Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Sodium/Potassium Ratio</h1>
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
                            <strong class="blue">
                                <label id="i_score_sod_pot">
                                    30</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">27.5 - 32.5</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">25 - 35</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_sod_pot" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('sod_pot');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_sod_pot">
                <h3>
                    Sodium/Potassium Ratio stand alone indicators generally associated with:</h3>
                <button id="btn_sod_pot" onclick="javascript :print('sod_pot');return false;" class="print display-none">
                    Print</button>
                <p>
                    Electrolyte balance, inner/outer ionic exchange efficiency, assesses kidney function.</p>
            </div>
            <div class="ideal equal" id="equal_sod_pot" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_sod_pot" style="display: none">
                <h3>
                    Generally associated with Low Sodium/Potassium:</h3>
                <p>
                    Adrenal exhaustion, nerve burnout, dehydration, over use of medications, acid/alkaline
                    imbalance, heart attack risk, muscular weakness, cramps, general lethargy, signs
                    of early hand and/or leg paralysis, pending nervous breakdown, diuretic drugs, swollen
                    ankles and/or fingers, exaggerated PMS or menopause symptoms.</p>
                <h3>
                    Corresponding need for nutritional support for Low/High Sodium/Potassium:</h3>
                <p>
                    Electrolytes, Ionic Liquid Minerals, Blood Builder, Potassium Broth, L-Carnitine,
                    L-Arginine Complex, Hawthorn Berry, Chinese Garlic, Jug One Protocol, Jug Two Protocol</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Jug One Protocol, 87 Sea Minerals</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 823</p>
                <h3>
                    Botanical healing Tea Formulations:</h3>
                <p>
                    Kidney Flush, Lymph Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Spinach and Whey, Green Drink, Bedtime Bowel Tonic, Cranberry Juice Complex</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    57 Super Minerals, Noni Juice Extract, Aloe Vera Gel, Alpha Lipoic Acid, Multizyme,
                    Blueberry Leaf Extract, Herbal Anti Inflammatory, HMP 33, G.I. Tract Transition
                    Stimulator</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Super Bath</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Parsley, kale, celery, figs</p>
                <h3>
                    Support:</h3>
                <p>
                    Heart, cardiovascular, pineal nerves. (Homeopathic Remedies: # 17, # 66, # 825,
                    # 827)</p>
            </div>
            <div class="high" id="high_sod_pot" style="display: none">
                <h3>
                    Generally associated with High Sodium/Potassium:</h3>
                <p>
                    Adrenal exhaustion, nerve burnout, dehydration, over use of medications, acid/alkaline
                    imbalance, heart attack risk, muscular weakness, cramps, general lethargy, signs
                    of early hand and/or leg paralysis, pending nervous breakdown, diuretic drugs, swollen
                    ankles and/or fingers, exaggerated PMS or menopause symptoms.</p>
                <h3>
                    Corresponding need for nutritional support for Low/High Sodium/Potassium:</h3>
                <p>
                    Electrolytes, Ionic Liquid Minerals, Blood Builder, Potassium Broth, L-Carnitine,
                    L-Arginine Complex, Hawthorn Berry, Chinese Garlic, Jug One Protocol, Jug Two Protocol</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Jug One Protocol, 87 Sea Minerals</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 823</p>
                <h3>
                    Botanical healing Tea Formulations:</h3>
                <p>
                    Kidney Flush, Lymph Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Spinach and Whey, Green Drink, Bedtime Bowel Tonic, Cranberry Juice Complex</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    57 Super Minerals, Noni Juice Extract, Aloe Vera Gel, Alpha Lipoic Acid, Multizyme,
                    Blueberry Leaf Extract, Herbal Anti Inflammatory, HMP 33, G.I. Tract Transition
                    Stimulator</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Super Bath</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Parsley, kale, celery, figs</p>
                <h3>
                    Support:</h3>
                <p>
                    Heart, cardiovascular, pineal nerves. (Homeopathic Remedies: # 17, # 66, # 825,
                    # 827)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_anion_gap">
            <!-- Anion Gap Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Anion Gap</h1>
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
                            <strong class="blue">
                                <label id="i_score_anion_gap">
                                    8</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">7 - 9</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">6 - 10</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_anion_gap" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('anion_gap');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_anion_gap">
                <h3>
                    Anion Gap stand alone indicators generally associated with:</h3>
                <button id="btn_anion_gap" onclick="javascript :print('anion_gap');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Electrolyte reserve account.</p>
            </div>
            <div class="ideal equal" id="equal_anion_gap" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_anion_gap" style="display: none">
                <h3>
                    Generally associated with Low Anion Gap:</h3>
                <p>
                    Respiratory acidosis and/or metabolic alkalosis, bromide ingestion, insufficient
                    salt in the blood, thickening/sticky blood, acidosis indicator, measures the difference
                    between sodium and potassium, electrolyte imbalance detective</p>
                <h3>
                    Corresponding need for nutritional support for Low Anion Gap:</h3>
                <p>
                    Protelectic Enzyme Therapy, Duo C Complex, Iodine/Iodide, Magnesium, Irish Moss/Kelp,
                    Jug Two protocol, Super Salt, Electrolyte Formula</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Jug one Protocol, 87 Sea Minerals</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4</p>
                <h3>
                    Botanical healing Tea Formulations:</h3>
                <p>
                    Kidney Flush</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Green Drink, VF-50</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    57 Super Minerals, Resveratrol, Super Juice (22 Vegetables)</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Ionic Foot Detox Bath</p>
            </div>
            <div class="high" id="high_anion_gap" style="display: none">
                <h3>
                    Generally associated with High Anion Gap:</h3>
                <p>
                    Respiratory alkalosis, metabolic acidosis, diabetic ketoacidosis, lactic acidosis,
                    high salt diet, cellular oxygen deficiency, excess alcohol, severe malnutrition,
                    starvation, multiple nutrition deficiencies, thiamine deficiency, muscle loss, ketogenic
                    diet.</p>
                <h3>
                    Corresponding need for nutritional support for High Anion Gap:</h3>
                <p>
                    Germanium, L-Carnitine, L-Arginine, 29 Super Amino Acids, super Drink, Mega B Complex,
                    Electrolytes, Ionic Liquid Minerals, Bio-Ox.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    87 Sea Minerals, Electrolyte Formula, Bio-Ox</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                </p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Blood Cleanse</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    VF-50</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    36 Nutrients, Green Chlorophyll, Noni Juice
                </p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Ozone Infused Far Infrared Detoxification Sauna</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Parsley, zucchini, celery</p>
                <h3>
                    Support:</h3>
                <p>
                    Kidney’s, pituitary. (Homeopathic Remedies: # 802, # 823)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_chloride">
            <!-- Chloride Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Chloride</h1>
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
                            <strong class="blue">
                                <label id="i_score_chloride">
                                    104</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">101 - 104</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">98 - 110</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_chloride" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('chloride');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_chloride">
                <h3>
                    Chloride stand alone indicators generally associated with:</h3>
                <button id="btn_chloride" onclick="javascript :print('chloride');return false;" class="print display-none">
                    Print</button>
                <p>
                    Gastric enzyme production, maintaining a state of electrical neutrality, cellular
                    integrity, evaluates electrolyte and hydration status, metabolic acid/alkaline monitor.</p>
            </div>
            <div class="ideal equal" id="equal_chloride" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_chloride" style="display: none">
                <h3>
                    Generally associated with Low Chloride:</h3>
                <p>
                    Adrenal exhaustion, colon impaction, metabolic acidosis, diabetic syndrome, hypochlorhydria,
                    metabolic alkalosis or acidosis, cellular oxygen deficiency, excess sweating, diarrhea
                    and vomiting, diabetic acidosis, overuse of drugs, diuretic use, respiratory acidosis
                    and alkalosis, hyperventilation, tap water, chlorine trapped in cells, colon block,
                    electrolyte depletion, respiratory problems, kidney dysfunction, multiple mineral
                    deficiencies, vitamin B 1 deficiency, renal dysfunction.</p>
                <h3>
                    Corresponding need for nutritional support for Low Chloride:</h3>
                <p>
                    Bowel Tonic, Green Drink, Mega B Complex 1000, Jug One Protocol, Adrenal Restoration.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Enzymes, Metabolic Acidosis, Electrolyte Formula, 87 Sea Minerals</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 17/18, # 21</p>
                <h3>
                    Botanical healing Tea Formulations:</h3>
                <p>
                    Adrenal Formula, Blood Sugar</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Stomach rebuilding Powder, Stomach Restoration, Lycopene Broth, Amino Acid One Dozen
                    Creamed Vegetables</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Absorption Enhancer, Alkaline Balancer, Multazyme, Noni Juice Extract, L-Tyrosine,
                    Stomach and Health, Royal Queen Bee Jelly, Chinese Healing Tonic</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Hyperbaric Oxygen Therapy, Ozone Therapy, Ozone Infused Far Infrared Detoxification
                    Therapy</p>
            </div>
            <div class="high" id="high_chloride" style="display: none">
                <h3>
                    Generally associated with High Chloride:</h3>
                <p>
                    Dehydration, tap water, medications, nervous exhaustion, toxins overwhelming kidney’s,
                    diabetic insipitus, exhausted adrenals, under active pituitary, excess salt intake,
                    under-performing thyroid, trauma, accident, chronic illness, illnesses of long duration,
                    colon, bladder, kidneys, and adrenal mal-function, head injury, aspirin use, adrenal
                    hyper-function.</p>
                <h3>
                    Corresponding need for nutritional support for High Chloride:</h3>
                <p>
                    Magnesium Broth, Royal Queen Bee Jelly, Adrenal Restoration, L-Tryptophan, Pineal
                    Restoration, Green Tea Extract, Super Oil, Green Drink, Duo C Complex, Jug One Protocol,
                    Jug Two Protocol</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    87 Sea Minerals</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 14, # 15</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                </p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Oil, Royal Pollen Complex, Super Food Drink, Amino Acid Creamed Green Vegetable
                    Juices</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Adrenal Hormone Restoration Factors, Pineal Hormone Restoration Factors, Stress
                    and Tonic Protector, nerve Builder, Sergeant Strong, Super Juice 22 Vegetables,
                    Alfalfa Juice</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Parsley, watercress, squash, celery</p>
                <h3>
                    Support:</h3>
                <p>
                    Kidneys, colon, lungs. (Homeopathic Remedies: # 40, # 46, # 57, # 823, # 826)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_co2">
            <!-- Carbon Dioxide/Bicarbonate – (CO 2) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Carbon Dioxide/Bicarbonate – (CO 2)</h1>
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
                            <strong class="blue">
                                <label id="i_score_co2">
                                    26</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">24 - 28</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">22 - 30</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_co2" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('co2');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_co2">
                <h3>
                    Carbon Dioxide/Bicarbonate stand alone indicators generally associated with:</h3>
                <button id="btn_co2" onclick="javascript :print('co2');return false;" class="print display-none">
                    Print</button>
                <p>
                    Blood acid/alkaline PH balancer, lung capacity, metabolic electrolyte monitor</p>
            </div>
            <div class="ideal equal" id="equal_co2" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_co2" style="display: none">
                <h3>
                    Generally associated with Low Carbon Dioxide/Bicarbonate:</h3>
                <p>
                    Junk foods, malnutrition, metabolic acidosis, toxicity, kidney toxin over-run, anxiety,
                    over training, cell breaking down, adrenal fatigue, cellular oxygen deficiencies,
                    heart weakness, kidney weakness, nerve burnout, loss of lung capacity to inhale
                    and exhale, diabetes, starvation, faulty diet, lacking in green vegetables, chlorophyll
                    and beta carotene</p>
                <h3>
                    Corresponding need for nutritional support for Low Carbon Dioxide/Bicarbonate:</h3>
                <p>
                    Super Drink, Adrenal Restoration, Stress & Toxin Protector, L-Carnitine, Nerve Builder,
                    L-Arginine.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Electrolyte Formula, 87 Sea Minerals</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 3 # 7, # 826</p>
                <h3>
                    Botanical healing Tea Formulations:</h3>
                <p>
                    High Phenol Green Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Blood Purification, Amino Acid One Dozen Green Vegetables, Super Green Drink</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Chlorophyll, Beta Carotene,
                </p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Ionic Foot Detox Bath, Super Bath, Colon Hydrotherapy</p>
            </div>
            <div class="high" id="high_co2" style="display: none">
                <h3>
                    Generally associated with High Carbon Dioxide/Bicarbonate:</h3>
                <p>
                    Mal-absorption syndrome, hypochlorhydria, toxicity, lack of fitness, respiratory
                    problems, and/or serious oxygen deficiency, respiratory acidosis, pulmonary problems,
                    mental confusion, irregular breathing, lung congestion, metabolic alkalosis, vomiting,
                    diarrhea, excess body fat weight, mercury toxicity, deficiencies in Vitamins A,
                    E, D, green vegetables, chlorophyll, Omega 6 essential fatty acids, ionic magnesium,
                    sulfur, L-Lysine, L-Methinine, L-Arginine.</p>
                <h3>
                    Corresponding need for nutritional support for High Carbon Dioxide/Bicarbonate:</h3>
                <p>
                    Morning Health Drink, Jug One Protocol, L-Arginine Complex</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Electrolyte Formula, 87 Sea Minerals</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 5, # 7</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    High Phenol Green Tea, Blood Purification Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Green Drink, Amino Acid One Dozen Creamed Green Vegetable Juices</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Absorption Enhancer, Bromeline, Multizyme, Ultra E Complex, Norwegian Vitamin A,
                    Beta Carotene, Super Juice 22 Vegetables, Green Drink, Alfalfa Juice</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Ionic Foot Detox Bath</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, parsley, kale, figs, tomatoes, squash, lemon</p>
                <h3>
                    Support:</h3>
                <p>
                    Nerves, adrenals, heart, kidneys, lungs, muscles. (Homeopathic Remedies: # 17, #
                    59, # 66, # 823, # 826)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_cholesterol">
            <!-- Cholesterol Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Cholesterol</h1>
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
                            <strong class="blue">
                                <label id="i_score_cholesterol">
                                    175</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">165 - 185</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">150 - 200</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_cholesterol" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('cholesterol');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_cholesterol">
                <h3>
                    Cholesterol stand alone indicators generally associated with:</h3>
                <button id="btn_cholesterol" onclick="javascript :print('cholesterol');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Essential component for brain repair, hormone production, cellular function, antibodies
                    and enzyme production, liver efficiency, pancreatic function, coronary heart disease,
                    hyperlipidemia, and hormone monitor.</p>
            </div>
            <div class="ideal equal" id="equal_cholesterol" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_cholesterol" style="display: none">
                <h3>
                    Generally associated with Low Cholesterol:</h3>
                <p>
                    Omega 3 and/or 6 essential fatty acid deficiency, hypothyroid, hormone deficiency,
                    compromised immune system, pre-cancer marker, oxidative stress, cells not regenerating,
                    human growth hormone deficiency, vitamin D-3 deficiency, heavy metal and/or environmental
                    toxicity, more dangerous than high cholesterol, poor digestion/ assimilation of
                    fats, low fat diet, protein deficiency, congested blood vessel walls, mal-nutrition,
                    multiple nutritional deficiencies, heart failure, drug toxicity, statin drugs, hepatitis,
                    mal-absorption syndrome, alcoholism, memory loss.</p>
                <h3>
                    Corresponding need for nutritional support for Low Cholesterol:</h3>
                <p>
                    Cholesterol/Triglycerides, Enzyme Therapy, Co-enzyme Q-10, Lipotropic Factors, Duo
                    C Complex, Iodine/Iodide, Phosphadtyl Choline, Lipase, I-Thyroid, L-Arginine.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Electrolyte Formula, Anti-Cholesterol Formula, 87 Sea Minerals</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 12, # 13, # 15, # 805, # 819</p>
                <h3>
                    Botanical healing Tea Formulations:</h3>
                <p>
                    High Phenol Green Tea, Liver Detox Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Coconut Cream Isolated Protein Powder, Super Food Drink, Super Oil, Amino Acid Creamed
                    Avocado, Thyroid Broth</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Thyroid Broth, Co-Enzyme Q-10 with Omega 3 Essential Fatty Acids, Ultra E Complex,
                    Salmon Oil, Lipotropic Factor, Adrenal Hormone Restoration, Vitamin D-3, Milk Thistle,
                    L-Taurine, Cholesterol/Liver Protector, Oil of Evening Primrose, L-Arginine, L-Carnitine</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy</p>
            </div>
            <div class="high" id="high_cholesterol" style="display: none">
                <h3>
                    Generally associated with High Cholesterol:</h3>
                <p>
                    Inflammation, hypothyroidism, lack of fitness, excess sugar, junk foods, hydrogenated
                    fats, Omega 6 essential fatty acid deficiency, cellular oxygen deficiency, liver
                    sluggishness, colon toxicity, coronary artery disease, storing fat, nutrition deficiency
                    syndrome, hypothyroid, liver inflammation, bile flow obstruction of the gall bladder,
                    pancreatic inflammation, excess carbohydrates, alcohol, sugar, drugs, trans fats,
                    faulty diet, build of up of congested rancid fats in blood, multiple nutritional
                    deficiencies, poor fat utilization, deficiencies in choline, inositol, L-Methinine,
                    Vitamin E, EPA/DHA, folic acid, and alpha lipoic acid, diabetes</p>
                <h3>
                    Corresponding need for nutritional support for High Cholersterol:</h3>
                <p>
                    Fat to Energy, Fat Emulsifier, Cholesterol/Triglycerides, Immune Power Formula,
                    Nature’s Flush, Magnesium, Morning Health Drink, Yogurt Drink, Bedtime Bowel Tonic</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Anti-Cholesterol Formula, Iodine, Metabolic Fat Burner, Germanium, Liver Formula,
                    Liquid Sulfur</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 10, # 11, # 12</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Fat Burner, Liver Detox, Decongestion Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Oil, Green Drink, Amino Acid Creamed Beets, Liver Detoxification, Cellular
                    Detoxification</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Cholesterol/Triglyceride Formula, Lipotropic Factors, Lignan, L-Carnitine, L-Arginine,
                    Capillary Integrity, Cardio Vita, Circulation Formula, Co-Enzyme Q-10 with Omega
                    3 Essential Fatty Acids, Wheat Germ Oil, Multizyme</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Foot Detox Bath, I.V. Chelation Therapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Pear, beet, spinach, celery</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, gall bladder, thyroid, endocrine system, digestion, colon. (Homeopathic Remedies;
                    # 8, # 10, # 40, # 819, # 820)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_triglyceride">
            <!-- Triglyceride Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Triglyceride</h1>
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
                            <strong class="blue">
                                <label id="i_score_triglyceride">
                                    90</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">70 - 120</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">60 - 130</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_triglyceride" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('triglyceride');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_triglyceride">
                <h3>
                    Triglyceride stand alone indicators generally associated with:</h3>
                <button id="btn_triglyceride" onclick="javascript :print('triglyceride');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Blood fat, liver function gauge, pancreatic gauge, faulty diet gauge, blood sugar
                    gauge, pancreatic mal-absorption, depressed nerve function, stress, carbohydrate
                    tolerance, insulin sensitivity, exogenous estrogen, early marker of obesity, immune,
                    autoimmune and hyper sensitivity, coronary heart disease, fat metabolism, obesity
                    contributor, hypoglycemia/diabetes and hormone monitor</p>
            </div>
            <div class="ideal equal" id="equal_triglyceride" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_triglyceride" style="display: none">
                <h3>
                    Generally associated with Low Triglyceride:</h3>
                <p>
                    Deficiency in Omega 3/6 essential fatty acids, hypoglycemia, protein deficiency
                    and mal-absorption, body not repairing, human growth hormone deficiency, exhaustion,
                    adrenal fatigue, anxiety, suppressed immune system, stress overwhelm, slow healing/recuperation,
                    enervation disease, emotional over sensitivity, reduced hormone production, overuse
                    of drugs, alcohol, faulty diet, multiple mineral and nutritional deficiency, hormonal
                    hypo secretion, emotional stress, nerves overwhelmed, skipping meals, deficiencies
                    in Niacin, Vitamin C, Panothenic acid, L-Arginine, glandular support need for hypothalamus,
                    pituitary and pancreas.</p>
                <h3>
                    Corresponding need for nutritional support for Low Triglyceride:</h3>
                <p>
                    Mega B Complex 1000, Stress & Toxin Protector, Super Oil, Magnesium Broth, Immune
                    Power Formula, Co-Enzyme Q-10 with Omega 3 Essential Fatty Acids, Endurall, Adrenal
                    Hormone Restoration, Fat emulsifier, Chromium Picolonate, Iodine/Iodide, Potassium</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liver Support, Metabolic Balancer, Germanium, Cobalt, Iodine, Vanadium, Chromium</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 18, # 19, # 29, # 32, # 819</p>
                <h3>
                    Botanical healing Tea Formulations:</h3>
                <p>
                    Hypoglycemia Formula, Liver Detox Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Cellular Detoxifier, Blood Sugar and Energy Stabilizer, 28 Amino Acid Creamed One
                    Dozen Green Vegetable Juices, Beet Juice, Super Oil, Nitrate Oxide Precursor Tonic</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Wheat Germ Oil, L-Arginine Complex, Acetyl L-Carnitine, Coconut Oil</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Ionic Foot Detox Bath, Colon Hydrotherapy</p>
            </div>
            <div class="high" id="high_triglyceride" style="display: none">
                <h3>
                    Generally associated with High Triglyceride:</h3>
                <p>
                    Excess junk food, sugar, alcohol, carbohydrates, hydrogenated fats, hypothyroid,
                    obesity, liver/gall bladder sluggishness, bowel toxicity, amino acid deficiency,
                    protein mal-absorption, cellular oxygen deficiency, lack of fitness, coronary heart
                    disease risk, insulin resistance, carbohydrate intolerance, over eating, human growth
                    hormone deficiency, diabetes, overuse of drugs, depressed nerve function, stressed
                    nervous system, pancreatic dysfunction, metabolic acidosis, bile duct obstruction,
                    acid indigestion, Omega 3 and 6 essential fatty acid deficiency, protruding abdomen,
                    body fat weight gain, fats stored in tissue to overcompensate to alleviate stress,
                    pain long term, shock, injury by emotional trauma, heavy metal toxicity, autointoxication,
                    allergies, stress</p>
                <h3>
                    Corresponding need for nutritional support for High Triglyceride:</h3>
                <p>
                    Cholesterol/Triglycerides, Blue/Green Algae, 28 Super Amino Acids, Super Oil, Lipotropic
                    Factors, Fat Emulsifier, Stress & Tonic Protector, Nerve Broth, Phosphadtyl Choline,
                    Liver/Gall Bladder Flush, Blood Sugar Formula</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Pancreas Support, Anti-Cholesterol Formula, Metabolic Fat Burner</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 9, # 11, # 43</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Fat Burner, Liver Detox Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Spinach Juice with Goat’s Whey, 28 Amino Acid Creamed Beets, Garden V</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Cholesterol/Triglycerides Formula, Nature’s Flush, Liptropic Factors, Fat to Energy,
                    Liver Purifier, Alpha Lipoic Acid</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, I.V. Alpha Lipoic Acid, Ionic Foot Detox Bath</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, beet, sweet potato, spinach, lemon</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, pancreas, nerves, digestion, adrenals, thyroid. (Homeopathic Remedies: #
                    8, # 10, # 17,# 50, # 806, # 818, # 829)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_hdl">
            <!-- HDL Cholesterol Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            HDL Cholesterol</h1>
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
                            <strong class="blue">
                                <label id="i_score_hdl">
                                    70</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">50 - 90</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">40 - 50</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_hdl" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('hdl');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_hdl">
                <h3>
                    HDL Cholesterol stand alone indicators generally associated with:</h3>
                <button id="btn_hdl" onclick="javascript :print('hdl');return false;" class="print display-none">
                    Print</button>
                <p>
                    Healthy cholesterol, fat utilization, coronary risk factor, immune liver, male/female
                    hormone, human growth hormone, thyroid, infection, inflammation, takes cholesterol
                    out of the peripheral issue transporting it to the liver (known as good cholesterol).
                </p>
            </div>
            <div class="ideal equal" id="equal_hdl" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_hdl" style="display: none">
                <h3>
                    Generally associated with Low HDL Cholesterol:
                </h3>
                <p>
                    Lack of fitness, precursor of obesity, excess carbohydrates, poorly controlled diabetes,
                    excess sugar, junk foods, bad fats, human growth hormone deficiency, serum and cellular
                    oxygen deficiency, under-performing thyroid, sex hormone deficiency, lack of protectors
                    against blocked artery disease, increased risk of heart disease, bowel toxicity,
                    fat gain, stress, blood pressure problems, poor fat utilization, male/female hormone
                    deficiency, under-performing pituitary, thyroid and liver, stroke, heart, cardio-vascular,
                    liver and immune system at risk</p>
                <h3>
                    Corresponding need for nutritional support for Low HDL Cholesterol:</h3>
                <p>
                    Wheat Germ Oil, Oil of Evening Primrose, Co-Enzyme, Q-10 with Omega 3 essential
                    fatty acids, Adrenal Restoration, Endurall, Iodine/Iodide, Hawthorn Berry, L-Carnitine</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Zinc</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 819</p>
                <h3>
                    Botanical healing Tea Formulations:</h3>
                <p>
                    Adrenal Support, Brain Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Oil, Nitric Oxide Precursor, Thyroid Broth</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Lignan, Borage Oil, I-Thyroid</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Foot Detox Bath, Colon Hydrotherapy, Rife Vibrational Medicine</p>
            </div>
            <div class="high" id="high_hdl" style="display: none">
                <h3>
                    Generally associated with High HDL Cholesterol:</h3>
                <p>
                    The higher the better, this is the desired goal, cardio, chemo, immune protective,
                    brain, hormone optimizer</p>
                <h3>
                    Corresponding need for nutritional support for High HDL Cholesterol:</h3>
                <p>
                    Super Oil, Co-Enzym,e Q-10 with Omega 3 Essential Fatty Acids</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, spinach</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver. (Homeopathic Remedies: # 10, # 829)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_ldl">
            <!-- LDL Cholesterol Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            LDL Cholesterol</h1>
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
                            <strong class="blue">
                                <label id="i_score_ldl">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 100</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0 - 130</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_ldl" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('ldl');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_ldl">
                <h3>
                    LDL Cholesterol stand alone indicators generally associated with:</h3>
                <button id="btn_ldl" onclick="javascript :print('ldl');return false;" class="print display-none">
                    Print</button>
                <p>
                    Potentially dangerous artery plaque depositor, coronary and stroke risk factors,
                    fat utilization, hormonal and brain function, fatty liver overload monitor</p>
            </div>
            <div class="ideal equal" id="equal_ldl" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_ldl" style="display: none">
                <h3>
                    Generally associated with Low LDL Cholesterol:</h3>
                <p>
                    This is the desired goal, as close to 0 is ideal</p>
                <h3>
                    Corresponding need for nutritional support for Low LDL Cholesterol:</h3>
                <p>
                    Super Oil, Co-Enzyme Q-10 with Omega 3 Essential Fatty Acids</p>
            </div>
            <div class="high" id="high_ldl" style="display: none">
                <h3>
                    Generally associated with High LDL Cholesterol:</h3>
                <p>
                    Lack of fitness, excess sugar, junk food, bad fats, fried foods, sugar, drugs, trans
                    fats, and fast foods, diabetes, excess carbohydrates, alcoholism, over eating, cellular
                    oxygen deficiency, Omega 3 essential fatty acid deficiency, adult onset, human growth
                    hormone deficiency, forgetfulness, brain fog, attention deficit, under-performing
                    thyroid, syndrome X, premature aging, poor fat utilization, liver dysfunction, cardio-vascular
                    and stroke risk factor, under-performing pituitary, male/female hormone deficiency,
                    brain starvation, compromising immune system, hypothyroid, malnutrition</p>
                <h3>
                    Corresponding need for nutritional support for High LDL Cholesterol:</h3>
                <p>
                    Cholesterol/Triglycerides, Nature’s Flush, Hawthorn Berry, Alpha Lipoic Acid, L-Cystein,
                    Phosphadtyl Choline, Vitamin E Complex</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Cardio Vascular Formula, Sulfur, Liver Support, Germanium, Anti-Cholesterol Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 10</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Brain Enhancer, Adrenal Formula, High Phenol Green Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Oil, Nitric Oxide Precursor</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    L-Arginine, L-Carnitine, Co-Enzyme Q-10 with Omega 3 Essential Fatty Acids, Omega
                    3 Salmon Oil, Ultra E Complex, Liver Formula, I-Thyroid, Absorption enhancer, Adrenal
                    Hormone Restoration, Lignan, Lipotropic Factors
                </p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Chelation Therapy, Ozone Infused Far infrared Detoxification Sauna</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Lemon, plum, beet, kale, garlic</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, cardio-vascular, thyroid, pituitary. (Homeopathic Remedies: # 10, # 54, #
                    66, # 805)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_vldl">
            <!-- VLDL Cholesterol Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            VLDL Cholesterol</h1>
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
                            <strong class="blue">
                                <label id="i_score_vldl">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 15</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0 - 25</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_vldl" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('vldl');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_vldl">
                <h3>
                    VLDL Cholesterol stand alone indicators generally associated with:</h3>
                <button id="btn_vldl" onclick="javascript :print('vldl');return false;" class="print display-none">
                    Print</button>
                <p>
                    Arteries gluing up, dangerous LDL Cholesterol oxidizing, danger signal of heart
                    disease, stroke, Alzheimer’s precursor</p>
            </div>
            <div class="ideal equal" id="equal_vldl" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_vldl" style="display: none">
                <h3>
                    Generally associated with Low VLDL Cholesterol:</h3>
                <p>
                    This is the desired goal, 0 is ideal.</p>
            </div>
            <div class="high" id="high_vldl" style="display: none">
                <h3>
                    Generally associated with High VLDL Cholesterol:</h3>
                <p>
                    Increased risk of coronary heart disease, plaque buildup, lack of exercise, HGH
                    deficiency, excess sugar, carbohydrates, medications, junk food, alcohol, trans
                    fats, fried foods, hypothyroidism</p>
                <h3>
                    Corresponding need for nutritional support for High VLDL Cholesterol:</h3>
                <p>
                    Super Oil, Liver/Gall Bladder Flush, Borage Oil, Fat Emulsifier, Lignan, Iodine/Iodide</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liver Support Formula, Cholesterol Formula, Immune Formula, Cardio Vascular Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 40, # 63, # 89</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Fat Burner, Essiac Formula, Blood Cleanser</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Naturopathic Purification Powder, Garden V, Liver Detoxifier</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Cholesterol/Triglycerides Formula, Nature’s Flush, Fat to Energy, Lipotropic Factors,
                    L-Cystine, Liver Purifier</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Alpha Lipoic Acid, Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, spinach, dandelion, kale, broccoli, lemon, fig, plum, sweet potato, avocado</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, pancreas, weight management, immune system. (Homeopathic Remedies: # 10,
                    # 66, # 825)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_chol_hdl">
            <!-- Cholesterol/HDL Ratio Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Cholesterol/HDL Ratio</h1>
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
                            <strong class="blue">
                                <label id="i_score_chol_hdl">
                                    2</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 3</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0 - 4.5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_chol_hdl" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('chol_hdl');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_chol_hdl">
                <h3>
                    Cholesterol/HDL Ratio stand alone indicators generally associated with:</h3>
                <button id="btn_chol_hdl" onclick="javascript :print('chol_hdl');return false;" class="print display-none">
                    Print</button>
                <p>
                    Gauge of overall health, cardio-vascular risk gauge, balanced metabolism, liver,
                    brain hormonal, cardio-vascular and thyroid function.</p>
            </div>
            <div class="ideal equal" id="equal_chol_hdl" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_chol_hdl" style="display: none">
                <h3>
                    Generally associated with Low Cholesterol/HDL Ratio:</h3>
                <p>
                    This is the desired goal. Low risk of cardio-vascular disease</p>
                <h3>
                    Corresponding need for nutritional support for Low Cholesterol/HDL Ratio:</h3>
                <p>
                    Super Oil, Co-Enzyme Q-10 with Omega 3 Essential Fatty Acids, Iodine/Iodide, Green
                    Drink</p>
            </div>
            <div class="high" id="high_chol_hdl" style="display: none">
                <h3>
                    Generally associated with High Cholesterol/HDL Ratio:</h3>
                <p>
                    Increased cardio-vascular and stroke risk, early indicator of diabetes, obesity,
                    premature aging, liver sluggishness, deficiency in essential fatty acids, excess
                    use of drugs, sugar, alcohol, trans fats, fast foods, carbohydrates, hypothyroidism,
                    human growth hormone deficiency, brain starvation</p>
                <h3>
                    Corresponding need for nutritional support for High Cholesterol/HDL Ratio:</h3>
                <p>
                    Cholesterol/Triglycerides Formula, Lipotropic Factors, Nature’s Flush, Fat to Energy,
                    Liver Detox, Fat Emulsifier, Phosphadtyl Choline, Super Oil</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Zinc</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 8</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Adrenal Support, Brain Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Oil, Nitric Oxide Precursor, Thyroid Broth</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Lignan, Borage Oil, I-Thyroid</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Foot Detox Bath, Colon Hydrotherapy, Rife Vibrational Medicine</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, Spinach, lemon, fig, plum</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver. (Homeopathic Remedies: # 10, # 819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_ldl_hdl">
            <!-- LDL/HDL Ratio Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            LDL/HDL Ratio</h1>
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
                            <strong class="blue">
                                <label id="i_score_ldl_hdl">
                                    2</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 3</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0 - 4.5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_ldl_hdl" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('ldl_hdl');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_ldl_hdl">
                <h3>
                    LDL/HDL Ratio stand alone indicators generally associated with:</h3>
                <button id="btn_ldl_hdl" onclick="javascript :print('ldl_hdl');return false;" class="print display-none">
                    Print</button>
                <p>
                    Gauge of overall health, balanced metabolism, liver, brain, hormonal, cardio-vascular
                    and thyroid function</p>
            </div>
            <div class="ideal equal" id="equal_ldl_hdl" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_ldl_hdl" style="display: none">
                <h3>
                    Generally associated with Low LDL/HDL Ratio:</h3>
                <p>
                    This is the desired goal.</p>
                <h3>
                    Corresponding need for nutritional support for Low LDL/HDL Ratio:</h3>
                <p>
                    Super Oil, Co-Enzyme Q-10 with Omega 3 Essential Fatty Acids, Iodine/Iodide, Green
                    Drink</p>
            </div>
            <div class="high" id="high_ldl_hdl" style="display: none">
                <h3>
                    Generally associated with High LDL/HDL Ratio:</h3>
                <p>
                    Increased cardio-vascular and stroke risk, liver sluggishness, deficiency in essential
                    fatty acids, excess use of drugs, sugar, alcohol, trans fats, fast foods, carbohydrates,
                    hypothyroid, human growth hormone deficiency, brain starvation
                </p>
                <h3>
                    Corresponding need for nutritional support for High LDL/HDL Ratio:</h3>
                <p>
                    Cholesterol/Triglycerides, Lipotropic Factors, Nature’s flush, Fat to Energy, Liver
                    Detox, Fat Emulsifier, Phosphadtyl Choline, Super Oil</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Cholesterol Formula
                </p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 10, # 40, # 819, # 825</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Liver Detox, Circulation Formula, Cardio Vascular Formula, Fat Burner</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                </p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Fat Emulsifier, Cholesterol/Triglycerides, Nature’s Flush, Lignan, Duo C Complex</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Immune Drip, Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, spinach, lemon, fig, plum</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver. (Homeopathic Remedies: # 10, # 819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_calcium">
            <!-- Calcium Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Calcium</h1>
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
                            <strong class="blue">
                                <label id="i_score_calcium">
                                    9.3</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">8.9 - 9.7</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">8.6 - 10.3</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_calcium" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('calcium');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_calcium">
                <h3>
                    Calcium stand alone indicators generally associated with:</h3>
                <button id="btn_calcium" onclick="javascript :print('calcium');return false;" class="print display-none">
                    Print</button>
                <p>
                    Electrolyte balance, mineral absorption, bone integrity, parathyroid function, calcium
                    metabolism, muscular contraction, Vitamin A not being broken down, ovarian hypofunction,
                    adrenal insufficiency, hypothyroidism, hormonal deficiency, heavy metal toxicity,
                    nerve transmission, blood clotting, cardiac function gauge, acid/alkaline balance,
                    prevents acid buildup in any part of the body, acid/alkaline PH, Calcium metabolism,
                    metabolic acidosis monitor</p>
            </div>
            <div class="ideal equal" id="equal_calcium" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_calcium" style="display: none">
                <h3>
                    Generally associated with Low Calcium:</h3>
                <p>
                    Under-performing thyroid, parathyroid and/or pituitary, kidney disorder, Vitamin
                    D-3 and A deficiency, calcium deficiency, osteopenia, osteoporosis, mal-absorption,
                    nervousness, connective tissue pain, metabolic acidosis, teeth problems, deficiencies
                    in magnesium, boron, zinc, manganese, iodine, hydrochloric acid and bio-flavanoids,
                    under-performing thyroid, slow electric transmission throughout the body affects
                    the nervous system, hyper-irritability, heart palpitations, enzyme deficiency</p>
                <h3>
                    Corresponding need for nutritional support for Low Calcium:</h3>
                <p>
                    Vitamin D-3, Ionic Calcium, Magnesium, Boron, Iodine/Iodide, Super Oil, Pancreatin,
                    Absorption Enhancer</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Cal/Mag/Boron Tonic, Calcium, Strong Bones, Nails, Nerves and Teeth Formula, Stress
                    and Nerve Repair Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 17/18, # 22, # 23, # 37</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Nerve Rejuvenating Formula, Arthritis/Rheumatism Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Sea Cal, Nerve Rejuvenator, Coconut Cream Powder, Amino Acid Creamed One Dozen Creamed
                    Vegetables</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Cal/Mag, 57 Super Minerals, Nerve Builder, Silicon, Super Juice 22 Vegetables</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Super Nutrition</p>
            </div>
            <div class="high" id="high_calcium" style="display: none">
                <h3>
                    Generally associated with High Calcium:</h3>
                <p>
                    Hyperactive parathyroid, deficiencies in selenium, potassium, Vitamin C, magnesium,
                    boron, Vitamin B Complex, kidney disorder, metabolic acidosis, calcium out of solution,
                    diabetes mellitus, dehydration, bone metastasis, heavy metal toxicity, hypothyroidism,
                    protein absorption, adrenal exhaustion, liver sluggishness, celiac disease, mal-absorption,
                    excess alcohol and soda consumption, poor digestive ability, high alkaline condition
                    of the small intestines, slow oxidation of fats, stubborn fat deposits causing obesity,
                    arterial sclerosis, septic condition, chalky deposits on joints, and cardio-vascular
                    system</p>
                <h3>
                    Corresponding need for nutritional support for High Calcium:</h3>
                <p>
                    Magnesium, Boron, Mega B Complex, Oral Chelation, Adrenal Hormone Restoration, Absorption
                    Enhancer, Spirulina, Super Oil, Jug One Protocol</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Acidosis Correction Formula, Magnesium, Boron</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 2, # 10, # 37, # 815)</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Kidney Flush, Joint Detox</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Magnesium Broth, green Drink, Junglelaya</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Cal/Mag, Absorption Enhancer, 57 Super Minerals, Wild Yam</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Chelation Therapy, Ionic Foot Detox Bath, Ozone Infused Far Infrared Detoxification
                    Sauna</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, kale, parsley</p>
                <h3>
                    Support:</h3>
                <p>
                    Parathyroid. (Homeopathic Remedies: # 37, # 834)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_phosphorus">
            <!-- Phosphorus    Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Phosphorus</h1>
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
                            <strong class="blue">
                                <label id="i_score_phosphorus">
                                    3.4</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">2.9 - 3.9</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">2.2 - 4.6</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_phosphorus" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('phosphorus');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_phosphorus">
                <h3>
                    Phosphorus stand alone indicators generally associated with:</h3>
                <button id="btn_phosphorus" onclick="javascript :print('phosphorus');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Strong bones, glucose to energy conversion, acid/alkaline balance indicator, total
                    nutritional health monitor, parathyroid, Vitamin D deficiency, phosphorus gauge,
                    pancreatic and liver dysfunction, carbohydrate utilization, keeps calcium in solution,
                    burns fats and sugars.</p>
            </div>
            <div class="ideal equal" id="equal_phosphorus" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_phosphorus" style="display: none">
                <h3>
                    Generally associated with Low Phosphorus:</h3>
                <p>
                    Excess soda, sugar, alcohol, junk foods, hypertension, calcium absorption problems,
                    hypochlorhydria, liver problems, nerve burnout, adrenal exhaustion, elevated insulin,
                    nutritional deficiencies, hyper-parathyroid, calcium out of solution, deficiencies
                    in Vitamin D-3, citrus bio-flavanoids, electrolytes, hydrochloric acid, Vitamin
                    C, protein mal-absorption, amino acid deficiency, sub-clinical rickets, vomiting,
                    excess use of anti-acids, diuretics, steroids, medications, severe malnutrition,
                    excess stomach acid, mal-absorption, diabetes, carbohydrate intolerance, low pineal
                    function, metabolic syndrome, hypothyroidism, reduced mental and physical energy,
                    muscle strength, endurance and power, reduced ability to convert glucose to energy,
                    deficiencies in pancreatic enzymes, thiamine, folic acid, niacin, and Vitamin B
                    Complex</p>
                <h3>
                    Corresponding need for nutritional support for Low Phosphorus:</h3>
                <p>
                    Enzyme therapy, magnesium, Boron, Pineal Hormone Restoration, Phosphadtyl Choline,
                    28 Super Amino Acids, L-Arginine, L-Carnitine, Tigers Food, Super Food, Pancreatin,
                    Lignan, Mega B Complex, Bromoline, Golden Seal</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Cal/Mag/Boron Tonic</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 17/18, # 20, # 21</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    High Phenol Green Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Cruciferous Vegetables, Junglelaya</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Stress and Toxin Protector, Endurall, Super Endurance, Ultra E Complex</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Ionic Foot Detox Bath</p>
            </div>
            <div class="high" id="high_phosphorus" style="display: none">
                <h3>
                    Generally associated with High Phosphorus:</h3>
                <p>
                    Diabetes, metabolic acidosis, mal-absorption, dehydrating, hyper-parathyroid, liver
                    sluggishness, over exercise, low calcium levels, decreased ATP, hypoclorhydria,
                    metabolic acidosis, poor carbohydrate utilization, amino acid deficiency, calcium
                    deficiency, excess use of medications, alcohol, sugar, starches, devitalized foods,
                    and meats, liver dysfunction, pineal dysfunction, kidney infection, deficiencies
                    in Vitamin B Complex, boron, magnesium, N-Acetyl Cystein, Vitamin F, turmeric, susceptibility
                    for bone fractures, hypothyroidism, digestive problems muscle contraction upset,
                    toxicity, deficiencies in hydrochloric acid, enzymes, folic acid, choline, L-Methinine,
                    Lysine and L-Arginine
                </p>
                <h3>
                    Corresponding need for nutritional support for High Phosphorus:</h3>
                <p>
                    Nerve Builder, Pineal Hormone Restoration, Hypericum, Absoprtion Enhancer, Crude
                    Apple Cider Vinegar Powder, Stomach Rebuilder Formula, Phosphadtyl Choline, G.I.F.
                    Powder, 28 Super Amino Acids, Mega B Complex 1000, Liver flush, Tiger’s Food, Adrenal
                    Hormone Restoration, Jug One and Jug Two protocol, Morning Health Drink, Green Drink,
                    Iodine/Iodide</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Cal/Mag Boron Tonic, Strong, Bones, Teeth, Nails and Nerve Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 3, # 15, # 22, # 37, # 63, # 828</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Kidney Flush, Detox Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Garden V, Blood Purifier</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Garden V, Blood Purifier</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Chelation Therapy, Ionic Foot Detox Bath</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, zucchini, beets</p>
                <h3>
                    Support:</h3>
                <p>
                    Parathyroid, stomach, adrenals, nerves, pineal, liver, digestion, pancreas. (Homeopathic
                    Remedies: # 8, # 808, # 829, # 834)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_cal_phos">
            <!-- Calcium/Phosphorus Ratio Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Calcium/Phosphorus Ratio</h1>
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
                            <strong class="blue">
                                <label id="i_score_cal_phos">
                                    3.4</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">2.9 - 3.9</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">2.2 - 4.2</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_cal_phos" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('cal_phos');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_cal_phos">
                <h3>
                    Calcium/Phosphorus Ratio stand alone indicators generally associated with:</h3>
                <button id="btn_cal_phos" onclick="javascript :print('cal_phos');return false;" class="print display-none">
                    Print</button>
                <p>
                    Calcium/Phosphorus balance, bone metabolism, acid/alkaline PH balance, parathyroid,
                    minerals, metabolic acidosis gauge, bone, nerve, teeth integrity</p>
            </div>
            <div class="ideal equal" id="equal_cal_phos" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_cal_phos" style="display: none">
                <h3>
                    Generally associated with Low Calcium/Phosphorus Ratio:</h3>
                <p>
                    Poor absorption of calcium, mal-absorption syndrome, hydrochloric acid deficiency,
                    enzyme deficiency, calcium out of solution, metabolic acidosis, excess use of medications,
                    alcohol, soda drinks, sugar, acid foods, dietary calcium deficiency, hyperparathyroidism</p>
                <h3>
                    Corresponding need for nutritional support for Low Calcium/Phosphorus Ratio:</h3>
                <p>
                    Jug One Protocol, Ionic Calcium, Boron, 57 Super Minerals, Magnesium, Silica, Iodine,
                    Cal/Mag</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Strong Bones, Nails, Nerves and Teeth Formula, Sulfur, Cal/Mag/Boron Tonic</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 815</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Bone, Joint and Muscle Formula, Kidney flush</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Drink, Amino Acid Creamed Asparagus Juice, Bone Building Broth</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Vitamin D-3, Bearberry, Cats Claws, Corn Silk, L-Arginine Complex, Pancreatin, Absorption
                    Enhancer</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy</p>
            </div>
            <div class="high" id="high_cal_phos" style="display: none">
                <h3>
                    Generally associated with High Calcium/Phosphorus Ratio:</h3>
                <p>
                    Calcium out of solution, calcium mal-absorption, hyperparathyroidism</p>
                <h3>
                    Corresponding need for nutritional support for High Calcium/Phosphorus Ratio:</h3>
                <p>
                    Absorption enhancer, Enzyme Therapy, Magnesium, Boron, Vitamin D-3, 57 Super Minerals,
                    Green Drink, Stomach Rebuilder Powder</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Sulfur, Liver Detox</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 10, # 806, # 815</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Liver Detox Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Thyroid Broth, magnesium Broth, Fortress Strong, 92% Egg and Milk Protein Isolate</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Enzyme Therapy, I-Thyroid, Sea Life, Liver Formula, Organic Sulfur, Lipotropic Factors,
                    Salmon Oil, Phosphadtyl Choline, Fat Emulsifier, Lignan, Oil of Evening Primrose</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Rife Vibrational Medicine, I.V. Alpha Lipoic Acid Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Kale, artichoke, carrot</p>
                <h3>
                    Support:</h3>
                <p>
                    Parathyroid, thyroid, digestion. (Homeopathic Remedies: # 54, # 820, # 834)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_alka_phos">
            <!-- Alkaline Phosphatase Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Alkaline Phosphatase</h1>
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
                            <strong class="blue">
                                <label id="i_score_alka_phos">
                                    62</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">52 - 72</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">32 - 92</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_alka_phos" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('alka_phos');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_alka_phos">
                <h3>
                    Alkaline Phosphatase stand alone indicators generally associated with:</h3>
                <button id="btn_alka_phos" onclick="javascript :print('alka_phos');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Bone, liver, adrenal, intestinal health indicator, tumor marker, protein utilization,
                    thyroid, parathyroid, osteoporosis, carbohydrate and fat conversion into energy,
                    bone repair, glucose recognition, liver and bone disease monitor</p>
            </div>
            <div class="ideal equal" id="equal_alka_phos" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_alka_phos" style="display: none">
                <h3>
                    Generally associated with Low Alkaline Phosphatase:</h3>
                <p>
                    Multiple nutrition deficiencies, nutritional anemia, hypothyroidism, adrenal depletion,
                    arthritis, premature aging, mal-absorption, malnutrition, excess sugar, junk foods,
                    and carbohydrates, deficiencies in magnesium, zinc, bio-flavanoids, iron, Vitamin’s
                    C and B-12, Iodine/Iodide, amino acids, panathenic acid, Vitamin B Complex, folic
                    acid and enzymes, poor protein utilization, allergies, toxic fluid retention, hay
                    fever, hyper-adrenals, hypoglycemia, unstable and fleeting energy patterns, pancreas,
                    bone and/or liver problems, adrenals, thyroid, liver pancreas, and bones require
                    support</p>
                <h3>
                    Corresponding need for nutritional support for Low Alkaline Phosphatase:</h3>
                <p>
                    Vitamin D-3, Duo C Complex, Magnesium, Zinc, Enzyme Therapy, Iodine/Iodide, Absorption
                    Enhancer, Cats Claw, Chinese Garlic, Endurall, Osteo Joint & Cartilage Support,
                    Phosphadtyl Choline, 57 Super Minerals</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Cal/Mag/Boron Tonic, Liver Support, Adrenal Support</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 10, # 13, # 37</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Detox Formula, Arthritis/Rheumatism Formula, Bones, Joint and Muscle Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Green Drink, Liver Detoxification, Lycopene Broth, Cal/Mag
                </p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Ultra E Complex, Beta Carotene, Norwegian Vitamin A, Adrenal Hormone Restoration
                    Factors, Cal/Mag, Duo C Complex, Liver Formula, Red Blood Cell Builder, Enzyme Therapy,
                    Folic Acid, Absorption Enhancer, Pyridoxine, Alpha Lipoic Acid</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Oxidative Therapy</p>
            </div>
            <div class="high" id="high_alka_phos" style="display: none">
                <h3>
                    Generally associated with High Alkaline Phosphatase:</h3>
                <p>
                    Osteoporosis, deficiencies in Vitamin C and zinc, hypochlorhydria, intestinal inflammation,
                    liver dysfunction, susceptible to biliary cirrhosis, hepatitis, infection, bone
                    loss, ulcerative colitis, bone and connective tissue inflammation, adrenal exhaustion,
                    general debility, dizziness, anxiety, numbness, deficiencies in electrolytes, multiple
                    minerals and lithium</p>
                <h3>
                    Corresponding need for nutritional support for High Alkaline Phosphatase:</h3>
                <p>
                    Magnesium, Boron, Milk Thistle, Maxi Cleanse, Fiber Max, Oral Chelation, Lipotropic
                    Factors, Taurine, L-Arginine, L-Carnitine, 28 Super Amino Acids, Alpha Lipoic Acid</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    87 Sea Minerals, Cal/Mag/Boron Toxin</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 815</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Stomach and Digestion Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    87 Sea Minerals</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Cal/Mag, Silica, Duo C Complex, Nature’s Healer, Absorption Enhancer, Liver Formula,
                    Immune Power Formula, Adrenal Hormone Restoration Therapy, Royal Queen Bee Jelly,
                    Mega B Complex, Osteo Joint and Cartilage, Connective Tissue</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, spinach, broccoli, parsley, watercress, cabbage, celery, oregano</p>
                <h3>
                    Support:</h3>
                <p>
                    Pituitary, liver, thyroid, parathyroid, respiratory, digestive, immune system. (Homeopathic
                    Remedies: # 8, # 10, # 805, # 815, # 819, # 820, # 821)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_sgot">
            <!-- SGOT (AST) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            SGOT (AST)</h1>
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
                            <strong class="blue">
                                <label id="i_score_sgot">
                                    24</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">18 - 30</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">10 - 40</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_sgot" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('sgot');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_sgot">
                <h3>
                    SGOT (AST) stand alone indicators generally associated with:</h3>
                <button id="btn_sgot" onclick="javascript :print('sgot');return false;" class="print display-none">
                    Print</button>
                <p>
                    Liver, heart, cell injury marker, enzyme deficiency, autointoxication, organ tissue
                    breakdown, protein and amino acid assimilation, gonadal balance, liver congestion,
                    poor fat metabolism, free radical pathology, muscle loss, diabetes, number of broken
                    down/dead cells in circulation</p>
            </div>
            <div class="ideal equal" id="equal_sgot" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_sgot" style="display: none">
                <h3>
                    Generally associated with Low SGOT (AST):</h3>
                <p>
                    Enzyme deficiency, liver sluggishness, tissues not repairing, protein mal-absorption,
                    sex hormonal decline, adrenal depletion, inflammatory marker, magnesium, bio-flavanoid,
                    and Vitamin C deficiencies, kidney dysfunction, malnutrition, liver disease, heart
                    disease, myocardial tissue blockage, diabetes, autointoxication, creating a septic
                    condition in the blood. Support required for hypothalamus, gonads, thymus and spleen.
                    Deficiencies in ionic copper, iron and cobalamin</p>
                <h3>
                    Corresponding need for nutritional support for Low SGOT (AST):</h3>
                <p>
                    28 Super Amino Acids, L-Arginine Complex, L-Cystein, Alpha Lipoic Acid, L-Carnitine,
                    Macho Vita, Female Hormone Restoration, Ginseng, Human Growth Hormone, Wheat Grass,
                    Spirulina, Vitamin F, Mega B Complex, Natural herbs, Adrenal Hormone Restoration</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Enzymes, Bio-Ox</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 2, # 17/18, # 819</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    High Phenol Green Tea, Liver Detox, Detox Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super C Active, magnesium Broth, Bio-Flavanoid Complex, Stomach Rebuilding Powder,
                    Cellular Detoxifier, Junglelaya</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Enzyme Therapy, Pyridoxine, Bromoline, Cal/Mag, Bio-Flavanoids, Absorption Enhancer</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Liver Flush, I.V. Alpha Lipoic Acid Drip</p>
            </div>
            <div class="high" id="high_sgot" style="display: none">
                <h3>
                    Generally associated with High SGOT (AST):</h3>
                <p>
                    Liver sluggishness, colon toxicity, heavy metal and/or environmental toxicity, allergies,
                    hormonal deficiencies, deficiencies, in alpha lipoic acid, choline, inositol, taurine,
                    muscle loss, breakdown of heart muscle, liver, kidney muscle, brain tissue breaking
                    down faster than it is regenerating due to autointoxication, liver, pancreas, gall
                    bladder, heart, brain, colon and intestinal inflammation, pineal gland imbalance,
                    excessive use of drugs, alcohol, sugar, junk foods, muscle damage, liver dysfunction,
                    Vitamin B-6 deficiency, cardiac stress, increased risk of heart attack, liver disease,
                    overuse of medications, aspirin, cortisone and codeine, deficiencies in panothenic
                    acid, B Complex and amino acids</p>
                <h3>
                    Corresponding need for nutritional support for High SGOT (AST):</h3>
                <p>
                    Pineal Hormone Restoration, Lipotropic Factors, Super Oil, Fat Emulsifier, Milk
                    Thistle, Immune Power Formula, Super Juice 22 Vegetables, Mega B Complex 1000, Lignan,
                    Wheat Germ Oil</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liver Formula, Stomach Formula, Liquid Sulfur</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 5, # 8, # 10</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Pancreas Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Naturopathic Purification, Morning Health Drink, Green Drink, Bedtime Bowel Tonic,
                    Yogurt health Drink</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Fiber Max, Maxi Cleanser, Liver Formula, Dandelion, Duo C Complex, Alpha Lipoic
                    Acid, Cardio Vita, Bearberry, Corn Silk, Cats Claw, Cranberry Complex, Brain Flush,
                    Lipotropic Factors, Lignan, Fat to Energy, Organic Sulfur, Phosphadtyl Choline,
                    Turmeric</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Ozone Insufflations, Ozone Infused Far Infrared Detoxification
                    Sauna</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Kale, lemon, garlic, tomato, cabbage, broccoli, beet, spinach, plum</p>
                <h3>
                    Support:</h3>
                <p>
                    Sex hormone, liver, pineal, adrenals, immune system. (Homeopathic Remedies: # 10,
                    # 40,# 803, # 804, # 819, # 827, # 829)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_sgpt">
            <!-- SGPT (ALT) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            SGPT (ALT)</h1>
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
                            <strong class="blue">
                                <label id="i_score_sgpt">
                                    24</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">18 - 30</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">10 - 40</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_sgpt" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('sgpt');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_sgpt">
                <h3>
                    SGPT (ALT) stand alone indicators generally associated with:</h3>
                <button id="btn_sgpt" onclick="javascript :print('sgpt');return false;" class="print display-none">
                    Print</button>
                <p>
                    Enzyme, liver, heart, muscle health, inflammatory marker, gonadal, fat absorption,
                    allergies, energy production, glucose conversion,</p>
            </div>
            <div class="ideal equal" id="equal_sgpt" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_sgpt" style="display: none">
                <h3>
                    Generally associated with Low SGPT (ALT):</h3>
                <p>
                    Multiple nutritional deficiencies, mal-absorption, amino acid and protein insufficiency,
                    kidneys overwhelmed with toxins, junk food addiction, colon impaction, slow transition
                    time, excess alcohol, sugar, choline, magnesium, folic acid, Vitamin E, B Complex,
                    N-Acetyl cysteine deficiencies, hypoglycemia, allergies, protein mal-absorption,
                    human growth hormone deficiency, decreased liver activity, malnutrition, prone to
                    genitourinary tract infections, risk of liver damage, deficiencies in iron and niacin</p>
                <h3>
                    Corresponding need for nutritional support for Low SGPT (ALT):</h3>
                <p>
                    Mega B complex 1000, chromium Picolonate, Spirulina, Stress & Toxin protector, Vitamin
                    E, Phosphadtyl Choline, L-Arginine Complex, Macho Vita, Chinese Garlic, Duo C Complex,
                    Endurall, RNA/DNA</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Blood/Kidney Formula, Stomach Digestion Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 12, # 15</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Kidney Flush Formula, Anti-Toxin Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Intestinal Decongestion, Cellular Detoxifier, Kidney Cleanse</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Absorption Enhancer, Crude Apple cider vinegar, Enzyme Therapy, Ultra E Complex,
                    N- Acetyl Cysteine, Cal/Mag, Lipotropic Factors, Phosohadtyl Choline, Lignan, Fiber
                    Max, Maxi Cleanse, L-Taruine</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Rectal Ozone Insufflations, Ionic Foot Detox Bath</p>
            </div>
            <div class="high" id="high_sgpt" style="display: none">
                <h3>
                    Generally associated with High SGPT (ALT):</h3>
                <p>
                    Liver sluggishness, indigestion, pancreas inefficiency, L-Methinine, inositol, taurine
                    deficiencies, inflammation, gonadal under-performance, fat mal-absorption, liver
                    congestion/inflammation, tap water, alcohol, sugar, drugs, shock, muscle trauma,
                    highly toxic, prone to cirrhosis, liver disease, pancreatitis, myocardial infarction,
                    viral and/or infections, hepatitis, multiple tissue breakdown, upset of the energy
                    conversion cycle, deficiencies in Vitamin E and B Complex</p>
                <h3>
                    Corresponding need for nutritional support for High SGPT (ALT):</h3>
                <p>
                    Enzyme Therapy, Liver/Gall Bladder Formula, Fat Emulsifier, Lignan, Milk Thistle,
                    Blood Sugar Cortisol Control</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Pancreas Support Formula, Liver Support Formula, Stomach Digestion, Germanium</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 19, # 21</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Liver Detox Formula, Stomach Formula, Pancreas Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Naturopathic Purification Powder, Kidney Cleanse, V/F-50 Super Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Naturopathic Purification Powder, Kidney Cleanse, V/F-50 Super Juice</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, I.V. Alpha Lipoic Acid Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, tomato, lemon, plum, kale</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, blood sugar, sex hormones. (Homeopathic Remedies: # 8, # 10, # 29, # 30)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_gamma">
            <!-- GAMMA (GT) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            GAMMA (GT)</h1>
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
                            <strong class="blue">
                                <label id="i_score_gamma">
                                    36</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">32 - 40</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">22 - 50</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_gamma" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('gamma');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_gamma">
                <h3>
                    GAMMA (GT) stand alone indicators generally associated with:</h3>
                <button id="btn_gamma" onclick="javascript :print('gamma');return false;" class="print display-none">
                    Print</button>
                <p>
                    Alcohol use, caffeine addiction, liver, gall bladder, pancreas efficiency, inflammatory
                    marker, highly sensitive liver enzyme gauge, liver health indicator</p>
            </div>
            <div class="ideal equal" id="equal_gamma" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_gamma" style="display: none">
                <h3>
                    Generally associated with Low GAMMA (GT):</h3>
                <p>
                    Sluggish liver, anemia, deficiencies in enzymes, zinc, B-6, citrus bio-flavanoid,
                    iron, folic acid, B-12, magnesium, N-Acetyl cysteine, glutathione, Vitamin E, hormonal
                    deficiency</p>
                <h3>
                    Corresponding need for nutritional support for Low GAMMA (GT):</h3>
                <p>
                    Zinc, magnesium, Vitamin E, Liver Formula</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Stomach and Digestion Formula, Liver Support, Liquid Sulfur</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 819</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Detox Tea, High Phenol Green Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super C Active</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Pyridoxine, Mega B Complex 1000, Duo C Complex, N-Acetyl Cystein, Ultra E Complex</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Ionic Foot Detox Bath</p>
            </div>
            <div class="high" id="high_gamma" style="display: none">
                <h3>
                    Generally associated with High GAMMA (GT):</h3>
                <p>
                    Alcohol use, caffeine addiction, gall bladder, pancreas, sluggishness, drug addiction,
                    excess of sugar, bad fats, junk foods, medications, Tylenol, over eating, colon
                    impaction, liver inflammation, liver under-performance, enlarged prostate, heavy
                    metal and/or chemical exposure, autointoxication, bile duct blockage, pancreatitis,
                    hepatitis, deficiencies in enzymes, alpha lipoic acid, conjugated linoleic acid,
                    choline, inositol, glutathione, taurine, Vitamin E, N-Acetyl Cystein, L-Methinine</p>
                <h3>
                    Corresponding need for nutritional support for High GAMMA (GT):</h3>
                <p>
                    Omega 3/6 Essential Fatty Acids, Super Oil, Medazyme, Phosphadtyl Choline, Pancreatin,
                    Milk Thistle, Liver Detox</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liver Support, Pancreas Support, Liquid Sulfur</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 10</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Detox Tea, Essaic Formula, Liver Detox, Pancreas Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Oil, Green Drink, Morning Health Drink, Bedtime Bowel Tonic</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Pancreatin, Lipotropic Factors, Phosohadtyl Choline, lignin, Liver Formula, Milk
                    Thistle, Alpha Lipoic Acid, Fat to Energy, Taurine, N-Acetyl Cysteine, Enzyme Therapy,
                    Fiber Max, Maxi Cleanse</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Ozone Insufflations</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, lemon, beet, zucchini, artichoke, plum, kale</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, pancreas, gonadal, stomach/digestion, pituitary, prostate. (Homeopathic Remedies:
                    # 8, # 10, # 40, # 803, # 804, # 808, # 819, # 820, # 821, # 835</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_ldh">
            <!-- Lactate Dehydrogenase (LDH) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Lactate Dehydrogenase (LDH)</h1>
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
                            <strong class="blue">
                                <label id="i_score_ldh">
                                    165</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">135 - 195</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">100 - 230</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_ldh" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('ldh');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_ldh">
                <h3>
                    LDH stand alone indicators generally associated with:</h3>
                <button id="btn_ldh" onclick="javascript :print('ldh');return false;" class="print display-none">
                    Print</button>
                <p>
                    Carbohydrate tolerance, dehydration, blood sugar, inflammation, metabolic acidosis
                    enzyme,thyroid, heart, kidney, muscles, pancreas, radiation exposure, digestive,
                    toxicity indicators, cell/tissue regeneration/degeneration, sulfur deficiency, cellular
                    breakdown/repair, efficient bio-energy production</p>
            </div>
            <div class="ideal equal" id="equal_ldh" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_ldh" style="display: none">
                <h3>
                    Generally associated with Low LDH:</h3>
                <p>
                    Poor carbohydrate utilization, hypoglycemia, hypotention, fatty liver, deficiencies
                    in enzymes, zinc, Vitamin C, N-Acetyl choline, pancreatic insufficiency, radiation
                    exposure, toxicity, enzyme deficiency, digestive dysfunction, excess sugar in tissue,
                    rapid fermentation causing a toxic condition, deficiency in folic acid, cobalamin,
                    Vitamin B Complex, L-Carnitine, protein, L-Arginine, amino acids</p>
                <h3>
                    Corresponding need for nutritional support for Low LDH:</h3>
                <p>
                    Vitamin B-12, Folic Acid, Absorption Enhancer, Digestive Enzymes, Turmeric, Yarrow,Wheat
                    Grass, Duo C Complex, Alfalfa, Super Juice, 22 Vegetables.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Zinc, Liquid Sulfur</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 17/18, # 21, # 820</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Stomach Formula, Liver Detox, Detox Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Stomach Rebuilding Powder, Spinach Juice and Whey, Amino Acid Beet Juice, Morning
                    Health Drink, Green Drink, Bedtime Bowel Tonic
                </p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    N-Acetyl Cysteine, L-Taurine, Organic Sulfur, Fat Emulsifier, Conjugated Linoleic
                    Acid, Lignan, Enzyme Therapy, Liver Formula, Absorption Enhancer</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Rife Vibrational Medicine, Colon Hydrotherapy, I.V. Alpha Lipoic Acid Drip</p>
            </div>
            <div class="high" id="high_ldh" style="display: none">
                <h3>
                    Generally associated with High LDH:</h3>
                <p>
                    Carbohydrate intolerance, heart stress, heart inflammation, magaloblastic anemia,
                    Vitamin’s B-12, B-6, folic acid deficiencies, liver sluggishness, cellular oxygen
                    deficiency, heart disease, seizures, junk food habit, deficiencies in alpha lipoic
                    acid, choline, inositol, cardiac stress,L-Carnitine, N-Acetyl cysteine, taurine,
                    vitamin E, selenium, infection, anemia, liver disorder, cardiac diseases, hyperinsulism,
                    red blood cell destruction, heart attack precursor, cells/tissue breaking down faster
                    than rebuilding, sulfur deficiency, mental and physical fatigue like symptoms, waste
                    by-products build up faster than they can be eliminated, blood sugar imbalance,
                    diabetic/hypoglycemic symptoms, deficiencies in chromium, zinc, Vitamin B Complex,
                    pancreas requires support</p>
                <h3>
                    Corresponding need for nutritional support for High LDH:</h3>
                <p>
                    RNA/DNA, Endurall, Stress & Toxin Protector, Enzyme Therapy, Blood Sugar Formula,
                    Nerve Builder, Oral Chelation, Spirulina</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Toxicity Correction Formula, Liver Support Formula, Fat Burner Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 7, # 13, #21</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Liver Detox, Pancreas Formula, Circulation Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Amino Acid Creamed Beet, Intestinal Decongestion & Food Transition Tonic, Junglelaya,
                    85% Protein</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Cardio Vita, Enzyme Therapy, Alpha Lipoic Acid, L-Arginine, Lipotropic Factor, Red
                    Blood Cell Builder, N-Acetyl Cysteine, L-Taurine, L-Arginine</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Ozone Rectal Insufflations, Ionic Foot Detox Bath</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, cabbage, apple, tomato, spinach, lemon, plum.</p>
                <h3>
                    Support:</h3>
                <p>
                    Pancreas, liver, heart, digestion, detoxification, cardio-vascular, nerves. (Homeopathic
                    Remedies; #17, #63, #875)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_bilirubin">
            <!-- Bilirubin Total Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Bilirubin Total</h1>
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
                            <strong class="blue">
                                <label id="i_score_bilirubin">
                                    .60</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">.40 - .70</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">.3 - 1.0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_bilirubin" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('bilirubin');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_bilirubin">
                <h3>
                    Bilirubin Total stand alone indicators generally associated with:</h3>
                <button id="btn_bilirubin" onclick="javascript :print('bilirubin');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Liver function and efficiency, bile duct, lymph, spleen, immune gauge, infection
                    fighting capability and toxin disposing powers of the liver</p>
            </div>
            <div class="ideal equal" id="equal_bilirubin" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_bilirubin" style="display: none">
                <h3>
                    Generally associated with Low Bilirubin:</h3>
                <p>
                    Liver sluggishness, cellular oxygen deficiency, enzyme deficiency, caffeine, aspirin,
                    over medicated, drug use, deficiencies in Omega 6 essential fatty acids, choline,
                    inositol,L-Methionine, organic sulfur, N-Acetyl Cystein, taurine, Vitamin E, spleen
                    congestion,system infection, iron deficiency anemia, allergies, toxicity, impaired
                    digestion.</p>
                <h3>
                    Corresponding need for nutritional support for Low Bilirubin:</h3>
                <p>
                    Blood Builder, Iron, Liver Detox, Anti Toxin, Immune Power Formula, Allergy Detox,
                    Red Cloven Blossom, Turmeric, Antioxidant, 57 Super Minerals, Duo C Complex, Chinese
                    Garlic.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liver Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    : # 13, # 22, # 29, # 819</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Liver Detox</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Beet Juice, Spinach with Whey</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Liver Formula, Dandelion Root, milk Thistle</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Alpha Lipoic Acid Drip, Colon Hydrotherapy, rife Vibrational Medicine
                </p>
            </div>
            <div class="high" id="high_bilirubin" style="display: none">
                <h3>
                    Generally associated with High Bilirubin:</h3>
                <p>
                    Liver toxin overwhelm, toxicity, excess alcohol, caffeine, soda, sugar, fried foods,
                    junk foods, constipation, medications, drugs, liver inflammation, liver dysfunction,
                    gall bladder obstruction, liver disease, deficiencies in zinc, Vitamin’s C, A, E,
                    thiamine, cobalamin, panathenic acid, organic sulfur, choline, inositol, taurine,
                    autointoxication, lymphatic system congestion, stressed out liver, hepatitis, over
                    use of oral contraceptives, anemia, immune malfunction, blood stream saturated with
                    morbid materials, septic state
                </p>
                <h3>
                    Corresponding need for nutritional support for High Bilirubin:</h3>
                <p>
                    Liver Detox, Dandelion, Milk Thistle, Alfalfa Juice, Chinese Garlic, L-Cysteine,
                    Organic Sulfur, Lipotropic Factors, Phosphadtyl Choline, Super Oil, Liver/Gall bladder
                    Flush, glandular support for pineal, pituitary, brain, hypothalamus, adrenals, spleen</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Sulfur, Liver Formula, Liquid Silver
                </p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 1, # 4, # 6, # 10</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Liver Detox Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Oil, Amino Acid Creamed Beet Juice Powder, Spinach Juice with Whey, Liver
                    Detoxification, Green Drink, Morning Health Drink, Bedtime Bowel Tonic</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Omega 3, Enzyme Therapy, Lipotropic Factors, Lignan, Phosphadtyl Choline, Organic
                    Sulfur, Liver Formula, N-Acetyl Cysteine, L-Laurine
                </p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Rife Vibrational Medicine, I.V. Alpha Lipoic Acid Drip. I.V. Hydrogen Peroxide Drip,
                    Ozone Therapy, Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Oregano, oil, lemon, asparagus, spinach, jalapeño, beet, plum, fig, broccoli, cauliflower.</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver detoxification, lymph, spleen, immune system, gall bladder. (Homeopathic Remedies;
                    #10, #63, #807, #808, #817, #819)
                </p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_uric">
            <!-- Uric Acid Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Uric Acid</h1>
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
                            <strong class="blue">
                                <label id="i_score_uric">
                                    4.40</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">3.75 - 6.05</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">2.6 - 7.2</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_uric" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('uric');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_uric">
                <h3>
                    Uric Acid stand alone indicators generally associated with:</h3>
                <button id="btn_uric" onclick="javascript :print('uric');return false;" class="print display-none">
                    Print</button>
                <p>
                    Gout related symptoms, arthritis, stiffness, enzyme deficiency, protein utilization,
                    gout, recurrent uric acid/calcium, bad acids toxicity and digestion monitor</p>
            </div>
            <div class="ideal equal" id="equal_uric" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_uric" style="display: none">
                <h3>
                    Generally associated with Low Uric Acid:</h3>
                <p>
                    Spirulina, Endurall, RNA/DNA, 57 Super minerals, Enzyme Therapy, Magnesium, Mega
                    B Complex 1000, B-12, 28 Super Amino Acids, Black Current, Seed Oil, Super Oil,
                    I-Thyroid, Duo C Complex, Absorption Enhancer, Free Radical Neutralizer.</p>
                <h3>
                    Corresponding need for nutritional support for Low Uric Acid:</h3>
                <p>
                    Spirulina, Endurall, RNA/DNA, 57 Super minerals, Enzyme Therapy, Magnesium, Mega
                    B Complex 1000, B-12, 28 Super Amino Acids, Black Current, Seed Oil, Super Oil,
                    I-Thyroid, Duo C Complex, Absorption Enhancer, Free Radical Neutralizer.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid, Copper, Liquid Molybdenum, Stomach & Digestion Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 6, # 10, # 820</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Kidney Flush, Arthritis/Rheumatism Formula, Stomach & Digestion Formula, Cellular
                    Detoxification, VF-50, Liver Detoxification</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Morning Health Drink, Green Drink, Bedtime Bowel Tonic, Kidney Cleanse</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Absorption Enhancer, Enzyme Therapy, Osteo Joint and Cartilage, 57 super minerals,
                    Stress & Free Radical Neutralizer, Pyridoxine, Red Blood Cell Builder, Alfalfa,
                    Mega B Complex 1000, 28 Super Amino Acids, Crude Apple Cider Vinegar</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Ozone Infused Foot Detox Bath</p>
            </div>
            <div class="high" id="high_uric" style="display: none">
                <h3>
                    Generally associated with High Uric Acid:</h3>
                <p>
                    Connective tissue inflammation, joint pain, gout, muscle stiffness, arthritis symptoms,
                    kidney overwhelm drugs, over use of alcohol, coffee, junk foods, desserts, rich
                    foods, starches, meats, devitalized foods, leaky gut syndrome, heart disorders,
                    mal-nutrition, dehydration, lymphatic congestion, toxicity, parasites, fungal infections,
                    psoriasis, diabetes, metabolic acidosis, L-Cystein, colon toxicity, excess cell
                    destruction, cells breaking down faster than they are rebuilding, kidneys not eliminating
                    efficiently, weight loss diets, lead toxicity, gout, metabolic acidosis, skipping
                    meals, deficiencies in Vitamin B-12, molybdenum, enzymes, heavy metals toxicity,
                    increased susceptibility toward arterial sclerosis, liver disease, psoriasis, excess
                    amount of nitrogenous foods, deficiencies in beryllium, calcium, magnesium, strontium,
                    pain, gout type complaints, rheumatic complaints
                </p>
                <h3>
                    Corresponding need for nutritional support for High Uric Acid:</h3>
                <p>
                    Medazyme Therapy, Alfalfa Juice, Chinese Garlic, Duo C Complex, Vitamin E Complex,
                    Super Oil, 57 Super Minerals, L-Cystein, Maxi Cleanse, Mega B Complex 1000, Free
                    Radical Neutralizer, Grape Seede Extract, Fiber Max, Co-Enzyme Q-10, Alpha Lipoic
                    Acid</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Acidosis Correction, Liquid Sulfur, Liquid Magnesium, Arthritis Formula, Heavy Metal
                    Detox</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 9 and # 16</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Blood Cleanse, Bones, Joint Muscle Formula, Arthritis & Rheumatism Formula, Detox
                    Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Oil, Super Green, Super Bowel Cleaner, Blood Purification, Magnesium Broth,
                    Cellular Detoxification, Amino Acid Creamed One Dozen Green Vegetables Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Absorption Enhancer, Ultra E Complex, Cardio Vita, Co-Enzyme Q-10, Fiber Max, Maxi
                    Cleanse, Duo C Complex, Vitamin D-3, Cal/Mag, Enzyme Therapy, Liver Formula, N-Acetyl
                    Cystein</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Alpha Lipoic Acid Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, cabbage, onion, squash, plum, mushroom, fig, parsley.</p>
                <h3>
                    Support:</h3>
                <p>
                    Detoxification, lymph, digestion, bones, connective tissue, heart. (Homeopathic
                    Remedies; #10, #63, #70, #817, #820, #836)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_tot_protein">
            <!-- Total Protein Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Total Protein</h1>
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
                            <strong class="blue">
                                <label id="i_score_tot_protein">
                                    7.3</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">6.9 - 7.6</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">6.0 - 8.3</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_tot_protein" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('tot_protein');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_tot_protein">
                <h3>
                    Total Protein stand alone indicators generally associated with:</h3>
                <button id="btn_tot_protein" onclick="javascript :print('tot_protein');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    The bloods capacity to transport nutrients to the cells, overall nutritional status,
                    overall defense gauge, the body’s ability to repair, rebuild and regenerate itself</p>
            </div>
            <div class="ideal equal" id="equal_tot_protein" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_tot_protein" style="display: none">
                <h3>
                    Generally associated with Low Total Protein:</h3>
                <p>
                    Protein mal-absorption, amino acid deficiency, fasting, poor diet, multiple nutritional
                    deficiencies, compromised immune system, hypochlorhydria, gastritis, malnutrition,
                    pancreatic insufficiency, heavy metal and/or environmental toxicity, hypo-pituitary,
                    hypothyroidism, toxicity, congested heart, liver sluggishness, mal-absorption, hypertension,
                    digestive problems, enzyme, calcium deficiency, fatty liver congestion, liver sluggishness,
                    L-Glutimine, L-Carnitine and hydrochloric acid deficiency</p>
                <h3>
                    Corresponding need for nutritional support for Low Total Protein:</h3>
                <p>
                    28 Super Amino Acids, L-Arginine Complex, Phosphadtyl Choline, Enzyme Therapy, Super
                    Juice 22 Vegetables, Green Drink, Blue Green Algae, Mega B Complex 1000, Vitamin
                    E Complex, Co-Enzyme Q-10, Super Oil, Mega 3/6 Essential fatty Acids, turmeric,
                    Endurall, Alfalfa</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Heavy Metal Detox, Toxicity Correction, Pancreas Support, Stomach and Digestion
                    Formula, Jug One Protocol</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 7, # 8, # 10, # 820, # 821</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Hypoglycemia Formula, Stomach and Digestion Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Stomach Rebuilding Powder, Super Food Drink, Amino Acid Creamed Peas, Fortress Strong</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Absorption Enhancer, Enzyme Therapy, Mega B Complex 1000, 28 Super Amino Acids,
                    Endurall, RNA/DNA, L-Carnitine, L-Arginine, L-glutamine, Immune Power Formula, Duo
                    C Complex, Pancreatin, Oral Chelation</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Rife Vibrational Medicine, I.V. Chelation Therapy</p>
            </div>
            <div class="high" id="high_tot_protein" style="display: none">
                <h3>
                    Generally associated with High Total Protein:</h3>
                <p>
                    Dehydration, inflammation, kidney overload, drug reaction overload, collagen breakdown,
                    diabetes insipidus, protein and amino acid deficiency, collagen disease, rheumatoid
                    arthritis, liver sluggishness, deficiencies in digestive enzymes, bio-flavanoids
                    connective tissue breakdown, deficiencies in digestive enzymes, L-Arginine, metabolic
                    acidosis, adrenal fatigue, liver sluggishness, hypochlorhydria, respiratory diseases,
                    protein mal-absorption, deficiencies in alpha lipoic acid, sulfur, N-Acytle Cystine
                    and L-Methinine</p>
                <h3>
                    Corresponding need for nutritional support for High Total Protein:</h3>
                <p>
                    Adrenal Restoration, Royal Queen Bee Jelly, Liver Detox, Mega B Complex 1000, Stress
                    & Toxin Protector, Enzyme Therapy, Bromaline, Turmeric, Magnesium, Selenium</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liver Support, Pancreas Support, Stomach and Digestion Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 10, # 12, # 22, # 23, # 818, # 820</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Detox Tea, Liver Detox, Stomach Detox</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Super Food Drink, Yogurt Health Drink, Green Drink, Intestinal
                    Decongestion, Amino Acid Creamed One Dozen Green Vegetables Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Alpha Lipoic Acid, Organic Sulfur, N-Acytle Cystein, L-Methinine, Absorption Enhancer,
                    Mega B Complex 1000, Duo C Complex, 28 Super Amino Acids, Enzyme Therapy, Liver
                    Formula, Pancreatin</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, I.V. Alpha Lipoic Acid Drip, I.V. Ozone Therapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, zucchini, cabbage, tomato, onion, beet, squash, lemon, plum, fig</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, digestion, pancreas, pituitary, adrenal, gonads, thyroid. (Homeopathic Remedies;
                    #8, #10, #805)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_albumin">
            <!-- Albumin  Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Albumin</h1>
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
                            <strong class="blue">
                                <label id="i_score_albumin">
                                    4.2</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">3.9 - 4.5</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">3.7 - 5.5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_albumin" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('albumin');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_albumin">
                <h3>
                    Albumin stand alone indicators generally associated with:</h3>
                <button id="btn_albumin" onclick="javascript :print('albumin');return false;" class="print display-none">
                    Print</button>
                <p>
                    Cellular repair, degeneration/regeneration, absorption of nutrients, stress, inflammation,
                    osmotic pressure, overall nutritional status gauge, blood protein available for
                    repairs</p>
            </div>
            <div class="ideal equal" id="equal_albumin" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_albumin" style="display: none">
                <h3>
                    Generally associated with Low Albumin:</h3>
                <p>
                    Protein/amino acid deficiency, excess junk food, sugar, hypochlorhydria, enzyme
                    deficiency, insufficient raw vegetables, cells breaking down faster than they are
                    rebuilding, kidney toxic over run, toxic fluid retention, bloating, liver sluggishness,
                    immune system compromise, loss of muscle tissue, human growth hormone deficiency,
                    deficiencies in vitamin B-12, folic acid, vitamin C, Vitamin E, beta carotene, calcium,
                    boron, vitamin D-3, magnesium, choline, malnutrition, G.I. tract problems, inflammation,
                    reduces osmotic pressure, reduces nutrient ability to transfer nutrients to the
                    cells, dehydration</p>
                <h3>
                    Corresponding need for nutritional support for Low Albumin:</h3>
                <p>
                    Super Drink, 28 Super Amino Acids, L-Arginine Complex, Enzyme Therapy, Wheat Grass,
                    Green Drink.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Cal/Mag/Boron</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 9, # 24</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Stomach and Digestion Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Stomach Rebuilding Powder, Crude Apple Cider Vinegar</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Absorption Enhancer, Enzyme Therapy, Crude Apple Cider Vinegar, 28 Super Amino Acids,
                    L-Arginine, L-Carnitine, Red Blood Cell Building, Vitamin D-3, Cal/Mag, Ultra E
                    Complex, Beta Carotene, Lipotropic Factor, Duo C Complex, Folic Acid, Liver Formula,
                    Alpha Lipoic Acid</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, I.V. Alpha Lipoic Acid, I.V. Ozone Therapy, Ozone Ionic Foot
                    Detox Bath</p>
            </div>
            <div class="high" id="high_albumin" style="display: none">
                <h3>
                    Generally associated with High Albumin:</h3>
                <p>
                    Nerve depletion, burn out, adrenal exhaustion, tension, anxiety, dehydration, inflammation,
                    diabetes, G.I. problems, nutritional deficiencies, deficiencies in choline, inositol,
                    omega 3/6 essential fatty acids, magnesium, L-Methionine, taruine, iodine, stress
                    overwhelm, lymphatic stagnation, highly toxic condition, over use of drugs, sugar,
                    alcohol, junk foods, hypothyroid, arteriosclerosis, kidney overload affecting liver,
                    Vitamin C and bio-flavanoid deficiency, possible renal disease, liver disease, the
                    body’s self protecting system over reacting to stress, excess albumin build from
                    resulting from shock, overstrain and/or overwhelming stress</p>
                <h3>
                    Corresponding need for nutritional support for High Albumin:</h3>
                <p>
                    Mega B Complex 1000, Turmeric, 57 Minerals, Nerve Builder, Co-Enzyme Q-10, Alpha
                    Lipoic Acid, Super Oil, Green Drink, Blue Green Algae, Alfalfa, Super Juice, 27
                    Vegetables, Hypericum, Stress & Toxin Protector, Enzyme Therapy, L-Cysteine</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Adrenal Support, Stress & Nerve Repair, Liquid Magnesium, Liquid Iodine, Liquid
                    Lithium, Liquid Gold</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 3, # 12, # 17, # 50</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Tranquility Tea, Nerve Rejuvenation</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Super Food Drink, Power Booster, Fortress Strong, Magnesium Broth</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Hypericum, Nerve Builder, Sargeant Strong, Mega B Complex, Stress & Toxin Protector</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, I.V. Ozone Therapy, Brainwashing Therapy, Rife Vibration Therapy,
                    Light and Sound therapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, zucchini, broccoli, beet, kale, avocado, mushroom, organic sulfur, cauliflower,
                    sprouts, fig</p>
                <h3>
                    Support:</h3>
                <p>
                    Digestion, liver, kidneys, nervous system, psyche, lymph’s, thyroid, cardio-vascular,
                    pituitary, colon, detoxification. (Homeopathic Remedies; #8, #17, #40, #55, #63,
                    #805, #812, #823)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_calcium_albumin">
            <!-- Calcium/Albumin Ratio Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Calcium/Albumin Ratio</h1>
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
                            <strong class="blue">
                                <label id="i_score_calcium_albumin">
                                    2.9</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">2.0 - 3.7</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">1.2 - 4.5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_calcium_albumin" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('calcium_albumin');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_calcium_albumin">
                <h3>
                    Calcium/Albumin Ratio stand alone indicators generally associated with:</h3>
                <button id="btn_calcium_albumin" onclick="javascript :print('calcium_albumin');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Parathyroid function, G.I. Tract, liver, inflammation, total nutrition, dehydration
                    gauge.</p>
            </div>
            <div class="ideal equal" id="equal_calcium_albumin" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_calcium_albumin" style="display: none">
                <h3>
                    Generally associated with Low Calcium/Albumin Ratio:</h3>
                <p>
                    Protein deficiency, loss of muscle tissue, dehydration, adult onset, human growth
                    hormone deficiency, vitamin D-3 deficiency, kidney overwhelm due to toxicity, mal-absorption
                    syndrome, hyperparathyroidism, pancreatitis, hypochlorhydia, calcium deficiency.</p>
                <h3>
                    Corresponding need for nutritional support for Low Calcium/Albumin Ratio:</h3>
                <p>
                    Okinawan Longevity Formula, 57 Super Minerals, 28 Super Amino Acids</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Stomach & Digestion Formula, Liquid Enzymes, Bio-Ox</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 815</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Detox Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Food Drink, Jug One Protocol, Bedtime Bowel Tonic, Morning Health Drink, Super
                    Oil, Co-Enzyme Q-10, Omega 3</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Absorption Enhancer, Crude Apple Cider Vinegar, Vitamin D-3, Enzyme Therapy, Bearberry,
                    Corn Silk, 28 Super Amino Acids, L-Glutimine, L-Arginine, L-Carnitine</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Ionic Foot Detox Bath with Ozone, I.V. Ozone Therapy
                </p>
            </div>
            <div class="high" id="high_calcium_albumin" style="display: none">
                <h3>
                    Generally associated with High Calcium/Albumin Ratio:</h3>
                <p>
                    Hypothyroidism, hyperparathyroidism, liver toxicity, dehydration, enzyme deficiency,
                    calcium out of solution, protein/amino acid deficiency, metabolic acidosis.</p>
                <h3>
                    Corresponding need for nutritional support for High Calcium/Albumin Ratio:</h3>
                <p>
                    Magnesium, Boron, Absorption Enhancer, Metazyme Therapy, Enzyme Therapy, Bromaline,
                    28 Super Amino Acids, Super Drink.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Sulfur, Liver Support</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 806</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Liver Detox</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Amino Acid Creamed Beet Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    I-Thyroid, Sea Life, Alpha Lipoic Acid, Organic Sulfur, Absorption Enhancer, Enzyme
                    Therapy</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Alpha Lipoic Acid Drip, I.V. Ozone Therapy, I.V. Hydrogen Peroxide Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, lemon, kale, cabbage, broccoli, spinach, fig, plum</p>
                <h3>
                    Support:</h3>
                <p>
                    Parathyroid, bones, connective tissue, stomach, digestion, colon. (Homeopathic Remedies:#815,
                    #828)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_tot_iron">
            <!-- Total Iron Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Iron</h1>
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
                            <strong class="blue">
                                <label id="i_score_tot_iron">
                                    105</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">90 - 120</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">60 - 150</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_tot_iron" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('tot_iron');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_tot_iron">
                <h3>
                    Total Iron stand alone indicators generally associated with:</h3>
                <button id="btn_tot_iron" onclick="javascript :print('tot_iron');return false;" class="print display-none">
                    Print</button>
                <p>
                    Tired Blood, anemia, cellular blood oxygen gauge, liver function, hemoglobin production</p>
            </div>
            <div class="ideal equal" id="equal_tot_iron" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_tot_iron" style="display: none">
                <h3>
                    Generally associated with Low Total Iron:</h3>
                <p>
                    Anemia, Excessive menstruation, hemorrhoids, aspirin use, junk food diet, premature
                    aging, malnutrition, cells not repairing, inflammation, kidney disease, infections,
                    stress anxiety, worry, rheumatoid arthritis, Vegetarianism, mal-absorption, liver
                    sluggishness, free radical pathology, infection, vitamin C deficiency, stress overwhelm,
                    deficiencies in iron, B-12 and C, folic acid, manganese, chromium, molybdenum, vanadium,
                    potential loss of hemoglobin necessary to carry oxygen to the cells and transport
                    toxins and carbon dioxide out of the cells</p>
                <h3>
                    Corresponding need for nutritional support for Low Total Iron:</h3>
                <p>
                    Anti Anemia Complex, Anti Fatigue, Super Green, Irish Moss/Kelp, Sea Life, Blue/Green
                    Algae, Red Blood Builder, Folic Acid, B-12, 28 Super Amino Acids, Endurall, Duo
                    C Complex, Blood Building Broth.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Iron, Anti Anemia, Anti Fatigue, High Phenol Green Tea</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 9, # 34</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Circulation Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Blood Building Broth, Green Drink, Spinach and Whey, Amino Acid Creamed Beet Juice,
                    Amino Acid One Dozen Green Vegetable Juice, Vegetarian Blood Builder, Fortress Strong</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Anti Anemia, Anti Fatigue, Red Blood Cell Builder, Folic Acid, Duo C Complex, Hypericum,
                    Mega B Complex</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Super Nutritional Drip, Vitamin B-12 Shot</p>
            </div>
            <div class="high" id="high_tot_iron" style="display: none">
                <h3>
                    Generally associated with High Total Iron:</h3>
                <p>
                    Oral contraceptives, lead toxicity, heavy metal and/or environmental toxicity, liver
                    overload, well water, tap water, excess junk food, hemochromatosis, spleen dysfunction,
                    protein mal-absorption, paradoxin deficiency, cobalamin deficiency, allergies, iron
                    toxicity, iron overload, chemical/environmental exposure excess blood fats jamming
                    the electric transmission of oxygen, deficiencies in alpha lipoic acid, sulfur,
                    enzymes, bio-flavanoids, cellular oxygen deficiency, autointoxication, use of synthetic
                    iron supplements
                </p>
                <h3>
                    Corresponding need for nutritional support for High Total Iron:</h3>
                <p>
                    Liver Detox, Maxi Cleanse, Fiber Max, Yarrow, L-Cystein, Organic Sulfur, Folic Acid,
                    alfalfa Juice, Mega B Complex, Paradoxin, Cobalamin</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Toxicity Correction, Heavy Metal Detox, Liver Support</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 6, # 10</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Anti Toxin Tea, Blood Cleanse Tea, Detox Tea, Kidney Flush</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Morning Health Drink, Green Drink, Bedtime Bowel Tonic, Jug One Protocol, Jug Two
                    Protocol</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Alpha Lipoic Acid, Organic Sulfur, Oral Chelation, Duo C Complex, Enzyme Therapy</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Chelation Therapy, Colon Hydrotherapy, Liver Flush, Ozone Infused Far Infrared
                    Detoxification Sauna, Naturopathic Detoxification, Ionic Foot Detox Bath with Ozone,
                    I.V. Alpha Lipoic Acid</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, spinach, kale, mushroom, avocado, garlic, horseradish, green onion, plum,
                    fig.</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, spleen, detoxification. (Homeopathic Remedies: #10, #63, #808, #819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_iron_bnding">
            <!-- Iron Binding Capacity Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Iron Binding Capacity</h1>
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
                            <strong class="blue">
                                <label id="i_score_iron_bnding">
                                    255</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">205 - 305</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">112 - 400</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_iron_bnding" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('iron_bnding');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_iron_bnding">
                <h3>
                    Iron Binding Capacity stand alone indicators generally associated with:</h3>
                <button id="btn_iron_bnding" onclick="javascript :print('iron_bnding');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    The ability of iron to bind to its receptor site and get into the cell, gauge for
                    too much or too little iron, heavy metal toxicity and/or environmental pollution
                    occupying the receptor site.</p>
            </div>
            <div class="ideal equal" id="equal_iron_bnding" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_iron_bnding" style="display: none">
                <h3>
                    Generally associated with Low Iron Binding Capacity:</h3>
                <p>
                    Blocked receptor site, heavy metal toxicity, highly toxic condition, environmental
                    overload, fatigue, dizziness, rapid heartbeat, muscle loss, brain fog, cellular
                    oxygen deficiency, hemochromatosis, protein mal-absorption, liver sluggishness,
                    B-12, B-6, folic acid deficiencies
                </p>
            </div>
            <div class="high" id="high_iron_bnding" style="display: none">
                <h3>
                    Generally associated with High Iron Binding Capacity:/h3>
                    <p>
                        Hemocromatosis, inflammation, liver mal-function, iron deficiency anemia, blood
                        loss,bio-flavanoid deficiency</p>
                    <h3>
                        Corresponding need for nutritional support for Low/High Iron Binding Capacity:</h3>
                    <p>
                        Duo C Complex, Bio-Flavanoids.</p>
                    <h3>
                        Ionic Liquid Mineral Formulations and Tonics:</h3>
                    <p>
                        Heavy Metal Detox</p>
                    <h3>
                        Homeopathic Remedies Number:</h3>
                    <p>
                        # 69</p>
                    <h3>
                        Botanical Healing Tea Formulations:</h3>
                    <p>
                        Detox Tea</p>
                    <h3>
                        Naturopathic Food Medicine Formulations:</h3>
                    <p>
                        Jug One Protocol, Jug Two Protocol, Morning Health Drink, Green Drink, Bedtime Bowel
                        Tonic</p>
                    <h3>
                        Vitamin and Nutraceutical Supplements:</h3>
                    <p>
                        Oral Chelation Therapy</p>
                    <h3>
                        Clinical Treatments Indicated:</h3>
                    <p>
                        I.V. Ozone Therapy, I.V. Chelation Therapy, Hyperbaric Oxygen Therapy, Ionic Foot
                        Detoxt Bath, Ozone Infused Far Infrared Detoxification Sauna</p>
                    <h3>
                        Vegetable Juice Concentrates:</h3>
                    <p>
                        Beet, spinach, tomato, broccoli, celery, garlic, onion, parsley.</p>
                    <h3>
                        Support:</h3>
                    <p>
                        Liver. (Homeopathic Remedies: #10, #819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_wbc">
            <!-- White Blood Cell Count – (WBC) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            White Blood Cell Count – (WBC)</h1>
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
                            <strong class="blue">
                                <label id="i_score_wbc">
                                    7.3</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">6.3 - 8.3</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">3.8- 10.8</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_wbc" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('wbc');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_wbc">
                <h3>
                    WBC stand alone indicators generally associated with:</h3>
                <button id="btn_wbc" onclick="javascript :print('wbc');return false;" class="print display-none">
                    Print</button>
                <p>
                    Thymus gland and immune system competency.</p>
            </div>
            <div class="ideal equal" id="equal_wbc" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_wbc" style="display: none">
                <h3>
                    Generally associated with Low WBC:</h3>
                <p>
                    Immune overwhelm due to toxicity, bone marrow suppression, enzyme deficiency, radiation,
                    chemotherapy, over use of medication, sugar, alcohol, fast foods, malnutrition,
                    exhausted immune system and high susceptibility, low defense capacity, pancreatic
                    insufficiency, environmental exposure, cellular oxygen deficiency, mal-absorption,
                    bowel impaction, slow transition time of food, allergies, adrenal exhaustion, multiple
                    nutritional deficiencies, hepatitis, auto immune condition due to toxicity overrun</p>
                <h3>
                    Corresponding need for nutritional support for Low WBC:</h3>
                <p>
                    Glutathine, Immune Formula, Essaic, Lymph Formula, Bowel Tonic, Super C Active,
                    Astruglas.</p>
            </div>
            <div class="high" id="high_wbc" style="display: none">
                <h3>
                    Generally associated with High WBC:</h3>
                <p>
                    Nerves, stress, anxiety, depression, worry, negative mental attitude, inflammatory
                    conditions, viral/bacterial infections, toxicity, cellular oxygen deficiency, heavy
                    metal toxicity, multiple nutritional deficiencies, and parasites.</p>
                <h3>
                    Corresponding need for nutritional support for High/Low WBC:</h3>
                <p>
                    Glutathine, Liver Detox, Immune Formula, Lung Forumula, Detox Tea, Green Drink,
                    Beta Carotene, Vitamin E Complex, Chinese Garlic, Super C Active, Echinacea, Propolis,
                    Turmeric, Stress & Toxin Protector.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Zinc, Liquid Silver, Toxicity Correction, Immune Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 12, # 14, # 15, # 17/18, # 807</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Immune Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Blood Purification, Garden V, Fortress Strong, Nerve Rejuvenator,
                    Magnesium Broth, Bio-Flavanoids, Lycopene Broth, VF-50</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Duo C Complex, Enzyme Therapy, Nature’s Healer, Fiber Max, Maxi Cleanse, Absorption
                    Enhancer, Immune Power Formula, Pancreatin, Adrenal Restoration, Allergy Formula</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Hydrogen Peroxide Drip, I.V. Immune Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Mushroom, horseradish, broccoli, carrot, peas, spinach, plum, green pepper, asparagus,
                    parsley, oranges, lemon.</p>
                <h3>
                    Support:</h3>
                <p>
                    Immune system, lymphatic system, liver, thymus, colon, detoxification, lungs, (Homeopathic
                    Remedies; #4, #63, #807, #817)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_rbc">
            <!-- Red Blood Cell Count – (RBC) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Red Blood Cell Count – (RBC)</h1>
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
                            <strong class="blue">
                                <label id="i_score_rbc">
                                    5.50</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">4.90 - 5.90</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">4.4 - 6.1</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_rbc" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('rbc');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_rbc">
                <h3>
                    RBC stand alone indicators generally associated with:</h3>
                <button id="btn_rbc" onclick="javascript :print('rbc');return false;" class="print display-none">
                    Print</button>
                <p>
                    Oxygen carrying capacity, total number of red blood cells gauge, water, temperature,
                    carbon dioxide, glucose, nutrition to cells regulator.</p>
            </div>
            <div class="ideal equal" id="equal_rbc" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_rbc" style="display: none">
                <h3>
                    Generally associated with Low RBC:</h3>
                <p>
                    Anemia, malaise, fatigue, dizziness, cold extremities, rapid heartbeat, deficiencies
                    in citrus, bio-flavanoid, folic acid, L-Arginine, L-Carnintine, B-6, B complex,
                    iron, vitamin B-12, vitamin C, protein and bone marrow, blood loss, toxic chemical
                    exposure, iron anemia, susceptibility towards chronic infection, Addison’s disease,
                    Hodgkin’s, Lupus.</p>
                <h3>
                    Corresponding need for nutritional support for Low RBC:</h3>
                <p>
                    Blood Building Broth, Red Blood Cell Builder, Endurall, Wheat Germ Oil, Alfalfa
                    Juice, Capsicum, Anti Anemia Complex, Anti Fatigue.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Iron, Anti Fatigue, Anti Anemia</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 29, # 32, # 34</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Energy Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Bio-Flavanoids, Green Drink, Beet Juice Powder</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Endurall, Folic Acid, Red Blood Builder, Ultra E Complex, Duo C Complex, L-Carnitine,
                    L-Arginine, Lipotropic Factor, Anti Anemia, Anti Fatigue, Cardio Vascular Formula</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Hyperbaric Oxygen Therapy, I.V. Ozone Therapy</p>
            </div>
            <div class="high" id="high_rbc" style="display: none">
                <h3>
                    Generally associated with High RBC:</h3>
                <p>
                    Poor blood circulation, high blood pressure, blood vessels clotting up, early warning
                    pre-cursor to stroke, dehydration, pulmonary problems, high altitude, congenital
                    heart disease, poor color to skin and nails, excess medications, chemical exposure,
                    heavy metal toxicity, environmental pollution, autointoxication, liver problems,
                    poor circulation, adrenal depletion, deficiency in vitamin E, C, and N-Acetyl Cysteine,
                    hemochromatosis, smoking, obesity, lack of fitness, susceptibility towards pulmonary
                    disease, cardio-vascular disease, cellular oxygen deficiency</p>
                <h3>
                    Corresponding need for nutritional support for High RBC:</h3>
                <p>
                    Free Radical Neutralizer, Turmeric, Anti Oxidant, Beta Carotene, Yarba Santa, Goat
                    Whey, Vitamin E, Super Endurance, Adrenal Restoration, Mega B Complex 1000. Lung
                    Tea, Green Drink, Duo C complex, Chinese Garlic, Oregano Oil, Irish Moss/Kelp.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Circulation Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 825</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Circulation Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Blood Building Broth, Jug One Protocol, Green Drink, Naturopathic Purification Powder,
                    Super Oil, Amino Acid Creamed One Dozen Green Vegetables Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    N-Acetyl Cysteine, L-Arginine, L-Carnitine, Hawthorn Berry, Nature’s flush, Cardio
                    Vita, Ultra E complex, Wheat Germ Oil, Nawokinase, Chinese Medicine Garlic</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Chelation Therapy, Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, spinach, broccoli, jalapeno, parsley, peas, alfalfa, green onion, horseradish,
                    garlic, kale, plum</p>
                <h3>
                    Support:</h3>
                <p>
                    Adrenals, lungs, circulation, heart, nutrition. (Homeopathic Remedies: #23, #66,
                    #825, #826, #829)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_hemoglobin">
            <!-- Hemoglobin Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Hemoglobin</h1>
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
                            <strong class="blue">
                                <label id="i_score_hemoglobin">
                                    15.5</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">14.5 - 16.5</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">13.5 - 17.6</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_hemoglobin" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('hemoglobin');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_hemoglobin">
                <h3>
                    Hemoglobin stand alone indicators generally associated with:</h3>
                <button id="btn_hemoglobin" onclick="javascript :print('hemoglobin');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Cellular/Blood oxygen deficiency, bone marrow efficiency, carries oxygen to cells
                    and takes carbon dioxide out</p>
            </div>
            <div class="ideal equal" id="equal_hemoglobin" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_hemoglobin" style="display: none">
                <h3>
                    Generally associated with Low Hemoglobin:</h3>
                <p>
                    Cellular oxygen deficiency, deficiency in iron, folic acid, copper, vitamin B complex,
                    protein, vitamin B-6, vitamin B-12, vitamin C, blood loss, menses, anemia, hypochlorhydria,
                    mal-absorption, toxicity, early cancer warning signal</p>
                <h3>
                    Corresponding need for nutritional support for Low Hemoglobin:</h3>
                <p>
                    Duo C Complex, Blood Building Broth, Mega B Complex 1000, Ionic Copper, Endurall,
                    Super Juice 22 Vegetables, Irish Moss/Kelp, Anti Anemia, Enzyme Therapy</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Iron, Toxicity Correction</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 8, # 34
                </p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Bowel Tea, Circulation Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Blood Building Broth, Jug one Protocol, Morning Health Drink, Green Drink, Bedtime
                    Bowel Tonic</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Absorption Enhancer, anti Anemia Complex, Red Blood Cell Builder, Endurall, Fiber
                    Max, Maxi Cleanse</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Hyperbaric Oxygen Therapy, Colon Hydrotherapy</p>
            </div>
            <div class="high" id="high_hemoglobin" style="display: none">
                <h3>
                    Generally associated with High Hemoglobin:</h3>
                <p>
                    Excessive red blood cell production, blood thickening, early warning signal of stroke,
                    spleen and pulmonary dysfunction, hypoxia, allergies, high altitudes, iron toxicity,
                    metabolic acidosis, excessive bone marrow activity, medications, asthma, adrenal
                    fatigue, deficiencies in vitamin C, vitamin E, citrus, bio-flavanoids, dehydration,
                    hemochromatosis
                </p>
                <h3>
                    Corresponding need for nutritional support for High Hemoglobin:</h3>
                <p>
                    Beta Carotene, Vitamin E Complex, Wheat Germ Oil, Adrenal Restoration, Yarba Santa,
                    Mega B Complex 1000, Chinese Garlic, Oregano Oil Extract, Duo C Complex, Immune
                    Power Formula, Lung Formula.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Adrenal Support</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 46, # 51, # 829</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Blood Cleanse, Energy Tea, Immune Tea, Circulation Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Green Drink, Beet Juice, Jug One Protocol, Super C Active, Vegetarian Blood builder,
                    Cellular Detoxification, Amino Acid Creamed One Dozen Vegetables Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Immune Power Formula, Duo C Complex, Ultra E Complex, Adrenal Hormone Restoration</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Hyperbaric Oxygen Therapy, Ozone Infused Far infrared Detoxification Sauna</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Spinach, beet, carrot, yam, broccoli</p>
                <h3>
                    Support:</h3>
                <p>
                    Spleen, cardio-vascular, adrenals, lungs, immune system, detoxification, liver,
                    bone marrow (Homeopathic Remedies: #63, #807, #808, #825, #826)
                </p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_hematocrit">
            <!-- Hematocrit Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Hematocrit</h1>
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
                            <strong class="blue">
                                <label id="i_score_hematocrit">
                                    46</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">43 - 49</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">40- 52</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_hematocrit" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('hematocrit');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_hematocrit">
                <h3>
                    Hematocrit stand alone indicators generally associated with:</h3>
                <button id="btn_hematocrit" onclick="javascript :print('hematocrit');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Determines the concentration of oxygen carrying red blood cells in blood, measures
                    proportion of red blood cells in plasma, measures the amount of hemoglobin contained
                    in the blood, red blood cell production.</p>
            </div>
            <div class="ideal equal" id="equal_hematocrit" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_hematocrit" style="display: none">
                <h3>
                    Generally associated with Low Hematocrit:</h3>
                <p>
                    Nutritional deficiency anemia, cellular oxygen deficiency, toxicity, blood loss</p>
                <h3>
                    Corresponding need for nutritional support for Low Hematocrit:</h3>
                <p>
                    Liver Formula, Endurall, Super Endurance. Wheat Grass.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Magnesium, Immune Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Immune Tea, Detox Tea, Lung Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Stomach Rebuilding Powder, Yogurt health Drink, Green Drink, Jug One Protocol, Bedtime
                    Bowel Tonic</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Fiber Max, Maxi Cleanse, Alpha Lipoic Acid</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Hyperbaric Oxygen Therapy</p>
            </div>
            <div class="high" id="high_hematocrit" style="display: none">
                <h3>
                    Generally associated with High Hematocrit:</h3>
                <p>
                    Colon toxicity, intestine inflammation, dehydration, spleen overwhelm, allergies,
                    shock, stress overwhelm, immune system, asthma, respiratory problems, high altitude,
                    hemochromatosis</p>
                <h3>
                    Corresponding need for nutritional support for High Hematocrit:</h3>
                <p>
                    Stress & Toxin Protector, 57 Super Minerals, Anti Oxidant, Super Juice, 22 Vegetables,
                    Nerve Builder, Hypericum.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Bio-Ox, Liquid Enzymes, Aloe Vera Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 46, # 51, # 60</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Respiratory Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Morning health Drink, Green Drink, Bedtime Bowel Tonic</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Duo C Complex, Fiber Max, Maxi Cleanse</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Alfalfa, green drink, beet, spinach, jalapeno, kale</p>
                <h3>
                    Support:</h3>
                <p>
                    Nutrition, circulation, oxygen, liver. (Homeopathic Remedies: #10, #66)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_mvc">
            <!-- Mean Corpuscular Volume – (MCV) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Mean Corpuscular Volume – (MCV)</h1>
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
                            <strong class="blue">
                                <label id="i_score_mvc">
                                    90</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">85 - 95</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">80- 100</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_mvc" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('mvc');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_mvc">
                <h3>
                    MCV stand alone indicators generally associated with:</h3>
                <button id="btn_mvc" onclick="javascript :print('mvc');return false;" class="print display-none">
                    Print</button>
                <p>
                    Nutritional deficiency syndrome, screens for occult alcoholic excess, over medication,
                    sugar, devitalized foods, red blood cell production gauge</p>
            </div>
            <div class="ideal equal" id="equal_mvc" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_mvc" style="display: none">
                <h3>
                    Generally associated with Low MCV:</h3>
                <p>
                    Mal-absorption syndrome resulting in multiple nutritional deficiencies, heavy metal,
                    lead and/or environmental toxicity, cellular oxygen deficiency, severe iron deficiency,
                    anemia, radiation exposure, hypochlorhydria, deficiencies in Bio-Flavanoids, Vitamins
                    B-6 and B-12, chlorophyll, red blood cells, folic acid, intestinal parasites, free
                    radical pathology, internal bleeding</p>
                <h3>
                    Corresponding need for nutritional support for Low MCV:</h3>
                <p>
                    Anti Anemia Complex, Blood Builder Broth, Ionic Copper, Pyridoxine, Irish Moss/Kelp.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Stomach & Digestion Formula, Heavy Metal Detoxification, Toxicity Correction</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 7, # 8, # 10, # 820</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Detox Tea,</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Green Drink, Bedtime Bowel Tonic</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Fiber Max, Maxi Cleanse, Absorption Enhancer, Enzyme Therapy, 57 Super Minerals,
                    36 Nutrients in One</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Hyperbaric Oxygen Therapy, I.V. Chelation Therapy, Ozone Infused Far Infrared Detoxification
                    Therapy, Ionic Foot Detox Bath with Ozone</p>
            </div>
            <div class="high" id="high_mvc" style="display: none">
                <h3>
                    Generally associated with High MCV:</h3>
                <p>
                    Parasitic infections, malnutrition, megaloblastic anemia, excess use of alcohol,
                    over medication, poor nutrition, intestinal parasites, cellular oxygen deficiency,
                    high altitude, multiple nutritional deficiencies, homocysteine toxicity</p>
                <h3>
                    Corresponding need for nutritional support for High MCV:</h3>
                <p>
                    Folic Acid, B-12, Endurall, Mega B Complex 1000, Capsicum, Vitamin E Complex.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Germanium, Acidosis Correction</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 59</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Bowel Tea, Immune Tea, Blood Cleanser</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Bedtime Bowel Tonic, Parasite Annihilation Powder, Naturopathic Purification Powder,
                    Worm Weed, Yogurt Health Drink, Blood Purification</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Chinese Medicinal Garlic, Oregano Extract, Parasite Protection, Worm Weed</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Ozone Rectal Insufflations, I.V. Hydrogen Peroxide Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Kale, spinach, avocado, asparagus, tomato</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, circulation, nutrition, oxygen. (Homeopathic Remedy: #819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_mch">
            <!-- Mean Corpuscular Hemoglobin – (MCH) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Mean Corpuscular Hemoglobin – (MCH)</h1>
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
                            <strong class="blue">
                                <label id="i_score_mch">
                                    30</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">29 - 31</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">27- 33</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_mch" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('mch');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_mch">
                <h3>
                    MCH stand alone indicators generally associated with:</h3>
                <button id="btn_mch" onclick="javascript :print('mch');return false;" class="print display-none">
                    Print</button>
                <p>
                    Cellular/Serum oxygen deficiency, determines the type of anemia and nutritional
                    deficiency, measures the amount of hemoglobin present in red blood cells, measures
                    the severity of anemia</p>
            </div>
            <div class="ideal equal" id="equal_mch" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_mch" style="display: none">
                <h3>
                    Generally associated with Low MCH:</h3>
                <p>
                    Heavy metal toxicity, cellular/blood oxygen deficiency, internal bleeding, radiation
                    exposure, iron deficiency anemia, hypochlorhydria, parasites, cells not regenerating,
                    deficiencies in iron, vitamins B-6 and C, deficiency in L-Arginine, severely anemic</p>
                <h3>
                    Corresponding need for nutritional support for Low MCH:</h3>
                <p>
                    Oral Chelation, 57 Super Minerals, Pyridoxine, Duo C Complex, Anti Anemia Complex,
                    Endurall, Chlorellina, Super Juice 22 Vegetables, Red Blood Cell Builder, Blood
                    Builder Broth, Green Drink.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Heavy Metal Detoxification, Anti Anemia Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 63, # 819</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Detox Tea,</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Super C Active, Bio-Flavanoids</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Duo C Complex, Pyridoxine, Mega B Complex 1000</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Hyperbaric Oxygen Therapy, I.V. Hydrogen Peroxide Drip</p>
            </div>
            <div class="high" id="high_mch" style="display: none">
                <h3>
                    Generally associated with High MCH:</h3>
                <p>
                    Deficiencies in vitamins B-12 and C, folic acid, cobolamin, iron, pyridoxine, parasite
                    infestation.
                </p>
                <h3>
                    Corresponding need for nutritional support for High MCH:</h3>
                <p>
                    Super Endurance, Wheat Germ Oil, Mega B Complex 1000.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Anti Anemia Formula, Anti Fatigue Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 10, # 34</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Blood Cleanse</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Citrus Bio-Flavanoids, Blood Building Broth, Super Food Drink, Green Drink, Red
                    Blood Builder, VF-50
                </p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Red Blood Cell Builder, Super Endruall, Ultra E Complex, L-Arginine, Folic Acid,
                    Duo C Complex, L-Glutamine, Enzyme Therapy</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Hyperbaric Oxygen Therapy, I.V. Ozone Therapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Mushroom, avocado, tomato, garlic, asparagus</p>
                <h3>
                    Support:</h3>
                <p>
                    Nutrition, liver, oxygen. (Homeopathic Remedy: #40)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_mchc">
            <!-- Mean Corpuscular Hemoglobin Concentration – (MCHC) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Mean Corpuscular Hemoglobin Concentration – (MCHC)</h1>
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
                            <strong class="blue">
                                <label id="i_score_mchc">
                                    33.5</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">32 - 35</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">30- 37</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_mchc" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('mchc');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_mchc">
                <h3>
                    MCHC stand alone indicators generally associated with:</h3>
                <button id="btn_mchc" onclick="javascript :print('mchc');return false;" class="print display-none">
                    Print</button>
                <p>
                    Cellular/Serum oxygen deficiency anemia, monitoring gauge for anemia and cellular
                    oxygen therapy, determines the concentrate of hemoglobin in the red blood cells
                    and hematrocrit</p>
            </div>
            <div class="ideal equal" id="equal_mchc" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_mchc" style="display: none">
                <h3>
                    Generally associated with Low MCHC:</h3>
                <p>
                    Severe iron deficiency, mal-absorption, parasite infestation, junk foods, cellular
                    oxygen deficiency, hypochlorhydria, deficiencies in folic acid, vitamin C, L-Glutamine,
                    chemical/environment toxicity, parasites.</p>
                <h3>
                    Corresponding need for nutritional support for Low MCHC:</h3>
                <p>
                    Ionic Iron, Ionic Copper. Super C Active, Irish Moss/Kelp.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Iron</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 8</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Blood Cleanse, High Phenol Green Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Morning Health Drink, parasite Annihilation Powder, Bowel Tonic, Amino Acid Creamed
                    Beet Juice, Amino Acid Creamed Broccoli Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Absorption Enhancer, L-Glutamine, Duo C Complex, Folic Acid, Red Blood Cell Builder,
                    Anti Anemia Formula, anti Fatigue Formula, Co-Enzyme Q-10, Alpha Lipoic Acid</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Hyperbaric Oxygen Therapy, Ozone Rectal Insufflations
                </p>
            </div>
            <div class="high" id="high_mchc" style="display: none">
                <h3>
                    Generally associated with High MCHC:</h3>
                <p>
                    Deficiencies in vitamin B-12, vitamin C, enzymes, folic acid, citrus bio-flavanoids,
                    L-Arginine, L-Glutamine, poor nutrition, excess use of alcohol, sugar, soda, synthetic
                    sweetness, medications, faulty dietary habits.</p>
                <h3>
                    Corresponding need for nutritional support for High MCHC:</h3>
                <p>
                    Super Oil, Endurall, Super Food, Super Green.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Cardio Vascular Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 825</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Blood Cleanser</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Super C Active, Green Drink,</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Red Blood Cell Builder, Duo C Complex, Enzyme Therapy, l-Arginine, L-Carnitine</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Exercise Induced Oxygen Saturated Therapy, Hyperbaric Oxygen Therapy, Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Green pepper, beet, kale, spinach, garlic, green onion</p>
                <h3>
                    Support:</h3>
                <p>
                    Nutrition. (Homeopathic Remedy: #813)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_rdw">
            <!-- Red Blood Cell Distribution Weight – RDW Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Red Blood Cell Distribution Weight – RDW</h1>
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
                            <strong class="blue">
                                <label id="i_score_rdw">
                                    13.3</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">11.3 - 15.3</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">10.1- 16.5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_rdw" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('rdw');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_rdw">
                <h3>
                    RDW stand alone indicators generally associated with:</h3>
                <button id="btn_rdw" onclick="javascript :print('rdw');return false;" class="print display-none">
                    Print</button>
                <p>
                    Measures blood cell volume weight, a health gauge of the red blood cells and production
                    of healthy bone marrow. distinguishes early stage deficiency anemia for chronic
                    disease</p>
            </div>
            <div class="ideal equal" id="equal_rdw" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_rdw" style="display: none">
                <h3>
                    Generally associated with Low RDW:</h3>
                <p>
                    Inflammation, dehydration, colon toxicity, immune system compromised, deficiencies
                    in vitamin C, zinc, enzymes.</p>
                <h3>
                    Corresponding need for nutritional support for Low RDW:</h3>
                <p>
                    Maxi Cleanse, Fiber Max, Immune Power Formula, Endurall, Green Drink.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Zinc, Liquid Enzymes, Bio-Ox</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Blood Cleanse, Immune Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    VF-50, Cellular Detoxification, Green Drink, Amino Acid Creamed Broccoli Juice,
                    Blood Purification</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Enzyme Therapy, Duo C Complex, Nature’s Healer</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Hyperbaric Oxygen Therapy, Colon Hydrotherapy</p>
            </div>
            <div class="high" id="high_rdw" style="display: none">
                <h3>
                    Generally associated with High RDW:</h3>
                <p>
                    High metal toxicity, chemical exposure toxicity, lymphatic congestion, liver sluggishness,
                    blood toxicity, excess use of alcohol, medications, synthetic sweeteners, deficiencies
                    in citrus bio-flavanoids, folic acid, B complex, glycine, iron, B-12, vitamin C,
                    digestive enzymes.</p>
                <h3>
                    Corresponding need for nutritional support for High LDH:</h3>
                <p>
                    Oral Chelation, Super Oil, Co-Enzyme Q-10, Alpha Lipoic Acid, Omega 3 Essential
                    Fatty Acids, Immune Power Formula, Vitamin E Complex.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Toxicity Correction</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 63</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Blood Cleanser</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Citrus Bio-Flavanoids, Super Oil</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Duo C Complex, Mega B Complex 1000, Anti Anemia Complex, Enzyme Therapy, Endurall</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Vitamin C Drip, Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Kale, beet, mushroom, spinach, squash, horseradish</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, spleen, immune system, lymphatic system. (Homeopathic Remedy: #808)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_platelets">
            <!-- Platelets Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Platelets</h1>
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
                            <strong class="blue">
                                <label id="i_score_platelets">
                                    285</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">235 - 335</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">130- 440</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_platelets" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('platelets');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_platelets">
                <h3>
                    Platelets stand alone indicators generally associated with:</h3>
                <button id="btn_platelets" onclick="javascript :print('platelets');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Platelet activity is necessary for blood clotting, vascular integrity, vasoconstriction,
                    adhesion, and plugging and repair of breaks in small vessels.</p>
            </div>
            <div class="ideal equal" id="equal_platelets" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_platelets" style="display: none">
                <h3>
                    Generally associated with Low Platelets:</h3>
                <p>
                    Overuse of medication, chemotherapy, radiation exposure, nutritional deficiencies,
                    excess sugar, coffee, trans fats, liver dysfunction, anemia, free radical pathology,
                    bone marrow suppression, heavy metal and/or environmental exposure, immune system
                    dysfunction and challenge, deficiencies in Omega 3/6 essential fatty acid enzymes,
                    Vitamin E, excessive blood thinness .</p>
                <h3>
                    Corresponding need for nutritional support for Low Platelets:</h3>
                <p>
                    Potassium Broth, Red Blood Building Factors, Green Drink, Chlorophyll, Grape Seed
                    Extract, Propolis, Cobalamin, Paradoxin, Mega B Complex 1000, Essaic, Immune Formula,
                    Liver Detox, Tiger’s Food.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Heavy Metal Detox, Toxicity Correction</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Circulation Formula, Cardio Vascular Formula, Blood Cleanse</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Super C Active, Green Drink, Bedtime Bowel Tonic, Bio-Flavanoid
                    Complex, Super Oil, Blood Purification, Amino Acids Creamed One Dozen Green Vegetables
                    Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Immune Powder Formula, Duo C Complex, Co-Enzyme Q-10, L-Arginine, L-Glutamine, Ultra
                    E Complex, Omega 3</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Hyperbaric Oxygen Therapy, Colon Hydrotherapy, I.V. Ozone Therapy, B-12 Shot</p>
            </div>
            <div class="high" id="high_platelets" style="display: none">
                <h3>
                    Generally associated with High Platelets:</h3>
                <p>
                    Inflammatory disorder, iron deficiency, vitamin B-12 deficiency, excess alcohol,
                    junk foods, medications, infections, bowel impaction, deficiencies in L-Glutamine,
                    L-Arginine, Omega 3 and 6 essential fatty acids, citrus bio-flavanoids, vitamin
                    E, zinc, amino acid deficiency, anemia, free radical pathology</p>
                <h3>
                    Corresponding need for nutritional support for High Platelets:</h3>
                <p>
                    L-Arginine Complex, L-Cystine, Organic Sulfur, Immune Power Formula, Essaic, Lymphatic
                    Detox Formula, Anti Anemia Complex, Endurall.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Immune Formula, Liquid Iron, Liquid Zinc</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Blood Cleanser</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Green Drink, Citrus Bio-Flavanoids, Bedtime Bowel Tonic, Super
                    Oil</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    N-Acetyl Cystein, Duo C Complex, Turmeric, Quercetin, Ultra E complex, L-Glutamine,
                    L-Arginine, Borage Oil, Omega 3, Lignan, Immune Power Formula, Hawthorn Berry, Nanokinase</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Ozone Therapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Kale, peas, parsley, green pepper, asparagus, zucchini, pea pods.</p>
                <h3>
                    Support:</h3>
                <p>
                    Immune system, detoxification, (Homeopathic Remedies: #4, #63, #807)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_neutrophils">
            <!-- Neutrophils Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Neutrophils
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
                            <strong class="blue">
                                <label id="i_score_neutrophils">
                                    57</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">47 - 67</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">40- 74</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_neutrophils" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('neutrophils');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_neutrophils">
                <h3>
                    Neutrophils stand alone indicators generally associated with:</h3>
                <button id="btn_neutrophils" onclick="javascript :print('neutrophils');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Bacteria neutralizer.</p>
            </div>
            <div class="ideal equal" id="equal_neutrophils" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_neutrophils" style="display: none">
                <h3>
                    Generally associated with Low Neutrophils:</h3>
                <p>
                    Bacterial infection, viral infection, parasite infestation, colon toxicity, cellular
                    oxygen deficiency.</p>
                <h3>
                    Corresponding need for nutritional support for Low Neutrophils:</h3>
                <p>
                    Duo C Complex, Immune Power Formula, Chinese Medicinal Garlic, Astruglas.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Zinc, Liquid Silver</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 1, # 807, # 817</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Immune Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Blood Purification, Cellular Detoxification, Jug One Protocol, Amino Acid Creamed
                    Shiitake</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Duo C Complex, Ultra E Complex, Vitamin K-2, Nature’s Healer, Beta Carotene</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Hydrogen Peroxide Drip, Colon Hydrotherapy, I.V. Ozone Drip, Immune Drip</p>
            </div>
            <div class="high" id="high_neutrophils" style="display: none">
                <h3>
                    Generally associated with High Neutrophils:</h3>
                <p>
                    Generalized inflammation, viral/bacterial infection, autointoxication.</p>
                <h3>
                    Corresponding need for nutritional support for High Neutrophils:</h3>
                <p>
                    Super C Active, Rosehips, Bio-Flavanoids, Naturopathic Purification Powder.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Sulfur, Liquid Zinc, Liquid Silver, Immune Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 1</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Blood Cleanser</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Green Drink, Jug One Protocol, Amino Acid Creamed One Dozen Green Vegetables Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Ultra E Complex, Vitamin D-3, Vitamin K-2, Alfalfa Juice, Duo C Complex</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Hydrogen Peroxide Drip, I.V. Ozone Therapy, I.V. Immune Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Green pepper, garlic, green onion, mushroom, lemon, horseradish.</p>
                <h3>
                    Support:</h3>
                <p>
                    Immune System. (Homeopathic Remedies: #1, #4, #807)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_lymphocytes">
            <!-- Lymphocytes Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Lymphocytes</h1>
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
                            <strong class="blue">
                                <label id="i_score_lymphocytes">
                                    34</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">28 - 40</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">19- 48</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_lymphocytes" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('lymphocytes');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_lymphocytes">
                <h3>
                    Lymphocytes stand alone indicators generally associated with:</h3>
                <button id="btn_lymphocytes" onclick="javascript :print('lymphocytes');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Lymph system competency antibody production, killer cell indicator, susceptible
                    to congestive heart and kidney dysfunction, lymphatic congestion, tumors, Hodgkin’s
                    disease, severe and debilitating illnesses .</p>
            </div>
            <div class="ideal equal" id="equal_lymphocytes" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_lymphocytes" style="display: none">
                <h3>
                    Generally associated with Low Lymphocytes:</h3>
                <p>
                    Trapped toxins in lymph system, lymph system not moving, highly toxic condition,
                    over eating, bowel toxicity, Hodgkin’s disease, stress, anxiety, fear, worry, depression,
                    negative mental outlook, under-performing thyroid, couch potatoism, chemotherapy/radiation
                    exposure, anemia, adrenal exhaustion, bacterial infection, free radical pathology,
                    immune system compromised prednisone effect, over use of medication, sugar, devitalized
                    foods, alcohol, faulty diet, infection, Hepatitis.</p>
                <h3>
                    Corresponding need for nutritional support for Low Neutrophils:</h3>
                <p>
                    Ionic Silver, Super C Active, Immune formula, Bedtime Bowel Tonic, Lymph Formula,
                    Liver Detox, Morning Health Drink, Green Drink, Tomato Juice Powder, Potassium Broth,
                    Jewish Penicillin, Super Juice 22 Vegetables, Chinese Garlic, Blood Purification,
                    Beta Carotene, Duo C Complex.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Immune Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 817, # 823</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Lymph Tea, Decongestion Tea, Kidney Flush</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Kidney Cleanse, Spinach Juice with Goat’s Whey</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Lymphatic and Sinus Decongestion, Fiber Max, Maxi Cleanse, Corn Silk, Bearberry</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Lymphatic Drainage Therapy, Colon Hydrotherapy, Hyperbaric Oxygen Therapy, Exercise
                    Induced Oxygen Saturation Therapy</p>
            </div>
            <div class="high" id="high_lymphocytes" style="display: none">
                <h3>
                    Generally associated with High Lymphocytes:</h3>
                <p>
                    Toxicity, stagnant lymph system, liver overloaded, bowel toxicity, slow metabolism,
                    slow transition time of food, compromised immune system due to toxicity, cold, flu,
                    cough, viral bacterial overload and infection, cellular oxygen deficiencies, heavy
                    metal toxicity, environmental/chemical overload, over use of medications, sugar,
                    devitalized foods, junk foods, alcohol, drugs, antibiotics, backed up colon, infection,
                    autointoxication, multiple nutritional deficiencies, retaining toxic fluids, susceptible
                    to lymphatic leukemia, mumps, measles, upper respiratory tract problems, chicken
                    pox, Crohn’s disease, Addison’s disease, infection mononucleosis, lymphocytosis
                    .</p>
                <h3>
                    Corresponding need for nutritional support for High Lymphocytes:</h3>
                <p>
                    Candida Detox, Allergy Detox, Lymph Formula, Anti Tonic, Immune Formula, Parasite
                    Annihilators, Bedtime Bowel Tonic, Green Drink.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liver Detox Formula, Bladder/Kidney Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 817</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Kidney Flush, Lymph Tea, Immune Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Jug Two Protocol, Morning Health Drink, Green Drink, Bedtime Bowel
                    Tonic, VF-50</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Norwegian Vitamin A, Beta Carotene, Astragulas, enzyme Therapy, Absorption Enhancer,
                    Liver Formula, N-Acetyl Cystein, Quercetin, turmeric, Red Blood Cell Builder</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Hydrogen Peroxide Drip, Hyperbaric Oxygen Therapy, Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Kale, lemon, celery, parsley, alfalfa, jalapeno, green onion, horseradish, garlic.</p>
                <h3>
                    Support:</h3>
                <p>
                    Immune system, liver lymph system, detoxification. (Homeopathic Remedies: #10, #63,
                    #807, #817, #819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_monocytes">
            <!-- Monocytes Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Monocytes</h1>
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
                            <strong class="blue">
                                <label id="i_score_monocytes">
                                    6.2</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">5.7 - 6.7</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">2.4- 9.0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_monocytes" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('monocytes');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_monocytes">
                <h3>
                    Monocytes stand alone indicators generally associated with:</h3>
                <button id="btn_monocytes" onclick="javascript :print('monocytes');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Immune fighters, eats up the bad guys, measures the fitness of the body’s 2nd line
                    of defense, the body’s phagocytic cells ability to remove injured and dead cells
                    and the ability to produce the antiviral agent interferon.</p>
            </div>
            <div class="ideal equal" id="equal_monocytes" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_monocytes" style="display: none">
                <h3>
                    Generally associated with Low Monocytes:</h3>
                <p>
                    Immune system compromised, toxic overwhelm, viral load, immune deficiency, bone
                    marrow depression, bowel toxicity, cellular oxygen deficiency, multiple nutritional
                    deficiencies, morbific material accumulation, excess medications, radiation, chemotherapy,
                    junk foods, alcohol, adult onset, human growth hormone deficiency, prednisone treatment,
                    infections, deficiencies in N-Acetyl Cysteine, Vitamins B-12, C, F and folic acid.</p>
                <h3>
                    Corresponding need for nutritional support for Low Monocytes:</h3>
                <p>
                    Immune Power Formula, Chinese Garlic, Duo C Complex.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Immune Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 807</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Detox Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Blood Purification, Cellular Detoxification, Amino Acid Creamed Shiitake, Amino
                    Acid Creamed One Dozen Green Vegetables Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    N-Acetyl Cystein, Quercetin, Turmeric, Red Blood Cell Builder, Duo C Complex, Vitamin
                    F, Folic Acid, Ultra E Complex, Immune Power Formula, Astruglas</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Immune Drip, I.V. Hydrogen Peroxide Drip</p>
            </div>
            <div class="high" id="high_monocytes" style="display: none">
                <h3>
                    Generally associated with High Monocytes:</h3>
                <p>
                    Highly toxic condition, Candida, inflammation, parasites, fungal, autointoxication,
                    constipation, slow food transition, liver sluggishness, enzyme and multiple nutritional
                    deficiencies, cellular oxygen deficiency, trapped lymphatic toxins, susceptibility
                    to bacterial infections, T.B., ovary and /or breast carcinoma, ulcerated colitis,
                    collagen disease, lymphoma, Hodgkin’s disease, monocytic leukemia, deficiencies
                    in Bio-Flavanoids, Vitamins C and D, and L-Arginine.</p>
                <h3>
                    Corresponding need for nutritional support for High Monocytes:</h3>
                <p>
                    Lemon, spinach, tomato, green pepper, celery, kale.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Germanium</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 59</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Immune Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Bedtime Bowel Tonic, Parasite Annihilation Powder, Naturopathic Purification Powder,
                    Worm Weed, Yogurt Health Drink</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Chinese Medicinal Garlic, Oregano Extract, Parasite Protector, Duo C Complex</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, I.V. Hydrogen Peroxide Drip, Ozone Rectal Insufflations</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Junglelaya, FV/50, celery juice</p>
                <h3>
                    Support:</h3>
                <p>
                    Immune system, lymph system, detoxification. (Homeopathic Remedies: #4, #63, #804,
                    #17)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_eosinophils">
            <!-- Eosinophils Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Eosinophils</h1>
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
                            <strong class="blue">
                                <label id="i_score_eosinophils">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 3.5</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0- 7.0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_eosinophils" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('eosinophils');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_eosinophils">
                <h3>
                    Eosinophils stand alone indicators generally associated with:</h3>
                <button id="btn_eosinophils" onclick="javascript :print('eosinophils');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Protects the body from allergies, parasites, fungal infections, toxins, lung, skin,
                    colon and G.I. tract reactions, phagocyte capability, measures the response to allergies
                    and parasites, a secondary response to inflammation.</p>
            </div>
            <div class="ideal equal" id="equal_eosinophils" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_eosinophils" style="display: none">
                <h3>
                    Generally associated with Low Eosinophils:</h3>
                <p>
                    Adrenal exhaustion, excess medication, acute bacterial infections. Low Eosinophils
                    is desirable. Score of zero is ideal.</p>
            </div>
            <div class="high" id="high_eosinophils" style="display: none">
                <h3>
                    Generally associated with High Eosinophils:</h3>
                <p>
                    Above zero – food and/or environmental allergies, hay fever, skin reactions, bronchial
                    asthma, parasitic infestation, Candida Albicans, colon toxicity, over medication,
                    antibiotics, sugar, junk foods, alcohol, slow food transition, cellular oxygen deficiency,
                    over eating, parasite and allergy sensitivities, sometimes susceptible to asthma
                    and hay fever, constipation, Candida, fungal infection, lung congestion, chronic
                    skin problems, autointoxication, Hodgkin’s disease, lymphoma, immune disorders,
                    infections, Chlamydia, scarlet fever, drug inter reaction, connective tissue disorder.</p>
                <h3>
                    Corresponding need for nutritional support for High Eosinophils:</h3>
                <p>
                    Essaic Formula, Anti Toxin, Allergy Detox, Ionic Silver, Immune Power Formula, Duo
                    C Complex 1000, Blood Purification.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Toxicity Correction, Liquid Silver, Immune Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 63, # 80</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Allergy Detox Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Jug Two Protocol, Super C Active, Blood Purifier</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Allergy Formula, Duo C Complex, Immune Power Formula, Fiber Max, Maxi Cleanse</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Naturopathic Detoxification, Colon Hydrotherapy, I.V. Hydrogen Peroxide Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Broccoli, cauliflower, spinach, tomato, wheat grass.
                </p>
                <h3>
                    Support:</h3>
                <p>
                    Immune system, lungs, skin, detoxification. (Homeopathic remedies; #1, #4, #24,
                    #26, #63, #807, #826)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_basophils">
            <!-- Basophils Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Basophils</h1>
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
                            <strong class="blue">
                                <label id="i_score_basophils">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 0.7</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0- 1.5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_basophils" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('basophils');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_basophils">
                <h3>
                    Basophils stand alone indicators generally associated with:</h3>
                <button id="btn_basophils" onclick="javascript :print('basophils');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Intestinal tract toxicity, parasites, inflammation, phagocyte killer cell feedback
                    indicator.</p>
            </div>
            <div class="ideal equal" id="equal_basophils" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_basophils" style="display: none">
                <h3>
                    Generally associated with Low Basophils:</h3>
                <p>
                    Hyperthyroidism, stress reaction, prolonged drug, steroid, radiation, chemotherapy
                    therapy, infections. Low is desirable. Ideal score is zero.</p>
            </div>
            <div class="high" id="high_basophils" style="display: none">
                <h3>
                    Generally associated with High Basophils:</h3>
                <p>
                    Above zero – colon toxicity, slow transition time of food, allergies, enzyme deficiency,
                    inflammation, hypochlorhydria, intestinal irritations, intestinal virus, liver problems,
                    highly toxic condition, suppressed immune function, parasites, hypersensitivity
                    to food chemicals, preservatives, additives, parasites, inflammation, hypothyroidism,
                    susceptible to sinusitis, allergies, Hodgkin’s disease, leukemia.</p>
                <h3>
                    Corresponding need for nutritional support for High Basophils:</h3>
                <p>
                    Allery Detox, Candida, Essaic, Immune & Liver Formula’s, I-Thyroid, Parasite Annihilator’s,
                    Bowel Tonic, Absorption Enhancer, Chinese Garlic, Duo C Complex, Green Drink.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Silver, Liver Formula, Liquid Iodine, Immune Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 40, # 63, # 80</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Immune Tea, Detox Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Stomach Rebuilding Powder, Jug One Protocol, Morning Health Drink, Green Drink,
                    Yogurt Health Drink, Bedtime Bowel Tonic</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Fiber Max, Maxi Cleanse, Enzyme Therapy, Allergy Formula, Absorption Enhancer.</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Green pepper, lemon, asparagus.
                </p>
                <h3>
                    Support:</h3>
                <p>
                    Detoxification, immune system, thyroid. (Homeopathic Remedies: #2, #4, #63, #806).</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_globulin">
            <!-- Globulin   Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Globulin</h1>
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
                            <strong class="blue">
                                <label id="i_score_globulin">
                                    3.2</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">3.0 - 3.4</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">2.2 - 4.2</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_globulin" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('globulin');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_globulin">
                <h3>
                    Globulin stand alone indicators generally associated with:</h3>
                <button id="btn_globulin" onclick="javascript :print('globulin');return false;" class="print display-none">
                    Print</button>
                <p>
                    Defense agent, cell degenerator/regenerator, immune system, inflammation, digestive
                    toxicity, protective antibodies, infection, allergy, spleen gauge, protein levels
                    and absorption, body’s ability to repair itself</p>
            </div>
            <div class="ideal equal" id="equal_globulin" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_globulin" style="display: none">
                <h3>
                    Generally associated with Low Globulin:</h3>
                <p>
                    Immune system compromised, colon toxicity, muscle loss, mal-absorption, protein/amino
                    acid deficiency, digestive disorders, premature aging, aging diseases, cells breaking
                    down, not regenerating, hypochlorhydria, heavy metal toxicity, excess alcohol, sugar,
                    junk foods, deficiencies in Omega 3/6 essential fatty acids, vitamin E, zinc, L-Arginine,
                    L-Glutimine, enzymes, amino acids, protein, autoimmune reaction, gastro-intestinal,
                    colon, liver disorder, pre-ulcer, syndrome X, inability of the body to manufacture
                    enough antibodies, anemia, liver sluggishness, kidney disorder, globulin used up
                    for repairs due to infection fighting overwork, toxicity and parasitic invasion,
                    deficiencies in folic acid, ionic calcium, magnesium, and phosphorous. Support required
                    for thymus, spleen and thyroid.</p>
                <h3>
                    Corresponding need for nutritional support for Low Globulin:</h3>
                <p>
                    Immune Power Formula, Duo C Complex, Aloe Vera Concentrate, L-Carnitine, Alpha Lipoic
                    Acid, Absorption Enhancer, Bromaline, Enzyme Therapy, Immune Tea, Endurall.
                </p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Zinc, Liquid Silver, Liquid Germanium, Liquid Sulfur, Immune Support</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 10, # 22, # 23</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Immune Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Oil, Super C Active, Jug One, Cruciferous Vegetable Juice, Fortress Strong</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Immune Power Formula, Astragulas, Duo C Complex, Vitamin D-3, Norwegian Vitamin
                    A, 28 Super Amino Acids, Endurall, Ultra E Complex, L-Arginine, L-Glutimine, Nature’s
                    Healer, l-Carnitine</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Immune Drip, I.V. Hydrogen Peroxide Drip, Rife Vibrational Medicine</p>
            </div>
            <div class="high" id="high_globulin" style="display: none">
                <h3>
                    Generally associated with High Globulin:</h3>
                <p>
                    Toxicity, allergies, bowel impaction, infection, liver dysfunction, anemia, mal-absorption
                    syndrome, G.I. inflammation, nutritional deficiencies, enzymes, zinc, vitamin A,
                    sulfur,pre-arthritis, colon toxicity, immune system compromised, pre-infection,
                    anemia, hypochlorhydria, parasitic infestation, breakdown in the body’s defense
                    system, thymus and spleen require support, deficiencies in ionic copper, iron, bio-flavanoids,
                    Vitamin C and A, niacin, riboflavin, super oxide dismutase (8:00).</p>
                <h3>
                    Corresponding need for nutritional support for High Globulin:</h3>
                <p>
                    Anti Anemia Complex, Red Blood builder, Endurall, 57 Super Minerals, Co-Enzyme Q-10,
                    Grape Seed Extract, Toxin & Free Radical Neutralizer, Chinese Garlic, Duo C Complex,
                    Immune Power Formula.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Sulfur, Liquid Silver, Liquid Zinc, Immune Support</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 1, # 24, # 807, # 817</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Immune Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One protocol, Super C Active, Super Oil, Blood Building Broth, Bedtime Bowel
                    Tonic, Morning Health Drink, Green Drink, Cellular Detoxification, Amino Acid Creamed
                    One Dozen Green Vegetables Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Organic Sulfur, Nature’s Healer, Norwegian Vitamin A, Absorption Enhancer, Anti
                    Anemia Complex, Red Blood Cell Builder, Allergy Formula, Fiber Max, Maxi Cleanse</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, I.V. Hydrogen Peroxide Drip, I.V. Ozone Therapy, I.V. Immune
                    Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, lemon, mushroom, avocado, kale, green onion, green pepper, sweet potato, broccoli,
                    tomato</p>
                <h3>
                    Support:</h3>
                <p>
                    Immune system, detoxification, colon, digestive system. (Homeopathic Remedies; #4,
                    #8, #10, #807, #817)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_a_g_ratio">
            <!-- Albumin/Globulin Ratio – (A/G Ratio) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Albumin/Globulin Ratio – (A/G Ratio)</h1>
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
                            <strong class="blue">
                                <label id="i_score_a_g_ratio">
                                    1.6</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">1.5 - 1.7</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0.8 - 2.0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_a_g_ratio" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('a_g_ratio');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_a_g_ratio">
                <h3>
                    Albumin/Globulin Ratio stand alone indicators generally associated with:</h3>
                <button id="btn_a_g_ratio" onclick="javascript :print('a_g_ratio');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Blood viscosity, protein, toxicity, colon, liver marker, kidney, thyroid, immune
                    system gauge, body’s viability to fight bacteria, viruses and toxins</p>
            </div>
            <div class="ideal equal" id="equal_a_g_ratio" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_a_g_ratio" style="display: none">
                <h3>
                    Generally associated with Low Albumin/Globulin Ratio:</h3>
                <p>
                    Liver sluggishness, bowel toxicity, protein deficiency, mal-absorption, deficiencies
                    in digestive enzymes, choline, zinc, taurine, organic sulfur, weak immune system,
                    protein/amino acid deficiency, hypochlorhydria, faulty dietary habits, toxicity,
                    blood too thin, reduced bloods clotting factors, deficiencies in Vitamin K, E, A
                    and D</p>
                <h3>
                    Corresponding need for nutritional support for Low Albumin/Globulin Ratio:</h3>
                <p>
                    Immune Power Formula, Duo C Complex, Beta Carotene.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Sulfur, Liquid Detox, Liquid Zinc, Stomach & Digestion Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 8, # 40, # 819, # 820</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Detox Tea, Stomach & Digestion Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Ox, Amino Acid Creamed Cabbage Juice, Amino Acid Creamed Celery Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Lipotropic Factor, Phosphadatyl Choline, Lignan, Nature’s Healer, I-Thyroid, Organic
                    Sulfur, Absorption Enhancer, Enzyme Therapy</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, I.V. Hydrogen Peroxide Drip</p>
            </div>
            <div class="high" id="high_a_g_ratio" style="display: none">
                <h3>
                    Generally associated with High Albumin/Globulin Ratio:</h3>
                <p>
                    Triggered immune system, dehydration, pancreatic insufficiency, hypothyroid, deficiency
                    in zinc, phosphadtyl choline, blood too thick, hypothyroidism, lymphatic congestion,
                    blood toxicity, deficiencies in iodine, iodide, phosphorous and amino acids</p>
                <h3>
                    Corresponding need for nutritional support for High Albumin/Globulin Ratio:</h3>
                <p>
                    I-Thyroid, Lymph Formula, Maxi Cleanse, Fiber Max.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Pancreas Support, Liquid Zinc</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 808</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Pancreas Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Green Drink, Super Oil, Super Drink, Super C Active, Amino Acid
                    One Dozen Green Vegetables Juice, Bio-Flavanoid Complex, Amino Acid Creamed Zucchini</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Pancreatin, Lipotropic Factor, Lignan, I-Thyroid, Sea Life, Alfalfa, Super Juice
                    22 Vegetables, Phosphadatyl Choline, Immune Power Formula, Duo C Complex</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, I.V. Ozone Therapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Mushroom, avocado, celery, beet, spinach, apple, zucchini, horseradish.</p>
                <h3>
                    Support:</h3>
                <p>
                    Stomach, digestion, colon, liver, spleen, thyroid, detoxification. (Homeopathic
                    Remedies:#10, #63, #808)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_abs_basophils">
            <!-- Basophils Absolute Count Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Basophils Absolute Count</h1>
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
                            <strong class="blue">
                                <label id="i_score_abs_basophils">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 1.12</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0 - 1.5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_abs_basophils" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('abs_basophils');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_abs_basophils">
                <h3>
                    Basophils Absolute Count stand alone indicators generally associated with:</h3>
                <button id="btn_abs_basophils" onclick="javascript :print('abs_basophils');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Inflammation fighter.</p>
            </div>
            <div class="ideal equal" id="equal_abs_basophils" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_abs_basophils" style="display: none">
                <h3>
                    Generally associated with Low Basophils Absolute Count:</h3>
                <p>
                    Low is Desirable. Zero is ideal.</p>
                <h3>
                    Corresponding need for nutritional support for High Basophils Absolute Count:</h3>
                <p>
                </p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Allergy Detoxification, Liver Support</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 40, # 63, # 807</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Allergy Detox, Adrenal Restoration, Liver Detox</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Cellular Detoxification, Fortress Strong, Morning Health Drink, Bedtime Bowel Tonic,
                    Amino Acid Creamed Asparagus</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Allergy Formula, Nature’s Flush, Adrenal Hormone Restoration</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Naturopathic Detoxification</p>
            </div>
            <div class="high" id="high_abs_basophils" style="display: none">
                <h3>
                    Generally associated with High Basophils Absolute Count:</h3>
                <p>
                    Allergic reaction, hyperthyroid, infection, autointoxication, stress, excess alcohol,
                    tobacco, drugs, medications, radiation, chemotherapy, cellular oxygen deficiency,
                    nutritional deficiencies, parasite infestation, trapped lymphatic toxins, bowel
                    toxicity.</p>
                <h3>
                    Corresponding need for nutritional support for High Basophils Absolute Count:</h3>
                <p>
                    Medazyme Therapy, I-Thyroid, Parasite Annihilator’s, Bowel Tonic, Lymphatic Formula,
                    Chinese Garlic, Ionic Copper.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Toxicity Correction, Liver Support, Liquid Germanium, Liquid Silver, Liquid Sulfur
                </p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 59, # 817</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Lymph Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Bedtime Bowel Tonic. Parasite Annihilation Powder, Naturopathic Purification Powder</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Allergy Formula, Nature’s Flush, Adrenal Hormone Restoration</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Naturopathic Detoxification</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Carrot, celery, parsley, oregano, green onion, spinach, broccoli, plum, lemon.</p>
                <h3>
                    Support:</h3>
                <p>
                    Detoxification, lymph system, colon, immune system, liver. (Homeopathic Remedies:#4,
                    #87)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_ferritin">
            <!-- Ferritin Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Ferritin</h1>
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
                            <strong class="blue">
                                <label id="i_score_ferritin">
                                    215</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">150 - 280</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">30 - 400</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_ferritin" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('ferritin');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_ferritin">
                <h3>
                    Ferritin stand alone indicators generally associated with:</h3>
                <button id="btn_ferritin" onclick="javascript :print('ferritin');return false;" class="print display-none">
                    Print</button>
                <p>
                    Iron tissue reserve bank, most reliable indicator of total body iron status, reflects
                    the body’s iron stores.</p>
            </div>
            <div class="ideal equal" id="equal_ferritin" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_ferritin" style="display: none">
                <h3>
                    Generally associated with Low Ferritin:</h3>
                <p>
                    Nutrition deficiency anemia, low iron storage in cells, stress, protein deficiency,
                    blood loss, copper deficiency, hypochlorhydria, iron deficiency anemia.</p>
                <h3>
                    Corresponding need for nutritional support for Low Ferrtin:</h3>
                <p>
                    Anti Anemia Complex, Endurall, Red Blood Cell Builder, Blood Building Broth, Anti
                    Fatigue.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Iron, Anti Anemia Formula, Heavy Metal Detox, Liquid Copper</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 17, # 34, # 63</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Detox Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Green Drink, Super Drink, Amino Acid Creamed Beet Juice, Amino
                    Acid Creamed One Dozen Green Vegetables Juice, Blood Building Broth</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Red Blood Cell Builder, Pyridoxine, Anti Anemia Complex, Anti Fatigue, Folic Acid,
                    Duo C Complex, Absorption Enhancer, Hypericum, Cal/Mag, 28 super Amino Acids, Endurall</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Vitamin B-12 Shot, I.V. Super Nutritional Drip</p>
            </div>
            <div class="high" id="high_ferritin" style="display: none">
                <h3>
                    Generally associated with High Ferritin:</h3>
                <p>
                    Liver problems, iron over load, inflammatory marker, excess alcohol, junk foods,
                    susceptible to liver disease, Hodgkin’s, breast carcinoma, lymphoma, autointoxication,
                    heavy metal or environmental toxicity, hemochromatosis, excess use of aspirin, drugs,
                    fast foods, sugar, soda drinks, hyperthyroidism, deficiencies in folic acid, Vitamins
                    B-12 and B-6, enzymes, sulfur, fiber, Co-Enzyme Q-10, alpha lipoic acid, omega 3and
                    6 essential fatty acids, choline, inositol, green foods, chlorophyll
                </p>
                <h3>
                    Corresponding need for nutritional support for High Ferritin:</h3>
                <p>
                    Morning Health Drink, Liver Flush, Green Drink, Bedtime Bowel Tonic, ilk Thistle,
                    L-Cystein, Organic Sulfur</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Heavy Metal Detox, Toxicity Correction, Liver Detoxification</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 10, # 63</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Detox Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Oil</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Co-Enzyme Q-10, Alpha Lipoic Acid, Lipotropic Factor, Salmon Oil, Borage Oil, Mega
                    B Complex, Fiber Max, Maxi Cleanse</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, I.V. Chelation Therpay, Ionic Foot Bath with Ozone, Ozone Infused
                    Far Infrared Detoxification Sauna</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, spinach, mushroom, green peppers, jalapeno, avocado, garlic, horseradish,
                    green onion, fig, lemon.</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, detoxification. (Homeopathic Remedies: #10, #63, #819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_mpv">
            <!-- Mean Platelet Volume – (MPV) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Mean Platelet Volume – (MPV)</h1>
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
                            <strong class="blue">
                                <label id="i_score_mpv">
                                    8.9</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">8.4 - 9.4</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">7.4- 10.4</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_mpv" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('mpv');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_mpv">
                <h3>
                    MPV stand alone indicators generally associated with:</h3>
                <button id="btn_mpv" onclick="javascript :print('mpv');return false;" class="print display-none">
                    Print</button>
                <p>
                    Cardio-vascular risk detective, gauge the size of the platelets, their development
                    time and turnover, inflammatory, liver and auto immune disease marker, allergy markers.</p>
            </div>
            <div class="ideal equal" id="equal_mpv" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_mpv" style="display: none">
                <h3>
                    Generally associated with Low MPV:</h3>
                <p>
                    Toxicity, chronic bacteria, cellular oxygen deficiency, heavy metal toxicity, chemical
                    exposure, pancreatic deficiency, slow cell repair, adult onset, human growth hormone
                    deficiency, adrenal exhaustion, stress, tension, anxiety, deficiencies in folic
                    acid, Vitamins B-12, B-6, C and choline.</p>
                <h3>
                    Corresponding need for nutritional support for Low MPV:</h3>
                <p>
                    Enzyme Therapy, Immune Formula, Lymphatic Formula, Essaic Formula, Enzyme Therapy,
                    Bromaline.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Heavy Metal Detoxification, Adrenal Support</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 66, # 825</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Circulation Formula, Detox Tea, Cardio Vascular Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Blood Purification, Green Drink</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Cardio Vita, Duo C Complex, Ultra E Complex, L-Carnitine, L-Arginine, hawthorn Berry,
                    Nanokanase</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Chelation Therapy, I.V. Immune Drip, Hyperbaric Oxygen Therapy, I.V. Hydrogen
                    Peroxide Drip, Colon Hydrotherapy, Exercise Induced Oxygen Saturation Therapy</p>
            </div>
            <div class="high" id="high_mpv" style="display: none">
                <h3>
                    Generally associated with High MPV:</h3>
                <p>
                    Multiple nutritional deficiencies, bone marrow suppression, immune system over run
                    with toxins, deficiencies in bio-flavanoids, Vitamin C, Omega 3 and 6 essential
                    fatty acids and chlorophyll
                </p>
                <h3>
                    Corresponding need for nutritional support for High MPV:</h3>
                <p>
                    Turmeric, Enzymes Therapy, Immune Power Formula, Morning Health Broth, Green Drink,
                    Bedtime Bowel Tonic, Duo C Complex.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Zinc, Immune Formula, Liquid Silver</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 807</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Kidney Flush, Liver Detox, Anti Toxin Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Oil, Jug One Protocol, Jug Two Protocol, Morning Health Drink, Green Drink,
                    Bedtime Bowel Tonic</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Duo C Complex, Red Blood Cell builder, Norwegian Vitamin A, Beta Carotene, Turmeric,
                    Immune Power Formula, Fiber Max, Maxi Cleanse</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Immune Drip, Colon Hydrotherapy, I.V. Hydrogen Peroxide, Naturopathic Detoxification</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Green pepper, squash, mushroom.</p>
                <h3>
                    Support:</h3>
                <p>
                    Detoxification, cardio-vascular, liver, immune system. (Homeopathic Remedies: #4,
                    #10, #63, #66)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_abs_neutrophils">
            <!-- Absolute Neutrophils  Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Absolute Neutrophils
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
                            <strong class="blue">
                                <label id="i_score_abs_neutrophils">
                                    4.2</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">3.9 - 4.5</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">3.2- 5.2</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_abs_neutrophils" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('abs_neutrophils');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_abs_neutrophils">
                <h3>
                    Absolute Neutrophils stand alone indicators generally associated with:</h3>
                <button id="btn_abs_neutrophils" onclick="javascript :print('abs_neutrophils');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Immune systems standing army engulfs bacteria and annihilates them, immune competency,
                    inflammation marker.</p>
            </div>
            <div class="ideal equal" id="equal_abs_neutrophils" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_abs_neutrophils" style="display: none">
                <h3>
                    Generally associated with Low Absolute Neutrophils:</h3>
                <p>
                    Excess junk food, alcohol, medications, drugs, stress overwhelm, suppressed immune
                    system, multiple nutritional deficiencies, chemotherapy/radiation after effects,
                    chemical/environmental exposure, infection, viral overload, malnutrition, heavy
                    metal toxicity, autointoxication, deficiencies in vitamins B complex, C, E, A, D
                    and bio-flavanoids, hormonal disorder, inflammation</p>
                <h3>
                    Corresponding need for nutritional support for Low Absolute Neutrophils:</h3>
                <p>
                    Immune Power Formula, Essaic Formula, Adrenal restoration, Royal Queen Bee, Super
                    Green, Blood Purifier, Super Juice 22 Vegetables, Kidney Flush, Grape Seed Extract,
                    Astruglas, Stress & Toxin Protector.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Zinc, Liquid Silver, Immune Formula</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 22/23, # 17/18, # 807</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Immune Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Morning Health Drink, Jug One Protocol, Jug Two Protocol, Green Drink, Bedtime Bowel
                    Tonic</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Quercetin, Echinacea, Duo C Complex, Turmeric, Vitamin D-3, Astragals, Norwegian
                    Vitamin A, Nature’s Healer, Immune Power Formula, Fiber Max, Maxi Cleanse</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy</p>
            </div>
            <div class="high" id="high_abs_neutrophils" style="display: none">
                <h3>
                    Generally associated with High Absolute Neutrophils:</h3>
                <p>
                    Colon impaction, bacterial infection, exhaustion, excess medications, metabolic
                    acidosis, autointoxication, fear, emotional stress, anxiety, suppressed immune system,
                    menstruation, tissue damage, Candida, fungal infection, food allergies, drug reaction,
                    hay fever, asthma, parasitic infestation, colon toxicity, lymph congestion, gout,
                    adrenal burn out, deficiencies in vitamins B-12, A, K-2 and bio-flavanoids, inflammation,
                    high viral load, cellular oxygen deficiency.</p>
                <h3>
                    Corresponding need for nutritional support for High Absolute Neutrophils:</h3>
                <p>
                    Royal Queen Bee, Immune Formula, Adrenal Formula, Anti Toxin, Essaic Formula, Duo
                    C Complex, Potassium Broth, Co-Enzyme Q-10, Chinese Garlic, Oregano Oil Extract.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Immune Formula, Toxicity Correction</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 6, # 22/23, # 40</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Bowel Tea, Detox Tea, Immune Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Morning Health Drink, Green Drink, Bedtime Bowel Tonic, Blood Purification, Cruciferous
                    Vegetable Juice, Spinach Juice with Goat’s Whey</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Duo C Complex, Beta Carotene, Turmeric, Immune Power Formula, Red Blood Cell Builder,
                    Fiber Max, Maxi Cleanse</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Asparagus, parsley, spinach, green onion, green pepper, horseradish, mushroom.</p>
                <h3>
                    Support:</h3>
                <p>
                    Detoxification, adrenals, nerves, immune system. (Homeopathic Remedies: #17, #63,
                    #817, #819)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_abs_lymphocytes">
            <!-- Absolute Lymphocytes Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Absolute Lymphocytes</h1>
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
                            <strong class="blue">
                                <label id="i_score_abs_lymphocytes">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 1.50</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0- 2.50</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_abs_lymphocytes" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('abs_lymphocytes');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_abs_lymphocytes">
                <h3>
                    Absolute Lymphocytes stand alone indicators generally associated with:</h3>
                <button id="btn_abs_lymphocytes" onclick="javascript :print('abs_lymphocytes');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Immune competency, number of lymphocytes in circulation.</p>
            </div>
            <div class="ideal equal" id="equal_abs_lymphocytes" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_abs_lymphocytes" style="display: none">
                <h3>
                    Generally associated with Low Absolute Lymphocytes:</h3>
                <p>
                    Low is desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_abs_lymphocytes" style="display: none">
                <h3>
                    Generally associated with High Absolute Lymphocytes:</h3>
                <p>
                    Toxicity, multiple nutritional deficiencies, immune system compromised by toxins,
                    infection, inflammation, excess medications, junk foods, drugs, sugar, devitalized
                    food, cellular oxygen deficiency, viral fungal bacterial load, premature aging,
                    adult onset, human growth hormone deficiency, intestinal parasites, bowel impaction,
                    nerve burnout, hypothyroidism, allergies, slow food transition, unfitness, adult
                    onset, hypopituitaryism, .</p>
                <h3>
                    Corresponding need for nutritional support for High Absolute Lymphocytes:</h3>
                <p>
                    Bowel Tonic, Lymphatic Formula, Enzyme Therapy, Super C Active, Mega B Complex 1000,
                    Parasite Annihilator’s, Maxi Cleanse, Fiber Max, Nerve Builder, I-Thyroid, Allergy
                    Detox.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Bladder/Kidney Formula, Liquid Silver, Liquid Sulfur, Liquid Zinc, Toxicity Correction</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 1, # 4, # 59, # 823</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Kidney Flush</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Bedtime Bowel Tonic, Parasite Annihilation Powder</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Duo C Complex, Immune Powder, Parasite Protector</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Ozone Rectal Insufflations, I.V. Hydrogen Peroxide Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Kale, broccoli, plum, lemon, orange, cabbage, tomato.</p>
                <h3>
                    Support:</h3>
                <p>
                    Lymph system, colon, immune system, detoxification. (Homeopathic Remedies; #40,
                    #63, #807, #817).</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_bands">
            <!-- Bands Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Bands</h1>
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
                            <strong class="blue">
                                <label id="i_score_bands">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 3.75</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0- 5.00</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_bands" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('bands');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_bands">
                <h3>
                    Bands stand alone indicators generally associated with:</h3>
                <button id="btn_bands" onclick="javascript :print('bands');return false;" class="print display-none">
                    Print</button>
                <p>
                    Body’s ability to develop immune fighters, gauge of the immune system’s Army and
                    National Guard Reserve, recruiting and developing immune cells.</p>
            </div>
            <div class="ideal equal" id="equal_bands" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_bands" style="display: none">
                <h3>
                    Generally associated with Low Bands:</h3>
                <p>
                    Low is Desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_bands" style="display: none">
                <h3>
                    Generally associated with High Bands:</h3>
                <p>
                    Bone marrow over stimulation, any number above zero is an indication of an emergency,
                    acute infection, injury, trauma, the immune system is being compromised by toxins,
                    baby immune cells are being thrown into battle before they mature, stress overwhelm,
                    highly toxic condition, suppressed immune function.</p>
                <h3>
                    Corresponding need for nutritional support for High Bands:</h3>
                <p>
                    Duo C Complex, Immune Power Formula, Golden Seal.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Silver, Liquid Zinc, Immune Formula, Toxicity Correction</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 807</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Immune Tea, Lymph Tea, Detox Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Cruciferous Vegetable Juice, Liver Detoxification, Blood Purification, Cellular
                    Detoxification, Green Drink</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Astruglas, Immune Power Formula, Duo C Complex</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Naturopathic Detoxification, I.V. Immune Drip, Rife Vibrational Medicine</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Broccoli, tomato, garlic, cauliflower, spinach, mushroom, lemon.</p>
                <h3>
                    Support:</h3>
                <p>
                    Immune system, detoxification, nervous system. (Homeopathic Remedies: #1, #17, #63).</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_abs_monocytes">
            <!-- Absolute Monocytes Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Absolute Monocytes</h1>
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
                            <strong class="blue">
                                <label id="i_score_abs_monocytes">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 3</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0- 5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_abs_monocytes" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('abs_monocytes');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_abs_monocytes">
                <h3>
                    Absolute Monocytes stand alone indicators generally associated with:</h3>
                <button id="btn_abs_monocytes" onclick="javascript :print('abs_monocytes');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Pathogen destroyer, immune system’s Paratroopers, gauge of the immune system’s ability
                    to surround toxins, pathogens, harmful bacteria, viral loads, Candida and other
                    bad guys and destroy them.</p>
            </div>
            <div class="ideal equal" id="equal_abs_monocytes" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_abs_monocytes" style="display: none">
                <h3>
                    Generally associated with Low Absolute Monocytes:</h3>
                <p>
                    Low is Desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_abs_monocytes" style="display: none">
                <h3>
                    Generally associated with High Absolute Monocytes:</h3>
                <p>
                    Bad buys stronger than the good guys, phagocyte deficiency due to toxicity overwhelm,
                    bodies defense system over run due to multiple nutritional deficiencies, urinary
                    tract infection, congestion, prostate hypertrophy, highly toxic condition, parasites,
                    Candida, inflammation, tissue breaking down faster than it is rebuilding, collagen
                    disease precursors, lymphoma pre-cursor, colitis.</p>
                <h3>
                    Corresponding need for nutritional support for High Absolute Monocytes:</h3>
                <p>
                    Duo C Complex, Immune Power Formula, Bowel Tonic, Green Drink, Naturopathic Purification
                    Powder, Enzyme Therapy, 28 Super Amino Acids, Super Drink, Turmeric, Cats Claws
                    .</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Silver, Liquid Sulfur, Liquid Germanium</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 59, # 63, # 819</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Detox Formula, Kidney Flush, Immune Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Morning Health Drink, Bedtime Bowel Tonic, Parasite Annihilation Powder, Naturopathic
                    Purification Powder, Intestinal Decongestion, Yogurt Health Drink</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Chinese Medicinal Garlic, Oregano Extract, Parasite Protector</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, Naturopathic Detoxification, I.V. Hydrogen Peroxide Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Tomato, spinach, broccoli, wheat grass, peas, sweet potato, artichoke, cauliflower,
                    kale, plum, orange, lemon</p>
                <h3>
                    Support:</h3>
                <p>
                    Thymus, lymph system, immune system, detoxification. (Homeopathic Remedies: #4,
                    #63, #807, #817).</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_mxd_cells">
            <!-- Mixed Cells Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Mixed Cells</h1>
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
                            <strong class="blue">
                                <label id="i_score_mxd_cells">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_mxd_cells" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('mxd_cells');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_mxd_cells">
                <h3>
                    Mixed Cells stand alone indicators generally associated with:</h3>
                <button id="btn_mxd_cells" onclick="javascript :print('mxd_cells');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Immune system quick responder force.</p>
            </div>
            <div class="ideal equal" id="equal_mxd_cells" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_mxd_cells" style="display: none">
                <h3>
                    Generally associated with Low Mixed Cells:</h3>
                <p>
                    Low is Desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_mxd_cells" style="display: none">
                <h3>
                    Generally associated with High Mixed Cells:</h3>
                <p>
                    Above zero – immune system is activated due to metabolic and environmental toxicity,
                    autointoxication.</p>
                <h3>
                    Corresponding need for nutritional support for High Mixed Cells:</h3>
                <p>
                    Essaic Formula, Auto Toxin Detox, Lymphatic Formula, Duo C Complex, Chinese Garlic,
                    Oregano Oil Extract, Immune Power Formula, Ionic Zinc, Propolis.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Immune Formula, Liquid Silver, Liquid Sulfur, Liquid Germanium</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 63, # 807</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Immune Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Green Drink</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                </p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                </p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Mushroom, lemon, asparagus, tomato, green pepper</p>
                <h3>
                    Support:</h3>
                <p>
                    Detoxification, immune system. (Homeopathic Remedy: #4)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_abs_mxd_cells">
            <!-- Absolute Mixed Cells Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Absolute Mixed Cells</h1>
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
                            <strong class="blue">
                                <label id="i_score_abs_mxd_cells">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_abs_mxd_cells" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('abs_mxd_cells');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_abs_mxd_cells">
                <h3>
                    Absolute Mixed Cells stand alone indicators generally associated with:</h3>
                <button id="btn_abs_mxd_cells" onclick="javascript :print('abs_mxd_cells');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Immune system overwhelmed with toxins.</p>
            </div>
            <div class="ideal equal" id="equal_abs_mxd_cells" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_abs_mxd_cells" style="display: none">
                <h3>
                    Generally associated with Low Absolute Mixed Cells:</h3>
                <p>
                    Low is Desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_abs_mxd_cells" style="display: none">
                <h3>
                    Generally associated with High Absolute Mixed Cells:</h3>
                <p>
                    Immune Power Formula, Duo C Complex.</p>
                <h3>
                    Corresponding need for nutritional support for High Absolute Mixed Cells:</h3>
                <p>
                    Immune Power Formula, Duo C Complex.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Toxicity Correction
                </p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 63, # 807</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Immune Formula, Detox Tea
                </p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Fortress Strong, Blood Purification, Cruciferous Vegetables
                </p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Duo C Complex, Immune Power Formula
                </p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Naturopathic Detoxification</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Tomato, garlic, mushroom, spinach</p>
                <h3>
                    Support:</h3>
                <p>
                    Immune system. (Homeopathic Remedies: #1, #4)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_atypical">
            <!-- Atypical Lymphocytes Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Atypical Lymphocytes</h1>
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
                            <strong class="blue">
                                <label id="i_score_atypical">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_atypical" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('atypical');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_atypical">
                <h3>
                    Atypical Lymphocytes stand alone indicators generally associated with:</h3>
                <button id="btn_atypical" onclick="javascript :print('atypical');return false;" class="print display-none">
                    Print</button>
                <p>
                    Lymph node function.</p>
            </div>
            <div class="ideal equal" id="equal_atypical" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_atypical" style="display: none">
                <h3>
                    Generally associated with Low Atypical Lymphocytes:</h3>
                <p>
                    Low is Desirable. Zero is ideal.</p>
                <h3>
                    Corresponding need for nutritional support for Low Atypical Lymphocytes:</h3>
                <p>
                    Zero is desired score at all times. Anything above indicates that your lymph nodes
                    are filled to capacity with toxins and fatigues.</p>
            </div>
            <div class="high" id="high_atypical" style="display: none">
                <h3>
                    Generally associated with High Atypical Lymphocytes:</h3>
                <p>
                    Compromised immune system, viral infection, trapped toxins in lymph system, liver
                    toxicity, impacted bowel, autointoxication, severe infection, toxins building up
                    faster than your immune system can process them, weak, multiple nutritional deficiencies.</p>
                <h3>
                    Corresponding need for nutritional support for High Atypical Lymphocytes:</h3>
                <p>
                    Liver Detox, Immune, Lymph Detox Formula’s, Bowel Tonic, Green Drink, Immune Power
                    Formula, Super C Active, Aloe Vera Concentrate.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Potassium, Metabolic Balancer, Acidosis Correction, Bladder/Kidney, Edema
                    Correction, Immune Enhancer</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 817</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Lymph Tea, Detox Formula</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Bedtime Bowel Tonic</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Duo C Complex, Astragulas, Chinese Medicinal Garlic, Sinus/Lymphic Decongestion,
                    Fiber Max, Maxi Cleanse</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Lymphatic Drainage Machine, I.V. Hydrogen Peroxide Drip, Colon Hydrotherapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Celery, kale, peas, spinach, garlic, horseradish, broccoli, fig.</p>
                <h3>
                    Support:</h3>
                <p>
                    Lymph system, bowel, detoxification. (Homeopathic Remedy: #817)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_thyriod_t4_free">
            <!-- Thyroid T4 Free Circulating T4 Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Thyroid T4 Free Circulating T4</h1>
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
                            <strong class="blue">
                                <label id="i_score_thyriod_t4_free">
                                    1.26</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">1.00 - 1.52</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">.58- .64</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_thyriod_t4_free" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('thyriod_t4_free');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_thyriod_t4_free">
                <h3>
                    Thyroid T4 Free Circulating T4 stand alone indicators generally associated with:</h3>
                <button id="btn_thyriod_t4_free" onclick="javascript :print('thyriod_t4_free');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Optimum thyroid function.</p>
            </div>
            <div class="ideal equal" id="equal_thyriod_t4_free" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_thyriod_t4_free" style="display: none">
                <h3>
                    Generally associated with Low Thyroid T4 Free Circulating T4:</h3>
                <p>
                    Slow thinking, low mental/physical energy, sluggish, slow moving, creeping weight
                    gain, poor sleep, hair loss, hypothyroid, stress over run, nervous breakdown, chronic
                    fatigue, adrenal exhaustion, anxiety, tension.</p>
                <h3>
                    Corresponding need for nutritional support for Low Thyroid T4 Free Circulating T4:</h3>
                <p>
                    Iodine/Iodide, Duo C Complex, Hypericum, Stress & Toxin Protector, Cal/Mag, Super
                    Oil, Co-Enzyme Q-10, Brain Flush, Selenium, Zinc, Tourine.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Adrenal Support</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4, # 807</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Adrenal Formula, Energy Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    87 Sea Minerals, Brain Food, Brain Invigorating Powder, Green Power Formula, Energy
                    Powder, Super Drink</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    I-Thyroid, Sea Life, Adrenal Hormone Restoration, Royal Queen Bee Jelly, Mega B
                    Complex 1000</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Bio-Identical hormone Restoration Therapy, Male/Female Hormone Restoration Therapy,
                    Human Growth Hormone Restoration Therapy</p>
            </div>
            <div class="high" id="high_thyriod_t4_free" style="display: none">
                <h3>
                    Generally associated with High Thyroid T4 Free Circulating T4:</h3>
                <p>
                    Heart palpitations, hand tremors, increased perspiration, nervousness, jumpiness,
                    sudden weight loss, hypothyroid, stress over run, nervous breakdown, chronic fatigue,
                    adrenal exhaustion, anxiety, tension.</p>
                <h3>
                    Corresponding need for nutritional support for High Thyroid T4 Free Circulating
                    T4:</h3>
                <p>
                    Iodine/Iodide, Mega B Complex 1000, Duo C Complex, Hypericum, Stress & Toxin Protector,
                    Nerve Builder, Super Oil, Co-Enzyme Q-10, Brain Flush.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Magnesium, Stress & Nerve Relief</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 17</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Tranquility Tea, Stress & Nerve Relief</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Nerve Rejuvenation</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Cal/Mag, Royal Queen Bee Jelly, Pineal Hormone Restoration, Valerian Root, Adrenal
                    Hormone Restoration</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Rife Vibrational Medicine, Light & Sound Stress Therapy, Male/Female Hormone Restoration
                    Therapy, Bio-Identical Hormone Restoration Therapy</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Cauliflower, mushroom, beet, garlic.</p>
                <h3>
                    Support:</h3>
                <p>
                    Thyroid, adrenals, gonads, pituitary, nerves. (Homeopathic Remedies: #17, #54, #803,
                    #804).</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_tsh">
            <!-- Thyroid Stimulating Hormone (TSH) Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Thyroid Stimulating Hormone (TSH)</h1>
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
                            <strong class="blue">
                                <label id="i_score_tsh">
                                    1.25</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">1.00 - 1.50</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0.35 - 5.00</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_tsh" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('tsh');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_tsh">
                <h3>
                    TSH stand alone indicators generally associated with:</h3>
                <button id="btn_tsh" onclick="javascript :print('tsh');return false;" class="print display-none">
                    Print</button>
                <p>
                    Pituitary/Thyroid thermostat</p>
            </div>
            <div class="ideal equal" id="equal_tsh" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_tsh" style="display: none">
                <h3>
                    Generally associated with Low TSH:</h3>
                <p>
                    Under performing pituitary, adult onset, human growth hormone deficiency, large
                    appetite, hungry, coffee, soda, sugar, drug excess, hyperthyroidism, deficiencies
                    in boron, calcium, B Complex, N-Acetyl Cystein, selenium, vitamin D-3, vitamin E,
                    iodine/iodide, overmedication, over stimulated adrenal, stress overwhelm, over use
                    of synthetic thyroid, alcohol, sugar, trans fats, bakery products, tap water</p>
                <h3>
                    Corresponding need for nutritional support for Low TSH:</h3>
                <p>
                    Stress & Toxin Protector, Mega B Complex 1000, Hypericum, Cal/Mag, Adrenal Hormone
                    Restoration, Thyroid Hormone Replacement Therapy</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Adrenal Support</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 805</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Adrenal Tea, Energy Tea, Nerve Tea.</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Royal Pollen Complex, Energy Powder, Nerve Rejuvenation, Super Food Drink, Amino
                    Acid Creamed Peas, Brain Invigorating Powder
                </p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Mega B Complex, Co-Enzyme Q-10, Royal Queen Bee Jelly, Adrenal Hormone Restoration</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Human Growth Hormone Restoration Therapy, I.V. Super Nutrition Drip, Hyperbaric
                    Oxygen Therapy</p>
            </div>
            <div class="high" id="high_tsh" style="display: none">
                <h3>
                    Generally associated with High TSH:</h3>
                <p>
                    Hypothyroidism, no energy, no heat, no motivation, gradual unexplained weight gain,
                    hair brittleness, jumpiness, anxiety, heart palpitations hand tremors, sleep problems,
                    forgetfulness, under-performing pituitary, adult onset, human growth hormone deficiency,
                    deficiencies in iodine/iodide, selenium, zinc and tyrosine</p>
                <h3>
                    Corresponding need for nutritional support for High TSH:</h3>
                <p>
                    I-Thyroid, Selenium, Tyrosine, Taurine.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Thyroid Formula, Liquid Selenium, Liquid Zinc, Liquid Cobalt</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 806</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Adrenal Tea, Energy Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Thyroid Broth, Energy Powder</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    I-Thyroid, L-Tyrosine, Selenium, Nature’s Healer, Abunda Body, Asian Exotic Fruit</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Bio-Identical Thyroid Hormone Restoration</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Kale, broccoli, cauliflower, mushrooms, horseradish, fig</p>
                <h3>
                    Support:</h3>
                <p>
                    Thyroid, anterior pituitary. (Homeopathic Remedy: #834)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_thyroid_t4">
            <!-- Thyroid Total T4 Uptake Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Thyroid Total T4</h1>
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
                            <strong class="blue">
                                <label id="i_score_thyroid_t4">
                                    8.5</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">7 - 10</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">4.5 - 402.5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_thyroid_t4" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('thyroid_t4');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_thyroid_t4">
                <h3>
                    Thyroid Total T4 stand alone indicators generally associated with:</h3>
                <button id="btn_thyroid_t4" onclick="javascript :print('thyroid_t4');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Hypo/Hyperthyroidism marker, malnutrition, premature aging, thyroid function.</p>
            </div>
            <div class="ideal equal" id="equal_thyroid_t4" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_thyroid_t4" style="display: none">
                <h3>
                    Generally associated with Low Thyroid Total T4:</h3>
                <p>
                    Hypothyroidism, premature aging, mal-absorption, junk food, sugar, fast food excess,
                    protein/amino acid deficiency deficiencies in iodine/iodide, selenium, N-Acetyl
                    Cysteine, vitamin D-3, vitamin E, vitamin B-5, immune system compromise, under acting
                    pituitary, excess use of aspirin, drugs, alcohol, bakery products, tap water, birth
                    control pills, liver, spleen and bone marrow sluggishness.</p>
                <h3>
                    Corresponding need for nutritional support for Low Thyroid Total T4:</h3>
                <p>
                    Iodine/Iodide, 28 Super Amino Acids, Immune Power Formula, Super Food Drink, Super
                    Oil, Spirulina, Liver Detox, Alfalfa Juice, Duo C Complex.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Iodine, Liquid Selenium, Liquid Zinc</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 806</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Thyroid Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Thyroid Broth, Irish Moss/Kelp, 87 Sea Minerals (Liquid)</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    I-Thyroid, Sea Life, Selenium, Nature’s Healer, Adrenal Hormone Restoration, L-Taruine,
                    Royal Queen Bee Jelly, Absorption Enhancer, Vitamin D-3, Ultra E complex, Pyridoxine,
                    N-Acetyl Cystein, L-Arginine, L-Carnitine</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Bio-Identical Thyroid Restoration Therapy, Colon Hydrotherapy, I.V. Super Nutritional
                    Drip</p>
            </div>
            <div class="high" id="high_thyroid_t4" style="display: none">
                <h3>
                    Generally associated with High Thyroid Total T4:</h3>
                <p>
                    Liver problems, autointoxication, adrenal exhaustion, stress, medications, magnesium,
                    vitamin D-3, L-Arginine, N-Acetyl Cysteine, hyperthyroidism, over use of aspirin,
                    birth control pills, synthetic thyroid, liver dysfunction, cellular fluid loss,
                    parathyroid imbalance, lymphatic congestion, hormonal deficiency, multiple mineral
                    deficiencies, deficiency in magnesium</p>
                <h3>
                    Corresponding need for nutritional support for High Thyroid Total T4:</h3>
                <p>
                    Adrenal Restoration, royal Queen Bee Jelly, Stress & Toxin Protector, Lymphatic
                    Formula, Nerve Builder.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Adrenal Support, Liver Detox</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 10</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Liver Detox Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Jug One Protocol, Morning Health Drink, Green Drink, Super Drink, Bedtime Bowel
                    Tonic, Super Oil, Fortress Strong, Amino acid Creamed Zucchini</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Liver Formula, Milk Thistle, Dandelion Root, L-Arginine, N-Acetyl Cysteine, Adrenal
                    Hormone Restoration, Vitmin D-3, Cal/Mag, Stress & Tonic Protector, Royal Queen
                    Bee Jelly</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Colon Hydrotherapy, I.V. Alpha Lipoic Acid Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, avocado, mushroom, tomato, celery, horseradish, asparagus.</p>
                <h3>
                    Support:</h3>
                <p>
                    Thyroid, adrenals, pituitary, gonads. (Homeopathic Remedies: #54, 803, #804, #806)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_thyroid_t3">
            <!-- Thyroid T3 Uptake Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Thyroid T3 Uptake</h1>
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
                            <strong class="blue">
                                <label id="i_score_thyroid_t3">
                                    32.5</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">30 - 35</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">25 - 40</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_thyroid_t3" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('thyroid_t3');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_thyroid_t3">
                <h3>
                    Thyroid T3 Uptake stand alone indicators generally associated with:</h3>
                <button id="btn_thyroid_t3" onclick="javascript :print('thyroid_t3');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Need for thyroid nutritional support, thyroid hormone binding site availability
                    gauge.</p>
            </div>
            <div class="ideal equal" id="equal_thyroid_t3" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_thyroid_t3" style="display: none">
                <h3>
                    Generally associated with Low Thyroid T3 Uptake:</h3>
                <p>
                    Nervousness, sleep problems, sudden weight loss, stress, tension, worry, anxiety,
                    adrenal exhaustion, nerve burn out, pituitary under performance, excess medications,
                    protein mal-absorption, over use of drugs, alcohol, tap water, sugar, trans fats,
                    bakery products, over use of synthetic thyroid replacement, hyperthyroidism, deficiencies
                    in N-Acetyl Cysteine, selenium, vitamin D-3, vitamin E, kidney overload, thyroid
                    hyperfunction</p>
                <h3>
                    Corresponding need for nutritional support for Low Thyroid T3 Uptake:</h3>
                <p>
                    Iodine/Iodide, Selenium, Tyrosine, Tourine.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Stress & Nerve Repair, Liquid Magnesium</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 17, # 803/804, # 806, # 812</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Nerve Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Thyroid Broth, Super Drink, Amino Acid Creamed One Dozen Green Vegetable Juice</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Hypericum, Nerve Builder, Cal/Mag, Ultra E Complex, Pyridoxine, Mega B Complex 1000,
                    N-Acetyl Cysteine, Vitamin D-3, Valerian Root, Pineal Hormone Restoration, Stress
                    & Toxin Protector, Adrenal Restoration</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Bio-Identical Thyroid Restoration Therapy, Bio-Identical Male/Female Hormone Restoration
                    Therapy, Hormone Growth Restoration Therapy</p>
            </div>
            <div class="high" id="high_thyroid_t3" style="display: none">
                <h3>
                    Generally associated with High Thyroid T3 Uptake:</h3>
                <p>
                    Nervousness, sleep problems, sudden weight loss, stress, tension, worry, anxiety,
                    adrenal exhaustion, nerve burn out, pituitary under performance, excess medications,
                    protein mal-absorption, over use of drugs, alcohol, tap water, sugar, trans fats,
                    bakery products, over use of synthetic thyroid replacement, hyperthyroidism, deficiencies
                    in N-Acetyl Cysteine, selenium, vitamin D-3, vitamin E, kidney overload, thyroid
                    hyperfunction</p>
                <h3>
                    Corresponding need for nutritional support for High Thyroid T3 Uptake:</h3>
                <p>
                    Mega B Complex 1000, 57 Super Minerals, Enzyme Therapy, Bromaline, Stress & Toxin
                    Protector.
                </p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Thyroid Support, Brain De Fog, Liquid Iron</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 805, # 806</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Thyroid Tea, Adrenal Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Thyroid Broth, Super Food Drink, 92% Egg & Milk Isolate Protector</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    I-Thyroid, Sea Life, L-Tyrosine, 28 Super Amino Acid Brain Flush, Super Endurall,
                    Adrenal Hormone Restoration, Ultra E Complex, Vitamin D-3, Hair Formula, N-Acetyl
                    Cysteine, Paradoxin, Animation of Life, Royal Queen Bee Jelly, Alpha Lipoic Acid,
                    Co-Enzyme Q-10</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Rife Vibrational Medicine</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Mushroom, zucchini, beet, celery, green onion.</p>
                <h3>
                    Support:</h3>
                <p>
                    Thyroid, adrenal, pituitary, gonads. (Homeopathic Remedies: #54, #801, #806)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_thyroid_t7">
            <!-- Free Thyroxin Index – Thyroid Free 4 Index T 7 Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Free Thyroxin Index – Thyroid Free 4 Index T 7</h1>
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
                            <strong class="blue">
                                <label id="i_score_thyroid_t7">
                                    3.15</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">2.65 - 3.85</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">1.3 - 5.00</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_thyroid_t7" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('thyroid_t7');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_thyroid_t7">
                <h3>
                    Free Thyroxin Index – Thyroid Free 4 Index T 7 stand alone indicators
                </h3>
                <button id="btn_thyroid_t7" onclick="javascript :print('thyroid_t7');" class="print display-none">
                    Print</button>
                <p>
                    Memory, anxiety, mental tranquanimity, stress, adrenal, thyroid function and gauge.</p>
            </div>
            <div class="ideal equal" id="equal_thyroid_t7" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_thyroid_t7" style="display: none">
                <h3>
                    Generally associated with Low Free Thyroxin Index – Thyroid Free 4 Index T 7 :</h3>
                <p>
                    Mental confusion, anxiety, depression, moodiness, worry, memory loss, unexplained
                    weight gain, hyperthyroidism, slow metabolism, adrenal over activity, suppressing
                    thyroid function, stress overwhelm, slow down of the conversion of oxygen weight
                    gain, obesity, goiter</p>
                <h3>
                    Corresponding need for nutritional support for Low Free Thyroxin Index – Thyroid
                    Free 4 Index T 7:</h3>
                <p>
                    Iodine/Iodide, Selenium</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Brain De Fog, Liquid Gold, Liquid Lithium</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 57, # 812, # 814</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Adrenal Formula, Energy Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Brain Invigoration Powder, Brain Food, Super Oil, Fortress Strong</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Hypericum, Nature’s Flush, Mega B Complex 1000, I-Thyroid, L-Taurine, L-Tyrosine,
                    Thiamin, Riboflavin, Red Blood Cell Builder, Phosphadtyl Choline, Lignan, Lipotropic
                    Factor</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Rife Vibrational Medicine, Light & Sound Therapy, Ozone Infused Far Infrared Detoxification
                    Sauna</p>
            </div>
            <div class="high" id="high_thyroid_t7" style="display: none">
                <h3>
                    Generally associated with High Free Thyroxin Index – Thyroid Free 4 Index T 7:</h3>
                <p>
                    Cold extremities, forgetfulness, jumpy feelings, nervous, sleep problems, hyperthyroidism,
                    adrenal burnout, elevating metabolism, chronic fatigue, excess use of synthetic
                    thyroid hormone, birth control pills, alcohol, sugar, junk foods, estrogen dominance,
                    zenoestrogen, stress overwhelm</p>
                <h3>
                    Corresponding need for nutritional support for High Free Thyroxin Index – Thyroid
                    Free 4 Index T 7:</h3>
                <p>
                    Adrenal Hormone Restoration, Pineal Hormone Restoration, Hypericum, Mega B Complex
                    1000, Co-Enzyme Q-10 with Omega Essential Fatty Acids 3 and 6</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid Gold, Liquid Lithium</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 17</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Adrenal Tea, Nerve Tea, 87 Sea Minerals (Liquid), Tranquility Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Nerve Rejuvenation, Magnesium Broth</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Cal/Mag, I-Thyroid, Mega B Complex 1000, Sea Life</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Bio-Identical Thyroid Hormone Restoration, Pineal Hormone Restoration, I.V. Super
                    Nutritional Drip, Rife Vibrational Medicine</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Mushroom, avocado, beet, garlic, green onion, fig.</p>
                <h3>
                    Support:</h3>
                <p>
                    Thyroid, adrenals, nerves, gonads, pineal. (Homeopathic Remedies: #17, #50, #54,
                    #803, #804, #806)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_pts">
            <!-- Percent Transferrin Saturation  Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Percent Transferrin Saturation</h1>
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
                            <strong class="blue">
                                <label id="i_score_pts">
                                    35</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">30 - 40</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">15 - 50</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_pts" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('pts');" class="show-result">Show
                                Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_pts">
                <h3>
                    Percent Transferrin Saturation stand alone indicators generally associated with:</h3>
                <button id="btn_pts" onclick="javascript :print('pts');return false;" class="print display-none">
                    Print</button>
                <p>
                    Too much or too little iron, level of cellular iron, the transport protein that
                    regulates iron absorption, high levels relate to the body’s ability to fight infection</p>
            </div>
            <div class="ideal equal" id="equal_pts" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_pts" style="display: none">
                <h3>
                    Generally associated with Low Percent Transferrin Saturation:</h3>
                <p>
                    Iron deficiency anemia, protein depletion, junk food habit, deficiencies in folic
                    acid, B-12, iron, sluggish liver, inflammatory condition blocking iron utilization
                    by bone marrow, protein mal-absorption, susceptibility to chronic infection, deficiencies
                    in bio-flavanoids, Co-Enzyme Q-10, iodine/iodide, B-12, alpha lipoic acid, N-Acytle
                    Cystein, sulfur, synthetic iron overload</p>
                <h3>
                    Corresponding need for nutritional support for Low Percent Transferrin Saturation:</h3>
                <p>
                    Ionic Iron, Anti Anemia, Absorption Enhancer, Endurall, Red Blood Cell Builder,
                    Liver Formula.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Liquid iron, Anti Anemia Formula, Liquid Iodine, Liquid Sulfur</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 34</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    High Phenol Green Tea</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Super Food Drink, Bio-Flavanoids</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Anti Anemia, Anti Fatigue, Folic Acid, Pyridoxine, Red Blood Cell Builder, Duo C
                    Complex, Co-Enzyme Q-10, Organic Sulfur, Alpha Lipoic Acid, I-thyroid, N-Acteyl
                    Cystein</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    I.V. Super Nutritional Drip</p>
            </div>
            <div class="high" id="high_pts" style="display: none">
                <h3>
                    Generally associated with High Percent Transferrin Saturation:</h3>
                <p>
                    High transferrin, deficiencies in bio-flavanoids, vitamin C, blood loss, depletion
                    iron stores, liver condition, iron too high or too low not getting into the cell</p>
                <h3>
                    Corresponding need for nutritional support for High Percent Transferrin Saturation:</h3>
                <p>
                    Bio-flavanoids, Vitamin C, iron deficiency anemia, synthetic estrogen therapy</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Toxicity Correction</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 4</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Blood Cleanse</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Bio-Flavanoids</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Duo C Complex</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Hyperbaric Oxygen Therapy, I.V. Vitamin C Drip</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Beet, spinach, jalapeno, green peppers, garlic, horseradish</p>
                <h3>
                    Support:</h3>
                <p>
                    Spleen. (Homeopathic Remedies: #18, #22, #23, #808)</p>
            </div>
        </div>
        <div class="page-break">
        </div>
        <div id="div_abs_eosinophil">
            <!-- Eosinophil Count Absolute Test here -->
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td colspan="4">
                        <h1>
                            Eosinophil Count Absolute</h1>
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
                            <strong class="blue">
                                <label id="i_score_abs_eosinophil">
                                    0</label></strong>
                        </td>
                        <td width="25%">
                            <strong class="blue">0 - 1.12</strong>
                        </td>
                        <td width="25%">
                            <strong class="red">0 - 1.5</strong>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="u_score_abs_eosinophil" runat="server"></asp:TextBox>
                            <a href="javascrip:void(0)" onclick="resultOfTest('abs_eosinophil');" class="show-result">
                                Show Result</a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ideal" id="ideal_abs_eosinophil">
                <h3>
                    Eosinophil Count Absolute stand alone indicators generally associated with:</h3>
                <button id="btn_abs_eosinophil" onclick="javascript :print('abs_eosinophil');return false;"
                    class="print display-none">
                    Print</button>
                <p>
                    Allergies/Parasite annihilator.</p>
            </div>
            <div class="ideal equal" id="equal_abs_eosinophil" style="display: none">
                <h3>
                    Your score is ideal:</h3>
            </div>
            <div class="low" id="low_abs_eosinophil" style="display: none">
                <h3>
                    Generally associated with Low Eosinophil Count Absolute:</h3>
                <p>
                    Low is Desirable. Zero is ideal.</p>
            </div>
            <div class="high" id="high_abs_eosinophil" style="display: none">
                <h3>
                    Generally associated with High Eosinophil Count Absolute:</h3>
                <p>
                    Adrenal over activity, allergies, hyper sensitivity, infectious process, parasite
                    infestations, excess medications, antihistamines, adult onset, growth hormone deficiency,
                    enzyme and multiple nutritional deficiencies, food and/or environmental allergies,
                    highly toxic condition, bowel toxicity, liver sluggishness, over eating, cellular
                    oxygen deficiency, excess antibiotics, drugs, junk foods, alcohol, enzyme deficiencies,
                    mal-absorption syndrome.</p>
                <h3>
                    Corresponding need for nutritional support for High Eosinophil Count Absolute:</h3>
                <p>
                    Adrenal Restoration, Allergy Detox, Nerve, Immune, Liver Detox, Essaic Formula’s,
                    L-Arginine Complex, L-Carnitine, 28 Super Amino Acids, Stomach Detox, Green Drink,
                    Absorption Enhancer.</p>
                <h3>
                    Ionic Liquid Mineral Formulations and Tonics:</h3>
                <p>
                    Toxicity correction, Liquid Silver</p>
                <h3>
                    Homeopathic Remedies Number:</h3>
                <p>
                    # 40, # 59</p>
                <h3>
                    Botanical Healing Tea Formulations:</h3>
                <p>
                    Liver Detox, Kidney Flush</p>
                <h3>
                    Naturopathic Food Medicine Formulations:</h3>
                <p>
                    Morning Health Drink, Parasite Annihilation Powder, Bedtime Bowel Tonic, Immune
                    Broth, Naturopathic Purification</p>
                <h3>
                    Vitamin and Nutraceutical Supplements:</h3>
                <p>
                    Fiber Max, Maxi Cleanse, Parasite Protector</p>
                <h3>
                    Clinical Treatments Indicated:</h3>
                <p>
                    Naturopathic Detoxification</p>
                <h3>
                    Vegetable Juice Concentrates:</h3>
                <p>
                    Mushroom, kale, spinach, celery, apple.</p>
                <h3>
                    Support:</h3>
                <p>
                    Liver, adrenals, pituitary, digestion, colon, detoxification. (Homeopathic Remedies:
                    #8, #10, #63)</p>
            </div>
        </div>
    </div>
    </form>

    <script type="text/javascript">
        ShowResult('glucose');
        ShowResult('bun');
        ShowResult('creatinine');
        ShowResult('bun_creatinine');
        ShowResult('sodium');
        ShowResult('potassium');
        ShowResult('sod_pot');
        ShowResult('anion_gap');
        ShowResult('chloride');
        ShowResult('co2');
        ShowResult('cholesterol');
        ShowResult('triglyceride');
        ShowResult('hdl');
        ShowResult('ldl');
        ShowResult('vldl');
        ShowResult('chol_hdl');
        ShowResult('ldl_hdl');
        ShowResult('calcium');
        ShowResult('phosphorus');
        ShowResult('cal_phos');
        ShowResult('alka_phos');
        ShowResult('sgot');
        ShowResult('sgpt');
        ShowResult('gamma');
        ShowResult('ldh');
        ShowResult('bilirubin');
        ShowResult('uric');
        ShowResult('tot_protein');
        ShowResult('albumin');
        ShowResult('calcium_albumin');
        ShowResult('iron_bnding');
        ShowResult('tot_iron');
        ShowResult('wbc');
        ShowResult('rbc');
        ShowResult('hemoglobin');
        ShowResult('hematocrit');
        ShowResult('mvc');
        ShowResult('mch');
        ShowResult('mchc');
        ShowResult('rdw');
        ShowResult('platelets');
        ShowResult('neutrophils');
        ShowResult('lymphocytes');
        ShowResult('monocytes');
        ShowResult('eosinophils');
        ShowResult('basophils');
        ShowResult('globulin');
        ShowResult('a_g_ratio');
        ShowResult('abs_basophils');
        ShowResult('ferritin');
        ShowResult('mpv');
        ShowResult('abs_neutrophils');
        ShowResult('abs_lymphocytes');
        ShowResult('bands');
        ShowResult('abs_monocytes');
        ShowResult('mxd_cells');
        ShowResult('abs_mxd_cells');
        ShowResult('atypical');
        ShowResult('thyriod_t4_free');
        ShowResult('tsh');
        ShowResult('thyroid_t4');
        ShowResult('thyroid_t3');
        ShowResult('thyroid_t7');
        ShowResult('pts');
        ShowResult('abs_eosinophil');
       

    </script>

</body>
</html>
