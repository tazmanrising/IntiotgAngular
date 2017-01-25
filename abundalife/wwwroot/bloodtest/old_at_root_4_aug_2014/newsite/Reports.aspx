<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="abundalife1001.Reports" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Abunda Life Medical Nutrition Testing Clinic</title>
    <link href="css/report-style.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript" src="js/test_function.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="main_container">
        <!--Glucose test starts here-->
        <div class="report-logo">
            <img alt="header-logo" src="images/logo.png" />
    </div>
    <div class="report-header">Naturopathic Abunda Life 1001
<br />Nutritional Testing & Personal Health Evaluation
    </div>
    <div class="clear"></div>
    <div class="patient-name">
    Patient Name:Test Account
    </div>
    <div class="report-date">
    Date:12/11/2011
    </div>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4" class="heading">
                Abunda Life Medical Nutrition Testing Clinic<br />
                Nutrabalance Diagnostic Laboratory Blood Analysis Results
            </td>
        </tr>
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
                    <strong>
                        <label id="i_score_glucose">
                            90</label></strong>
                </td>
                <td width="25%">
                    <strong>81.9 - 98.1</strong>
                </td>
                <td width="25%">
                    <strong>75 - 105</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_glucose" />
                    <a href="javascript:void(0);" onclick="resultOfTest('glucose');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_glucose">
        <h3>
            Glucose stand alone indicators generally associated with:</h3>
        <button id="btn_glucose" onclick="javascript :print('glucose');" class="print display-none">
            Print</button>
        <p>
            Pancreatic function, cellular fuel required for physical and mental activity, blood
            sugar balance, liver efficiency, fuel gauge of every cell of the brain and body,
            insulin/glucagon hormone balance, even flow of cellular energy, efficient bio-energy
            flow to every bodily system.</p>
    </div>
    <div class="ideal" id="equal_glucose" style="display: none">
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
                    <strong>
                        <label id="i_score_bun">
                            12.0</label></strong>
                </td>
                <td width="25%">
                    <strong>10.5 - 16.5</strong>
                </td>
                <td width="25%">
                    <strong>7 - 25</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_bun" />
                    <a href="#" onclick="resultOfTest('bun');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_bun">
        <h3>
            Bun stand alone indicators generally associated with:</h3>
        <p>
            Liver function, colon toxicity, protein metabolism, kidney filtration gauge, colon
            efficiency, nitrogen waste disposal and nitrogen waste disposal and liver efficiency
            gauge, excess cellular breakdown, excess stress, shock, dehydration.</p>
    </div>
    <div class="ideal hidden" id="equal_bun" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_bun" style="display: none">
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
    <div class="high hidden" id="high_bun" style="display: none">
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
                    <strong>
                        <label id="i_score_creatinine">
                            1.0</label></strong>
                </td>
                <td width="25%">
                    <strong>.9 - 1.1</strong>
                </td>
                <td width="25%">
                    <strong>.7 - 1.2</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_creatinine" />
                    <a href="#" onclick="resultOfTest('creatinine');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_creatinine">
        <h3>
            Creatinine stand alone indicators generally associated with:</h3>
        <p>
            Kidney’s ability to efficiently filter creatinine and other toxins from the blood.
            Kidney clearance of metabolic by-products. Creatinine is the end result of energy
            production and the by-product in muscle breakdown and kidney function. Muscle construction,
            muscle breakdown/repair, cellular degeneration/regeneration, deficiencies in paradoxin,
            phosphadtyl choline, omega 3 and 6 essential fatty acids, Co-Enzyme Q-10, hydrochlorhydria,
            muscle wasting, atrophy, toxic condition, sluggish waste matter blocking muscle
            tissue repair</p>
    </div>
    <div class="ideal hidden" id="equal_creatinine" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_creatinine" style="display: none">
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
    <div class="high hidden" id="high_creatinine" style="display: none">
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
                    <strong>
                        <label id="i_score_bun_creatinine">
                            12.50</label></strong>
                </td>
                <td width="25%">
                    <strong>9.5 - 17</strong>
                </td>
                <td width="25%">
                    <strong>6 - 25</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_bun_creatinine" />
                    <a href="#" onclick="resultOfTest('bun_creatinine');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_bun_creatinine">
        <h3>
            Bun/Creatinine stand alone indicators generally associated with:</h3>
        <p>
            Kidney function, dialysis calculator, efficient protein utilization, hydration,
            toxic fluid retention</p>
    </div>
    <div class="ideal hidden" id="equal_bun_creatinine" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_bun_creatinine" style="display: none">
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
    <div class="high hidden" id="high_bun_creatinine" style="display: none">
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
                    <strong>
                        <label id="i_score_sodium">
                            140</label></strong>
                </td>
                <td width="25%">
                    <strong>138 - 142</strong>
                </td>
                <td width="25%">
                    <strong>136 - 144</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_sodium" />
                    <a href="#" onclick="resultOfTest('sodium');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_sodium">
        <h3>
            Sodium stand alone indicators generally associated with:</h3>
        <p>
            Hydration and electrolyte monitor, outer cell efficiency, carries nutrients to and
            toxins out of cells, maintains proper osmotic pressure balance, acid/alkaline blood
            balance, efficient nerve impulse transmission, acid base balance, nerve impulse
            transition, adrenal, kidney, colon health, heart function.</p>
    </div>
    <div class="ideal hidden" id="equal_sodium" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_sodium" style="display: none">
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
    <div class="high hidden" id="high_sodium" style="display: none">
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
                    <strong>
                        <label id="i_score_potassium">
                            4.4</label></strong>
                </td>
                <td width="25%">
                    <strong>4.0 - 4.8</strong>
                </td>
                <td width="25%">
                    <strong>3.5 - 5.3</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_potassium" />
                    <a href="#" onclick="resultOfTest('potassium');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_potassium">
        <h3>
            Potassium stand alone indicators generally associated with:</h3>
        <p>
            Inner cell efficiency, chief electrolyte of intracellular fluid, acid/alkaline PH
            balance, conductor of electric impulses and nerve fibers, including heart construction,
            nerve construction and muscle function, electrolyte and cardiac monitor</p>
    </div>
    <div class="ideal hidden" id="equal_potassium" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_potassium" style="display: none">
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
    <div class="high hidden" id="high_potassium" style="display: none">
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
                    <strong>
                        <label id="i_score_sod_pot">
                            30</label></strong>
                </td>
                <td width="25%">
                    <strong>27.5 - 32.5</strong>
                </td>
                <td width="25%">
                    <strong>25 - 35</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_sod_pot" />
                    <a href="#" onclick="resultOfTest('sod_pot');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_sod_pot">
        <h3>
            Sodium/Potassium Ratio stand alone indicators generally associated with:</h3>
        <p>
            Electrolyte balance, inner/outer ionic exchange efficiency, assesses kidney function.</p>
    </div>
    <div class="ideal hidden" id="equal_sod_pot" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_sod_pot" style="display: none">
        <h3>
            Generally associated with Low/High Sodium/Potassium:</h3>
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
                    <strong>
                        <label id="i_score_anion_gap">
                            8</label></strong>
                </td>
                <td width="25%">
                    <strong>7 - 9</strong>
                </td>
                <td width="25%">
                    <strong>6 - 10</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_anion_gap" />
                    <a href="#" onclick="resultOfTest('anion_gap');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_anion_gap">
        <h3>
            Anion Gap stand alone indicators generally associated with:</h3>
        <p>
            Electrolyte reserve account.</p>
    </div>
    <div class="ideal hidden" id="equal_anion_gap" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_anion_gap" style="display: none">
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
    <div class="high hidden" id="high_anion_gap" style="display: none">
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
                    <strong>
                        <label id="i_score_chloride">
                            104</label></strong>
                </td>
                <td width="25%">
                    <strong>101 - 104</strong>
                </td>
                <td width="25%">
                    <strong>98 - 110</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_chloride" />
                    <a href="#" onclick="resultOfTest('chloride');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_chloride">
        <h3>
            Chloride stand alone indicators generally associated with:</h3>
        <p>
            Gastric enzyme production, maintaining a state of electrical neutrality, cellular
            integrity, evaluates electrolyte and hydration status, metabolic acid/alkaline monitor.</p>
    </div>
    <div class="ideal hidden" id="equal_chloride" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_chloride" style="display: none">
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
    <div class="high hidden" id="high_chloride" style="display: none">
        <h3>
            Generally associated with High Chloride:</h3>
        <p>
            Dehydration, tap water, medications, nervous exhaustion, toxins overwhelming kidney’s,
            diabetic insipitus, exhausted adrenals, under active pituitary, excess salt intake,
            under-performing thyroid, trauma, accident, chronic illness, hidden illnesses of
            long duration, colon, bladder, kidneys, and adrenal mal-function, head injury, aspirin
            use, adrenal hyper-function.</p>
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
                    <strong>
                        <label id="i_score_co2">
                            26</label></strong>
                </td>
                <td width="25%">
                    <strong>24 - 28</strong>
                </td>
                <td width="25%">
                    <strong>22 - 30</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_co2" />
                    <a href="#" onclick="resultOfTest('co2');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_co2">
        <h3>
            Carbon Dioxide/Bicarbonate stand alone indicators generally associated with:</h3>
        <p>
            Blood acid/alkaline PH balancer, lung capacity, metabolic electrolyte monitor</p>
    </div>
    <div class="ideal hidden" id="equal_co2" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_co2" style="display: none">
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
    <div class="high hidden" id="high_co2" style="display: none">
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
                    <strong>
                        <label id="i_score_cholesterol">
                            175</label></strong>
                </td>
                <td width="25%">
                    <strong>165 - 185</strong>
                </td>
                <td width="25%">
                    <strong>150 - 200</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_cholesterol" />
                    <a href="#" onclick="resultOfTest('cholesterol');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_cholesterol">
        <h3>
            Cholesterol stand alone indicators generally associated with:</h3>
        <p>
            Essential component for brain repair, hormone production, cellular function, antibodies
            and enzyme production, liver efficiency, pancreatic function, coronary heart disease,
            hyperlipidemia, and hormone monitor.</p>
    </div>
    <div class="ideal hidden" id="equal_cholesterol" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_cholesterol" style="display: none">
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
    <div class="high hidden" id="high_cholesterol" style="display: none">
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
                    <strong>
                        <label id="i_score_triglyceride">
                            90</label></strong>
                </td>
                <td width="25%">
                    <strong>70 - 120</strong>
                </td>
                <td width="25%">
                    <strong>60 - 130</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_triglyceride" />
                    <a href="#" onclick="resultOfTest('triglyceride');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_triglyceride">
        <h3>
            Triglyceride stand alone indicators generally associated with:</h3>
        <p>
            Blood fat, liver function gauge, pancreatic gauge, faulty diet gauge, blood sugar
            gauge, pancreatic mal-absorption, depressed nerve function, stress, carbohydrate
            tolerance, insulin sensitivity, exogenous estrogen, early marker of obesity, immune,
            autoimmune and hyper sensitivity, coronary heart disease, fat metabolism, obesity
            contributor, hypoglycemia/diabetes and hormone monitor</p>
    </div>
    <div class="ideal hidden" id="equal_triglyceride" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_triglyceride" style="display: none">
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
    <div class="high hidden" id="high_triglyceride" style="display: none">
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
                    <strong>
                        <label id="i_score_hdl">
                            70</label></strong>
                </td>
                <td width="25%">
                    <strong>50 - 90</strong>
                </td>
                <td width="25%">
                    <strong>40 - 50</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_hdl" />
                    <a href="#" onclick="resultOfTest('hdl');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_hdl">
        <h3>
            HDL Cholesterol stand alone indicators generally associated with:</h3>
        <p>
            Healthy cholesterol, fat utilization, coronary risk factor, immune liver, male/female
            hormone, human growth hormone, thyroid, infection, inflammation, takes cholesterol
            out of the peripheral issue transporting it to the liver (known as good cholesterol).
        </p>
    </div>
    <div class="ideal hidden" id="equal_hdl" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_hdl" style="display: none">
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
    <div class="high hidden" id="high_hdl" style="display: none">
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
                    <strong>
                        <label id="i_score_ldl">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 100</strong>
                </td>
                <td width="25%">
                    <strong>0 - 130</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_ldl" />
                    <a href="#" onclick="resultOfTest('ldl');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_ldl">
        <h3>
            LDL Cholesterol stand alone indicators generally associated with:</h3>
        <p>
            Potentially dangerous artery plaque depositor, coronary and stroke risk factors,
            fat utilization, hormonal and brain function, fatty liver overload monitor</p>
    </div>
    <div class="ideal hidden" id="equal_ldl" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_ldl" style="display: none">
        <h3>
            Generally associated with Low LDL Cholesterol:</h3>
        <p>
            This is the desired goal, as close to 0 is ideal</p>
        <h3>
            Corresponding need for nutritional support for Low LDL Cholesterol:</h3>
        <p>
            Super Oil, Co-Enzyme Q-10 with Omega 3 Essential Fatty Acids</p>
    </div>
    <div class="high hidden" id="high_ldl" style="display: none">
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
                    <strong>
                        <label id="i_score_vldl">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 15</strong>
                </td>
                <td width="25%">
                    <strong>0 - 25</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_vldl" />
                    <a href="#" onclick="resultOfTest('vldl');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_vldl">
        <h3>
            VLDL Cholesterol stand alone indicators generally associated with:</h3>
        <p>
            Arteries gluing up, dangerous LDL Cholesterol oxidizing, danger signal of heart
            disease, stroke, Alzheimer’s precursor</p>
    </div>
    <div class="ideal hidden" id="equal_vldl" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_vldl" style="display: none">
        <h3>
            Generally associated with Low VLDL Cholesterol:</h3>
        <p>
            This is the desired goal, 0 is ideal.</p>
    </div>
    <div class="high hidden" id="high_vldl" style="display: none">
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
                    <strong>
                        <label id="i_score_chol_hdl">
                            2</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 3</strong>
                </td>
                <td width="25%">
                    <strong>0 - 4.5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_chol_hdl" />
                    <a href="#" onclick="resultOfTest('chol_hdl');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_chol_hdl">
        <h3>
            Cholesterol/HDL Ratio stand alone indicators generally associated with:</h3>
        <p>
            Gauge of overall health, cardio-vascular risk gauge, balanced metabolism, liver,
            brain hormonal, cardio-vascular and thyroid function.</p>
    </div>
    <div class="ideal hidden" id="equal_chol_hdl" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_chol_hdl" style="display: none">
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
    <div class="high hidden" id="high_chol_hdl" style="display: none">
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
                    <strong>
                        <label id="i_score_ldl_hdl">
                            2</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 3</strong>
                </td>
                <td width="25%">
                    <strong>0 - 4.5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_ldl_hdl" />
                    <a href="#" onclick="resultOfTest('ldl_hdl');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_ldl_hdl">
        <h3>
            LDL/HDL Ratio stand alone indicators generally associated with:</h3>
        <p>
            Gauge of overall health, balanced metabolism, liver, brain, hormonal, cardio-vascular
            and thyroid function</p>
    </div>
    <div class="ideal hidden" id="equal_ldl_hdl" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_ldl_hdl" style="display: none">
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
    <div class="high hidden" id="high_ldl_hdl" style="display: none">
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
                    <strong>
                        <label id="i_score_calcium">
                            9.3</label></strong>
                </td>
                <td width="25%">
                    <strong>8.9 - 9.7</strong>
                </td>
                <td width="25%">
                    <strong>8.6 - 10.3</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_calcium" />
                    <a href="#" onclick="resultOfTest('calcium');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_calcium">
        <h3>
            Calcium stand alone indicators generally associated with:</h3>
        <p>
            Electrolyte balance, mineral absorption, bone integrity, parathyroid function, calcium
            metabolism, muscular contraction, Vitamin A not being broken down, ovarian hypofunction,
            adrenal insufficiency, hypothyroidism, hormonal deficiency, heavy metal toxicity,
            nerve transmission, blood clotting, cardiac function gauge, acid/alkaline balance,
            prevents acid buildup in any part of the body, acid/alkaline PH, Calcium metabolism,
            metabolic acidosis monitor</p>
    </div>
    <div class="ideal hidden" id="equal_calcium" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_calcium" style="display: none">
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
    <div class="high hidden" id="high_calcium" style="display: none">
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
                    <strong>
                        <label id="i_score_phosphorus">
                            3.4</label></strong>
                </td>
                <td width="25%">
                    <strong>2.9 - 3.9</strong>
                </td>
                <td width="25%">
                    <strong>2.2 - 4.6</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_phosphorus" />
                    <a href="#" onclick="resultOfTest('phosphorus');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_phosphorus">
        <h3>
            Phosphorus stand alone indicators generally associated with:</h3>
        <p>
            Strong bones, glucose to energy conversion, acid/alkaline balance indicator, total
            nutritional health monitor, parathyroid, Vitamin D deficiency, phosphorus gauge,
            pancreatic and liver dysfunction, carbohydrate utilization, keeps calcium in solution,
            burns fats and sugars.</p>
    </div>
    <div class="ideal hidden" id="equal_phosphorus" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_phosphorus" style="display: none">
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
    <div class="high hidden" id="high_phosphorus" style="display: none">
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
                    <strong>
                        <label id="i_score_cal_phos">
                            3.4</label></strong>
                </td>
                <td width="25%">
                    <strong>2.9 - 3.9</strong>
                </td>
                <td width="25%">
                    <strong>2.2 - 4.2</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_cal_phos" />
                    <a href="#" onclick="resultOfTest('cal_phos');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_cal_phos">
        <h3>
            Calcium/Phosphorus Ratio stand alone indicators generally associated with:</h3>
        <p>
            Calcium/Phosphorus balance, bone metabolism, acid/alkaline PH balance, parathyroid,
            minerals, metabolic acidosis gauge, bone, nerve, teeth integrity</p>
    </div>
    <div class="ideal hidden" id="equal_cal_phos" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_cal_phos" style="display: none">
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
    <div class="high hidden" id="high_cal_phos" style="display: none">
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
                    <strong>
                        <label id="i_score_alka_phos">
                            62</label></strong>
                </td>
                <td width="25%">
                    <strong>52 - 72</strong>
                </td>
                <td width="25%">
                    <strong>32 - 92</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_alka_phos" />
                    <a href="#" onclick="resultOfTest('alka_phos');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_alka_phos">
        <h3>
            Alkaline Phosphatase stand alone indicators generally associated with:</h3>
        <p>
            Bone, liver, adrenal, intestinal health indicator, tumor marker, protein utilization,
            thyroid, parathyroid, osteoporosis, carbohydrate and fat conversion into energy,
            bone repair, glucose recognition, liver and bone disease monitor</p>
    </div>
    <div class="ideal hidden" id="equal_alka_phos" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_alka_phos" style="display: none">
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
    <div class="high hidden" id="high_alka_phos" style="display: none">
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
                    <strong>
                        <label id="i_score_sgot">
                            24</label></strong>
                </td>
                <td width="25%">
                    <strong>18 - 30</strong>
                </td>
                <td width="25%">
                    <strong>10 - 40</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_sgot" />
                    <a href="#" onclick="resultOfTest('sgot');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_sgot">
        <h3>
            SGOT (AST) stand alone indicators generally associated with:</h3>
        <p>
            Liver, heart, cell injury marker, enzyme deficiency, autointoxication, organ tissue
            breakdown, protein and amino acid assimilation, gonadal balance, liver congestion,
            poor fat metabolism, free radical pathology, muscle loss, diabetes, number of broken
            down/dead cells in circulation</p>
    </div>
    <div class="ideal hidden" id="equal_sgot" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_sgot" style="display: none">
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
    <div class="high hidden" id="high_sgot" style="display: none">
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
                    <strong>
                        <label id="i_score_sgpt">
                            24</label></strong>
                </td>
                <td width="25%">
                    <strong>18 - 30</strong>
                </td>
                <td width="25%">
                    <strong>10 - 40</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_sgpt" />
                    <a href="#" onclick="resultOfTest('sgpt');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_sgpt">
        <h3>
            SGPT (ALT) stand alone indicators generally associated with:</h3>
        <p>
            Enzyme, liver, heart, muscle health, inflammatory marker, gonadal, fat absorption,
            allergies, energy production, glucose conversion,</p>
    </div>
    <div class="ideal hidden" id="equal_sgpt" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_sgpt" style="display: none">
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
    <div class="high hidden" id="high_sgpt" style="display: none">
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
                    <strong>
                        <label id="i_score_gamma">
                            36</label></strong>
                </td>
                <td width="25%">
                    <strong>32 - 40</strong>
                </td>
                <td width="25%">
                    <strong>22 - 50</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_gamma" />
                    <a href="#" onclick="resultOfTest('gamma');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_gamma">
        <h3>
            GAMMA (GT) stand alone indicators generally associated with:</h3>
        <p>
            Alcohol use, caffeine addiction, liver, gall bladder, pancreas efficiency, inflammatory
            marker, highly sensitive liver enzyme gauge, liver health indicator</p>
    </div>
    <div class="ideal hidden" id="equal_gamma" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_gamma" style="display: none">
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
    <div class="high hidden" id="high_gamma" style="display: none">
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
                    <strong>
                        <label id="i_score_ldh">
                            165</label></strong>
                </td>
                <td width="25%">
                    <strong>135 - 195</strong>
                </td>
                <td width="25%">
                    <strong>100 - 230</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_ldh" />
                    <a href="#" onclick="resultOfTest('ldh');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_ldh">
        <h3>
            LDH stand alone indicators generally associated with:</h3>
        <p>
            Carbohydrate tolerance, dehydration, blood sugar, inflammation, metabolic acidosis
            enzyme,thyroid, heart, kidney, muscles, pancreas, radiation exposure, digestive,
            toxicity indicators, cell/tissue regeneration/degeneration, sulfur deficiency, cellular
            breakdown/repair, efficient bio-energy production</p>
    </div>
    <div class="ideal hidden" id="equal_ldh" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_ldh" style="display: none">
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
    <div class="high hidden" id="high_ldh" style="display: none">
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
                    <strong>
                        <label id="i_score_bilirubin">
                            .60</label></strong>
                </td>
                <td width="25%">
                    <strong>.40 - .70</strong>
                </td>
                <td width="25%">
                    <strong>.3 - 1.0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_bilirubin" />
                    <a href="#" onclick="resultOfTest('bilirubin');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_bilirubin">
        <h3>
            Bilirubin Total stand alone indicators generally associated with:</h3>
        <p>
            Liver function and efficiency, bile duct, lymph, spleen, immune gauge, infection
            fighting capability and toxin disposing powers of the liver</p>
    </div>
    <div class="ideal hidden" id="equal_bilirubin" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_bilirubin" style="display: none">
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
    <div class="high hidden" id="high_bilirubin" style="display: none">
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
                    <strong>
                        <label id="i_score_uric">
                            4.40</label></strong>
                </td>
                <td width="25%">
                    <strong>3.75 - 6.05</strong>
                </td>
                <td width="25%">
                    <strong>2.6 - 7.2</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_uric" />
                    <a href="#" onclick="resultOfTest('uric');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_uric">
        <h3>
            Uric Acid stand alone indicators generally associated with:</h3>
        <p>
            Gout related symptoms, arthritis, stiffness, enzyme deficiency, protein utilization,
            gout, recurrent uric acid/calcium, bad acids toxicity and digestion monitor</p>
    </div>
    <div class="ideal hidden" id="equal_uric" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_uric" style="display: none">
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
    <div class="high hidden" id="high_uric" style="display: none">
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
                    <strong>
                        <label id="i_score_tot_protein">
                            7.3</label></strong>
                </td>
                <td width="25%">
                    <strong>6.9 - 7.6</strong>
                </td>
                <td width="25%">
                    <strong>6.0 - 8.3</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_tot_protein" />
                    <a href="#" onclick="resultOfTest('tot_protein');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_tot_protein">
        <h3>
            Total Protein stand alone indicators generally associated with:</h3>
        <p>
            The bloods capacity to transport nutrients to the cells, overall nutritional status,
            overall defense gauge, the body’s ability to repair, rebuild and regenerate itself</p>
    </div>
    <div class="ideal hidden" id="equal_tot_protein" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_tot_protein" style="display: none">
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
    <div class="high hidden" id="high_tot_protein" style="display: none">
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
                    <strong>
                        <label id="i_score_albumin">
                            4.2</label></strong>
                </td>
                <td width="25%">
                    <strong>3.9 - 4.5</strong>
                </td>
                <td width="25%">
                    <strong>3.7 - 5.5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_albumin" />
                    <a href="#" onclick="resultOfTest('albumin');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_albumin">
        <h3>
            Albumin stand alone indicators generally associated with:</h3>
        <p>
            Cellular repair, degeneration/regeneration, absorption of nutrients, stress, inflammation,
            osmotic pressure, overall nutritional status gauge, blood protein available for
            repairs</p>
    </div>
    <div class="ideal hidden" id="equal_albumin" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_albumin" style="display: none">
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
    <div class="high hidden" id="high_albumin" style="display: none">
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
                    <strong>
                        <label id="i_score_calcium_albumin">
                            2.9</label></strong>
                </td>
                <td width="25%">
                    <strong>2.0 - 3.7</strong>
                </td>
                <td width="25%">
                    <strong>1.2 - 4.5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_calcium_albumin" />
                    <a href="#" onclick="resultOfTest('calcium_albumin');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_calcium_albumin">
        <h3>
            Calcium/Albumin Ratio stand alone indicators generally associated with:</h3>
        <p>
            Parathyroid function, G.I. Tract, liver, inflammation, total nutrition, dehydration
            gauge.</p>
    </div>
    <div class="ideal hidden" id="equal_calcium_albumin" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_calcium_albumin" style="display: none">
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
    <div class="high hidden" id="high_calcium_albumin" style="display: none">
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
                    <strong>
                        <label id="i_score_globulin">
                            3.2</label></strong>
                </td>
                <td width="25%">
                    <strong>3.0 - 3.4</strong>
                </td>
                <td width="25%">
                    <strong>2.2 - 4.2</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_globulin" />
                    <a href="#" onclick="resultOfTest('globulin');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_globulin">
        <h3>
            Globulin stand alone indicators generally associated with:</h3>
        <p>
            Defense agent, cell degenerator/regenerator, immune system, inflammation, digestive
            toxicity, protective antibodies, infection, allergy, spleen gauge, protein levels
            and absorption, body’s ability to repair itself</p>
    </div>
    <div class="ideal hidden" id="equal_globulin" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_globulin" style="display: none">
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
    <div class="high hidden" id="high_globulin" style="display: none">
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
                    <strong>
                        <label id="i_score_a_g_ratio">
                            1.6</label></strong>
                </td>
                <td width="25%">
                    <strong>1.5 - 1.7</strong>
                </td>
                <td width="25%">
                    <strong>0.8 - 2.0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_a_g_ratio" />
                    <a href="#" onclick="resultOfTest('a_g_ratio');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_a_g_ratio">
        <h3>
            Albumin/Globulin Ratio stand alone indicators generally associated with:</h3>
        <p>
            Blood viscosity, protein, toxicity, colon, liver marker, kidney, thyroid, immune
            system gauge, body’s viability to fight bacteria, viruses and toxins</p>
    </div>
    <div class="ideal hidden" id="equal_a_g_ratio" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_a_g_ratio" style="display: none">
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
    <div class="high hidden" id="high_a_g_ratio" style="display: none">
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
                    <strong>
                        <label id="i_score_thyroid_t3">
                            32.5</label></strong>
                </td>
                <td width="25%">
                    <strong>30 - 35</strong>
                </td>
                <td width="25%">
                    <strong>25 - 40</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_thyroid_t3" />
                    <a href="#" onclick="resultOfTest('thyroid_t3');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_thyroid_t3">
        <h3>
            Thyroid T3 Uptake stand alone indicators generally associated with:</h3>
        <p>
            Need for thyroid nutritional support, thyroid hormone binding site availability
            gauge.</p>
    </div>
    <div class="ideal hidden" id="equal_thyroid_t3" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_thyroid_t3" style="display: none">
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
    <div class="high hidden" id="high_thyroid_t3" style="display: none">
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
                    <strong>
                        <label id="i_score_thyroid_t4">
                            8.5</label></strong>
                </td>
                <td width="25%">
                    <strong>7 - 10</strong>
                </td>
                <td width="25%">
                    <strong>4.5 - 402.5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_thyroid_t4" />
                    <a href="#" onclick="resultOfTest('thyroid_t4');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_thyroid_t4">
        <h3>
            Thyroid Total T4 stand alone indicators generally associated with:</h3>
        <p>
            Hypo/Hyperthyroidism marker, malnutrition, premature aging, thyroid function.</p>
    </div>
    <div class="ideal hidden" id="equal_thyroid_t4" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_thyroid_t4" style="display: none">
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
    <div class="high hidden" id="high_thyroid_t4" style="display: none">
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
                    <strong>
                        <label id="i_score_thyroid_t7">
                            3.15</label></strong>
                </td>
                <td width="25%">
                    <strong>2.65 - 3.85</strong>
                </td>
                <td width="25%">
                    <strong>1.3 - 5.00</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_thyroid_t7" />
                    <a href="#" onclick="resultOfTest('thyroid_t7');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_thyroid_t7">
        <h3>
            Free Thyroxin Index – Thyroid Free 4 Index T 7 stand alone indicators
        </h3>
        <p>
            Memory, anxiety, mental tranquanimity, stress, adrenal, thyroid function and gauge.</p>
    </div>
    <div class="ideal hidden" id="equal_thyroid_t7" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_thyroid_t7" style="display: none">
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
    <div class="high hidden" id="high_thyroid_t7" style="display: none">
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
                    <strong>
                        <label id="i_score_tsh">
                            1.25</label></strong>
                </td>
                <td width="25%">
                    <strong>1.00 - 1.50</strong>
                </td>
                <td width="25%">
                    <strong>0.35 - 5.00</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_tsh" />
                    <a href="#" onclick="resultOfTest('tsh');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_tsh">
        <h3>
            TSH stand alone indicators generally associated with:</h3>
        <p>
            Pituitary/Thyroid thermostat</p>
    </div>
    <div class="ideal hidden" id="equal_tsh" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_tsh" style="display: none">
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
    <div class="high hidden" id="high_tsh" style="display: none">
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
                    <strong>
                        <label id="i_score_iron_bnding">
                            255</label></strong>
                </td>
                <td width="25%">
                    <strong>205 - 305</strong>
                </td>
                <td width="25%">
                    <strong>112 - 400</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_iron_bnding" />
                    <a href="#" onclick="resultOfTest('iron_bnding');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_iron_bnding">
        <h3>
            Iron Binding Capacity stand alone indicators generally associated with:</h3>
        <p>
            The ability of iron to bind to its receptor site and get into the cell, gauge for
            too much or too little iron, heavy metal toxicity and/or environmental pollution
            occupying the receptor site.</p>
    </div>
    <div class="ideal hidden" id="equal_iron_bnding" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_iron_bnding" style="display: none">
        <h3>
            Generally associated with Low Iron Binding Capacity:</h3>
        <p>
            Blocked receptor site, heavy metal toxicity, highly toxic condition, environmental
            overload, fatigue, dizziness, rapid heartbeat, muscle loss, brain fog, cellular
            oxygen deficiency, hemochromatosis, protein mal-absorption, liver sluggishness,
            B-12, B-6, folic acid deficiencies
        </p>
    </div>
    <div class="high hidden" id="high_iron_bnding" style="display: none">
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
    <!-- Total Iron Test here -->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Total Iron</h1>
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
                        <label id="i_score_tot_iron">
                            105</label></strong>
                </td>
                <td width="25%">
                    <strong>90 - 120</strong>
                </td>
                <td width="25%">
                    <strong>60 - 150</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_tot_iron" />
                    <a href="#" onclick="resultOfTest('tot_iron');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_tot_iron">
        <h3>
            Total Iron stand alone indicators generally associated with:</h3>
        <p>
            Tired Blood, anemia, cellular blood oxygen gauge, liver function, hemoglobin production</p>
    </div>
    <div class="ideal hidden" id="equal_tot_iron" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_tot_iron" style="display: none">
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
    <div class="high hidden" id="high_tot_iron" style="display: none">
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
                    <strong>
                        <label id="i_score_pts">
                            35</label></strong>
                </td>
                <td width="25%">
                    <strong>30 - 40</strong>
                </td>
                <td width="25%">
                    <strong>15 - 50</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_pts" />
                    <a href="#" onclick="resultOfTest('pts');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_pts">
        <h3>
            Percent Transferrin Saturation stand alone indicators generally associated with:</h3>
        <p>
            Too much or too little iron, level of cellular iron, the transport protein that
            regulates iron absorption, high levels relate to the body’s ability to fight infection</p>
    </div>
    <div class="ideal hidden" id="equal_pts" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_pts" style="display: none">
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
    <div class="high hidden" id="high_pts" style="display: none">
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
                    <strong>
                        <label id="i_score_ferritin">
                            215</label></strong>
                </td>
                <td width="25%">
                    <strong>150 - 280</strong>
                </td>
                <td width="25%">
                    <strong>30 - 400</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_ferritin" />
                    <a href="#" onclick="resultOfTest('ferritin');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_ferritin">
        <h3>
            Ferritin stand alone indicators generally associated with:</h3>
        <p>
            Iron tissue reserve bank, most reliable indicator of total body iron status, reflects
            the body’s iron stores.</p>
    </div>
    <div class="ideal hidden" id="equal_ferritin" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_ferritin" style="display: none">
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
    <div class="high hidden" id="high_ferritin" style="display: none">
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
                    <strong>
                        <label id="i_score_rbc">
                            5.50</label></strong>
                </td>
                <td width="25%">
                    <strong>4.90 - 5.90</strong>
                </td>
                <td width="25%">
                    <strong>4.4 - 6.1</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_rbc" />
                    <a href="#" onclick="resultOfTest('rbc');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_rbc">
        <h3>
            RBC stand alone indicators generally associated with:</h3>
        <p>
            Oxygen carrying capacity, total number of red blood cells gauge, water, temperature,
            carbon dioxide, glucose, nutrition to cells regulator.</p>
    </div>
    <div class="ideal hidden" id="equal_rbc" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_rbc" style="display: none">
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
    <div class="high hidden" id="high_rbc" style="display: none">
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
                    <strong>
                        <label id="i_score_hemoglobin">
                            15.5</label></strong>
                </td>
                <td width="25%">
                    <strong>14.5 - 16.5</strong>
                </td>
                <td width="25%">
                    <strong>13.5 - 17.6</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_hemoglobin" />
                    <a href="#" onclick="resultOfTest('hemoglobin');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_hemoglobin">
        <h3>
            Hemoglobin stand alone indicators generally associated with:</h3>
        <p>
            Cellular/Blood oxygen deficiency, bone marrow efficiency, carries oxygen to cells
            and takes carbon dioxide out</p>
    </div>
    <div class="ideal hidden" id="equal_hemoglobin" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_hemoglobin" style="display: none">
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
    <div class="high hidden" id="high_hemoglobin" style="display: none">
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
                    <strong>
                        <label id="i_score_hematocrit">
                            46</label></strong>
                </td>
                <td width="25%">
                    <strong>43 - 49</strong>
                </td>
                <td width="25%">
                    <strong>40- 52</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_hematocrit" />
                    <a href="#" onclick="resultOfTest('hematocrit');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_hematocrit">
        <h3>
            Hematocrit stand alone indicators generally associated with:</h3>
        <p>
            Determines the concentration of oxygen carrying red blood cells in blood, measures
            proportion of red blood cells in plasma, measures the amount of hemoglobin contained
            in the blood, red blood cell production.</p>
    </div>
    <div class="ideal hidden" id="equal_hematocrit" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_hematocrit" style="display: none">
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
    <div class="high hidden" id="high_hematocrit" style="display: none">
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
                    <strong>
                        <label id="i_score_mvc">
                            90</label></strong>
                </td>
                <td width="25%">
                    <strong>85 - 95</strong>
                </td>
                <td width="25%">
                    <strong>80- 100</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_mvc" />
                    <a href="#" onclick="resultOfTest('mvc');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_mvc">
        <h3>
            MCV stand alone indicators generally associated with:</h3>
        <p>
            Nutritional deficiency syndrome, screens for occult alcoholic excess, over medication,
            sugar, devitalized foods, red blood cell production gauge</p>
    </div>
    <div class="ideal hidden" id="equal_mvc" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_mvc" style="display: none">
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
    <div class="high hidden" id="high_mvc" style="display: none">
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
                    <strong>
                        <label id="i_score_mch">
                            30</label></strong>
                </td>
                <td width="25%">
                    <strong>29 - 31</strong>
                </td>
                <td width="25%">
                    <strong>27- 33</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_mch" />
                    <a href="#" onclick="resultOfTest('mch');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_mch">
        <h3>
            MCH stand alone indicators generally associated with:</h3>
        <p>
            Cellular/Serum oxygen deficiency, determines the type of anemia and nutritional
            deficiency, measures the amount of hemoglobin present in red blood cells, measures
            the severity of anemia</p>
    </div>
    <div class="ideal hidden" id="equal_mch" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_mch" style="display: none">
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
    <div class="high hidden" id="high_mch" style="display: none">
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
                    <strong>
                        <label id="i_score_mchc">
                            33.5</label></strong>
                </td>
                <td width="25%">
                    <strong>32 - 35</strong>
                </td>
                <td width="25%">
                    <strong>30- 37</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_mchc" />
                    <a href="#" onclick="resultOfTest('mchc');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_mchc">
        <h3>
            MCHC stand alone indicators generally associated with:</h3>
        <p>
            Cellular/Serum oxygen deficiency anemia, monitoring gauge for anemia and cellular
            oxygen therapy, determines the concentrate of hemoglobin in the red blood cells
            and hematrocrit</p>
    </div>
    <div class="ideal hidden" id="equal_mchc" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_mchc" style="display: none">
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
    <div class="high hidden" id="high_mchc" style="display: none">
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
                    <strong>
                        <label id="i_score_rdw">
                            13.3</label></strong>
                </td>
                <td width="25%">
                    <strong>11.3 - 15.3</strong>
                </td>
                <td width="25%">
                    <strong>10.1- 16.5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_rdw" />
                    <a href="#" onclick="resultOfTest('rdw');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_rdw">
        <h3>
            RDW stand alone indicators generally associated with:</h3>
        <p>
            Measures blood cell volume weight, a health gauge of the red blood cells and production
            of healthy bone marrow. distinguishes early stage deficiency anemia for chronic
            disease</p>
    </div>
    <div class="ideal hidden" id="equal_rdw" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_rdw" style="display: none">
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
    <div class="high hidden" id="high_rdw" style="display: none">
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
                    <strong>
                        <label id="i_score_platelets">
                            285</label></strong>
                </td>
                <td width="25%">
                    <strong>235 - 335</strong>
                </td>
                <td width="25%">
                    <strong>130- 440</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_platelets" />
                    <a href="#" onclick="resultOfTest('platelets');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_platelets">
        <h3>
            Platelets stand alone indicators generally associated with:</h3>
        <p>
            Platelet activity is necessary for blood clotting, vascular integrity, vasoconstriction,
            adhesion, and plugging and repair of breaks in small vessels.</p>
    </div>
    <div class="ideal hidden" id="equal_platelets" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_platelets" style="display: none">
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
    <div class="high hidden" id="high_platelets" style="display: none">
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
                    <strong>
                        <label id="i_score_mpv">
                            8.9</label></strong>
                </td>
                <td width="25%">
                    <strong>8.4 - 9.4</strong>
                </td>
                <td width="25%">
                    <strong>7.4- 10.4</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_mpv" />
                    <a href="#" onclick="resultOfTest('mpv');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_mpv">
        <h3>
            MPV stand alone indicators generally associated with:</h3>
        <p>
            Cardio-vascular risk detective, gauge the size of the platelets, their development
            time and turnover, inflammatory, liver and auto immune disease marker, allergy markers.</p>
    </div>
    <div class="ideal hidden" id="equal_mpv" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_mpv" style="display: none">
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
    <div class="high hidden" id="high_mpv" style="display: none">
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
                    <strong>
                        <label id="i_score_abs_neutrophils">
                            4.2</label></strong>
                </td>
                <td width="25%">
                    <strong>3.9 - 4.5</strong>
                </td>
                <td width="25%">
                    <strong>3.2- 5.2</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_abs_neutrophils" />
                    <a href="#" onclick="resultOfTest('abs_neutrophils');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_abs_neutrophils">
        <h3>
            Absolute Neutrophils stand alone indicators generally associated with:</h3>
        <p>
            Immune systems standing army engulfs bacteria and annihilates them, immune competency,
            inflammation marker.</p>
    </div>
    <div class="ideal hidden" id="equal_abs_neutrophils" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_abs_neutrophils" style="display: none">
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
    <div class="high hidden" id="high_abs_neutrophils" style="display: none">
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
                    <strong>
                        <label id="i_score_wbc">
                            7.3</label></strong>
                </td>
                <td width="25%">
                    <strong>6.3 - 8.3</strong>
                </td>
                <td width="25%">
                    <strong>3.8- 10.8</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_wbc" />
                    <a href="#" onclick="resultOfTest('wbc');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_wbc">
        <h3>
            WBC stand alone indicators generally associated with:</h3>
        <p>
            Thymus gland and immune system competency.</p>
    </div>
    <div class="ideal hidden" id="equal_wbc" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_wbc" style="display: none">
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
    <div class="high hidden" id="high_wbc" style="display: none">
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
                    <strong>
                        <label id="i_score_neutrophils">
                            57</label></strong>
                </td>
                <td width="25%">
                    <strong>47 - 67</strong>
                </td>
                <td width="25%">
                    <strong>40- 74</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_neutrophils" />
                    <a href="#" onclick="resultOfTest('neutrophils');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_neutrophils">
        <h3>
            Neutrophils stand alone indicators generally associated with:</h3>
        <p>
            Bacteria neutralizer.</p>
    </div>
    <div class="ideal hidden" id="equal_neutrophils" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_neutrophils" style="display: none">
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
    <div class="high hidden" id="high_neutrophils" style="display: none">
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
                    <strong>
                        <label id="i_score_lymphocytes">
                            34</label></strong>
                </td>
                <td width="25%">
                    <strong>28 - 40</strong>
                </td>
                <td width="25%">
                    <strong>19- 48</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_lymphocytes" />
                    <a href="#" onclick="resultOfTest('lymphocytes');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_lymphocytes">
        <h3>
            Lymphocytes stand alone indicators generally associated with:</h3>
        <p>
            Lymph system competency antibody production, killer cell indicator, susceptible
            to congestive heart and kidney dysfunction, lymphatic congestion, tumors, Hodgkin’s
            disease, severe and debilitating illnesses .</p>
    </div>
    <div class="ideal hidden" id="equal_lymphocytes" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_lymphocytes" style="display: none">
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
    <div class="high hidden" id="high_lymphocytes" style="display: none">
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
                    <strong>
                        <label id="i_score_monocytes">
                            6.2</label></strong>
                </td>
                <td width="25%">
                    <strong>5.7 - 6.7</strong>
                </td>
                <td width="25%">
                    <strong>2.4- 9.0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_monocytes" />
                    <a href="#" onclick="resultOfTest('monocytes');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_monocytes">
        <h3>
            Monocytes stand alone indicators generally associated with:</h3>
        <p>
            Immune fighters, eats up the bad guys, measures the fitness of the body’s 2nd line
            of defense, the body’s phagocytic cells ability to remove injured and dead cells
            and the ability to produce the antiviral agent interferon.</p>
    </div>
    <div class="ideal hidden" id="equal_monocytes" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_monocytes" style="display: none">
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
    <div class="high hidden" id="high_monocytes" style="display: none">
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
                    <strong>
                        <label id="i_score_eosinophils">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 3.5</strong>
                </td>
                <td width="25%">
                    <strong>0- 7.0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_eosinophils" />
                    <a href="#" onclick="resultOfTest('eosinophils');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_eosinophils">
        <h3>
            Eosinophils stand alone indicators generally associated with:</h3>
        <p>
            Protects the body from allergies, parasites, fungal infections, toxins, lung, skin,
            colon and G.I. tract reactions, phagocyte capability, measures the response to allergies
            and parasites, a secondary response to inflammation.</p>
    </div>
    <div class="ideal hidden" id="equal_eosinophils" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_eosinophils" style="display: none">
        <h3>
            Generally associated with Low Eosinophils:</h3>
        <p>
            Adrenal exhaustion, excess medication, acute bacterial infections. Low Eosinophils
            is desirable. Score of zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_eosinophils" style="display: none">
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
                    <strong>
                        <label id="i_score_basophils">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 0.7</strong>
                </td>
                <td width="25%">
                    <strong>0- 1.5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_basophils" />
                    <a href="#" onclick="resultOfTest('basophils');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_basophils">
        <h3>
            Basophils stand alone indicators generally associated with:</h3>
        <p>
            Intestinal tract toxicity, parasites, inflammation, phagocyte killer cell feedback
            indicator.</p>
    </div>
    <div class="ideal hidden" id="equal_basophils" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_basophils" style="display: none">
        <h3>
            Generally associated with Low Basophils:</h3>
        <p>
            Hyperthyroidism, stress reaction, prolonged drug, steroid, radiation, chemotherapy
            therapy, infections. Low is desirable. Ideal score is zero.</p>
    </div>
    <div class="high hidden" id="high_basophils" style="display: none">
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
                    <strong>
                        <label id="i_score_thyriod_t4_free">
                            1.26</label></strong>
                </td>
                <td width="25%">
                    <strong>1.00 - 1.52</strong>
                </td>
                <td width="25%">
                    <strong>.58- .64</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_thyriod_t4_free" />
                    <a href="#" onclick="resultOfTest('thyriod_t4_free');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_thyriod_t4_free">
        <h3>
            Thyroid T4 Free Circulating T4 stand alone indicators generally associated with:</h3>
        <p>
            Optimum thyroid function.</p>
    </div>
    <div class="ideal hidden" id="equal_thyriod_t4_free" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_thyriod_t4_free" style="display: none">
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
    <div class="high hidden" id="high_thyriod_t4_free" style="display: none">
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
                    <strong>
                        <label id="i_score_abs_lymphocytes">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 1.50</strong>
                </td>
                <td width="25%">
                    <strong>0- 2.50</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_abs_lymphocytes" />
                    <a href="#" onclick="resultOfTest('abs_lymphocytes');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_abs_lymphocytes">
        <h3>
            Absolute Lymphocytes stand alone indicators generally associated with:</h3>
        <p>
            Immune competency, number of lymphocytes in circulation.</p>
    </div>
    <div class="ideal hidden" id="equal_abs_lymphocytes" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_abs_lymphocytes" style="display: none">
        <h3>
            Generally associated with Low Absolute Lymphocytes:</h3>
        <p>
            Low is desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_abs_lymphocytes" style="display: none">
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
                    <strong>
                        <label id="i_score_bands">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 3.75</strong>
                </td>
                <td width="25%">
                    <strong>0- 5.00</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_bands" />
                    <a href="#" onclick="resultOfTest('bands');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_bands">
        <h3>
            Bands stand alone indicators generally associated with:</h3>
        <p>
            Body’s ability to develop immune fighters, gauge of the immune system’s Army and
            National Guard Reserve, recruiting and developing immune cells.</p>
    </div>
    <div class="ideal hidden" id="equal_bands" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_bands" style="display: none">
        <h3>
            Generally associated with Low Bands:</h3>
        <p>
            Low is Desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_bands" style="display: none">
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
                    <strong>
                        <label id="i_score_abs_monocytes">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 3</strong>
                </td>
                <td width="25%">
                    <strong>0- 5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_abs_monocytes" />
                    <a href="#" onclick="resultOfTest('abs_monocytes');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_abs_monocytes">
        <h3>
            Absolute Monocytes stand alone indicators generally associated with:</h3>
        <p>
            Pathogen destroyer, immune system’s Paratroopers, gauge of the immune system’s ability
            to surround toxins, pathogens, harmful bacteria, viral loads, Candida and other
            bad guys and destroy them.</p>
    </div>
    <div class="ideal hidden" id="equal_abs_monocytes" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_abs_monocytes" style="display: none">
        <h3>
            Generally associated with Low Absolute Monocytes:</h3>
        <p>
            Low is Desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_abs_monocytes" style="display: none">
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
                    <strong>
                        <label id="i_score_mxd_cells">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_mxd_cells" />
                    <a href="#" onclick="resultOfTest('mxd_cells');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_mxd_cells">
        <h3>
            Mixed Cells stand alone indicators generally associated with:</h3>
        <p>
            Immune system quick responder force.</p>
    </div>
    <div class="ideal hidden" id="equal_mxd_cells" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_mxd_cells" style="display: none">
        <h3>
            Generally associated with Low Mixed Cells:</h3>
        <p>
            Low is Desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_mxd_cells" style="display: none">
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
                    <strong>
                        <label id="i_score_abs_mxd_cells">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_abs_mxd_cells" />
                    <a href="#" onclick="resultOfTest('abs_mxd_cells');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_abs_mxd_cells">
        <h3>
            Absolute Mixed Cells stand alone indicators generally associated with:</h3>
        <p>
            Immune system overwhelmed with toxins.</p>
    </div>
    <div class="ideal hidden" id="equal_abs_mxd_cells" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_abs_mxd_cells" style="display: none">
        <h3>
            Generally associated with Low Absolute Mixed Cells:</h3>
        <p>
            Low is Desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_abs_mxd_cells" style="display: none">
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
                    <strong>
                        <label id="i_score_abs_eosinophil">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 1.12</strong>
                </td>
                <td width="25%">
                    <strong>0 - 1.5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_abs_eosinophil" />
                    <a href="#" onclick="resultOfTest('abs_eosinophil');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_abs_eosinophil">
        <h3>
            Eosinophil Count Absolute stand alone indicators generally associated with:</h3>
        <p>
            Allergies/Parasite annihilator.</p>
    </div>
    <div class="ideal hidden" id="equal_abs_eosinophil" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_abs_eosinophil" style="display: none">
        <h3>
            Generally associated with Low Eosinophil Count Absolute:</h3>
        <p>
            Low is Desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_abs_eosinophil" style="display: none">
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
                    <strong>
                        <label id="i_score_abs_basophils">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 1.12</strong>
                </td>
                <td width="25%">
                    <strong>0 - 1.5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_abs_basophils" />
                    <a href="#" onclick="resultOfTest('abs_basophils');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_abs_basophils">
        <h3>
            Basophils Absolute Count stand alone indicators generally associated with:</h3>
        <p>
            Inflammation fighter.</p>
    </div>
    <div class="ideal hidden" id="equal_abs_basophils" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_abs_basophils" style="display: none">
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
    <div class="high hidden" id="high_abs_basophils" style="display: none">
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
                    <strong>
                        <label id="i_score_atypical">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_atypical" />
                    <a href="#" onclick="resultOfTest('atypical');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_atypical">
        <h3>
            Atypical Lymphocytes stand alone indicators generally associated with:</h3>
        <p>
            Lymph node function.</p>
    </div>
    <div class="ideal hidden" id="equal_atypical" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_atypical" style="display: none">
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
    <div class="high hidden" id="high_atypical" style="display: none">
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
    <!--==============================================Diagnostic Laboratory Urine Analysis Results=======================================-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4" class="heading">
                Abunda Life Medical Nutrition Testing Clinic<br />
                Diagnostic Laboratory Urine Analysis Results
            </td>
        </tr>
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_spec_gravity">
                            1.10</label></strong>
                </td>
                <td width="25%">
                    <strong>1.005 - 1.015</strong>
                </td>
                <td width="25%">
                    <strong>1.005 - 1.020</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_spec_gravity" />
                    <a href="#" onclick="resultOfTest('spec_gravity');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_spec_gravity">
        <h3>
            Specific Gravity stand alone indicators generally associated with:</h3>
        <p>
            Posterior pituitary function, cellular hydration. Metabolic efficiency, toxicity
            levels, body fat storing or burning indicator.</p>
    </div>
    <div class="ideal hidden" id="equal_spec_gravity" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_spec_gravity" style="display: none">
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
    <div class="high hidden" id="high_spec_gravity" style="display: none">
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
    <!--Urine PH test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_urine_ph">
                            6.5</label></strong>
                </td>
                <td width="25%">
                    <strong>6.4 - 6.8</strong>
                </td>
                <td width="25%">
                    <strong>6.0 - 7.0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_urine_ph" />
                    <a href="#" onclick="resultOfTest('urine_ph');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_urine_ph">
        <h3>
            Urine PH stand alone indicators generally associated with:</h3>
        <p>
            Acid/Alkaline balance.</p>
    </div>
    <div class="ideal hidden" id="equal_urine_ph" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_urine_ph" style="display: none">
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
    <div class="high hidden" id="high_urine_ph" style="display: none">
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
    <!--Urine Glucose test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_urine_gluc">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - .7</strong>
                </td>
                <td width="25%">
                    <strong>0 - 1.0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_urine_gluc" />
                    <a href="#" onclick="resultOfTest('urine_gluc');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_urine_gluc">
        <h3>
            Urine Glucose stand alone indicators generally associated with:</h3>
        <p>
            Blood sugar balance.</p>
    </div>
    <div class="ideal hidden" id="equal_urine_gluc" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_urine_gluc" style="display: none">
        <h3>
            Generally associated with Low Urine Glucose:</h3>
        <p>
            Low is desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_urine_gluc" style="display: none">
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
    <!--Bilirubin test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_bilirubin_urine">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - .7</strong>
                </td>
                <td width="25%">
                    <strong>0 - 1.0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_bilirubin_urine" />
                    <a href="#" onclick="resultOfTest('bilirubin_urine');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_bilirubin_urine">
        <h3>
            Bilirubin stand alone indicators generally associated with:</h3>
        <p>
            Liver efficiency.</p>
    </div>
    <div class="ideal hidden" id="equal_bilirubin_urine" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_bilirubin_urine" style="display: none">
        <h3>
            Generally associated with Low Bilirubin:</h3>
        <p>
            Low is desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_bilirubin_urine" style="display: none">
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
    <!--Ketone test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_ketone">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - .7</strong>
                </td>
                <td width="25%">
                    <strong>0 - 1.0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_ketone" />
                    <a href="#" onclick="resultOfTest('ketone');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_ketone">
        <h3>
            Ketone stand alone indicators generally associated with:</h3>
        <p>
        </p>
    </div>
    <div class="ideal hidden" id="equal_ketone" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_ketone" style="display: none">
        <h3>
            Generally associated with Low Ketone:</h3>
        <p>
            Low is desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_ketone" style="display: none">
        <h3>
            Generally associated with High Ketone:</h3>
        <p>
            Metabolic acidosis, cells breaking down, severe psychological stress, fasting, over
            training, muscles & cells breaking down faster than they are repairing, fat burn
            off by-product, diabetes precursor, fasting, starvation, mal-nutrition, sudden weight
            loss.</p>
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
    <!--Urinary Occult Blood test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_urinary_occ_blood">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - .7</strong>
                </td>
                <td width="25%">
                    <strong>0 - 1.0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_urinary_occ_blood" />
                    <a href="#" onclick="resultOfTest('urinary_occ_blood');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_urinary_occ_blood">
        <h3>
            Urinary Occult Blood stand alone indicators generally associated with:</h3>
        <p>
            Capillary integrity.</p>
    </div>
    <div class="ideal hidden" id="equal_urinary_occ_blood" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_urinary_occ_blood" style="display: none">
        <h3>
            Generally associated with Low Urinary Occult Blood:</h3>
        <p>
            Low is desirable. Zero is perfect.</p>
    </div>
    <div class="high hidden" id="high_urinary_occ_blood" style="display: none">
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
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_urinary_protein">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_urinary_protein" />
                    <a href="#" onclick="resultOfTest('urinary_protein');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_urinary_protein">
        <h3>
            Protein stand alone indicators generally associated with:</h3>
        <p>
            Protein utilization, kidney malfunction.</p>
    </div>
    <div class="ideal hidden" id="equal_urinary_protein" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_urinary_protein" style="display: none">
        <h3>
            Generally associated with Low Protein:</h3>
        <p>
            Low is desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_urinary_protein" style="display: none">
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
    <!--Urobilinogen test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_urobilinogen">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_urobilinogen" />
                    <a href="#" onclick="resultOfTest('urobilinogen');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_urobilinogen">
        <h3>
            Urobilinogen stand alone indicators generally associated with:</h3>
        <p>
            Kidney and liver function.</p>
    </div>
    <div class="ideal hidden" id="equal_urobilinogen" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_urobilinogen" style="display: none">
        <h3>
            Generally associated with Low Urobilinogen:</h3>
        <p>
            Low is desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_urobilinogen" style="display: none">
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
    <!--Nitrite test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_nitrite">
                            3</label></strong>
                </td>
                <td width="25%">
                    <strong>2 - 4</strong>
                </td>
                <td width="25%">
                    <strong>1 - 5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_nitrite" />
                    <a href="#" onclick="resultOfTest('nitrite');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_nitrite">
        <h3>
            Nitrite stand alone indicators generally associated with:</h3>
        <p>
            Detoxification, colon, kidney efficiency, constipation indicator, highly toxic condition,
            slow for transition time.</p>
    </div>
    <div class="ideal hidden" id="equal_nitrite" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_nitrite" style="display: none">
        <h3>
            Generally associated with Low Nitrite:</h3>
        <p>
            Low is desirable.</p>
    </div>
    <div class="high hidden" id="high_nitrite" style="display: none">
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
    <!--Leukocytes test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_leukocytes">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_leukocytes" />
                    <a href="#" onclick="resultOfTest('leukocytes');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_leukocytes">
        <h3>
            Leukocytes stand alone indicators generally associated with:</h3>
        <p>
            Urinary tract health, immune system competency.</p>
    </div>
    <div class="ideal hidden" id="equal_leukocytes" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_leukocytes" style="display: none">
        <h3>
            Generally associated with Low Leukocytes:</h3>
        <p>
            Low is desired. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_leukocytes" style="display: none">
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
    <!--Cast test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_cast">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_cast" />
                    <a href="#" onclick="resultOfTest('cast');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_cast">
        <h3>
            Cast stand alone indicators generally associated with:</h3>
        <p>
            Kidney filtration efficiency.</p>
    </div>
    <div class="ideal hidden" id="equal_cast" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_cast" style="display: none">
        <h3>
            Generally associated with Low Cast:</h3>
        <p>
            Low is desired. Zero is ideal.</p>
        <h3>
            Corresponding need for nutritional support for Low Cast:</h3>
        <p>
            Jug One Protocol, Parsley Juice, Green Drink.</p>
    </div>
    <div class="high hidden" id="high_cast" style="display: none">
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
    <!--Mucus test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_mucus">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_mucus" />
                    <a href="#" onclick="resultOfTest('mucus');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_mucus">
        <h3>
            Mucus stand alone indicators generally associated with:</h3>
        <p>
            Inflammatory marker.</p>
    </div>
    <div class="ideal hidden" id="equal_mucus" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_mucus" style="display: none">
        <h3>
            Generally associated with Low Mucus:</h3>
        <p>
            Low is desired. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_mucus" style="display: none">
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
    <!--RBC test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_urine_rbc">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_urine_rbc" />
                    <a href="#" onclick="resultOfTest('urine_rbc');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_urine_rbc">
        <h3>
            RBC stand alone indicators generally associated with:</h3>
        <p>
            Red blood cells breaking down.</p>
    </div>
    <div class="ideal hidden" id="equal_urine_rbc" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_urine_rbc" style="display: none">
        <h3>
            Generally associated with Low RBC:</h3>
        <p>
            Low is desired. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_urine_rbc" style="display: none">
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
    <!--Epithelial Cells test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_epithelial">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_epithelial" />
                    <a href="#" onclick="resultOfTest('epithelial');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_epithelial">
        <h3>
            Epithelial Cells stand alone indicators generally associated with:</h3>
        <p>
            Cellular integrity.</p>
    </div>
    <div class="ideal hidden" id="equal_epithelial" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_epithelial" style="display: none">
        <h3>
            Generally associated with Low Epithelial Cells:</h3>
        <p>
            Low is desired. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_epithelial" style="display: none">
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
    <!--Calcium Oxalate test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_cal_ox">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_cal_ox" />
                    <a href="#" onclick="resultOfTest('cal_ox');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_cal_ox">
        <h3>
            Calcium Oxalate stand alone indicators generally associated with:</h3>
        <p>
            Early stage kidney stone formation.</p>
    </div>
    <div class="ideal hidden" id="equal_cal_ox" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_cal_ox" style="display: none">
        <h3>
            Generally associated with Low Calcium Oxalate:</h3>
        <p>
            Low is desired. Zero is ideal.</p>
        <h3>
            Corresponding need for nutritional support for Low Calcium Oxalate:</h3>
        <p>
            Ionic Magnesium, Jug One Protocol.</p>
    </div>
    <div class="high hidden" id="high_cal_ox" style="display: none">
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
    <!--Triple Phosphate test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_tri_phos">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_tri_phos" />
                    <a href="#" onclick="resultOfTest('tri_phos');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_tri_phos">
        <h3>
            Triple Phosphate stand alone indicators generally associated with:</h3>
        <p>
            Mineral imbalance, calcium balance, parathyroid homeostasis</p>
    </div>
    <div class="ideal hidden" id="equal_tri_phos" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_tri_phos" style="display: none">
        <h3>
            Generally associated with Low Triple Phosphate:</h3>
        <p>
            Low is desired. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_tri_phos" style="display: none">
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
    <!--Uric Acid  test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_uric_acid">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_uric_acid" />
                    <a href="#" onclick="resultOfTest('uric_acid');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_uric_acid">
        <h3>
            Uric Acid stand alone indicators generally associated with:</h3>
        <p>
            Bad acid, gout gauge. Arthritis, rheumatism, stiffness</p>
    </div>
    <div class="ideal hidden" id="equal_uric_acid" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_uric_acid" style="display: none">
        <h3>
            Generally associated with Low Uric Acid:</h3>
        <p>
            Low is desired. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_uric_acid" style="display: none">
        <h3>
            Generally associated with High Uric Acid:</h3>
        <p>
            Pre-gout, connective tissue problems, arthritic/rheumatoid like conditions, uric
            acid depositing near joints, cartilage and connective tissue joint swelling, inflammation,
            big toe pain, faulty diet, excess use of devitalized foods.</p>
        <h3>
            Corresponding need for nutritional support for High Uric Acid:</h3>
        <p>
            Jug One Protocol, Green Drink, Bowel Tonic, Kidney & Liver Detox Formula, Wheat
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
    <!--Amorphous  test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_amorphous">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_amorphous" />
                    <a href="#" onclick="resultOfTest('amorphous');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_amorphous">
        <h3>
            Amorphous stand alone indicators generally associated with:</h3>
        <p>
            Flora balance.
        </p>
    </div>
    <div class="ideal hidden" id="equal_amorphous" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_amorphous" style="display: none">
        <h3>
            Generally associated with Low Amorphous:</h3>
        <p>
            Low is desired. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_amorphous" style="display: none">
        <h3>
            Generally associated with High Amorphous:</h3>
        <p>
            Floral imbalance, cellular oxygen deficiency, excess junk foods, fiber, enzyme &
            multiple nutritional deficiencies</p>
        <h3>
            Corresponding need for nutritional support for High Amorphous:</h3>
        <p>
            Mega B Complex 1000, Stress & Toxin Protector, Green Drink.</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Parsley, carrot, spinach, fig, apple, yogurt health drink.</p>
        <h3>
            Support:</h3>
        <p>
            Spleen. (Homeopathic Remedy: #808)</p>
    </div>
    <!--Bacteria  test starts here---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
    <div class="values">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_bacteria">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <strong>0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_bacteria" />
                    <a href="#" onclick="resultOfTest('bacteria');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_bacteria">
        <h3>
            Bacteria stand alone indicators generally associated with:</h3>
        <p>
            Immune competency, urinary tract infection.</p>
    </div>
    <div class="ideal hidden" id="equal_bacteria" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_bacteria" style="display: none">
        <h3>
            Generally associated with Low Bacteria:</h3>
        <p>
            Low is desired. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_bacteria" style="display: none">
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
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4" class="heading">
                In House Urine/Saliva Tests
            </td>
        </tr>
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
                    <input type="text" name="value" id="u_score_salive_ph" />
                    <a href="#" onclick="resultOfTest('salive_ph');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_salive_ph">
        <h3>
            Saliva PH stand alone indicators generally associated with:</h3>
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
                    <strong>2.2 - 4.2</strong>
                </td>
                <td width="25%">
                    <strong>2.2 - 5.9</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_sugar_refrac" />
                    <a href="#" onclick="resultOfTest('sugar_refrac');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_sugar_refrac">
        <h3>
            Sugar Refractometer stand alone indicators generally associated with:</h3>
        <p>
            Blood sugar and bio-energy.</p>
    </div>
    <div class="ideal hidden" id="equal_sugar_refrac" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_sugar_refrac" style="display: none">
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
    <div class="high hidden" id="high_sugar_refrac" style="display: none">
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
                    <strong>6- 11</strong>
                </td>
                <td width="25%">
                    <strong>6 - 16</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_conductivity" />
                    <a href="#" onclick="resultOfTest('conductivity');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_conductivity">
        <h3>
            Conductivity stand alone indicators generally associated with:</h3>
        <p>
            Toxicity, metabolic efficiency, cellular hydration, electrolyte, mineral gauge,
            metabolic efficiency, body fat storing or burning indicator.</p>
    </div>
    <div class="ideal hidden" id="equal_conductivity" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_conductivity" style="display: none">
        <h3>
            Generally associated with Low Conductivity:</h3>
        <p>
            Electrolyte imbalance, over hydration, mineral depletion.</p>
        <h3>
            Corresponding need for nutritional support for Low Conductivity:</h3>
        <p>
            Irish Moss/Kelp, Sea Vegetable Extract Tonic, Ionic Potassium, Magnesium, Calcium.</p>
    </div>
    <div class="high hidden" id="high_conductivity" style="display: none">
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
                    <strong>2 - 4</strong>
                </td>
                <td width="25%">
                    <strong>1 - 5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_nitrte_nitro" />
                    <a href="#" onclick="resultOfTest('nitrte_nitro');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_nitrte_nitro">
        <h3>
            Nitrate Nitrogen stand alone indicators generally associated with:</h3>
        <p>
            Protein utilization, food transition time, toxicity, general overall health status.</p>
    </div>
    <div class="ideal hidden" id="equal_nitrte_nitro" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_nitrte_nitro" style="display: none">
        <h3>
            Generally associated with Low Nitrate Nitrogen:</h3>
        <p>
            Low is desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_nitrte_nitro" style="display: none">
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
                    <strong>2 - 4</strong>
                </td>
                <td width="25%">
                    <strong>1 - 5</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_ammo_nitrte" />
                    <a href="#" onclick="resultOfTest('ammo_nitrte');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_ammo_nitrte">
        <h3>
            Ammonical Nitrogen stand alone indicators generally associated with:</h3>
        <p>
            Amino acid digestion, food transition time, toxicity, general health status.</p>
    </div>
    <div class="ideal hidden" id="equal_ammo_nitrte" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_ammo_nitrte" style="display: none">
        <h3>
            Generally associated with Low Ammonical Nitrogen:</h3>
        <p>
            Low is desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_ammo_nitrte" style="display: none">
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
                    <strong>
                        <label id="i_score_indican">
                            300</label></strong>
                </td>
                <td width="25%">
                    <strong>300 - 600</strong>
                </td>
                <td width="25%">
                    <strong>250 - 750</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_indican" />
                    <a href="#" onclick="resultOfTest('indican');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_indican">
        <h3>
            Indican stand alone indicators generally associated with:</h3>
        <p>
            Colon health, bowel toxicity, efficient food transition, autointoxication.</p>
    </div>
    <div class="ideal hidden" id="equal_indican" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_indican" style="display: none">
        <h3>
            Generally associated with Low Indican:</h3>
        <p>
            Low is desirable.
        </p>
    </div>
    <div class="high hidden" id="high_indican" style="display: none">
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
    <!--==========================================================Indican test starts here====================================================================---->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4" class="heading">
                Abunda Life Medical Nutrition Testing Clinic<br />
                Early Warning Advanced Preventive Medicine<br />
                Extended Anti Aging Profile Laboratory Diagnostic Test Results
            </td>
        </tr>
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
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>
                        <label id="i_score_spec_gravity">
                            1.10</label></strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    Follicular Phase (7 days)<br />
                    <strong>1.005 - 1.015</strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>1.005 - 1.020</strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <input type="text" name="value" id="u_score_spec_gravity" />
                    <a href="#" onclick="resultOfTest('spec_gravity');">Show Result</a>
                </td>
            </tr>
            <tr>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>
                        <label id="i_score_spec_gravity">
                            1.10</label></strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    Ovulatory Phase (13 days)<br />
                    <strong>1.005 - 1.015</strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>1.005 - 1.020</strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <input type="text" name="value" id="u_score_spec_gravity" />
                    <a href="#" onclick="resultOfTest('spec_gravity');">Show Result</a>
                </td>
            </tr>
            <tr>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>
                        <label id="i_score_spec_gravity">
                            1.10</label></strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    Luteral Phase (21 days)<br />
                    <strong>1.005 - 1.015</strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>1.005 - 1.020</strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <input type="text" name="value" id="u_score_spec_gravity" />
                    <a href="#" onclick="resultOfTest('spec_gravity');">Show Result</a>
                </td>
            </tr>
            <tr>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>
                        <label id="i_score_spec_gravity">
                            1.10</label></strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    Perri Menopausal<br />
                    <strong>1.005 - 1.015</strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>1.005 - 1.020</strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <input type="text" name="value" id="u_score_spec_gravity" />
                    <a href="#" onclick="resultOfTest('spec_gravity');">Show Result</a>
                </td>
            </tr>
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_spec_gravity">
                            1.10</label></strong>
                </td>
                <td width="25%">
                    Menopausal<br />
                    <strong>1.005 - 1.015</strong>
                </td>
                <td width="25%">
                    <strong>1.005 - 1.020</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_spec_gravity" />
                    <a href="#" onclick="resultOfTest('spec_gravity');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_spec_gravity">
        <h3>
            Estradiol stand alone indicators generally associated with:</h3>
        <p>
            Predominant female hormone.</p>
    </div>
    <div class="ideal hidden" id="equal_spec_gravity" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_spec_gravity" style="display: none">
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
    <div class="high hidden" id="high_spec_gravity" style="display: none">
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
                    <strong>10 - 60</strong>
                </td>
                <td width="25%">
                    <strong>20 - 75</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_estradiol_men" />
                    <a href="#" onclick="resultOfTest('estradiol_men');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_estradiol_men">
        <h3>
            Estradiol stand alone indicators generally associated with:</h3>
        <p>
            Hormonal balance.</p>
    </div>
    <div class="ideal hidden" id="equal_estradiol_men" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_estradiol_men" style="display: none">
        <h3>
            Estradiol stand alone indicators generally associated with:</h3>
        <p>
            Hormonal balance.</p>
        <h3>
            Corresponding need for nutritional support for Low Estradiol:</h3>
        <p>
            Adrenal Hormone Restoration Factors, Vitamin E Complex, Ionic Zinc, Omega 3/6 Essential
            Fatty Acids, Pineal Hormone restoration Factors, Wheat Germ Oil, Ionic Magnesium,
            Super Oil.</p>
    </div>
    <div class="high hidden" id="high_estradiol_men" style="display: none">
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
                    <strong>7.2 - 17.2</strong>
                </td>
                <td width="25%">
                    <strong>4.3 - 22.4</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_cortisol" />
                    <a href="#" onclick="resultOfTest('cortisol');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_cortisol">
        <h3>
            Cortisol stand alone indicators generally associated with:</h3>
        <p>
            Stress indicator, the effects of the mind and emotions are having on the organs,
            nerves, cells and immune system.</p>
    </div>
    <div class="ideal hidden" id="equal_cortisol" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_cortisol" style="display: none">
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
    <div class="high hidden" id="high_cortisol" style="display: none">
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
    <!--Hemoglobin A1C test starts here-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Hemoglobin A1C</h1>
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
                        <label id="i_score_hemoglo_aic">
                            5.40</label></strong>
                </td>
                <td width="25%">
                    <strong>4.00 - 6.00</strong>
                </td>
                <td width="25%">
                    <strong>4.40 - 6.40</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_hemoglo_aic" />
                    <a href="#" onclick="resultOfTest('hemoglo_aic');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_hemoglo_aic">
        <h3>
            Hemoglobin A1C stand alone indicators generally associated with:</h3>
        <p>
            Early detection of diabetes, metabolic syndrome, body fat weight gain, depression,
            hypoglycemia, also a more advanced test to determine if the present diabetic treatment
            is working, renders a 120 day blood sugar average.</p>
    </div>
    <div class="ideal hidden" id="equal_hemoglo_aic" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_hemoglo_aic" style="display: none">
        <h3>
            Generally associated with Low A1C:</h3>
        <p>
            Reactive hypoglycemia, low body sugar, brain fog, mood swings, depression, forgetfulness,
            inability to concentrate, eye sight, nervousness, anxiety, irrational fears, worry,
            undue fatigue, drained energy, uncompleted work, nutritional deficiencies in chromium.</p>
        <h3>
            Corresponding need for nutritional support for Low A1C:</h3>
        <p>
            Amino Acids, Vitamin B Complex, Pantothenic Acid, Alpha Lipoic Acid, Co-Enzyme Q-10,
            Pancreatin, Hydrocloric Acid, Inositol, full spectrum of Amino Acid Chelated Minerals.</p>
    </div>
    <div class="high hidden" id="high_hemoglo_aic" style="display: none">
        <h3>
            Generally associated with High A1C:</h3>
        <p>
            Diabetes, hypertension, high cholesterol, high triglycerides, body fat gain, high
            blood sugar, circulatory problems, early warning of kidney, brain, and heart disorders.</p>
        <h3>
            Corresponding need for nutritional support for High A1C:</h3>
        <p>
            Biotin, Choline, Chromium, Folic Acid, Inositol, full spectrum of Amino Acid Chelated
            Minerals, Alpha Lipoic Acid, Niacin, Pantothenic Acid, Co-Enzyme Q-10, Absorption
            Enhancer, Vitamin E, Cobolamin, Alfalfa Juice, Mega B Complex, Bio-Flavanoids, Vitamin
            C, L-Carnitine, Pancreatian, Maxi Fiber, Fiber Max.</p>
        <h3>
            Clinical Treatments Indicated:</h3>
        <p>
            Alpha Lipoic Acid, I.V. Drips, I.V. Ozone</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Zucchini, avocado, mushrooms, celery, kale.</p>
        <h3>
            Support:</h3>
        <p>
            Pancreas, adrenals. (Homeopathic Remedies: #29, #32, #43, #818, #829)</p>
    </div>
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
                    <strong>200 - 600</strong>
                </td>
                <td width="25%">
                    <strong>118 - 550</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_ifg1" />
                    <a href="#" onclick="resultOfTest('ifg1');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_ifg1">
        <h3>
            IGF-1 stand alone indicators generally associated with:</h3>
        <p>
            Physiological aging gauge, pituitary function, body’s ability to repair.</p>
    </div>
    <div class="ideal hidden" id="equal_ifg1" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_ifg1" style="display: none">
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
    <div class="high hidden" id="high_ifg1" style="display: none">
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
    <!--Alpha-Fetoprotein – (AFP) test starts here-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Alpha-Fetoprotein – (AFP)</h1>
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
                        <label id="i_score_afp">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 3.9</strong>
                </td>
                <td width="25%">
                    <strong>0 - 8</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_afp" />
                    <a href="#" onclick="resultOfTest('afp');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_afp">
        <h3>
            AFP stand alone indicators generally associated with:</h3>
        <p>
            Used in the early detection of testicular carcinoma in men and ovarian carcinoma
            in women, liver tumors, cancer antigens over running immune system</p>
    </div>
    <div class="ideal hidden" id="equal_afp" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_afp" style="display: none">
        <h3>
            Generally associated with Low AFP:</h3>
        <p>
            Immune system keeping cancer antigens under control, cellular degeneration/regeneration
            gauge</p>
    </div>
    <div class="high hidden" id="high_afp" style="display: none">
        <h3>
            Generally associated with High AFP:</h3>
        <p>
            Highly toxic condition, faulty life style, alcohol consumption, junk foods, sugar
            consumption, over medicated, mal-absorption syndrome, liver sluggishness, cellular
            oxygen deficiency, metabolic acidosis, compromised immune system, stressed physiology,
            multiple nutritional deficiency syndrome, cells breaking down faster than they are
            rebuilding, early cancer or inflammation or malignancy or autoimmune condition.</p>
        <h3>
            Corresponding need for nutritional support for High AFP:</h3>
        <p>
            Ionic iodine, Potassium, Zinc, Platinum, Cobalt, Gold, Germanium, Hydrozine, Sulfate,
            Duo C Complex, Bio-Flavanoids, Super C Active.</p>
        <h3>
            Clinical Treatments Indicated:</h3>
        <p>
            I.V. Immune Drips, I.V. Ozone Therapy, Naturopathic Detoxification, Nutritional
            Saturation Therapy</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Broccoli, cauliflower, beet, cabbage, kale, horseradish, mushroom, avocado.</p>
        <h3>
            Support:</h3>
        <p>
            (Homeopathic Remedies: #4, #20, #803, #804)</p>
    </div>
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
                    <strong>0 - 6</strong>
                </td>
                <td width="25%">
                    <strong>6 - 27</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_insuln" />
                    <a href="#" onclick="resultOfTest('insuln');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_insuln">
        <h3>
            Insulin stand alone indicators generally associated with:</h3>
        <p>
            Insulin gauge, diabetes, hypoglycemia and metabolic syndrome, body fat weight gain</p>
    </div>
    <div class="ideal hidden" id="equal_insuln" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_insuln" style="display: none">
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
    <div class="high hidden" id="high_insuln" style="display: none">
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
                    <strong>0 - 7</strong>
                </td>
                <td width="25%">
                    <strong>4.0 - 15.4</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_homocysteine" />
                    <a href="#" onclick="resultOfTest('homocysteine');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_homocysteine">
        <h3>
            Homocysteine stand alone indicators generally associated with:</h3>
        <p>
            Early warning stroke, cardio-vascular disease, cancer, Alzheimer’s.</p>
    </div>
    <div class="ideal hidden" id="equal_homocysteine" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_homocysteine" style="display: none">
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
    <div class="high hidden" id="high_homocysteine" style="display: none">
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
    <!--Free Testosterone (Men) test starts here-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Free Testosterone (Men)</h1>
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
                        <label id="i_score_FT_Men">
                            3.0</label></strong>
                </td>
                <td width="25%">
                    <strong>2.0 - 4.0</strong>
                </td>
                <td width="25%">
                    <strong>41.6 - 2.9</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_FT_Men" />
                    <a href="#" onclick="resultOfTest('FT_Men');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_FT_Men">
        <h3>
            Free Testosterone stand alone indicators generally associated with:</h3>
        <p>
            Gauge for usable testosterone, physiological aging, heart disease, stroke, diabetes,
            loss of muscle, bones, libido, premature aging</p>
    </div>
    <div class="ideal hidden" id="equal_FT_Men" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_FT_Men" style="display: none">
        <h3>
            Generally associated with Low Free Testosterone:</h3>
        <p>
            Slow healing, muscle loss, bone density, diabetes, fatigue, loss of sexual function
            and interest, body fat gain, loss of muscular strength, high blood pressure, low
            HDL/high LDL cholesterol, heart weakness, cardio-vascular disease, loss of brain
            function, loss of ambition and enthusiasm for life.</p>
        <h3>
            Corresponding need for nutritional support for Low Free Testosterone:</h3>
        <p>
            Male Hormone restoration, Macho Vita, Wheat Germ Oil, Natures Healer, Ionic Zinc,
            Iodine, Germanium, I-Thyroid, Super Endurance, Ginseng, Vitamin E Complex, Mega
            B Complex 1000, Omega 3/6 Essential Fatty Acids, Co-Enzyme Q-10, L-Carnitine, L-Arginine
            Complex.</p>
    </div>
    <div class="high hidden" id="high_FT_Men" style="display: none">
        <h3>
            Generally associated with High Free Testosterone:</h3>
        <p>
            Desirable except in cases of prostate cancer</p>
        <h3>
            Corresponding need for nutritional support for High Free Testosterone:</h3>
        <p>
            San Palmetto</p>
        <h3>
            Clinical Treatments Indicated:</h3>
        <p>
            Bio-Identical Hormone Restoration therapy, Human Growth Hormone (HGH) Restoration
            Therapy</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Spinach, zucchini, peas, mushroom, avocado, cranberry, Noni juice.</p>
        <h3>
            Support:</h3>
        <p>
            Spinach, zucchini, peas, mushroom, avocado, cranberry, Noni juice</p>
    </div>
    <!--Free Testosterone (Women) test starts here-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Free Testosterone (Women))</h1>
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
                        <label id="i_score_FT_women">
                            1.0</label></strong>
                </td>
                <td width="25%">
                    <strong>.8 - 1.2</strong>
                </td>
                <td width="25%">
                    <strong>.4 - 1.0</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_FT_women" />
                    <a href="#" onclick="resultOfTest('FT_women');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_FT_women">
        <h3>
            Free Testosterone stand alone indicators generally associated with:</h3>
        <p>
            Hormonal level gauge, signs of physiological premature aging.</p>
    </div>
    <div class="ideal hidden" id="equal_FT_women" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_FT_women" style="display: none">
        <h3>
            Generally associated with Low Free Testosterone:</h3>
        <p>
            Lowered immune function, loss of muscle, gain of flab and body fat, forgetfulness,
            loss of brain function, slow healing, slow thinking, loss of sexual desire, high
            blood pressure, diabetes, heart weakness, mini stroke symptoms, low HDL cholesterol,
            high LDL cholesterol, underperforming thyroid.</p>
        <h3>
            Corresponding need for nutritional support for Low Free Testosterone:</h3>
        <p>
            Omega 3/6 Essential Fatty Acids, L-Arginine Complex, I-thyroid, L-Carnitine, Vitamin
            E Complex, Co-Enzyme Q-10, Female Vigor, Female Hormone Restoration Factors, Black
            Cohash, Bio-Identical Female Hormone Restoration therapy, Ionic Zinc, Germanium,
            Cobalt, Ferma Herbal.</p>
    </div>
    <div class="high hidden" id="high_FT_women" style="display: none">
        <h3>
            Generally associated with High Free Testosterone:</h3>
        <p>
            Female hormone imbalance, oil, skin, facial hairs.</p>
        <h3>
            Corresponding need for nutritional support for High Free Testosterone:</h3>
        <p>
            Wheat Germ Oil, Vitamin E Complex, Black Cohash.</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Kale, zucchini, broccoli.
        </p>
        <h3>
            Support:</h3>
        <p>
            Female system, pituitary, thyroid. (Homeopathic Remedies: #44, #804, #806, #810)</p>
    </div>
    <!--Serum Testosterone (Men) test starts here-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Serum Testosterone (Men)</h1>
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
                        <label id="i_score_ST_men">
                            750</label></strong>
                </td>
                <td width="25%">
                    <strong>500 - 1000</strong>
                </td>
                <td width="25%">
                    <strong>300 - 800</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_ST_men" />
                    <a href="#" onclick="resultOfTest('ST_men');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_ST_men">
        <h3>
            Serum Testosterone stand alone indicators generally associated with:</h3>
        <p>
            Male Hormone, physiological, reserve diabetic, stroke, heart disease, Alzheimer’s,
            premature Aging, libido, associated with testosterone levels</p>
    </div>
    <div class="ideal hidden" id="equal_ST_men" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_ST_men" style="display: none">
        <h3>
            Generally associated with Low Serum Testosterone:</h3>
        <p>
            Reduces brain function, sexual function, desire to get up and go</p>
        <h3>
            Corresponding need for nutritional support for Low Serum Testosterone:</h3>
        <p>
            Male Hormone Restoration, Macho Vita, Wheat Germ Oil, Natures Healer, Ionic Zinc,
            Iodine, Germanium, I-Thyroid, Super Endurance, Ginseng, Vitamin E Complex, Mega
            B Complex 1000, Omega 3/6 Essential Fatty Acids, Co-Enzyme Q-10, L-Carnitine, L-Arginine
            Complex.</p>
    </div>
    <div class="high hidden" id="high_ST_men" style="display: none">
        <h3>
            Generally associated with High Serum Testosterone:</h3>
        <p>
            Desirable except in cases of prostate cancer.</p>
        <h3>
            Corresponding need for nutritional support for High Serum Testosterone:</h3>
        <p>
            San Palmetto.</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Spinach, Zucchini, peas, mushroom, avocado.</p>
        <h3>
            Support:</h3>
        <p>
            Pituitary, prostrate. (Homeopathic Remedies: #44, #802, #803, #805, #809, #835)</p>
    </div>
    <!--Serum Testosterone (Women test starts here-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Serum Testosterone (Women</h1>
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
                        <label id="i_score_ST_women">
                            75</label></strong>
                </td>
                <td width="25%">
                    <strong>50 - 100</strong>
                </td>
                <td width="25%">
                    <strong>25 - 75</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_ST_women" />
                    <a href="#" onclick="resultOfTest('ST_women');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_ST_women">
        <h3>
            Serum Testosterone stand alone indicators generally associated with:</h3>
        <p>
            Hormonal level gauge, signs of physiological premature aging.</p>
    </div>
    <div class="ideal hidden" id="equal_ST_women" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_ST_women" style="display: none">
        <h3>
            Generally associated with Low Serum Testosterone:</h3>
        <p>
            Lowered immune function, loss of muscle, gain of flab and body fat, forgetfulness,
            loss of brain function, slow healing, slow thinking, loss of sexual desire, high
            blood pressure, diabetes, heart weakness, mini stroke symptoms, low HDL cholesterol,
            high LDL cholesterol, underperforming thyroid, cardio-vascular disease.</p>
        <h3>
            Corresponding need for nutritional support for Low Serum Testosterone:</h3>
        <p>
            Omega 3/6 Essential Fatty Acids, L-Arginine Complex, I-Thyroid, L-Carnitine, Vitamin
            E Complex, Co-Enzyme Q-10, Female Vigor, Female Hormone Restoration Factors, Black
            Cohash, Bio-Identical Female Hormone Restoration therapy, Ionic zinc, Germanium,
            Cobalt, Ferma Herba</p>
    </div>
    <div class="high hidden" id="high_ST_women" style="display: none">
        <h3>
            Generally associated with High Serum Testosterone:</h3>
        <p>
            Female hormone imbalance, facial hair, oily skin</p>
        <h3>
            Corresponding need for nutritional support for High Serum Testosterone:</h3>
        <p>
            Wheat Germ Oil, Vitamin E Complex, Black Cohash, Oil of Evening Primrose</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Kale, Zucchini, broccoli.</p>
        <h3>
            Support:</h3>
        <p>
            Female system, pituitary, thyroid. (Homeopathic Remedies: #44, #804, #806, #810)</p>
    </div>
    <!--Progesterone test starts here-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Progesterone</h1>
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
                        <label id="i_score_progestrone">
                            15</label></strong>
                </td>
                <td width="25%">
                    <strong>10 - 20</strong>
                </td>
                <td width="25%">
                    <strong>4 - 25</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_progestrone" />
                    <a href="#" onclick="resultOfTest('progestrone');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_progestrone">
        <h3>
            Progesterone stand alone indicators generally associated with:</h3>
        <p>
            Hormone balancer, women and men, tumor protector</p>
    </div>
    <div class="ideal hidden" id="equal_progestrone" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_progestrone" style="display: none">
        <h3>
            Generally associated with Low Progesterone:</h3>
        <p>
            Premature aging, tumor formation, low libido, anxiety, sleep disturbances, constipation,
            amenorrhea, hair loss, estrogen dominance, myocardial infraction, adrenal depletion,
            elevated DHT, breast cysts, ovarian cysts, PMS, early warning uterine cancer, osteoporosis</p>
        <h3>
            Corresponding need for nutritional support for Low Progesterone:</h3>
        <p>
            Oil of Evening Primrose, Vitamin E Complex, Ionic Selenium, Cobalt, Zinc, Germanium,
            Fema Herba, Bio-Identical Hormone Restoration Therapy</p>
    </div>
    <div class="high hidden" id="high_progestrone" style="display: none">
        <h3>
            Generally associated with High Progesterone:</h3>
        <p>
            Ovarian fatty tumors, fatigue, depression, loss of sex drive, vertigo, low blood
            pressure, faint, drowsiness, sleepiness, liver sluggishness, feminization in men</p>
        <h3>
            Corresponding need for nutritional support for High Progesterone:</h3>
        <p>
            Adrenal Hormone Restoration Factors, Queen Bee Jelly, L-Arginine, Omega 3 and 6
            Essential Fatty Acids, I-Thyroid</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Thyroid Broth, Royal Pollen Complex, Queen Bee Milk</p>
        <h3>
            Support:</h3>
        <p>
            Sex hormones, thyroid, adrenals, pituitary. (Homeopathic Remedies: #44, #802, #803,
            #804, #806, #809, #810)</p>
    </div>
    <!--Total Testosterone test starts here-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Total Testosterone</h1>
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
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>
                        <label id="i_score_spec_tt">
                            750 (men)</label></strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>500 - 1000</strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>300 - 800</strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <input type="text" name="value" id="u_score_tt" />
                    <a href="#" onclick="resultOfTest('spec_gravity');">Show Result</a>
                </td>
            </tr>
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_tt">
                            150 (women)</label></strong>
                </td>
                <td width="25%">
                    <strong>100 - 200</strong>
                </td>
                <td width="25%">
                    <strong>75 - 150</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_tt" />
                    <a href="#" onclick="resultOfTest('tt');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_tt">
        <h3>
            Total Testosterone stand alone indicators generally associated with:</h3>
        <p>
            Aging and total well being marker.</p>
    </div>
    <div class="ideal hidden" id="equal_tt" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_tt" style="display: none">
        <h3>
            Generally associated with Low Total Testosterone:</h3>
        <p>
            (Men and Women) Loss of energy, get up and go, libido, ambition, immune function,
            cardio-vascular integrity, diabetes, strength bone loss, muscle loss, muscle tone,
            flabbiness, osteoporosis, infertility, erectile dysfunction, malnutrition, inflammatory
            bowel disease, memory problems, depression, heart problems, loss of animation for
            life</p>
        <h3>
            Corresponding need for nutritional support for Low Total Testosterone:</h3>
        <p>
            L-Arginine, L-Glutamine, L-Carnitine, 28 Super Amino Acids, Endurall, Super Drink,
            I-Thyroid, Super Oil, Vitamin E Complex, Wheat Germ Oil, Muscle Builder, Male Hormone
            Restoration Factors, Bio-Identical Hormone Restoration Factors</p>
    </div>
    <div class="high hidden" id="high_tt" style="display: none">
        <h3>
            Generally associated with High Total Testosterone:</h3>
        <p>
            Clitoromegaly (in women), increased libido, frequency of erection, clitoral engorgement,
            facial hair, deepening voice, phallic enlargement, decrease subcutaneous fat, increased
            fertility</p>
        <h3>
            Corresponding need for nutritional support for High Total Testosterone:</h3>
        <p>
            Enzyme Therapy</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Beet, celery, avocado, mushroom, kale.</p>
        <h3>
            Support:</h3>
        <p>
            Sex hormones, thyroid, pituitary. (Homeopathic Remedies; #44, #805, #801, #810)
        </p>
    </div>
    <!--Cancer Antigen – (CA 15-3) test starts here-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Cancer Antigen – (CA 15-3)</h1>
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
                        <label id="i_score_ca-15-3">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 16</strong>
                </td>
                <td width="25%">
                    <strong>0.0 - 31.3</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_ca-15-3" />
                    <a href="#" onclick="resultOfTest('ca-15-3');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_ca-15-3">
        <h3>
            CA 15-3 stand alone indicators generally associated with:</h3>
        <p>
            Early antigen tumor marker for breast tissue</p>
    </div>
    <div class="ideal hidden" id="equal_ca-15-3" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_ca-15-3" style="display: none">
        <h3>
            Generally associated with Low CA 15-3:</h3>
        <p>
            Ideal – immune system containing, chewing up and spitting out cancer cells</p>
    </div>
    <div class="high hidden" id="high_ca-15-3" style="display: none">
        <h3>
            Generally associated with High CA 15-3:</h3>
        <p>
            Immune system compromised, autointoxication, stressed physiology, trapped lymphatic
            toxins, cellular oxygen deficiency, metabolic acidosis, sugar consumption, birth
            control pills, female hormone imbalance, impacted bowel, bio-identical progesterone
            deficiency, hypothyroid, adrenal exhaustion, early indication of associated breast
            tissue abnormality or tumor recurrence, highly toxic condition</p>
        <h3>
            Corresponding need for nutritional support for High CA 15-3:</h3>
        <p>
            I-Thyroid, Mega B Complex, Cobalamin, Pyridoxine, Endurall, Duo C Complex, Hydrozine
            Sulfur, Ionic Germanium, Platinum, Cobalt, Selenium, Zinc, Potassium, Iodine, Omega
            3/6 Essential Fatty Acids, Vitamin E, Co-Enzyme Q-10</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Tomato, broccoli, cauliflower, green pepper, horseradish, green onion, mushroom,
            avocado</p>
        <h3>
            Support:</h3>
        <p>
            Tomato, broccoli, cauliflower, green pepper, horseradish, green onion, mushroom,
            avocado</p>
    </div>
    <!--Carbohydrate Antigen – (CA 19-9) test starts here-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Carbohydrate Antigen – (CA 19-9)</h1>
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
                        <label id="i_score_ca-19-9">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 18</strong>
                </td>
                <td width="25%">
                    <strong>0.0 - 37</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_ca-19-9" />
                    <a href="#" onclick="resultOfTest('ca-19-9');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_ca-19-9">
        <h3>
            CA 19-9 stand alone indicators generally associated with:</h3>
        <p>
            Early detection inflammatory bowel disease, autoimmune condition, gastrointestinal,
            pancreatic, liver, rectal/colon malignancies</p>
    </div>
    <div class="ideal hidden" id="equal_ca-19-9" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_ca-19-9" style="display: none">
        <h3>
            CA 19-9 stand alone indicators generally associated with:</h3>
        <p>
            Ideal, immune system working efficiently</p>
    </div>
    <div class="high hidden" id="high_ca-19-9" style="display: none">
        <h3>
            Generally associated with High CA 19-9:</h3>
        <p>
            Highly toxic condition, faulty life style, alcohol consumption, junk foods, sugar
            consumption, over medicated, mal-absorption syndrome, liver sluggishness, cellular
            oxygen deficiency, metabolic acidosis, compromised immune system, stressed physiology,
            multiple nutritional deficiency syndrome, cells breaking down faster than they are
            rebuilding, early cancer or inflammation or malignancy or autoimmune condition</p>
        <h3>
            Corresponding need for nutritional support for High CA 19-9:</h3>
        <p>
            Hydrozine Sulfate, Jug One Protocol, Green Drink, Bowel Tonic, Ionic Potassium,
            Iodine, Selenium, Germanium, Zinc, Gold, Platinum</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Spinach, broccoli, cauliflower, tomato, mushroom, avocado</p>
        <h3>
            Support:</h3>
        <p>
            (Homeopathic Remedies: #2, #4, #20, #807)</p>
    </div>
    <!--Sex Binding Globulin – (SHBG – Women) test starts here-->
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
                        <label id="i_score_shbg-women">
                            20</label></strong>
                </td>
                <td width="25%">
                    <strong>1 - 40</strong>
                </td>
                <td width="25%">
                    <strong>1 - 114</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_shbg-women" />
                    <a href="#" onclick="resultOfTest('shbg-women');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_shbg-women">
        <h3>
            SHBG stand alone indicators generally associated with SHBG:</h3>
        <p>
            Female sex hormone in circulation, hormone availability</p>
    </div>
    <div class="ideal hidden" id="equal_shbg-women" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_shbg-women" style="display: none">
        <h3>
            Generally associated with Low SHBG:</h3>
        <p>
            Desirable</p>
    </div>
    <div class="high hidden" id="high_shbg-women" style="display: none">
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
    <!--Sex Binding Globulin – (SHBG – Men)  test starts here-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Sex Binding Globulin – (SHBG – Men)
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
                        <label id="i_score_shbg-men">
                            10</label></strong>
                </td>
                <td width="25%">
                    <strong>5 - 30</strong>
                </td>
                <td width="25%">
                    <strong>13 - 17</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_shbg-men" />
                    <a href="#" onclick="resultOfTest('shbg-men');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_shbg-men">
        <h3>
            SHBG stand alone indicators generally associated with:</h3>
        <p>
            Hormone availability at tissue level, free testosterone availability</p>
    </div>
    <div class="ideal hidden" id="equal_shbg-men" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_shbg-men" style="display: none">
        <h3>
            Generally associated with Low SHBG:</h3>
        <p>
            Desirable</p>
    </div>
    <div class="high hidden" id="high_shbg-men" style="display: none">
        <h3>
            Generally associated with High SHBG:</h3>
        <p>
            Binding globulin decreases the availability of testosterone, prostate enlargement,
            increased estradiol, degenerative condition affecting every cell and organ of the
            body, hormone deficiency</p>
        <h3>
            Corresponding need for nutritional support for High SHBG:</h3>
        <p>
            Choline, Citrus Bio-Flavanoid, Folic Acid, Vitamin B-6, Vitamin B-12, Vitamin B
            Complex 1000, Inositol, Methionine, Selenium, Zinc, L-Taurine, Vitamin C, Vitamin
            D-3, Vitamin E, Omega 3 and 6 Essential Fatty Acids, Cobalt, Magnesium, L-Arginine
            Complex, Macho Vita, Male Hormone Restoration Factors, Ginseng</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Parsley, spinach, mushroom, avocado</p>
        <h3>
            Support:</h3>
        <p>
            Male/Female system, thyroid, pituitary, prostate. (Homeopathic Remedies: #44, #804,
            #805, #806, #809, #834)</p>
    </div>
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
                    <strong>0 - 3</strong>
                </td>
                <td width="25%">
                    <strong>0 - 6</strong>
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_crp" />
                    <a href="#" onclick="resultOfTest('crp');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_crp">
        <h3>
            C-Reactive Protein stand alone indicators generally associated with:</h3>
        <p>
            Inflammatory marker, after effect of the body, scavenger/clean up process, early
            warning marker of cardio-vascular disease, peripheral vascular disease, cellular
            breakdown, cancer, Alzheimer’s, early stage infection gauge</p>
    </div>
    <div class="ideal hidden" id="equal_crp" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_crp" style="display: none">
        <h3>
            Generally associated with Low C-Reactive Protein:</h3>
        <p>
            Low is desirable. Zero is ideal</p>
    </div>
    <div class="high hidden" id="high_crp" style="display: none">
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
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>
                        <label id="i_score_spec_dhea">
                            600 (men)</label></strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>500 - 700</strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <strong>28 - 175</strong>
                </td>
                <td width="25%" style="border-bottom: solid 1px #000; padding: 5px 0;">
                    <input type="text" name="value" id="u_score_dhea" />
                    <a href="#" onclick="resultOfTest('dhea');">Show Result</a>
                </td>
            </tr>
            <tr>
                <td width="25%">
                    <strong>
                        <label id="i_score_dhea">
                            300 (women)</label></strong>
                </td>
                <td width="25%">
                    <strong>250 - 350</strong>
                </td>
                <td width="25%">
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_dhea" />
                    <a href="#" onclick="resultOfTest('dhea');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_dhea">
        <h3>
            DHEA sulfate stand alone indicators generally associated with:</h3>
        <p>
            Quality of life, physiological stress, adrenal, hormone indicator</p>
    </div>
    <div class="ideal hidden" id="equal_dhea" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_dhea" style="display: none">
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
    <div class="high hidden" id="high_dhea" style="display: none">
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
    <!--Carcino Antigen – (CA-125)  test starts here-->
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
                        <label id="i_score_ca-125">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 10</strong>
                </td>
                <td width="25%">
                    0 - 20
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_ca-125" />
                    <a href="#" onclick="resultOfTest('ca-125');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_ca-125">
        <h3>
            CA-125 stand alone indicators generally associated with:</h3>
        <p>
            Pre-ovarian cancer screening, early stage immune competency</p>
    </div>
    <div class="ideal hidden" id="equal_ca-125" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_ca-125" style="display: none">
        <h3>
            Generally associated with LowCA-125:</h3>
        <p>
            Low is desirable. Zero is ideal</p>
    </div>
    <div class="high hidden" id="high_ca-125" style="display: none">
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
                    <strong>200 - 300</strong>
                </td>
                <td width="25%">
                    200 - 400
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_fibrinogen" />
                    <a href="#" onclick="resultOfTest('fibrinogen');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_fibrinogen">
        <h3>
            Fibrinogen stand alone indicators generally associated with:</h3>
        <p>
            Inflammatory marking, early cardio-vascular disease and/or stroke warning, early
            Alzheimer’s warning</p>
    </div>
    <div class="ideal hidden" id="equal_fibrinogen" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_fibrinogen" style="display: none">
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
    <div class="high hidden" id="high_fibrinogen" style="display: none">
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
                    <strong>0 - 600</strong>
                </td>
                <td width="25%">
                    250 - 750
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_caa" />
                    <a href="#" onclick="resultOfTest('caa');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_caa">
        <h3>
            Candida Albicans Antibody stand alone indicators generally associated with:</h3>
        <p>
            Candida, yeast, parasite, fungus toxicity gauge</p>
    </div>
    <div class="ideal hidden" id="equal_caa" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_caa" style="display: none">
        <h3>
            Generally associated with Low Candida Albicans Antibody:</h3>
        <p>
            Low is desirable. Zero is ideal</p>
    </div>
    <div class="high hidden" id="high_caa" style="display: none">
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
                    <strong>0 - 9.5</strong>
                </td>
                <td width="25%">
                    4.5 - 1.8
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_lactic" />
                    <a href="#" onclick="resultOfTest('lactic');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_lactic">
        <h3>
            Lactic Acid stand alone indicators generally associated with:</h3>
        <p>
            Level of oxygen at cell level.</p>
    </div>
    <div class="ideal hidden" id="equal_lactic" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_lactic" style="display: none">
        <h3>
            Generally associated with Low Lactic Acid:</h3>
        <p>
            Low is desirable. Zero is ideal</p>
    </div>
    <div class="high hidden" id="high_lactic" style="display: none">
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
                        <label id="i_score_psa-men">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>2.9</strong>
                </td>
                <td width="25%">
                    4.0
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_psa-men" />
                    <a href="#" onclick="resultOfTest('psa-men');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_psa-men">
        <h3>
            PSA stand alone indicators generally associated with:</h3>
        <p>
            Prostate health</p>
    </div>
    <div class="ideal hidden" id="equal_psa-men" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_psa-men" style="display: none">
        <h3>
            Generally associated with Low PSA:</h3>
        <p>
            Low is desirable. Zero is ideal</p>
    </div>
    <div class="high hidden" id="high_psa-men" style="display: none">
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
                    <strong>30 - 50</strong>
                </td>
                <td width="25%">
                    30 - 85
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_dht" />
                    <a href="#" onclick="resultOfTest('dht');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_dht">
        <h3>
            DHT stand alone indicators generally associated with:</h3>
        <p>
            Manly characteristics</p>
    </div>
    <div class="ideal hidden" id="equal_dht" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_dht" style="display: none">
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
    <div class="high hidden" id="high_dht" style="display: none">
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
    <!--Carcinoma Embryonic Antigen – CEA) test starts here-->
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td colspan="4">
                <h1>
                    Carcinoma Embryonic Antigen – CEA)</h1>
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
                        <label id="i_score_cea">
                            0</label></strong>
                </td>
                <td width="25%">
                    <strong>0 - 2.8</strong>
                </td>
                <td width="25%">
                    0 - 3.8
                </td>
                <td width="25%">
                    <input type="text" name="value" id="u_score_cea" />
                    <a href="#" onclick="resultOfTest('cea');">Show Result</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="ideal" id="ideal_cea">
        <h3>
            CEA stand alone indicators generally associated with:</h3>
        <p>
            Early stage cancer anti body screening.</p>
    </div>
    <div class="ideal hidden" id="equal_cea" style="display: none">
        <h3>
            Your score is ideal:</h3>
    </div>
    <div class="low hidden" id="low_cea" style="display: none">
        <h3>
            Generally associated with Low CEA:</h3>
        <p>
            Low is desirable. Zero is ideal.</p>
    </div>
    <div class="high hidden" id="high_cea" style="display: none">
        <h3>
            Generally associated with High CEA:</h3>
        <p>
            Immune system fighting antibodies, not containing and destroying all the cancer
            cells, early detection of lung, bone, breast, liver, pancreatic, stomach and colon
            cancer.</p>
        <h3>
            Corresponding need for nutritional support for High CEA:</h3>
        <p>
            Jug One Protocol, green Drink, Bedtime Bowel Tonic, Super Food Drink, Duo C Complex,
            Hydrozine Sulfate, immune Power Formula, Vitamin D-3, Beta Carotene, Wheat Grass,
            Super Juice 22 Vegetables, 28 Super Amino Acids, Endurall, RNA/DNA, Ionic Iodine,
            Germanium, Platinum, Cobalt, Selenium, Zinc, Potassium.</p>
        <h3>
            Vegetable Juice Concentrates:</h3>
        <p>
            Broccoli, cauliflower, beet, cabbage, spinach, kale, mushroom, avocado.</p>
        <h3>
            Support:</h3>
        <p>
            (Homeopathic Remedies: #4, #20, #807)</p>
    </div>
    </div>
    </form>
</body>
</html>
