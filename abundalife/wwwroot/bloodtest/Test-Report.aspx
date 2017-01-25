<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
CodeBehind="Test-Report.aspx.cs" Inherits="Web.Test_Report" %>
<asp:Content ID="CntP" ContentPlaceHolderID="Cp" runat="server">
<tr>
<td colspan="2">
<table border="0" cellpadding="3" cellspacing="1" width="100%">
<tr><td class="heading">Abunda Life Medical Nutrition Testing Clinic<br />Nutrabalance Diagnostic Laboratory Blood Analysis Results</td></tr>
<tr><td><asp:Literal ID ="LtrMessage" runat="server"></asp:Literal></td></tr>
</table>
<div id="DivResult" runat="server" class="yesPrint">
<table border="0" cellpadding="3" cellspacing="1" width="100%" id="TblDetails" runat="server" class="tb">
<%--<tr><td colspan="4" align="center" class="b"><h3>LEGENDS</h3></td></tr>
<tr>
<td class="l" align="center"><h2 class="white">LOW</h2></td>
<td class="i" align="center"><h2 class="white">IDEAL</h2></td>
<td class="h" align="center"><h2 class="white">HIGH</h2></td>
<td class="n" align="center"><h2 class="black">SCORE NOT GIVEN</h2></td>
</tr>--%>
<tr><td colspan="4" align="center"><br />
<b>Personal Nutritional Report of Finding</b><br /><br />
<b>Prepared Exclusively for : </b><asp:Literal ID="LtrPatientName" runat="server"></asp:Literal>&nbsp;&nbsp;&nbsp;&nbsp;
<b>Date : </b><asp:Literal ID="LtrDate" runat="server"></asp:Literal>
</td></tr>
<tr><td colspan="4">
<p>3,500 Years ago our Creator, God of the Bible, revealed to the Prophet Moses: “The Life of the Flesh is 
the Blood.” Leviticus 17:14</p>
<p>Medical science continues to advance, God’s Word continues to endure. Today we are not only able to uncover 
diseases through the blood, we are also able to uncover precursors to disease and prediseases. “The life is 
in the blood” John 10:16. We believe this also means the Abundant Life.</p>
<p>We have learned to uncover physiological imbalances, under performing organs, prematurely aging systems, toxicity, blood 
viscosity, nutritional deficiencies all advance of an official diagnosis. We live in an excellent time.</p>
<p>This breakthrough knowledge, even revolutionary, in light of the fact that our scientists tell us that degenerate disease 
is progressive, “it takes 10-20-30 years to develop diabetes, heart disease, cancer, Alzheimer’s Disease and most other 
degenerate diseases. Our scientists also tell us that most modern day diseases are preventable.</p>
<p>The Good News: No longer is it necessary or even intelligent to wait to be officially diagnosed with a disease. The blood 
now enables us to treat predisease and precursors to the disease process far in advance by uncovering and addressing less 
than optimal conditions and helping to guide you to higher levels of wellness.</p>
<p>Your Abunda Life Medical Nutrition Testing Clinic Report of Finding represents the latest scientific breakthrough 
in Diagnostic Laboratory Technology designed for nutritional assessment purposes to date.</p>
<p>This report is designed for educational purposes exclusively for <u><asp:Literal ID="LtrPatientNamee" 
runat="server"></asp:Literal></u> and his/her primary care physician. Tis 
report is not a diagnosis, prescription or treatment for any named medical condition. You have the right to know 
how your body works.</p>
<p>The purpose of this report is to assist the patient/student and his or her primary care physician to be to apply 
the Abunda Life Church Natural Healing Creed, principles and practices into their personal lifestyles turning the 
Abunda Life Philosophy into a way of life.</p>
<p>Abunda Life’s Body Mind and Spirit principles have been time tested and proven on tens of thousands of patients 
since 1964. Although time tested and proven to be both safe and effective they may not be approved by your Orthodox Drug 
Doctor or the American Medical Association.</p>
<p>This form of in-depth evaluation enables you and your doctor to determine if Naturopathic Detoxification is 
indicated. What organ systems need specific nutritional support, uncover metabolic inefficiencies, hormonal imbalances 
and make definitive nutritional recommendations based on your individual Bio-Chemistry.</p>
<p>Unlike drug medicine Abunda Life is a system of Naturopathic Body Mind and Spirit Medicine. It does not attempt to treat 
any specific disease but rather focuses on you unique individual Bio-Chemistry. The blood is so amazing because it is always 
seeking the cause/effect relationship to your health challenges.</p>
<p>The system searched for nutritional deficiencies and metabolic imbalances long before disease is able to get a 
foothold. At Abunda Life we believe an ounce of Naturopathic Body, Mind, and Spirit prevention medicine is worth a ton of 
after the fact drug medicine. At Abunda Life we believe that God designed the human body to heal itself. The goal of this 
program is to help you to become nutritionally sound and encourage you to build and indestructible immune system.</p>
<p>Abunda Life Report of Finding contains a read out for up to 70 different laboratory tests. The extended anti-ageing profile 
contains even more.</p>
<p>Your personal score on each lab test we be compared with the perfect number. This represents the Ideal Score if your 
environment and body was working perfectly.</p>
<p>This is a much different system than main stream medicine which is revolves around pathology when your doctor 
says your tests come back negative or your normal it only means that you no sicker that 97% of the cross 
population. In order for your test score to show up as abnormal you have to fall under the 1 ½% category either high or low.</p>
<p>Main stream medicine is looking for pathology. Abunda Life System is seeking wellness. What does that look like in a lab 
report? This will be reflective in you Report.</p>
<p>You will receive four different ranges in your Report of Finding.
<br /><br />One : The Ideal. What your number would be on each lab test if everything in you environment and body were working perfectly.
<br /><br />Two : The Preventive Medical Range. Your goal is to have the Perfect number. The Ideal for each of your tests. But we’re living in a Fallen world. The preventive range is used by Naturopathic Doctors to evaluate Wellness
<br /><br />Three :	The Orthodox Medical Range used by your family doctor usually to determine pathology.
<br /><br />Four : Your Score. This will let you know where you are compared to the Ideal Medical Range, This will serve as your report card.
</p>
<p>Finally… Your Report of Finding will include definitive foods and natural food supplements recommended based on your 
test results. A no/no food list.</p>
<p>No more guess work or fiddling around with what foods need to be added to your diet and what food supplements are 
indicated. Your Report of Finding represents the highest authority available, your blood, urine and the Naturopathic 
Doctor 1001 Nutritional Assessment Questionnaire.</p>
<p>Your Report of Finding is designed to give you the necessary tools to be your own Nutritional Doctor. Should you lack 
the confidence or feel uncomfortable in treating yourself or fell you need additional assistance you are never alone. Professional 
phone consultations are always available at posted prices.</p>
</td>
</tr>
<tr><td colspan="4"><h2>CHEMISTRY</h2></td></tr>
<%--CHOLESTROL--%>
<tr><td colspan="4"><h2>CHOLESTEROL</h2></td></tr>
<tr>
<td width="14%" class="brd">Ideal</td>
<td width="30%" class="brd">Preventive Medicine Range</td>
<td width="30%" class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCHOLESTROL" runat="server" Text="175"></asp:Literal></td>
<td class="brd">165 - 185</td>
<td class="brd">150 - 200</td>
<td class="brd" id="Td1CHOLESTROL" runat="server"><asp:Literal ID="LtrCHOLESTROL" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CHOLESTROL" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CHOLESTROL" runat="server" visible="false">
<label>Generally associated with Low Cholesterol:</label>
Omega 3 and/or 6 essential fatty acid deficiency, hypothyroid, hormone deficiency, compromised immune system, pre-cancer 
marker, oxidative stress, cells not regenerating, human growth hormone deficiency, vitamin D-3 deficiency, heavy metal 
and/or environmental toxicity, more dangerous than high cholesterol, poor digestion/ assimilation of fats, low fat diet, protein 
deficiency, congested blood vessel walls, mal-nutrition, multiple nutritional deficiencies, heart failure, drug 
toxicity, statin drugs, hepatitis, mal-absorption syndrome, alcoholism, memory loss
<label>Corresponding need for nutritional support for Low Cholesterol:</label>
Cholesterol/Triglycerides, Enzyme Therapy, Co-enzyme Q-10, Lipotropic Factors, Duo C Complex, Iodine/Iodide, Phosphadtyl 
Choline, Lipase, I-Thyroid, L-Arginine
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Electrolyte Formula, Anti-Cholesterol Formula, 87 Sea Minerals
<label>Homeopathic Remedies:</label>  # 12, # 13, # 15, # 805, # 819
<label>Botanical Healing Tea Formulations:</label>
High Phenol Green Tea, Liver Detox Formula
<label>Naturopathic Food Medicine Formulations:</label>
Coconut Cream Isolated Protein Powder, Super Food Drink, Super Oil, Amino Acid 	Creamed Avocado, Thyroid Broth
<label>Vitamin and Nutraceutical Supplements:</label>
Thyroid Broth, Co-Enzyme Q-10 with Omega 3 Essential Fatty Acids, Ultra E Complex, 	Salmon Oil, Lipotropic Factor, Adrenal Hormone Restoration, Vitamin D-3, Milk 	Thistle, L-Taurine, Cholesterol/Liver Protector, Oil of Evening Primrose, L-Arginine, 
L-Carnitine
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Pear, beet, spinach, celery
<label>Support:</label>
Liver, gall bladder, thyroid, endocrine system, digestion, colon.  (Homeopathic Remedies; 
# 8, # 10, # 40, # 819, # 820)
</div>
<div id="I_CHOLESTROL" runat="server" visible="false">
<label>Cholesterol stand alone indicators generally associated with:</label>
Essential component for brain repair, hormone production, cellular function, antibodies and enzyme production, liver 
efficiency, pancreatic function, coronary heart disease, hyperlipidemia, and hormone monitor.
</div>
<div id="H_CHOLESTROL" runat="server" visible="false">
<label>Generally associated with High Cholesterol:</label>
Inflammation, hypothyroidism, lack of fitness, excess sugar, junk foods, hydrogenated fats, Omega 6 essential fatty acid deficiency, cellular oxygen deficiency, liver sluggishness, colon toxicity, coronary artery disease, storing fat, nutrition deficiency syndrome, hypothyroid, liver inflammation, bile flow obstruction of the gall bladder, pancreatic inflammation, excess carbohydrates, alcohol, sugar, drugs, trans fats, faulty diet, build of  up of congested rancid fats in blood, multiple nutritional deficiencies, poor fat utilization, deficiencies in choline, inositol, 
L-Methinine, Vitamin E, EPA/DHA, folic acid, and alpha lipoic acid, diabetes
<label>Corresponding need for nutritional support for High Cholersterol:</label>
Fat to Energy, Fat Emulsifier, Cholesterol/Triglycerides, Immune Power Formula, Nature’s Flush, Magnesium, Morning Health Drink, Yogurt Drink, Bedtime Bowel Tonic
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Anti-Cholesterol Formula, Iodine, Metabolic Fat Burner, Germanium, Liver Formula, 	Liquid Sulfur
<label>Homeopathic Remedies Number:</label>  # 10, # 11, # 12
<label>Botanical Healing Tea Formulations:</label>
Fat Burner, Liver Detox, Decongestion Formula
<label>Naturopathic Food Medicine Formulations:</label>
Super Oil, Green Drink, Amino Acid Creamed Beets, Liver Detoxification, Cellular 	Detoxification
<label>Vitamin and Nutraceutical Supplements:</label>
Cholesterol/Triglyceride Formula, Lipotropic Factors, Lignan, L-Carnitine, L-Arginine, 	Capillary Integrity, Cardio Vita, Circulation Formula, Co-Enzyme Q-10 with Omega 3 	Essential Fatty Acids, Wheat Germ Oil, Multizyme
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Foot Detox Bath, I.V. Chelation Therapy
<label>Vegetable Juice Concentrates:</label>
Pear, beet, spinach, celery
<label>Support:</label>
Liver, gall bladder, thyroid, endocrine system, digestion, colon.  (Homeopathic Remedies; 
# 8, # 10, # 40, # 819, # 820)
</div>
<div id="N_CHOLESTROL" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--TRIGLYCERIDE--%>
<tr><td colspan="4"><h2>TRIGLYCERIDE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealTRIGLYCERIDE" runat="server" Text="90"></asp:Literal></td>
<td class="brd">70 - 120</td>
<td class="brd">60 - 130</td>
<td class="brd" id="Td1TRIGLYCERIDE" runat="server"><asp:Literal ID="LtrTRIGLYCERIDE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1TRIGLYCERIDE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_TRIGLYCERIDE" runat="server" visible="false">
<label>Generally associated with Low Triglyceride:</label>
Deficiency in Omega 3/6 essential fatty acids, hypoglycemia, protein deficiency and mal-absorption, body not 
repairing, human growth hormone deficiency, exhaustion, adrenal fatigue, anxiety, suppressed immune system, stress 
overwhelm, slow healing/recuperation, enervation disease, emotional over sensitivity, reduced hormone production, overuse 
of drugs, alcohol, faulty diet, multiple mineral and nutritional deficiency, hormonal hypo secretion, emotional stress, nerves 
overwhelmed, skipping meals, deficiencies in Niacin, Vitamin C, Panothenic acid, L-Arginine, glandular support need for 
hypothalamus, pituitary and pancreas
<label>Corresponding need for nutritional support for Low Triglyceride:</label>
Mega B Complex 1000, Stress & Toxin Protector, Super Oil, Magnesium Broth, Immune Power Formula, Co-Enzyme Q-10 with Omega 
3 Essential Fatty Acids, Endurall, Adrenal Hormone Restoration, Fat emulsifier, Chromium Picolonate, Iodine/Iodide, Potassium
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liver Support, Metabolic Balancer, Germanium, Cobalt, Iodine, Vanadium, Chromium
<label>Homeopathic Remedies Number:</label>  # 18, # 19, # 29, # 32, # 819
<label>Botanical Healing Tea Formulations:</label>
Hypoglycemia Formula, Liver Detox Formula
<label>Naturopathic Food Medicine Formulations:</label>
Cellular Detoxifier, Blood Sugar and Energy Stabilizer, 28 Amino Acid Creamed One 	Dozen Green Vegetable Juices, Beet 
Juice, Super Oil, Nitrate Oxide Precursor Tonic
<label>Vitamin and Nutraceutical Supplements:</label>
Wheat Germ Oil, L-Arginine Complex, Acetyl L-Carnitine, Coconut Oil
<label>Clinical Treatments Indicated:</label>
Ionic Foot Detox Bath, Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Celery, beet, sweet potato, spinach, lemon
<label>Support:</label>
Liver, pancreas, nerves, digestion, adrenals, thyroid.  (Homeopathic Remedies: # 8, # 10, # 17,
# 50, # 806, # 818, # 829)
</div>
<div id="I_TRIGLYCERIDE" runat="server" visible="false">
<label>Triglyceride stand alone indicators generally associated with:</label>
Blood fat, liver function gauge, pancreatic gauge, faulty diet gauge, blood sugar gauge, pancreatic mal-absorption, depressed 
nerve function, stress, carbohydrate tolerance, insulin sensitivity, exogenous estrogen, early marker of 
obesity, immune, autoimmune and hyper sensitivity, coronary heart disease, fat metabolism, obesity 
contributor, hypoglycemia/diabetes and hormone monitor
</div>
<div id="H_TRIGLYCERIDE" runat="server" visible="false">
<label>Generally associated with High Triglyceride:</label>
Excess junk food, sugar, alcohol, carbohydrates, hydrogenated fats, hypothyroid, obesity, liver/gall bladder 
sluggishness, bowel toxicity, amino acid deficiency, protein mal-absorption, cellular oxygen deficiency, lack of 
fitness, coronary heart disease risk, insulin resistance, carbohydrate intolerance, over eating, human growth 
hormone deficiency, diabetes, overuse of drugs, depressed nerve function, stressed nervous system, pancreatic 
dysfunction, metabolic acidosis, bile duct obstruction, acid indigestion, Omega 3 and 6 essential fatty acid 
deficiency,  protruding abdomen, body fat weight gain, fats stored in tissue to overcompensate to alleviate stress, pain 
long term, shock, injury by emotional trauma, heavy metal toxicity, autointoxication, allergies, stress
<label>Corresponding need for nutritional support for High Triglyceride:</label>
Cholesterol/Triglycerides, Blue/Green Algae, 28 Super Amino Acids, Super Oil, Lipotropic Factors, Fat Emulsifier, Stress & 
Tonic Protector, Nerve Broth, Phosphadtyl Choline, Liver/Gall Bladder Flush, Blood Sugar Formula
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Pancreas Support, Anti-Cholesterol Formula, Metabolic Fat Burner
<label>Homeopathic Remedies Number:</label>  # 9, # 11, # 43
<label>Botanical Healing Tea Formulations:</label>
Fat Burner, Liver Detox Formula
<label>Naturopathic Food Medicine Formulations:</label>
Spinach Juice with Goat’s Whey, 28 Amino Acid Creamed Beets, Garden V
<label>Vitamin and Nutraceutical Supplements:</label>
Cholesterol/Triglycerides Formula, Nature’s Flush, Liptropic Factors, Fat to Energy, Liver Purifier, Alpha Lipoic Acid
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, I.V. Alpha Lipoic Acid, Ionic Foot Detox Bath
<label>Vegetable Juice Concentrates:</label>
Celery, beet, sweet potato, spinach, lemon
<label>Support:</label>
Liver, pancreas, nerves, digestion, adrenals, thyroid.  (Homeopathic Remedies: # 8, # 10, # 17,
# 50, # 806, # 818, # 829)
</div>
<div id="N_TRIGLYCERIDE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--GLUCOSE--%>
<tr><td colspan="4"><h2>GLUCOSE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealGLUCOSE" runat="server" Text="90"></asp:Literal></td>
<td class="brd">81.9 - 98.1</td>
<td class="brd">75 - 105</td>
<td class="brd" id="Td1GLUCOSE" runat="server"><asp:Literal ID="LtrGLUCOSE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1GLUCOSE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_GLUCOSE" runat="server" visible="false">
<label>Generally associated with Low Glucose:</label>
General weakness, hypoglycemia, out of fuel, hypothyroid, sluggish liver, adrenal exhaustion, human growth hormone 
deficiency, nerve burn out, mal-absorption, stresse overwhelm, depression, irritation, personality change, male/female 
hormonal deficiency, over sensitive, mood swings, anger, endocrine deficiency, hypo-pituitary, enzyme deficiency, insulin 
overdose, carbohydrate over load, skipping meals, faulty life style, anxiety, nervousness, excess sugar, coffee, alcohol 
and medications, Mega B Complex deficiency, panathenic acid deficiency, protein shortage, impaired digestion.
<label>Corresponding need for nutritional support for Low Glucose:</label>
Pituitary Support, Amino Acids, Super Food, Stress & Toxin Protector, L-Carnitine.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Blood sugar Control Formula, Vanadium, Acidosis Correction Formula.
<label>Homeopathic Remedies Number:</label>  # 29,  # 32,  # 808, # 829
<label>Botanical healing Tea Formulations:</label>
Hypoglycemia formula, Energy Tea, Amino Acid Creamed Shiitake, Amino Acid 	Creamed Zucchini, Amino Acid Creamed Peas, Blood 
Sugar and Energy Stabilizer.
<label>Naturopathic food medicine Formulations:</label>
Super Food Drink, Green Drink, Bedtime Bowel Tonic, Super Oil, Blood Sugar and 	Energy Stabilizing Powder, 87 Sea Minerals.
<label>Vitamin and Nutraceutical Supplements:</label>
Mega B Complex, Licorice Root, Blueberry, Royal Queen Bee Jelly, Adrenal Hormone 	Restoration Factors, Duo C Complex, Red Blood 
Cell Builder, RNA/DNA, Endurall, 	Pancratin Complexs, Ultra E, Resveratrol, L-Arginine, Macho Herba/Fema 
Herba, Blood 	Sugar and Cortisol Control.
<label>Clinical Treatments Indicated:</label>  I.V. Super Nutritional, Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Apple, spinach, avocado, zucchini.
<label>Support:</label>Pancreas, liver, colon, pituitary, adrenal, thyroid, (Homeopathic Remedies, # 10, # 29,  # 32, 
# 43, # 818)
</div>
<div id="I_GLUCOSE" runat="server" visible="false">
<label>Glucose stand alone indicators generally associated with:</label>
Pancreatic function, cellular fuel required for physical and mental activity, blood sugar balance, liver 
efficiency, fuel gauge of every cell of the brain and body, insulin/glucagon hormone balance, even flow of cellular 
energy, efficient bio-energy flow to every bodily system.
</div>
<div id="H_GLUCOSE" runat="server" visible="false">
<label>Generally associated with High Glucose:</label>
Diabetes, Metabolic Syndrome, kidney toxicity, lung toxicity, heart dysfunction, insulin resistance, thyroid 
dysfunction, enzyme deficiency, free radical pathology, pregnancy, over use of medications, alcohol, sugar and 
devitalized foods, mal-nutrition, overeating, multiple nutritional deficiencies, acute physical and/or emotional 
stress, thiamine deficiency, pancreatic insufficiency, liver disorder, pyridoxine deficiency, glucose flooding, low 
ignition, lack of exercise, decreased ability to utilize minerals, increased oxidation and breakdown of healthy 
tissue, loss of muscle, increase in fat.
<label>Corresponding need for nutritional support for High Glucose:</label>
Spirolina, Ginseng, Thiamine.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Diabetic Prevention Formula, chromium, Germanium, Vanadium.
<label>Homeopathic Remedies Number:</label>  # 43, # 17/18,  # 12,  # 14,  # 20
<label>Botanical Healing Tea Formulations:</label>
Pancreas Formula, Liver Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Blood Sugar and Energy Stabilizer, Garden V, Amino Acid Creamed Zucchini, Super 	Food, Super Oil, Green Drink, Bedtime 
Bowel Tonic, Yogurt Health Drink.
<label>Vitamin and Nutraceutical Supplements:</label>
Golden Seal Root, Mega B Complex 1000, RNA/DNA, Alpha Lipoic Acid, Endurall, 	Chromium Picolonate, Macho Herba/Fema 
Herba, Bearberry, Oregon Grape, L-Arginine, 	N-Acetyl Cysteine, Co-Enzyme Q 10 with Omega 3, Phosphadtyl Choline, Lipotropic 	Factor, Berberine, Blood Sugar and Cortisol Control Factor, Duo C Complex, Organic 	Chlorella, Blueberry, Adrenal Restoration, Fat to Energy.  
<label>Clinical Treatments Indicated:</label>  I.V. Alpha Lipoic Acid Drip, Colon Hydrotherapy, Exercise
Induced Oxygen Saturation Therapy                                                                                                 
<label>Vegetable Juice Concentrates:</label>
Apple, spinach, avocado, zucchini.
<label>Support:</label>Pancreas, liver, colon, pituitary, adrenal, thyroid, (Homeopathic Remedies, # 10, # 29,  # 32, 
# 43, # 818)
</div>
<div id="N_GLUCOSE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--SODIUM--%>
<tr><td colspan="4"><h2>SODIUM</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealSODIUM" runat="server" Text="140"></asp:Literal></td>
<td class="brd">138 - 142</td>
<td class="brd">136 - 144</td>
<td class="brd" id="Td1SODIUM" runat="server"><asp:Literal ID="LtrSODIUM" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1SODIUM" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_SODIUM" runat="server" visible="false">
<label>Generally associated with Low Sodium:</label>
Nerve/adrenal exhaustion, stress, diabetes, hypothyroidism, drugs, diarrhea, mineral deficiency, loss of concentration, mood swings, chronic fatigue, mal-absorption, low immune system, electrolyte, metabolic acidosis, ice cold drink consumptions, diuretic use, dehydration.
<label>Corresponding need for nutritional support for Low Sodium:</label>
Duo C Absorption Enhancer, Immune Power Formula, Stress and Toxin Protector, Liver Detox Formula, Adrenal Restoration, Jug One protocol, Electrolyte Minerals, 57 Super Minerals, Sea Vegetable Extract, Irish Moss/Kelp, Super Salt.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Electrolyte Formula, Adrenal Formula, Bio-Ox, Sodium Ascorbic, Jug One Protocol
<label>Homeopathic Remedies Number:</label>  # 827, # 18, # 20
<label>Botanical Healing Tea Formulations:</label>
Adrenal Tea, Nerve Rejuvenator
<label>Naturopathic Food Medicine Formulations:  </label>
VF-50
<label>Vitamin and Nutraceutical Supplements:</label>
I-Thyroid, Adrenal hormone Restoration Factor, Mega B Complex, Resveratrol, Nervine
<label>Clinical Treatments Indicated:</label>
I.V. Mineral Drip, Super Bath
<label>Vegetable Juice Concentrates:</label>
Celery, apple, parsley, squash, cauliflower, plum
<label>Support:</label>
Adrenals, thyroid, pituitary, nerves, kidneys.  (Homeopathic Remedies; # 17, # 823, # 829)
</div>
<div id="I_SODIUM" runat="server" visible="false">
<label>Sodium stand alone indicators generally associated with:</label>
Hydration and electrolyte monitor, outer cell efficiency, carries nutrients to and toxins out of cells, maintains proper osmotic pressure balance, acid/alkaline blood balance, efficient nerve impulse transmission, acid base balance, nerve impulse transition, adrenal, kidney, colon health, heart function. 
</div>
<div id="H_SODIUM" runat="server" visible="false">
<label>Generally associated with High Sodium:</label>
Toxic fluid retention, weight gain, high blood pressure, dehydration, diabetes, insipidus, mineral deficiency, malnutrition, junk foods, overeating toxicity, kidney disorder, fad dieting, magnesium deficiency, electrolyte imbalance, adrenal depletion, nerve burn out, stress overwhelm, excess salt intake, poor quality of salt, mal-absorption, hypothyroidism, renal dysfunction, dizziness, nervousness, body’s electric system out of balance.  Support required for kidneys, adrenals, posterior pituitary.
<label>Corresponding need for nutritional support for High Sodium:</label>
Magnesium, Amino Acids, Potassium, Nerve Builder, Chinese Garlic, Naturopathic Purification Powder, Adrenal Hormone restoration, Super Oil, Stress & Toxin Protector.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Electrolyte Formula, 87 Sea Minerals, Liquid Potassium.
<label>Homeopathic Remedies Number:</label>  # 16, # 21
<label>Botanical Healing Tea Formulations:</label>
Adrenal Formula, High Pineal Green Tea, Nerve Rejuvenation Formula, Stress and 	Tension Formula
<label>Naturopathic Food Medicine Formulations:</label>
Sea Cal, VF-50, Green Drink, Potassium Broth, Irish Moss/Kelp
<label>Vitamin and Nutraceutical Supplements:</label>
Nerve Builder, Stress & Toxic Protector, Mega B Complex, I-Thyroid, 57 Super 	Minerals, Adrenal Hormone Restoration Factor, Valerian Root, Hypericum, Royal Queen 	Bee Jelly, Pineal Hormone Restoration Factor
<label>Clinical Treatments Indicated:</label>
Super Bath
<label>Vegetable Juice Concentrates:</label>
Celery, apple, parsley, squash, cauliflower, plum
<label>Support:</label>
Adrenals, thyroid, pituitary, nerves, kidneys.  (Homeopathic Remedies; # 17, # 823, # 829)
</div>
<div id="N_SODIUM" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--POTASSIUM--%>
<tr><td colspan="4"><h2>POTASSIUM</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealPOTASSIUM" runat="server" Text="4.4"></asp:Literal></td>
<td class="brd">4.0 - 4.8</td>
<td class="brd">3.5 - 5.3</td>
<td class="brd" id="Td1POTASSIUM" runat="server"><asp:Literal ID="LtrPOTASSIUM" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1POTASSIUM" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_POTASSIUM" runat="server" visible="false">
<label>Generally associated with Low Potassium:</label>
Electrolyte deficiency, dehydration, heart beat irregularities, toxic fluid not eliminating, weight gain, gastric problems, bloating, weight gain, stress, swollen ankles and fingers, diuretic use, blood pressure pill overdose, antibiotic use, mal-absorption, skipping meals, exaggerated PMS and/or menopause symptoms, partial paralysis of hands or legs, cramps, lethargy, muscle loss intestinal inflammation, diabetes, diarrhea, nervousness, anxiety, hyper-motion, adrenals exhausted, overstimulation of adrenals as a result of drugs, sugar, alcohol, under-performing pineal gland, cardiac toxicity causing edema, heart trying to compensate for lack of cell pressure.  
Deficiencies in Ionic Potassium, RNA/DNA, L-Aginine, L-Carnitine, Vitamin C, Pyridoxine,
Ionic Zinc.  
<label>Corresponding need for nutritional support for Low Potassium:</label>
Blood Builder, Phosphadtyl Choline, Alfalfa Juice, Black Strap, Irish Moss/Kelp
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Electrolyte Formula, Sea Minerals, Potassium, Metabolic Fat Burner, Cardio Vascular 	Formula, Chelation Formula.
<label>Homeopathic Remedies Number:</label>  # 12, # 14
<label>Botanical Healing Tea Formulations:</label>
Cardio Vascular Formula, Circulation Formula, Blood Pressure Formula
<label>Naturopathic Food Medicine Formulations:</label>
Potassium Broth, Green Drink, VF-50, Nerve Rejuvenation
<label>Vitamin and Nutraceutical Supplements:</label>
Cardio Vascular Formula, Hypericum, Pineal Hormone Restoration, Adrenal Hormone Restoration, Mega B Complex 1000, Wheat Germ Oil, Nanokanias
<label>Clinical Treatments Indicated:</label>
Super Bath
<label>Vegetable Juice Concentrates:</label>
Celery, parsley, spinach, kale, zucchini, squash, plum
<label>Support:</label>
Adrenals.  (Homeopathic Remedy:  # 829)
</div>
<div id="I_POTASSIUM" runat="server" visible="false">
<label>Potassium stand alone indicators generally associated with:</label>
Inner cell efficiency, chief electrolyte of intracellular fluid, acid/alkaline PH balance, conductor of electric impulses and nerve fibers, including heart construction, nerve construction and muscle function, electrolyte and cardiac monitor
</div>
<div id="H_POTASSIUM" runat="server" visible="false">
<label>Generally associated with High Potassium:</label>
Uncontrollable diabetes, metabolic acidosis, low insulin, cell damage, adrenal exhaustion, kidney dysfunction, tissue dysfunction, heart muscle laboring, increased risk of cardiac toxicity, heart beginning to become saturated with poisonous waste setting up condition as arterial sclerosis, toxemia, digestive disorders, adrenal exhaustion, blood pressure problems, dehydration, metabolic acidosis, sluggish adrenal glands.  Deficiencies in Omega 3/6 Essential Fatty Acids, Vitamin A and B-1, Pantothenic Acid.
<label>Corresponding need for nutritional support for High Potassium:</label>
Magnesium, Super Juice 22 Vegetables, Super Oil, Maxi Cleanse, Fiber Max, 28 Super Amino Acids, Super Green, Blue/Green algae, Pineal Restoration, Hawthorn Berry, L-Carnitine, Wheat Germ Oil, Cats Claw, Oral Chelation.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Adrenal Formula, Electrolyte Formula, Power Cell, Super C Active, Acidosis Correction 	Formula, Metabolic Balancer.
<label>Homeopathic Remedies Number:</label>  # 2, # 3
<label>Botanical Healing Tea Formulations:</label>
Adrenal Formula, Energy Formula, High Phenol Green Tea, Blood Sugar Formula,
<label>Naturopathic Food Medicine Formulations:</label>
Super Green Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Royal Queen Bee Jelly, Vitamin E Complex, Cardio Vita, Wheat Germ Oil, L-Carnitine, 	L-Arginine, Hawthorn Berry, Chinese Garlic, Chlorophyll, Cal/Mag Citrate, 57 Super 	Minerals, Vitamin F
<label>Clinical Treatments Indicated:</label>
Brain Washing Therapy, Ionic Foot Detox Baths, Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Celery, parsley, spinach, kale, zucchini, squash, plum
<label>Support:</label>
Adrenals.  (Homeopathic Remedy:  # 829)
</div>
<div id="N_POTASSIUM" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CHLORIDE--%>
<tr><td colspan="4"><h2>CHLORIDE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCHLORIDE" runat="server" Text="104"></asp:Literal></td>
<td class="brd">101 - 107</td>
<td class="brd">98 - 110</td>
<td class="brd" id="Td1CHLORIDE" runat="server"><asp:Literal ID="LtrCHLORIDE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CHLORIDE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CHLORIDE" runat="server" visible="false">
<label>Generally associated with Low Chloride:</label>
Adrenal exhaustion, colon impaction, metabolic acidosis, diabetic syndrome, hypochlorhydria, metabolic alkalosis or acidosis, cellular oxygen deficiency, excess sweating, diarrhea and vomiting, diabetic acidosis, overuse of drugs, diuretic use, respiratory acidosis and alkalosis, hyperventilation, tap water, chlorine trapped in cells, colon block, electrolyte depletion, respiratory problems, kidney dysfunction, multiple mineral deficiencies, vitamin B 1 deficiency, renal dysfunction.
<label>Corresponding need for nutritional support for Low Chloride:</label>
Bowel Tonic, Green Drink, Mega B Complex 1000, Jug One Protocol, Adrenal Restoration.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Enzymes, Metabolic Acidosis, Electrolyte Formula, 87 Sea Minerals
<label>Homeopathic Remedies Number:</label>  # 17/18, # 21
<label>Botanical Healing Tea Formulations:</label>
Adrenal Formula, Blood Sugar
<label>Naturopathic Food Medicine Formulations:</label>
Stomach rebuilding Powder, Stomach Restoration, Lycopene Broth, Amino Acid One 	Dozen Creamed Vegetables
<label>Vitamin and Nutraceutical Supplements:</label>
Absorption Enhancer, Alkaline Balancer, Multazyme, Noni Juice Extract, L-Tyrosine, Stomach and Health, Royal Queen Bee Jelly, Chinese Healing Tonic
<label>Clinical Treatments Indicated:</label>
Hyperbaric Oxygen Therapy, Ozone Therapy, Ozone Infused Far Infrared Detoxification 	Therapy
<label>Vegetable Juice Concentrates:</label>
Parsley, watercress, squash, celery
<label>Support:</label>
Kidneys, colon, lungs.  (Homeopathic Remedies: # 40, # 46, # 57, # 823, # 826)
</div>
<div id="I_CHLORIDE" runat="server" visible="false">
<label>Chloride stand alone indicators generally associated with:</label>
Gastric enzyme production, maintaining a state of electrical neutrality, cellular integrity, evaluates electrolyte and hydration status, metabolic acid/alkaline monitor.
</div>
<div id="H_CHLORIDE" runat="server" visible="false">
<label>Generally associated with High Chloride:</label>
Dehydration, tap water, medications, nervous exhaustion, toxins overwhelming kidney’s, diabetic insipitus, exhausted adrenals, under active pituitary, excess salt intake, under-performing thyroid, trauma, accident, chronic illness, hidden illnesses of long duration, colon, bladder, kidneys, and adrenal mal-function, head injury, aspirin use, adrenal hyper-function.
<label>Corresponding need for nutritional support for High Chloride:</label>
Magnesium Broth, Royal Queen Bee Jelly, Adrenal Restoration, L-Tryptophan, Pineal Restoration, Green Tea Extract, Super Oil, Green Drink, Duo C Complex, Jug One Protocol, Jug Two Protocol
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
87 Sea Minerals
<label>Homeopathic Remedies Number:</label> # 14, # 15
<label>Botanical Healing Tea Formulations:</label>
<label>Naturopathic Food Medicine Formulations:</label>
Super Oil, Royal Pollen Complex, Super Food Drink, Amino Acid Creamed Green 	Vegetable Juices
<label>Vitamin and Nutraceutical Supplements:</label>
Adrenal Hormone Restoration Factors, Pineal Hormone Restoration Factors, Stress and 	Tonic Protector, nerve Builder, Sergeant Strong, Super Juice 22 Vegetables, Alfalfa Juice
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Parsley, watercress, squash, celery
<label>Support:</label>
Kidneys, colon, lungs.  (Homeopathic Remedies: # 40, # 46, # 57, # 823, # 826)
</div>
<div id="N_CHLORIDE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CARBON_DIOXIDE--%>
<tr><td colspan="4"><h2>CARBON DIOXIDE (CO2)</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCARBON_DIOXIDE" runat="server" Text="26"></asp:Literal></td>
<td class="brd">24 - 28</td>
<td class="brd">22 - 30</td>
<td class="brd" id="Td1CARBON_DIOXIDE" runat="server"><asp:Literal ID="LtrCARBON_DIOXIDE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CARBON_DIOXIDE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CARBON_DIOXIDE" runat="server" visible="false">
<label>Generally associated with Low Carbon Dioxide/Bicarbonate:</label>
Junk foods, malnutrition, metabolic acidosis, toxicity, kidney toxin over-run, anxiety, over training, cell breaking down, adrenal fatigue, cellular oxygen deficiencies, heart weakness, kidney weakness, nerve burnout, loss of lung capacity to inhale and exhale, diabetes, starvation, faulty diet, lacking in green vegetables, chlorophyll and beta carotene
<label>Corresponding need for nutritional support for Low Carbon Dioxide/Bicarbonate:</label>
Super Drink, Adrenal Restoration, Stress & Toxin Protector, L-Carnitine, Nerve Builder, 
L-Arginine.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Electrolyte Formula, 87 Sea Minerals
<label>Homeopathic Remedies Number:</label>  # 3 # 7, # 826
<label>Botanical Healing Tea Formulations:</label>
High Phenol Green Tea
<label>Naturopathic Food Medicine Formulations:</label>
Blood Purification, Amino Acid One Dozen Green Vegetables, Super Green Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Chlorophyll, Beta Carotene, 
<label>Clinical Treatments Indicated:</label>
Ionic Foot Detox Bath, Super Bath, Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Celery, parsley, kale, figs, tomatoes, squash, lemon
<label>Support:</label>
Nerves, adrenals, heart, kidneys, lungs, muscles.  (Homeopathic Remedies:  # 17, # 59, # 66, 
# 823, # 826)
</div>
<div id="I_CARBON_DIOXIDE" runat="server" visible="false">
<label>Carbon Dioxide/Bicarbonate stand alone indicators generally associated with:</label>
Blood acid/alkaline PH balancer, lung capacity, metabolic electrolyte monitor
</div>
<div id="H_CARBON_DIOXIDE" runat="server" visible="false">
<label>Generally associated with High Carbon Dioxide/Bicarbonate:</label>
Mal-absorption syndrome, hypochlorhydria, toxicity, lack of fitness, respiratory problems, and/or serious oxygen deficiency, respiratory acidosis, pulmonary problems, mental confusion, irregular breathing, lung congestion, metabolic alkalosis, vomiting, diarrhea, excess body fat weight, mercury toxicity, deficiencies in Vitamins A, E, D,  green vegetables, chlorophyll, Omega 6 essential fatty acids, ionic magnesium, sulfur, L-Lysine, L-Methinine, L-Arginine.
<label>Corresponding need for nutritional support for High Carbon Dioxide/Bicarbonate:</label>
Morning Health Drink, Jug One Protocol, L-Arginine Complex
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Electrolyte Formula, 87 Sea Minerals
<label>Homeopathic Remedies Number:</label> # 5, # 7
<label>Botanical Healing Tea Formulations:</label>
High Phenol Green Tea, Blood Purification Formula
<label>Naturopathic Food Medicine Formulations:</label>
Green Drink, Amino Acid One Dozen Creamed Green Vegetable Juices
<label>Vitamin and Nutraceutical Supplements:</label>
Absorption Enhancer, Bromeline, Multizyme, Ultra E Complex, Norwegian Vitamin A, 	Beta Carotene, Super Juice 22 Vegetables, Green Drink, Alfalfa Juice
<label>Clinical Treatments Indicated:</label>
Ionic Foot Detox Bath
<label>Vegetable Juice Concentrates:</label>
Celery, parsley, kale, figs, tomatoes, squash, lemon
<label>Support:</label>
Nerves, adrenals, heart, kidneys, lungs, muscles.  (Homeopathic Remedies:  # 17, # 59, # 66, 
# 823, # 826)
</div>
<div id="N_CARBON_DIOXIDE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--BUN--%>
<tr><td colspan="4"><h2>BUN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealBUN" runat="server" Text="12"></asp:Literal></td>
<td class="brd">10.5 - 16.5</td>
<td class="brd">7 - 25</td>
<td class="brd" id="Td1BUN" runat="server"><asp:Literal ID="LtrBUN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1BUN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_BUN" runat="server" visible="false">
<label>Generally associated with Low Bun:</label>
Malnutrition, multiple nutritional deficiencies, celiac disease, drug residue, immune defense deficiency, adrenal depletion, impaired absorption, liver sluggishness, colon toxicity, thyroid under performance, posterior pituitary under performance, human growth hormone deficiency, iodine deficiency, hypochlorhydria, enzyme deficiency, not enough raw vegetables, protein and/or amino acid deficiency, deficiencies in Vitamin E, A, fiber, L-Cysteine, Omega 3and 6  Essential Fatty Acids.
<label>Corresponding need for nutritional support for Low Bun:</label>
Immune Power Formula, L-Cystine, Absorption Enhancer, Duo C Complex, L-Carnitine, Magnesium, Cranberry Complex, Fiber Max, Maxi Cleanse, Jug One Protocol, Jug Two Protocol, Bedtime Bowel Tonic.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liver Support Formula, Bladder/Kidney, Formula, Toxicity Correction Formula, Iodine, 
Sulfur.
<label>Homeopathic Remedies Number:</label>  # 5,  # 17/18,  # 823
<label>Botanical Healing Tea Formulations:</label>
Kidney Flush Formula, Liver Detox Formula, High Phenol Green Tea, Stomach and 	Digestive Formula’s.
<label>Naturopathic Food Medicine Formulations:</label>
Spinach Juice with Goat’s Whey, liver Detoxification, Kidney Cleanser, Amino Acid 	Creamed Beets.
<label>Vitamin and Nutraceutical Supplements:</label>
Absorption Enhancer, Milk Thistle, Dandelion Root, I-Thyroid, Super Juice 22 	Vegetables, Liver Detox, Cranberry Complex, Bearberry, Cats Claws, Corn Silk, 	Blueberry. 
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Ozone Infused Far Infrared Detoxification Sauna, Ionic Foot Detox
Bath
<label>Vegetable Juice Concentrates:</label>
Parsley, celery, beet, spinach, fig, cranberry
<label>Support:</label>
Digestion, colon, liver, kidneys, stomach, nerves. (Homeopathic Remedies:  #8, #60, # 823)
</div>
<div id="I_BUN" runat="server" visible="false">
<label>Bun stand alone indicators generally associated with:</label>
Liver function, colon toxicity, protein metabolism, kidney filtration gauge, colon efficiency, nitrogen waste disposal and nitrogen waste disposal and liver efficiency gauge, excess cellular breakdown, excess stress, shock, dehydration.
</div>
<div id="H_BUN" runat="server" visible="false">
<label>Generally associated with High Bun:</label>
G.I. tract inflammation, autointoxication, liver dysfunction, prostate hyperthyroid, kidney stones, urinary tract obstruction, muscle loss, stress, dehydration, colon toxicity, protein mal-absorption, overeating, toxins building up faster than the kidney clearance, cellular oxygen deficiency, bio-organic sodium deficiency, hypochlorhydria, excess medications and antibiotics, nutritionally depleted foods, infection, liver overwhelmed with toxins form all bodily glands and organs, dehydration, diabetes, deficiencies in organic sulfur, L-Methonine, L-Lysine, L-Cystine
<label>Corresponding need for nutritional support for High Bun:</label>
Fiber Max, Maxi Cleanse, Jug One Protocol, Jug Two Protocol.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Enzymes, Bio-Ox, Aloe Vera Formula, Sulfur, Germanium, Toxicity Correction.
<label>Homeopathic Remedies Number:</label> # 2, # 4, # 10
<label>Botanical Healing Tea Formulations:</label>
Kidney Flush Formula, Detox Formula, Liver Detox Formula.
<label>Naturopathic Food Medicine Formulations:</label>
Morning Health Drink, Yogurt Health Drink, Super Drink, Green Drink, Bedtime Bowel 	Tonic, Amino Acid Creamed Asparagus, Amino Acid Creamed Beets, Kidney Cleanser.
<label>Vitamin and Nutraceutical Supplements:</label>
Chlorophyll Concentrate, G.I. Tract Stimulator, Multi Zinc, Absorption Enhancer, Corn 	Silk.
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Hyperbaric Oxygen Therapy, Supervised Naturopathic 	Detoxification
<label>Vegetable Juice Concentrates:</label>
Parsley, celery, beet, spinach, fig, cranberry
<label>Support:</label>
Digestion, colon, liver, kidneys, stomach, nerves. (Homeopathic Remedies:  #8, #60, # 823)
</div>
<div id="N_BUN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CREATININE--%>
<tr><td colspan="4"><h2>CREATININE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCREATININE" runat="server" Text="1"></asp:Literal></td>
<td class="brd">0.9 - 1.1</td>
<td class="brd">0.7 - 1.2</td>
<td class="brd" id="Td1CREATININE" runat="server"><asp:Literal ID="LtrCREATININE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CREATININE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CREATININE" runat="server" visible="false">
<label>Generally associated with Low Creatinine:</label>
Loss of muscle, liver sluggishness, mal-nutrition, dehydration, excess stress, low energy levels, lack of vigorous exercise, body fat gain, kidney and urinary tract problems, amino acid, protein and enzyme deficiency, N-Acetyl Cysteine deficiency, lung problems, heart congestion.
<label>Corresponding need for nutritional support for Low Creatinine:</label>
L-Arginine, L-Carnitine, Creatin, Super Green, Duo C Complex, Cats Claw, Spirolina, amino Acids, Protein, Super Oil, Jug One Protocol, Green Drink, Morning Health Drink, Bedtime Bowel Tonic, Yogurt Health Drink.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Bladder/Kidney Formula
<label>Homeopathic Remedies Number:</label>  # 17, # 823, # 29, # 32
<label>Botanical Healing Tea Formulations:</label>
Kidney Flush, Energy Tea, Stress Relief Tea
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Green Powder Formula, Energy Formula
<label>Vitamin and Nutraceutical Supplements:</label>
Adrenal Hormone Restoration, Co-Enzyme Q-10, Alpha Lipoic Acid, Strength and 	Health, Endurall, Corn Silk, Cranberry Complex, Bearberry. 
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Parsley, beet, spinach, squash, asparagus, fig, cranberry.
<label>Support:</label>
Kidneys, liver, colon.  (Homeopathic Remedies:  # 10, # 40, # 819, # 823)
</div>
<div id="I_CREATININE" runat="server" visible="false">
<label>Creatinine stand alone indicators generally associated with:</label>
Kidney’s ability to efficiently filter creatinine and other toxins from the blood.  Kidney clearance of metabolic by-products.  Creatinine is the end result of energy production and the by-product in muscle breakdown and kidney function.  Muscle construction, muscle breakdown/repair, cellular degeneration/regeneration, deficiencies in paradoxin, phosphadtyl choline, omega 3 and 6 essential fatty acids, Co-Enzyme Q-10, hydrochlorhydria, muscle wasting, atrophy, toxic condition, sluggish waste matter blocking muscle tissue repair
</div>
<div id="H_CREATININE" runat="server" visible="false">
<label>Generally associated with High Creatinine:</label>
Toxicity, poor blood flow, colon toxicity, poor digestion, under-performing thyroid, inflammation, diabetes, cellular oxygen deficiency, urinary tract obstruction, autointoxication, sub-clinical dehydration, fad dieting, shock, prostate hypertrophy, uterine problems, muscle tissue breaking faster than rebuilding, creatinine is being converted inefficiently, chronic and undue fatigue, deficiencies, Vitamins E, A, B-15, L-Arginine, L-Carnitine, Amino Acids, Glandular support for pituitary gonads and adrenal is required. 
<label>Corresponding need for nutritional support for High Creatinine:</label>
Maxi Cleanse, Fiber Max, Dandelion, Super Juice 22 Vegetables, Alfalfa Juice, Super Oil, Chinese Garlic, L-Cystein, Organic Sulfur, Jug One Protocol, Jug Two Protocol.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Bio-Ox, Aloe Vera Formula, Bladder and Kidney Formula
<label>Homeopathic Remedies Number:</label> # 4, # 63
<label>Botanical Healing Tea Formulations:</label>
Kidney Flush, Bowel Tea, Energy Tea
<label>Naturopathic food medicine Formulations:</label>
Super Food Drink, Green Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Enzyme Therapy, Absorption Enhancer, Fiber Max, Maxi Cleanse, Strength and Health, 	Ultra E, Mega B Complex, Wheat Germ Oil, Adrenal Hormone Restoration.
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Rife Vibrational Therapy, Hyperbaric Oxygen Therapy
<label>Vegetable Juice Concentrates:</label>
Parsley, beet, spinach, squash, asparagus, fig, cranberry.
<label>Support:</label>
Kidneys, liver, colon.  (Homeopathic Remedies:  # 10, # 40, # 819, # 823)
</div>
<div id="N_CREATININE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--BUN_CREAT--%>
<tr><td colspan="4"><h2>BUN/CREATININE RATIO</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealBUN_CREAT" runat="server" Text="12.5"></asp:Literal></td>
<td class="brd">9.5 - 17</td>
<td class="brd">6 - 25</td>
<td class="brd" id="Td1BUN_CREAT" runat="server"><asp:Literal ID="LtrBUN_CREAT" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1BUN_CREAT" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_BUN_CREAT" runat="server" visible="false">
<label>Generally associated with Low Bun/Creatinine Ratio:</label>
Tissue swelling in the entire body, enzyme deficiency, muscle loss, protein/amino acid deficiency, kidney not filtering protein by-products, lymphatic congestion, efficiently, under-performing posterior pituitary, mal-absorption syndrome, couch potatoism, muscle atrophy, lack of exercise, body fat gain, toxic fluid retention.
<label>Corresponding need for nutritional support for Low Bun/Creatinine Ratio:</label>
Iodine/Iodide, Adrenal Hormone Restoration, Mega B Complex, 28 Super Amino Acids, 90% Protein, Spirulina, Royal Pollen Complex, Protein.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Bladder/Kidney Formula, Toxicity Correction, Magnesium, Potassium, Metabolic 	Balancer, Sulfur, Iodine
<label>Homeopathic Remedies Number:</label>  # 2, # 4, # 5, # 7, # 10, # 834
<label>Botanical healing Tea Formulations:</label>
Kidney Formula, Kidney Flush, High Phenol Detox Formula.
<label>Naturopathic Food Medicine Formulations:</label>
Spinach Juice with Goat’s Whey, Kidney Cleanse, Potassium Broth, Amino Acid 	Creamed Asparagus, Super Food Drink, Kidney Cleanse, Bio-Flavanoids, Cellular 	Detoxifier, Junglelaya.
<label>Vitamin and Nutraceutical Supplements:</label>
Selenium, Milk Thistle, Dandelion, Liver Detox, Duo C Complex, Ultra E Complex, 
N-Acetyl Cysteine, Fiber Max, Maxi Cleanse, Turmeric, Corn Silk, L-Arginine, 28 Super 	Amino Acids, Bearberry, Cats Claw, Cranberry Complex. 
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Ozone Infused Far Infrared Detoxification Sauna.
<label>Vegetable Juice Concentrates:</label>
Celery, parsley, plums, cranberry.
<label>Support:</label>
Adrenals, thyroid, pituitary, stomach, kidneys, liver, colon.  (Homeopathic remedies; # 802,
# 806 # 820)
</div>
<div id="I_BUN_CREAT" runat="server" visible="false">
<label>Bun/Creatinine stand alone indicators generally associated with:</label>
Kidney function, dialysis calculator, efficient protein utilization, hydration, toxic fluid retention
</div>
<div id="H_BUN_CREAT" runat="server" visible="false">
<label>Generally associated with High Bun/Creatinine Ratio:</label>
Dehydration, kidney dysfunction, colon toxicity, toxic fluid retention, medication excess, junk foods, bad fats, nitrogen by-products building up faster than your immune system can process them, toxicity, overloaded with morbific waste material dumping into vital organs, drug toxicity, colon impaction, kidney’s not filtering toxins efficiently, bloating, weight gain, fatigue, Nitrogen wastes by-products, ammonia and other toxins backed up in the system. 
<label>Corresponding need for nutritional support for High Bun/Creatinine Ratio:</label>
Cats Claw, Enzyme Therapy, Bromaline, Antioxidants, Maxi Cleanse, Fiber max, L-Cystein,
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Bladder/Kidney Formula
<label>Homeopathic Remedies Number:</label>  # 11, # 16, # 823
<label>Botanical Healing Tea Formulations:</label>
Water Retention Formula, Decongestive Tea, Bowel Tea
<label>Naturopathic Food Medicine Formulations:</label>
Lycopene Broth, Cellular Detoxification, Blood Purification
<label>Vitamin and Nutraceutical Supplements:</label>
Multazyme, Cassia Bark, Herbal Anti Inflammatory, Noni Juice, Liver Protector, 
Duo C 	Complex, Fiber Max, Maxi Cleanse, Intestinal Decongestive, Chinese Healing 	Tonic, 	Corn Silk
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Ozone Infused Far Infrared Detoxification Sauna
<label>Vegetable Juice Concentrates:</label>
Celery, parsley, plums, cranberry.
<label>Support:</label>
Adrenals, thyroid, pituitary, stomach, kidneys, liver, colon.  (Homeopathic remedies; # 802,
# 806 # 820)
</div>
<div id="N_BUN_CREAT" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--URIC--%>
<tr><td colspan="4"><h2>URIC ACID</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealURIC" runat="server" Text="4.4"></asp:Literal></td>
<td class="brd">3.75 - 6.05</td>
<td class="brd">2.6 - 7.2</td>
<td class="brd" id="Td1URIC" runat="server"><asp:Literal ID="LtrURIC" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1URIC" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_URIC" runat="server" visible="false">
<label>Generally associated with Low Uric Acid:</label>
Mal-absorption, digestive problems, hypochlorhydria, enzyme deficiency, use of antacids, free radical stress, deficiencies in copper, folic acid, B-6, B-12, B-complex, molybdenum, incomplete breakdown of protein, excess use of alcohol, medications, coffee, sugar steroids, environmental/chemical exposure, allergy syndrome, pancreatitis, mal-nutrition, fad dieting, stiffness, pre-arthritic condition, hypoglycemia, enzyme deficiency, hyperthyroid, poor protein digestion, protein and amino acid deficiency, toxic buildup of heavy metals including lead, cadmium, and mercury, vision challenges, under-performing thyroid
<label>Corresponding need for nutritional support for Low Uric Acid:</label>
Spirulina, Endurall, RNA/DNA, 57 Super minerals, Enzyme Therapy, Magnesium, Mega B
Complex 1000, B-12, 28 Super Amino Acids, Black Current, Seed Oil, Super Oil, I-Thyroid,
Duo C Complex, Absorption Enhancer, Free Radical Neutralizer.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid, Copper, Liquid Molybdenum, Stomach & Digestion Formula
<label>Homeopathic Remedies Number:</label>  # 6, # 10, # 820
<label>Botanical Healing Tea Formulations:</label>
Kidney Flush, Arthritis/Rheumatism Formula, Stomach & Digestion Formula, 	Cellular Detoxification, VF-50, Liver Detoxification
<label>Naturopathic Food Medicine Formulations:</label>
Morning Health Drink, Green Drink, Bedtime Bowel Tonic, Kidney Cleanse
<label>Vitamin and Nutraceutical Supplements:</label>
Absorption Enhancer, Enzyme Therapy, Osteo Joint and Cartilage, 57 super minerals, 	Stress & Free Radical Neutralizer, Pyridoxine, Red Blood Cell Builder, Alfalfa,	
Mega B Complex 1000, 28 Super Amino Acids, Crude Apple Cider Vinegar
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Ozone Infused Foot Detox Bath
<label>Vegetable Juice Concentrates:</label>
Celery, cabbage, onion, squash, plum, mushroom, fig, parsley.
<label>Support:</label>
Detoxification, lymph, digestion, bones, connective tissue, heart.  (Homeopathic Remedies;
#10, #63, #70, #817, #820, #836)
</div>
<div id="I_URIC" runat="server" visible="false">
<label>Uric Acid stand alone indicators generally associated with:</label>
Gout related symptoms, arthritis, stiffness, enzyme deficiency, protein utilization, gout, recurrent uric acid/calcium, bad acids toxicity and digestion monitor
</div>
<div id="H_URIC" runat="server" visible="false">
<label>Generally associated with High Uric Acid:</label>
Connective tissue inflammation, joint pain, gout, muscle stiffness, arthritis symptoms, kidney
overwhelm drugs, over use of alcohol, coffee, junk foods, desserts, rich foods, starches, meats, devitalized foods, leaky gut syndrome, heart disorders, mal-nutrition, dehydration, 
lymphatic congestion, toxicity, parasites, fungal infections, psoriasis, diabetes, metabolic
acidosis, L-Cystein, colon toxicity, excess cell destruction, cells breaking down faster than they are rebuilding, kidneys not eliminating efficiently, weight loss diets, lead toxicity, gout, metabolic acidosis, skipping meals, deficiencies in Vitamin B-12, molybdenum, enzymes, heavy metals toxicity, increased susceptibility toward arterial sclerosis, liver disease, psoriasis, excess amount of nitrogenous foods, deficiencies in beryllium, calcium, magnesium, strontium, pain, gout type complaints, rheumatic complaints 
<label>Corresponding need for nutritional support for High Uric Acid:</label>
Medazyme Therapy, Alfalfa Juice, Chinese Garlic, Duo C Complex, Vitamin E Complex,
Super Oil, 57 Super Minerals, L-Cystein, Maxi Cleanse, Mega B Complex 1000, Free Radical
Neutralizer, Grape Seede Extract, Fiber Max, Co-Enzyme Q-10, Alpha Lipoic Acid.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Acidosis Correction, Liquid Sulfur, Liquid Magnesium, Arthritis Formula, Heavy 	Metal 	Detox
<label>Homeopathic Remedies Number:</label> # 9 and # 16
<label>Botanical Healing Tea Formulations:</label>
Blood Cleanse, Bones, Joint Muscle Formula, Arthritis & Rheumatism Formula, Detox 	Formula
<label>Naturopathic Food Medicine Formulations:</label>
Super Oil, Super Green, Super Bowel Cleaner, Blood Purification, Magnesium Broth, 	Cellular Detoxification, Amino Acid Creamed One Dozen Green Vegetables Juice
<label>Vitamin and Nutraceutical Supplements:</label>
Absorption Enhancer, Ultra E Complex, Cardio Vita, Co-Enzyme Q-10, Fiber Max, 
Maxi Cleanse, Duo C Complex, Vitamin D-3, Cal/Mag, Enzyme Therapy, Liver 	Formula, N-Acetyl Cystein
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Alpha Lipoic Acid Drip
<label>Vegetable Juice Concentrates:</label>
Celery, cabbage, onion, squash, plum, mushroom, fig, parsley.
<label>Support:</label>
Detoxification, lymph, digestion, bones, connective tissue, heart.  (Homeopathic Remedies;
#10, #63, #70, #817, #820, #836)
</div>
<div id="N_URIC" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CALCIUM--%>
<tr><td colspan="4"><h2>CALCIUM</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCALCIUM" runat="server" Text="9.3"></asp:Literal></td>
<td class="brd">8.9 - 9.7</td>
<td class="brd">8.6 - 10.3</td>
<td class="brd" id="Td1CALCIUM" runat="server"><asp:Literal ID="LtrCALCIUM" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CALCIUM" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CALCIUM" runat="server" visible="false">
<label>Generally associated with Low Calcium:</label>
Under-performing thyroid, parathyroid and/or pituitary, kidney disorder, Vitamin D-3 and A deficiency, calcium deficiency, osteopenia, osteoporosis, mal-absorption, nervousness, connective tissue pain, metabolic acidosis, teeth problems, deficiencies in magnesium, boron, zinc, manganese, iodine, hydrochloric acid and bio-flavanoids, under-performing thyroid, slow electric transmission throughout the body affects the nervous system, hyper-irritability, heart palpitations, enzyme deficiency
<label>Corresponding need for nutritional support for Low Calcium:</label>
Vitamin D-3, Ionic Calcium, Magnesium, Boron, Iodine/Iodide, Super Oil, Pancreatin, Absorption Enhancer
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cal/Mag/Boron Tonic, Calcium, Strong Bones, Nails, Nerves and Teeth Formula, Stress and Nerve Repair Formula
<label>Homeopathic Remedies Number:</label>  # 17/18, # 22, # 23, # 37
<label>Botanical Healing Tea Formulations:</label>
Nerve Rejuvenating Formula, Arthritis/Rheumatism Formula
<label>Naturopathic Food Medicine Formulations:</label>
Sea Cal, Nerve Rejuvenator, Coconut Cream Powder, Amino Acid Creamed One Dozen 	Creamed Vegetables
<label>Vitamin and Nutraceutical Supplements:</label>
Cal/Mag, 57 Super Minerals, Nerve Builder, Silicon, Super Juice 22 Vegetables
<label>Clinical Treatments Indicated:</label>
I.V. Super Nutrition
<label>Vegetable Juice Concentrates:</label>
Beet, kale, parsley
<label>Support:</label>
Parathyroid.  (Homeopathic Remedies:  # 37, # 834)
</div>
<div id="I_CALCIUM" runat="server" visible="false">
<label>Calcium stand alone indicators generally associated with:</label>
Electrolyte balance, mineral absorption, bone integrity, parathyroid function, calcium metabolism, muscular contraction, Vitamin A not being broken down, ovarian hypofunction, adrenal insufficiency, hypothyroidism, hormonal deficiency, heavy metal toxicity, nerve transmission, blood clotting, cardiac function gauge, acid/alkaline balance, prevents acid buildup in any part of the body, acid/alkaline PH, Calcium metabolism, metabolic acidosis monitor
</div>
<div id="H_CALCIUM" runat="server" visible="false">
<label>Generally associated with High Calcium:</label>
Hyperactive parathyroid, deficiencies in selenium, potassium, Vitamin C, magnesium, boron, Vitamin B Complex, kidney disorder, metabolic acidosis, calcium out of solution, diabetes mellitus, dehydration, bone metastasis, heavy metal toxicity, hypothyroidism, protein absorption, adrenal exhaustion, liver sluggishness, celiac disease, mal-absorption, excess alcohol and soda consumption, poor digestive ability, high alkaline condition of the small intestines, slow oxidation of fats, stubborn fat deposits causing obesity, arterial sclerosis, septic condition, chalky deposits on joints, and cardio-vascular system
<label>Corresponding need for nutritional support for High Calcium:</label>
Magnesium, Boron, Mega B Complex, Oral Chelation, Adrenal Hormone Restoration, Absorption Enhancer, Spirulina, Super Oil, Jug One Protocol
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Acidosis Correction Formula, Magnesium, Boron
<label>Homeopathic Remedies Number:</label>  # 2, # 10, # 37, # 815)
<label>Botanical Healing Tea Formulations:</label>
Kidney Flush, Joint Detox
<label>Naturopathic Food Medicine Formulations:</label>
Magnesium Broth, green Drink, Junglelaya
<label>Vitamin and Nutraceutical Supplements:</label>
Cal/Mag, Absorption Enhancer, 57 Super Minerals, Wild Yam
<label>Clinical Treatments Indicated:</label>
I.V. Chelation Therapy, Ionic Foot Detox Bath, Ozone Infused Far Infrared 	Detoxification Sauna
<label>Vegetable Juice Concentrates:</label>
Beet, kale, parsley
<label>Support:</label>
Parathyroid.  (Homeopathic Remedies:  # 37, # 834)
</div>
<div id="N_CALCIUM" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--PHOSPHOROUS--%>
<tr><td colspan="4"><h2>PHOSPHOROUS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealPHOSPHOROUS" runat="server" Text="3.4"></asp:Literal></td>
<td class="brd">2.9 - 3.9</td>
<td class="brd">2.2 - 4.6</td>
<td class="brd" id="Td1PHOSPHOROUS" runat="server"><asp:Literal ID="LtrPHOSPHOROUS" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1PHOSPHOROUS" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_PHOSPHOROUS" runat="server" visible="false">
<label>Generally associated with Low Phosphorus:</label>
Excess soda, sugar, alcohol, junk foods, hypertension, calcium absorption problems, hypochlorhydria, liver problems, nerve burnout, adrenal exhaustion, elevated insulin, nutritional deficiencies, hyper-parathyroid, calcium out of solution, deficiencies in Vitamin D-3, citrus bio-flavanoids, electrolytes, hydrochloric acid, Vitamin C, protein mal-absorption, amino acid deficiency, sub-clinical rickets, vomiting, excess use of anti-acids, diuretics, steroids, medications, severe malnutrition, excess stomach acid, mal-absorption, diabetes, carbohydrate intolerance, low pineal function, metabolic syndrome, hypothyroidism, reduced mental and physical energy, muscle strength, endurance and power, reduced ability to convert glucose to energy, deficiencies in pancreatic enzymes, thiamine, folic acid, niacin, and Vitamin B Complex
<label>Corresponding need for nutritional support for Low Phosphorus:</label>
Enzyme therapy, magnesium, Boron, Pineal Hormone Restoration, Phosphadtyl Choline, 28 Super Amino Acids, L-Arginine, L-Carnitine, Tigers Food, Super Food, Pancreatin, Lignan, Mega B Complex, Bromoline, Golden Seal
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cal/Mag/Boron Tonic
<label>Homeopathic Remedies Number:</label>  # 17/18, # 20, # 21
<label>Botanical Healing Tea Formulations:</label>
High Phenol Green Tea
<label>Naturopathic Food Medicine Formulations:</label>
Cruciferous Vegetables, Junglelaya
<label>Vitamin and Nutraceutical Supplements:</label>
Stress and Toxin Protector, Endurall, Super Endurance, Ultra E Complex
<label>Clinical Treatments Indicated:</label>
Ionic Foot Detox Bath
<label>Vegetable Juice Concentrates:</label>
Celery, zucchini, beets
<label>Support:</label>
Parathyroid, stomach, adrenals, nerves, pineal, liver, digestion, pancreas.  (Homeopathic Remedies:  # 8, # 808, # 829, # 834)
</div>
<div id="I_PHOSPHOROUS" runat="server" visible="false">
<label>Phosphorus stand alone indicators generally associated with:</label>
Strong bones, glucose to energy conversion, acid/alkaline balance indicator, total nutritional health monitor, parathyroid, Vitamin D deficiency, phosphorus gauge, pancreatic and liver dysfunction, carbohydrate utilization, keeps calcium in solution, burns fats and sugars.
</div>
<div id="H_PHOSPHOROUS" runat="server" visible="false">
<label>Generally associated with High Phosphorus:</label>
Diabetes, metabolic acidosis, mal-absorption, dehydrating, hyper-parathyroid, liver sluggishness, over exercise, low calcium levels, decreased ATP, hypoclorhydria, metabolic acidosis, poor carbohydrate utilization, amino acid deficiency, calcium deficiency, excess use of  medications, alcohol, sugar, starches, devitalized foods, and meats, liver dysfunction, pineal dysfunction, kidney infection, deficiencies in Vitamin B Complex, boron, magnesium, N-Acetyl Cystein, Vitamin F, turmeric, susceptibility for bone fractures, hypothyroidism, digestive problems, muscle contraction upset, toxicity, deficiencies in hydrochloric acid, enzymes, folic acid, choline, L-Methinine, Lysine and L-Arginine 
<label>Corresponding need for nutritional support for High Phosphorus:</label>
Nerve Builder, Pineal Hormone Restoration, Hypericum, Absoprtion Enhancer, Crude Apple Cider Vinegar Powder, Stomach Rebuilder Formula, Phosphadtyl Choline, G.I.F. Powder, 28 Super Amino Acids, Mega B Complex 1000, Liver flush, Tiger’s Food, Adrenal Hormone Restoration, Jug One and Jug Two protocol, Morning Health Drink, Green Drink, Iodine/Iodide
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cal/Mag Boron Tonic, Strong, Bones, Teeth, Nails and Nerve Formula
<label>Homeopathic Remedies Number:</label>  # 3, # 15, # 22, # 37, # 63, # 828
<label>Botanical Healing Tea Formulations:</label>
Kidney Flush, Detox Formula
<label>Naturopathic Food Medicine Formulations:</label>
Garden V, Blood Purifier
<label>Vitamin and Nutraceutical Supplements:</label>
V/F-50
<label>Clinical Treatments Indicated:</label>
I.V. Chelation Therapy, Ionic Foot Detox Bath
<label>Vegetable Juice Concentrates:</label>
Celery, zucchini, beets
<label>Support:</label>
Parathyroid, stomach, adrenals, nerves, pineal, liver, digestion, pancreas.  (Homeopathic Remedies:  # 8, # 808, # 829, # 834)
</div>
<div id="N_PHOSPHOROUS" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--TOTAL_PROTEIN--%>
<tr><td colspan="4"><h2>TOTAL PROTEIN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealTOTAL_PROTEIN" runat="server" Text="7.3"></asp:Literal></td>
<td class="brd">6.9 - 7.6</td>
<td class="brd">6.0 - 8.3</td>
<td class="brd" id="Td1TOTAL_PROTEIN" runat="server"><asp:Literal ID="LtrTOTAL_PROTEIN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1TOTAL_PROTEIN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_TOTAL_PROTEIN" runat="server" visible="false">
<label>>Generally associated with Low Total Protein:</label>
Protein mal-absorption, amino acid deficiency, fasting, poor diet, multiple nutritional
deficiencies, compromised immune system, hypochlorhydria, gastritis, malnutrition,
pancreatic insufficiency, heavy metal and/or environmental toxicity, hypo-pituitary,
hypothyroidism, toxicity, congested heart, liver sluggishness, mal-absorption, hypertension, digestive problems, enzyme, calcium deficiency, fatty liver congestion, liver sluggishness, 
L-Glutimine, L-Carnitine and hydrochloric acid deficiency
<label>Corresponding need for nutritional support for Low Total Protein:</label>
28 Super Amino Acids, L-Arginine Complex, Phosphadtyl Choline, Enzyme Therapy, Super Juice 22 Vegetables, Green Drink, Blue Green Algae, Mega B Complex 1000, Vitamin E Complex, Co-Enzyme Q-10, Super Oil, Mega 3/6 Essential fatty Acids, turmeric, Endurall, Alfalfa
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Heavy Metal Detox, Toxicity Correction, Pancreas Support, Stomach and Digestion 	Formula, Jug One Protocol
<label>Homeopathic Remedies Number:</label> # 7, # 8, # 10, # 820, # 821
<label>Botanical Healing Tea Formulations:</label>
Hypoglycemia Formula, Stomach and Digestion Formula
<label>Naturopathic Food Medicine Formulations:</label>
Stomach Rebuilding Powder, Super Food Drink, Amino Acid Creamed Peas, 
Fortress Strong
<label>Vitamin and Nutraceutical Supplements:</label>
Absorption Enhancer, Enzyme Therapy, Mega B Complex 1000, 28 Super Amino Acids, 	Endurall, RNA/DNA, L-Carnitine, L-Arginine, L-glutamine, Immune Power Formula, 	Duo C Complex, Pancreatin, Oral Chelation
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Rife Vibrational Medicine, I.V. Chelation Therapy
<label>Vegetable Juice Concentrates:</label>
Celery, zucchini, cabbage, tomato, onion, beet, squash, lemon, plum, fig
<label>Support:</label>
Liver, digestion, pancreas, pituitary, adrenal, gonads, thyroid.  (Homeopathic Remedies; #8, #10, #805)
</div>
<div id="I_TOTAL_PROTEIN" runat="server" visible="false">
<label>Total Protein stand alone indicators generally associated with:</label>
The bloods capacity to transport nutrients to the cells, overall nutritional status, overall
defense gauge, the body’s ability to repair, rebuild and regenerate itself
</div>
<div id="H_TOTAL_PROTEIN" runat="server" visible="false">
<label>Generally associated with High Total Protein:</label>
Dehydration, inflammation, kidney overload, drug reaction overload, collagen breakdown, diabetes insipidus, protein and amino acid deficiency, collagen disease, rheumatoid arthritis, liver sluggishness, deficiencies in digestive enzymes, bio-flavanoids connective tissue breakdown, deficiencies in digestive enzymes, L-Arginine, metabolic acidosis, adrenal fatigue, liver sluggishness, hypochlorhydria, respiratory diseases, protein mal-absorption, deficiencies in alpha lipoic acid, sulfur, N-Acytle Cystine and L-Methinine
<label>Corresponding need for nutritional support for High Total Protein:</label>
Adrenal Restoration, Royal Queen Bee Jelly, Liver Detox, Mega B Complex 1000, Stress & Toxin Protector, Enzyme Therapy, Bromaline, Turmeric, Magnesium, Selenium
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liver Support, Pancreas Support, Stomach and Digestion Formula
<label>Homeopathic Remedies Number:</label> # 10, # 12, # 22, # 23, # 818, # 820
<label>Botanical Healing Tea Formulations:</label>
Detox Tea, Liver Detox, Stomach Detox
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Super Food Drink, Yogurt Health Drink, Green Drink, Intestinal 	Decongestion, Amino Acid Creamed One Dozen Green Vegetables Juice
<label>Vitamin and Nutraceutical Supplements:</label>
Alpha Lipoic Acid, Organic Sulfur, N-Acytle Cystein, L-Methinine, Absorption 	Enhancer, Mega B Complex 1000,  Duo C Complex, 28 Super Amino Acids, Enzyme 	Therapy, Liver Formula, Pancreatin
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, I.V. Alpha Lipoic Acid Drip, I.V. Ozone Therapy
<label>Vegetable Juice Concentrates:</label>
Celery, zucchini, cabbage, tomato, onion, beet, squash, lemon, plum, fig
<label>Support:</label>
Liver, digestion, pancreas, pituitary, adrenal, gonads, thyroid.  (Homeopathic Remedies; #8, #10, #805)
</div>
<div id="N_TOTAL_PROTEIN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--ALBUMIN--%>
<tr><td colspan="4"><h2>ALBUMIN, SERUM</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealALBUMIN" runat="server" Text="4.2"></asp:Literal></td>
<td class="brd">3.9 - 4.5</td>
<td class="brd">3.7 - 5.5</td>
<td class="brd" id="Td1ALBUMIN" runat="server"><asp:Literal ID="LtrALBUMIN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1ALBUMIN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_ALBUMIN" runat="server" visible="false">
<label>Generally associated with Low Albumin:</label>
Protein/amino acid deficiency, excess junk food, sugar, hypochlorhydria, enzyme deficiency, insufficient raw vegetables, cells breaking down faster than they are rebuilding, kidney toxic over run, toxic fluid retention, bloating, liver sluggishness, immune system compromise, loss of muscle tissue, human growth hormone deficiency, deficiencies in vitamin B-12, folic acid, vitamin C, Vitamin E, beta carotene, calcium, boron, vitamin D-3, magnesium, choline, malnutrition, G.I. tract problems, inflammation, reduces osmotic pressure, reduces nutrient ability to transfer nutrients to the cells, dehydration
<label>Corresponding need for nutritional support for Low Albumin:</label>
Super Drink, 28 Super Amino Acids, L-Arginine Complex, Enzyme Therapy, Wheat Grass, Green Drink.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cal/Mag/Boron
<label>Homeopathic Remedies Number:</label>  # 9, # 24
<label>Botanical Healing Tea Formulations:</label>
Stomach and Digestion Formula
<label>Naturopathic Food Medicine Formulations:</label>
Stomach Rebuilding Powder, 	Crude Apple Cider Vinegar
<label>Vitamin and Nutraceutical Supplements:</label>
Absorption Enhancer, Enzyme Therapy, Crude Apple Cider Vinegar, 28 Super Amino 	Acids, L-Arginine, L-Carnitine, Red Blood Cell Building, Vitamin D-3, Cal/Mag, Ultra E 	Complex, Beta Carotene, Lipotropic Factor, Duo C Complex, Folic Acid, Liver Formula, 	Alpha Lipoic Acid
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, I.V. Alpha Lipoic Acid, I.V. Ozone Therapy, Ozone Ionic Foot 	Detox Bath
<label>Vegetable Juice Concentrates:</label>
Spinach, zucchini, broccoli, beet, kale, avocado, mushroom, organic sulfur, cauliflower, sprouts, fig
<label>Support:</label>
Digestion, liver, kidneys, nervous system, psyche, lymph’s, thyroid, cardio-vascular, pituitary, colon, detoxification.  (Homeopathic Remedies; #8, #17, #40, #55, #63, #805, #812, #823)
</div>
<div id="I_ALBUMIN" runat="server" visible="false">
<label>Albumin stand alone indicators generally associated with:</label>
Cellular repair, degeneration/regeneration, absorption of nutrients, stress, inflammation, osmotic pressure, overall nutritional status gauge, blood protein available for repairs
</div>
<div id="H_ALBUMIN" runat="server" visible="false">
<label>Generally associated with High Albumin:</label>
Nerve depletion, burn out, adrenal exhaustion, tension, anxiety, dehydration, inflammation, diabetes, G.I. problems, nutritional deficiencies, deficiencies in choline, inositol, omega 3/6 essential fatty acids, magnesium, L-Methionine, taruine, iodine, stress overwhelm, lymphatic stagnation, highly toxic condition, over use of drugs, sugar, alcohol, junk foods, hypothyroid, arteriosclerosis, kidney overload affecting liver, Vitamin C and bio-flavanoid deficiency, possible renal disease, liver disease, the body’s self protecting system over reacting to stress, excess albumin build from resulting from shock, overstrain and/or overwhelming stress
<label>Corresponding need for nutritional support for High Albumin:</label>
Mega B Complex 1000, Turmeric, 57 Minerals, Nerve Builder, Co-Enzyme Q-10, Alpha Lipoic Acid, Super Oil, Green Drink, Blue Green Algae, Alfalfa, Super Juice, 27 Vegetables, Hypericum, Stress & Toxin Protector, Enzyme Therapy, L-Cysteine
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Adrenal Support, Stress & Nerve Repair, Liquid Magnesium, Liquid Iodine, Liquid 	Lithium, Liquid Gold
<label>Homeopathic Remedies Number:</label>  # 3, # 12, # 17, # 50
<label>Botanical Healing Tea Formulations:  </label>
Tranquility Tea, Nerve Rejuvenation
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Super Food Drink, Power Booster, Fortress Strong, Magnesium Broth
<label>Vitamin and Nutraceutical Supplements:</label>
Hypericum, Nerve Builder, Sargeant Strong, Mega B Complex, Stress & Toxin Protector
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, I.V. Ozone Therapy, Brainwashing Therapy, Rife Vibration 	Therapy, Light and Sound therapy
<label>Vegetable Juice Concentrates:</label>
Spinach, zucchini, broccoli, beet, kale, avocado, mushroom, organic sulfur, cauliflower, sprouts, fig
<label>Support:</label>
Digestion, liver, kidneys, nervous system, psyche, lymph’s, thyroid, cardio-vascular, pituitary, colon, detoxification.  (Homeopathic Remedies; #8, #17, #40, #55, #63, #805, #812, #823)
</div>
<div id="N_ALBUMIN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--GLOBULIN--%>
<tr><td colspan="4"><h2>GLOBULIN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealGLOBULIN" runat="server" Text="3.2"></asp:Literal></td>
<td class="brd">3.0 - 3.4</td>
<td class="brd">2.2 - 4.2</td>
<td class="brd" id="Td1GLOBULIN" runat="server"><asp:Literal ID="LtrGLOBULIN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1GLOBULIN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_GLOBULIN" runat="server" visible="false">
<label>Generally associated with Low Globulin:</label>
Immune system compromised, colon toxicity, muscle loss, mal-absorption, protein/amino acid deficiency, digestive disorders, premature aging, aging diseases, cells breaking down, not regenerating, hypochlorhydria, heavy metal toxicity, excess alcohol, sugar, junk foods, deficiencies in Omega 3/6 essential fatty acids, vitamin E, zinc, L-Arginine, L-Glutimine, 
enzymes, amino acids, protein, autoimmune reaction, gastro-intestinal, colon, liver disorder, pre-ulcer, syndrome X, inability of the body to manufacture enough antibodies, anemia, liver sluggishness, kidney disorder, globulin used up for repairs due to infection fighting overwork, toxicity and parasitic invasion, deficiencies in folic acid, ionic calcium, magnesium, and phosphorous.  Support required for thymus, spleen and thyroid.
<label>Corresponding need for nutritional support for Low Globulin:</label>
Immune Power Formula, Duo C Complex, Aloe Vera Concentrate, L-Carnitine, Alpha Lipoic Acid, Absorption Enhancer, Bromaline, Enzyme Therapy, Immune Tea, Endurall. 
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Zinc, Liquid Silver, Liquid Germanium, Liquid Sulfur, Immune Support
<label>Homeopathic Remedies Number:</label>  # 10, # 22, # 23
<label>Botanical Healing Tea Formulations:</label>
Immune Tea
<label>Naturopathic Food Medicine Formulations:</label>
Super Oil, Super C Active, Jug One, Cruciferous Vegetable Juice, Fortress Strong
<label>Vitamin and Nutraceutical Supplements:</label>
Immune Power Formula, Astragulas, Duo C Complex, Vitamin D-3, Norwegian 
Vitamin A, 28 Super Amino Acids, Endurall, Ultra E Complex, L-Arginine, 
L-Glutimine, Nature’s Healer, l-Carnitine
<label>Clinical Treatments Indicated:</label>
I.V. Immune Drip, I.V. Hydrogen Peroxide Drip, Rife Vibrational Medicine
<label>Vegetable Juice Concentrates:</label>
Beet, lemon, mushroom, avocado, kale, green onion, green pepper, sweet potato, broccoli, tomato
<label>Support:</label>
Immune system, detoxification, colon, digestive system.  (Homeopathic Remedies; #4, #8, #10, #807,  #817)
</div>
<div id="I_GLOBULIN" runat="server" visible="false">
<label>Globulin stand alone indicators generally associated with:</label>
Defense agent, cell degenerator/regenerator, immune system, inflammation, digestive toxicity, protective antibodies, infection, allergy, spleen gauge, protein levels and absorption, body’s ability to repair itself
</div>
<div id="H_GLOBULIN" runat="server" visible="false">
<label>Generally associated with High Globulin:</label>
Toxicity, allergies, bowel impaction, infection, liver dysfunction, anemia, mal-absorption syndrome, G.I. inflammation, nutritional deficiencies, enzymes, zinc, vitamin A, sulfur,
pre-arthritis, colon toxicity, immune system compromised, pre-infection, anemia, hypochlorhydria, parasitic infestation, breakdown in the body’s defense system, thymus and spleen require support, deficiencies in ionic copper, iron, bio-flavanoids, Vitamin C and A, niacin, riboflavin, super oxide dismutase (8:00).
<label>Corresponding need for nutritional support for High Globulin:</label>
Anti Anemia Complex, Red Blood builder, Endurall, 57 Super Minerals, Co-Enzyme Q-10, Grape Seed Extract, Toxin & Free Radical Neutralizer, Chinese Garlic, Duo C Complex, Immune Power Formula.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Sulfur, Liquid Silver, Liquid Zinc, Immune Support
<label>Homeopathic Remedies Number:</label>  # 1, # 24, # 807, # 817
<label>Botanical Healing Tea Formulations:</label>
Immune Tea
<label>Naturopathic Food Medicine Formulations:</label>
Jug One protocol, Super C Active, Super Oil, Blood Building Broth, Bedtime Bowel 	Tonic, Morning Health Drink, Green Drink, Cellular Detoxification, Amino Acid 	Creamed One Dozen Green Vegetables Juice
<label>Vitamin and Nutraceutical Supplements:</label>
Organic Sulfur, Nature’s Healer, Norwegian Vitamin A, Absorption Enhancer, Anti Anemia Complex, Red Blood Cell Builder, Allergy Formula, Fiber Max, Maxi Cleanse
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, I.V. Hydrogen Peroxide Drip, I.V. Ozone Therapy, I.V. Immune 	Drip
<label>Vegetable Juice Concentrates:</label>
Beet, lemon, mushroom, avocado, kale, green onion, green pepper, sweet potato, broccoli, tomato
<label>Support:</label>
Immune system, detoxification, colon, digestive system.  (Homeopathic Remedies; #4, #8, #10, #807,  #817)
</div>
<div id="N_GLOBULIN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--ALBUMIN_GLOBULIN--%>
<tr><td colspan="4"><h2>ALBUMIN/GLOBULIN RATIO</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealALBUMIN_GLOBULIN" runat="server" Text="1.6"></asp:Literal></td>
<td class="brd">1.5 - 1.7</td>
<td class="brd">0.8 - 2.0</td>
<td class="brd" id="Td1ALBUMIN_GLOBULIN" runat="server"><asp:Literal ID="LtrALBUMIN_GLOBULIN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1ALBUMIN_GLOBULIN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_ALBUMIN_GLOBULIN" runat="server" visible="false">
<label>Generally associated with Low Albumin/Globulin Ratio:</label>
Liver sluggishness, bowel toxicity, protein deficiency, mal-absorption, deficiencies in digestive enzymes, choline, zinc, taurine, organic sulfur, weak immune system, protein/amino acid deficiency, hypochlorhydria, faulty dietary habits, toxicity, blood too thin, reduced bloods clotting factors, deficiencies in Vitamin K, E, A and D
<label>Corresponding need for nutritional support for Low Albumin/Globulin Ratio:</label>
Immune Power Formula, Duo C Complex, Beta Carotene.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Sulfur, Liquid Detox, Liquid Zinc, Stomach & Digestion Formula
<label>Homeopathic Remedies Number:</label>  # 8, # 40, # 819, # 820
<label>Botanical Healing Tea Formulations:</label>
Detox Tea, Stomach & Digestion Tea
<label>Naturopathic Food Medicine Formulations:</label>
Super Ox, Amino Acid Creamed Cabbage Juice, Amino Acid Creamed Celery Juice
<label>Vitamin and Nutraceutical Supplements:</label>
Lipotropic Factor, Phosphadatyl Choline, Lignan, Nature’s Healer, I-Thyroid, Organic 	Sulfur, Absorption Enhancer, Enzyme Therapy
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, I.V. Hydrogen Peroxide Drip
<label>Vegetable Juice Concentrates:</label>
Mushroom, avocado, celery, beet, spinach, apple, zucchini, horseradish.
<label>Support:</label>
Stomach, digestion, colon, liver, spleen, thyroid, detoxification.  (Homeopathic Remedies:                    
#10, #63, #808)
</div>
<div id="I_ALBUMIN_GLOBULIN" runat="server" visible="false">
<label>Albumin/Globulin Ratio stand alone indicators generally associated with:</label>
Blood viscosity, protein, toxicity, colon, liver marker, kidney, thyroid, immune system gauge, body’s viability to fight bacteria, viruses and toxins
</div>
<div id="H_ALBUMIN_GLOBULIN" runat="server" visible="false">
<label>Generally associated with High Albumin/Globulin Ratio:</label>
Triggered immune system, dehydration, pancreatic insufficiency, hypothyroid, deficiency in zinc, phosphadtyl choline, blood too thick, hypothyroidism, lymphatic congestion, blood toxicity, deficiencies in iodine, iodide, phosphorous and amino acids
<label>Corresponding need for nutritional support for High Albumin/Globulin Ratio:</label>
I-Thyroid, Lymph Formula, Maxi Cleanse, Fiber Max.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Pancreas Support, Liquid Zinc
<label>Homeopathic Remedies Number:</label>  # 808
<label>Botanical Healing Tea Formulations:</label>
Pancreas Tea
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Green Drink, Super Oil, Super Drink, Super C Active, Amino Acid 	One Dozen Green Vegetables Juice, Bio-Flavanoid Complex, Amino Acid Creamed 	Zucchini
<label>Vitamin and Nutraceutical Supplements:</label>
Pancreatin, Lipotropic Factor, Lignan, I-Thyroid, Sea Life, Alfalfa, Super Juice 22 	Vegetables, Phosphadatyl Choline, Immune Power Formula, Duo C Complex
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, I.V. Ozone Therapy
<label>Vegetable Juice Concentrates:</label>
Mushroom, avocado, celery, beet, spinach, apple, zucchini, horseradish.
<label>Support:</label>
Stomach, digestion, colon, liver, spleen, thyroid, detoxification.  (Homeopathic Remedies:                    
#10, #63, #808)
</div>
<div id="N_ALBUMIN_GLOBULIN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--ALKALINE--%>
<tr><td colspan="4"><h2>ALKALINE PHOSPHATASE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealALKALINE" runat="server" Text="62"></asp:Literal></td>
<td class="brd">52 - 72</td>
<td class="brd">32 - 92</td>
<td class="brd" id="Td1ALKALINE" runat="server"><asp:Literal ID="LtrALKALINE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1ALKALINE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_ALKALINE" runat="server" visible="false">
<label>Generally associated with Low Alkaline Phosphatase:</label>
Multiple nutrition deficiencies, nutritional anemia, hypothyroidism, adrenal depletion, arthritis, premature aging, mal-absorption, malnutrition, excess sugar, junk foods, and carbohydrates, deficiencies in magnesium, zinc, bio-flavanoids, iron, Vitamin’s C and B-12, Iodine/Iodide, amino acids, panathenic acid, Vitamin B Complex, folic acid and enzymes, poor protein utilization, allergies, toxic fluid retention, hay fever, hyper-adrenals, hypoglycemia, unstable and fleeting energy patterns, pancreas, bone and/or liver problems, adrenals, thyroid, liver pancreas, and bones require support
<label>Corresponding need for nutritional support for Low Alkaline Phosphatase:</label>
Vitamin D-3, Duo C Complex, Magnesium, Zinc, Enzyme Therapy, Iodine/Iodide, Absorption Enhancer, Cats Claw, Chinese Garlic, Endurall, Osteo Joint & Cartilage Support, Phosphadtyl Choline, 57 Super Minerals
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cal/Mag/Boron Tonic, Liver Support, Adrenal Support
<label>Homeopathic Remedies Number:</label>  # 10, # 13, # 37
<label>Botanical Healing Tea Formulations:</label>
Detox Formula, Arthritis/Rheumatism Formula, Bones, Joint and Muscle Formula
<label>Naturopathic Food Medicine Formulations:</label>
Green Drink, Liver Detoxification, Lycopene Broth, Cal/Mag 
<label>Vitamin and Nutraceutical Supplements:</label>
Ultra E Complex, Beta Carotene, Norwegian Vitamin A, Adrenal Hormone Restoration 	Factors, Cal/Mag, Duo C Complex, Liver Formula, Red Blood Cell Builder, Enzyme 	Therapy, Folic Acid, Absorption Enhancer, Pyridoxine, Alpha Lipoic Acid
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Oxidative Therapy
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, broccoli, parsley, watercress, cabbage, celery, oregano
<label>Support:</label>
Pituitary, liver, thyroid, parathyroid, respiratory, digestive, immune system.  (Homeopathic Remedies:  # 8, # 10, # 805, # 815, # 819, # 820, # 821)
</div>
<div id="I_ALKALINE" runat="server" visible="false">
<label>Alkaline Phosphatase stand alone indicators generally associated with:</label>
Bone, liver, adrenal, intestinal health indicator, tumor marker, protein utilization, thyroid, parathyroid, osteoporosis, carbohydrate and fat conversion into energy, bone repair, glucose recognition, liver and bone disease monitor
</div>
<div id="H_ALKALINE" runat="server" visible="false">
<label>Generally associated with High Alkaline Phosphatase:</label>
Osteoporosis, deficiencies in Vitamin C and zinc, hypochlorhydria, intestinal inflammation, liver dysfunction, susceptible to biliary cirrhosis, hepatitis, infection, bone loss, ulcerative colitis, bone and connective tissue inflammation, adrenal exhaustion, general debility, dizziness, anxiety,  numbness, deficiencies in electrolytes, multiple minerals and lithium
<label>Corresponding need for nutritional support for High Alkaline Phosphatase:</label>
Magnesium, Boron, Milk Thistle, Maxi Cleanse, Fiber Max, Oral Chelation, Lipotropic Factors, Taurine, L-Arginine, L-Carnitine, 28 Super Amino Acids, Alpha Lipoic Acid
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
87 Sea Minerals, Cal/Mag/Boron Toxin
<label>Homeopathic Remedies Number:</label>  # 4, # 815
<label>Botanical Healing Tea Formulations:</label>
Stomach and Digestion Formula
<label>Naturopathic Food medicine Formulations:</label>
87 Sea Minerals
<label>Vitamin and Nutraceutical Supplements:</label>
Cal/Mag, Silica, Duo C Complex, Nature’s Healer, Absorption Enhancer, Liver Formula, 	Immune Power Formula, Adrenal Hormone Restoration Therapy, Royal Queen Bee Jelly, 	Mega B Complex, Osteo Joint and Cartilage, Connective Tissue
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, broccoli, parsley, watercress, cabbage, celery, oregano
<label>Support:</label>
Pituitary, liver, thyroid, parathyroid, respiratory, digestive, immune system.  (Homeopathic Remedies:  # 8, # 10, # 805, # 815, # 819, # 820, # 821)
</div>
<div id="N_ALKALINE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--SGOT--%>
<tr><td colspan="4"><h2>SGOT (AST)</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealSGOT" runat="server" Text="24"></asp:Literal></td>
<td class="brd">18 - 30</td>
<td class="brd">10 - 40</td>
<td class="brd" id="Td1SGOT" runat="server"><asp:Literal ID="LtrSGOT" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1SGOT" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_SGOT" runat="server" visible="false">
<label>Generally associated with Low SGOT (AST):</label>
Enzyme deficiency, liver sluggishness, tissues not repairing, protein mal-absorption, sex hormonal decline, adrenal depletion, inflammatory marker, magnesium, bio-flavanoid, and Vitamin C deficiencies, kidney dysfunction, malnutrition, liver disease, heart disease, myocardial tissue blockage, diabetes, autointoxication, creating a septic condition in the blood.  Support required for hypothalamus, gonads, thymus and spleen.  Deficiencies in ionic copper, iron and cobalamin
<label>Corresponding need for nutritional support for Low SGOT (AST):</label>
28 Super Amino Acids, L-Arginine Complex, L-Cystein, Alpha Lipoic Acid, L-Carnitine, Macho Vita, Female Hormone Restoration, Ginseng, Human Growth Hormone, Wheat Grass, Spirulina, Vitamin F, Mega B Complex, Natural herbs, Adrenal Hormone Restoration
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Enzymes, Bio-Ox
<label>Homeopathic Remedies Number:</label>  # 2, # 17/18, # 819
<label>Botanical Healing Tea Formulations:</label>
High Phenol Green Tea, Liver Detox, Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Super C Active, magnesium Broth, Bio-Flavanoid Complex, Stomach Rebuilding 	Powder, Cellular Detoxifier, Junglelaya
<label>Vitamin and Nutraceutical Supplements:</label>
Enzyme Therapy, Pyridoxine, Bromoline, Cal/Mag, Bio-Flavanoids, Absorption 	Enhancer
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Liver Flush, I.V. Alpha Lipoic Acid Drip
<label>Vegetable Juice Concentrates:</label>
Kale, lemon, garlic, tomato, cabbage, broccoli, beet, spinach, plum
<label>Support:</label>
Sex hormone, liver, pineal, adrenals, immune system.  (Homeopathic Remedies:  # 10, # 40,
# 803, # 804, # 819, # 827, # 829)
</div>
<div id="I_SGOT" runat="server" visible="false">
<label>SGOT (AST) stand alone indicators generally associated with:</label>
Liver, heart, cell injury marker, enzyme deficiency, autointoxication, organ tissue breakdown, protein and amino acid assimilation, gonadal balance, liver congestion, poor fat metabolism, free radical pathology, muscle loss, diabetes, number of broken down/dead cells in circulation
</div>
<div id="H_SGOT" runat="server" visible="false">
<label>Generally associated with High SGOT (AST):</label>
Liver sluggishness, colon toxicity, heavy metal and/or environmental toxicity, allergies, hormonal deficiencies, deficiencies, in alpha lipoic acid, choline, inositol, taurine, muscle loss, breakdown of heart muscle, liver, kidney muscle, brain tissue breaking down faster than it is regenerating due to autointoxication, liver, pancreas, gall bladder, heart, brain, colon and intestinal inflammation, pineal gland imbalance, excessive use of drugs, alcohol, sugar, junk foods, muscle damage, liver dysfunction, Vitamin B-6 deficiency, cardiac stress, increased risk of heart attack, liver disease, overuse of medications, aspirin, cortisone and codeine, deficiencies in panothenic acid, B Complex and amino acids
<label>Corresponding need for nutritional support for High SGOT (AST):</label>
Pineal Hormone Restoration, Lipotropic Factors, Super Oil, Fat Emulsifier, Milk Thistle, Immune Power Formula, Super Juice 22 Vegetables, Mega B Complex 1000, Lignan, Wheat Germ Oil
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liver Formula, Stomach Formula, Liquid Sulfur
<label>Homeopathic Remedies Number:</label>  # 5, # 8, # 10
<label>Botanical Healing Tea Formulations:</label>
Pancreas Tea
<label>Naturopathic Food Medicine Formulations:</label>
Naturopathic Purification, Morning Health Drink, Green Drink, Bedtime Bowel Tonic, 	Yogurt health Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Fiber Max, Maxi Cleanser, Liver Formula, Dandelion, Duo C Complex, Alpha Lipoic 	Acid, Cardio Vita, Bearberry, Corn Silk, Cats Claw, Cranberry Complex, Brain Flush, 	Lipotropic Factors, Lignan, Fat to Energy, Organic Sulfur, Phosphadtyl Choline, 	Turmeric
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Ozone Insufflations, Ozone Infused Far Infrared Detoxification 	Sauna
<label>Vegetable Juice Concentrates:</label>
Kale, lemon, garlic, tomato, cabbage, broccoli, beet, spinach, plum
<label>Support:</label>
Sex hormone, liver, pineal, adrenals, immune system.  (Homeopathic Remedies:  # 10, # 40,
# 803, # 804, # 819, # 827, # 829)
</div>
<div id="N_SGOT" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--SGPT--%>
<tr><td colspan="4"><h2>SGPT (ALT)</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealSGPT" runat="server" Text="24"></asp:Literal></td>
<td class="brd">18 - 30</td>
<td class="brd">10 - 40</td>
<td class="brd" id="Td1SGPT" runat="server"><asp:Literal ID="LtrSGPT" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1SGPT" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_SGPT" runat="server" visible="false">
<label>Generally associated with Low SGPT (ALT):</label>
Multiple nutritional deficiencies, mal-absorption, amino acid and protein insufficiency, kidneys overwhelmed with toxins, junk food addiction, colon impaction, slow transition time, excess alcohol, sugar, choline, magnesium, folic acid, Vitamin E, B Complex, N-Acetyl cysteine deficiencies, hypoglycemia, allergies, protein mal-absorption, human growth hormone deficiency, decreased liver activity, malnutrition, prone to genitourinary tract infections, risk of liver damage, deficiencies in iron and niacin
<label>Corresponding need for nutritional support for Low SGPT (ALT):</label>
Mega B complex 1000, chromium Picolonate, Spirulina, Stress & Toxin protector, Vitamin E, Phosphadtyl Choline, L-Arginine Complex, Macho Vita, Chinese Garlic, Duo C Complex, Endurall, RNA/DNA
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Blood/Kidney Formula, Stomach Digestion Formula
<label>Homeopathic Remedies Number:</label>  # 12, # 15
<label>Botanical Healing Tea Formulations:</label>
Kidney Flush Formula, Anti-Toxin Formula
<label>Naturopathic Food Medicine Formulations:</label>
Intestinal Decongestion, Cellular Detoxifier, Kidney Cleanse
<label>Vitamin and Nutraceutical Supplements:</label>
Absorption Enhancer, Crude Apple cider vinegar, Enzyme Therapy, Ultra E Complex, N-	Acetyl Cysteine, Cal/Mag, Lipotropic Factors, Phosohadtyl Choline, Lignan, Fiber Max, 	Maxi Cleanse, L-Taruine
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Rectal Ozone Insufflations, Ionic Foot Detox Bath
<label>Vegetable Juice Concentrates:</label>
Spinach, tomato, lemon, plum, kale
<label>Support:</label>
Liver, blood sugar, sex hormones.  (Homeopathic Remedies: # 8, # 10, # 29, # 30)
</div>
<div id="I_SGPT" runat="server" visible="false">
<label>SGPT (ALT) stand alone indicators generally associated with:</label>
Enzyme, liver, heart, muscle health, inflammatory marker, gonadal, fat absorption, allergies, energy production, glucose conversion,
</div>
<div id="H_SGPT" runat="server" visible="false">
<label>Generally associated with High SGPT (ALT):</label>
Liver sluggishness, indigestion, pancreas inefficiency, L-Methinine, inositol, taurine deficiencies, inflammation, gonadal under-performance, fat mal-absorption, liver congestion/inflammation, tap water, alcohol, sugar, drugs, shock, muscle trauma, highly toxic, prone to cirrhosis, liver disease, pancreatitis, myocardial infarction, viral and/or infections, hepatitis, multiple tissue breakdown, upset of the energy conversion cycle, deficiencies in Vitamin E and B Complex
<label>Corresponding need for nutritional support for High SGPT (ALT):</label>
Enzyme Therapy, Liver/Gall Bladder Formula, Fat Emulsifier, Lignan, Milk Thistle, Blood Sugar Cortisol Control
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Pancreas Support Formula, Liver Support Formula, Stomach Digestion, Germanium
<label>Homeopathic Remedies Number:</label> # 19, # 21
<label>Botanical Healing Tea Formulations:</label>
Liver Detox Formula, Stomach Formula, Pancreas Formula
<label>Naturopathic Food Medicine Formulations:</label>
Naturopathic Purification Powder, Kidney Cleanse, V/F-50 Super Juice
<label>Vitamin and Nutraceutical Supplements:</label>
L-Taurine, Enzyme therapy, Lipotropic Factors, Pancreatin, Liver Formula, Fiber Max,	 	Maxi Cleanse
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, I.V. Alpha Lipoic Acid Drip
<label>Vegetable Juice Concentrates:</label>
Spinach, tomato, lemon, plum, kale
<label>Support:</label>
Liver, blood sugar, sex hormones.  (Homeopathic Remedies: # 8, # 10, # 29, # 30)
</div>
<div id="N_SGPT" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--LACTATE--%>
<tr><td colspan="4"><h2>LACTATE DEHYDROGENASE (LDH)</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealLACTATE" runat="server" Text="165"></asp:Literal></td>
<td class="brd">135 - 195</td>
<td class="brd">100 - 230</td>
<td class="brd" id="Td1LACTATE" runat="server"><asp:Literal ID="LtrLACTATE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1LACTATE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_LACTATE" runat="server" visible="false">
<label>Generally associated with Low LDH:</label>
Poor carbohydrate utilization, hypoglycemia, hypotention, fatty liver, deficiencies in enzymes, 
zinc, Vitamin C, N-Acetyl choline, pancreatic insufficiency, radiation exposure, toxicity, enzyme deficiency, digestive dysfunction, excess sugar in tissue, rapid fermentation causing a toxic
condition, deficiency in folic acid, cobalamin, Vitamin B Complex, L-Carnitine, protein, 
L-Arginine, amino acids
<label>Corresponding need for nutritional support for Low LDH:</label>
Vitamin B-12, Folic Acid, Absorption Enhancer, Digestive Enzymes, Turmeric, Yarrow,
Wheat Grass, Duo C Complex, Alfalfa, Super Juice, 22 Vegetables.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Zinc, Liquid Sulfur
<label>Homeopathic Remedies Number:</label> # 17/18, # 21, # 820
<label>Botanical Healing Tea Formulations:</label>
Stomach Formula, Liver Detox, Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Stomach Rebuilding Powder, Spinach Juice and Whey, Amino Acid Beet Juice, 	Morning Health Drink, Green Drink, Bedtime Bowel Tonic	
<label>Vitamin and Nutraceutical Supplements:</label>
N-Acetyl Cysteine, L-Taurine, Organic Sulfur, Fat Emulsifier, Conjugated Linoleic 	Acid, Lignan, Enzyme Therapy, Liver Formula, Absorption Enhancer	
<label>Clinical Treatments Indicated:</label>
Rife Vibrational Medicine, Colon Hydrotherapy, I.V. Alpha Lipoic Acid Drip
<label>Vegetable Juice Concentrates:</label>
Celery, cabbage, apple, tomato, spinach, lemon, plum.
<label>Support:</label>
Pancreas, liver, heart, digestion, detoxification, cardio-vascular, nerves.  (Homeopathic
Remedies; #17, #63, #875)
</div>
<div id="I_LACTATE" runat="server" visible="false">
<label>LDH stand alone indicators generally associated with:</label>
Carbohydrate tolerance, dehydration, blood sugar, inflammation, metabolic acidosis enzyme,
thyroid, heart, kidney, muscles, pancreas, radiation exposure, digestive, toxicity indicators, cell/tissue regeneration/degeneration, sulfur deficiency, cellular breakdown/repair, efficient bio-energy production
</div>
<div id="H_LACTATE" runat="server" visible="false">
<label>Generally associated with High LDH:</label>
Carbohydrate intolerance, heart stress, heart inflammation, magaloblastic anemia, Vitamin’s 
B-12, B-6, folic acid deficiencies, liver sluggishness, cellular oxygen deficiency, heart disease, seizures, junk food habit, deficiencies in alpha lipoic acid, choline, inositol, cardiac stress,
L-Carnitine, N-Acetyl cysteine, taurine, vitamin E, selenium, infection, anemia, liver disorder, cardiac diseases, hyperinsulism, red blood cell destruction, heart attack precursor, cells/tissue breaking down faster than rebuilding, sulfur deficiency, mental and physical fatigue like symptoms, waste by-products build up faster than they can be eliminated, blood sugar imbalance, diabetic/hypoglycemic symptoms, deficiencies in chromium, zinc, Vitamin B Complex, pancreas requires support
<label>Corresponding need for nutritional support for High LDH:</label>
RNA/DNA, Endurall, Stress & Toxin Protector, Enzyme Therapy, Blood Sugar Formula, Nerve
Builder, Oral Chelation, Spirulina.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Toxicity Correction Formula, Liver Support Formula, Fat Burner Formula
<label>Homeopathic Remedies Number:</label> # 7, # 13, #21
<label>Botanical Healing Tea Formulations:</label>
Liver Detox, Pancreas Formula, Circulation Formula
<label>Naturopathic Food Medicine Formulations:</label>
Amino Acid Creamed Beet, Intestinal Decongestion & Food Transition Tonic, 	Junglelaya, 85% Protein
<label>Vitamin and Nutraceutical Supplements:</label>
Cardio Vita, Enzyme Therapy, Alpha Lipoic Acid, L-Arginine, Lipotropic Factor, Red 	Blood Cell Builder, N-Acetyl Cysteine, L-Taurine, L-Arginine
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Ozone Rectal Insufflations, Ionic Foot Detox Bath
<label>Vegetable Juice Concentrates:</label>
Celery, cabbage, apple, tomato, spinach, lemon, plum.
<label>Support:</label>
Pancreas, liver, heart, digestion, detoxification, cardio-vascular, nerves.  (Homeopathic
Remedies; #17, #63, #875)
</div>
<div id="N_LACTATE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--BILIRUBIN--%>
<tr><td colspan="4"><h2>BILIRUBIN, TOTAL</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealBILIRUBIN" runat="server" Text="0.6"></asp:Literal></td>
<td class="brd">40 - 70</td>
<td class="brd">0.3 - 1.00</td>
<td class="brd" id="Td1BILIRUBIN" runat="server"><asp:Literal ID="LtrBILIRUBIN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1BILIRUBIN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_BILIRUBIN" runat="server" visible="false">
<label>Generally associated with Low Bilirubin:</label>
Liver sluggishness, cellular oxygen deficiency, enzyme deficiency, caffeine, aspirin, over
medicated, drug use, deficiencies in Omega 6 essential fatty acids, choline, inositol,
L-Methionine, organic sulfur, N-Acetyl Cystein, taurine, Vitamin E, spleen congestion,
system infection, iron deficiency anemia, allergies, toxicity, impaired digestion.
<label>Corresponding need for nutritional support for Low Bilirubin:</label>
Blood Builder, Iron, Liver Detox, Anti Toxin, Immune Power Formula, Allergy Detox, 
Red Cloven Blossom, Turmeric, Antioxidant, 57 Super Minerals, Duo C Complex, 
Chinese Garlic.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liver Formula
<label>Homeopathic Remedies Number:</label> # 13, # 22, # 29, # 819
<label>Botanical Healing Tea Formulations:</label>
Liver Detox
<label>Naturopathic Food Medicine Formulations:</label>
Beet Juice, Spinach with Whey
<label>Vitamin and Nutraceutical Supplements:</label>
Liver Formula, Dandelion Root, milk Thistle
<label>Clinical Treatments Indicated:</label>
I.V. Alpha Lipoic Acid Drip, Colon Hydrotherapy, rife Vibrational Medicine 
<label>Vegetable Juice Concentrates:</label>
Oregano, oil, lemon, asparagus, spinach, jalapeño, beet, plum, fig, broccoli, cauliflower.
<label>Support:</label>
Liver detoxification, lymph, spleen, immune system, gall bladder.  (Homeopathic Remedies;
#10, #63, #807, #808, #817, #819) 
</div>
<div id="I_BILIRUBIN" runat="server" visible="false">
<label>Bilirubin Total stand alone indicators generally associated with:</label>
Liver function and efficiency, bile duct, lymph, spleen, immune gauge, infection fighting capability and toxin disposing powers of the liver
</div>
<div id="H_BILIRUBIN" runat="server" visible="false">
<label>Generally associated with High Bilirubin:</label>
Liver toxin overwhelm, toxicity, excess alcohol, caffeine, soda, sugar, fried foods, junk foods,
constipation, medications, drugs, liver inflammation, liver dysfunction, gall bladder
obstruction, liver disease, deficiencies in zinc, Vitamin’s C, A, E, thiamine, cobalamin, panathenic acid,  organic sulfur, choline, inositol, taurine, autointoxication, lymphatic system congestion, stressed out liver, hepatitis, over use of oral contraceptives, anemia, immune malfunction, blood stream saturated with morbid materials, septic state 
<label>Corresponding need for nutritional support for High Bilirubin:</label>
Liver Detox, Dandelion, Milk Thistle, Alfalfa Juice, Chinese Garlic, L-Cysteine, Organic
Sulfur, Lipotropic Factors, Phosphadtyl Choline, Super Oil, Liver/Gall bladder Flush, glandular support for pineal, pituitary, brain, hypothalamus, adrenals, spleen
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Sulfur, Liver Formula, Liquid Silver 
<label>Homeopathic Remedies Number:</label>  # 1, # 4, # 6, # 10
<label>Botanical Healing Tea Formulations:</label>
Liver Detox Formula
<label>Naturopathic Food Medicine Formulations:</label>
Super Oil, Amino Acid Creamed Beet Juice Powder, Spinach Juice with Whey, Liver 	Detoxification, Green Drink, Morning Health Drink, Bedtime Bowel Tonic
<label>Vitamin and Nutraceutical Supplements:</label>
Omega 3, Enzyme Therapy, Lipotropic Factors, Lignan, Phosphadtyl Choline, 	Organic Sulfur, Liver Formula, N-Acetyl Cysteine, L-Laurine 
<label>Clinical Treatments Indicated:</label>
Rife Vibrational Medicine, I.V. Alpha Lipoic Acid Drip. I.V. Hydrogen Peroxide 	Drip, 	Ozone Therapy, Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Oregano, oil, lemon, asparagus, spinach, jalapeño, beet, plum, fig, broccoli, cauliflower.
<label>Support:</label>
Liver detoxification, lymph, spleen, immune system, gall bladder.  (Homeopathic Remedies;
#10, #63, #807, #808, #817, #819) 
</div>
<div id="N_BILIRUBIN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--IRON--%>
<tr><td colspan="4"><h2>IRON</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealIRON" runat="server" Text="105"></asp:Literal></td>
<td class="brd">90 - 120</td>
<td class="brd">60 - 150</td>
<td class="brd" id="Td1IRON" runat="server"><asp:Literal ID="LtrIRON" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1IRON" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_IRON" runat="server" visible="false">
<label>Generally associated with Low Total Iron:</label>
Anemia, Excessive menstruation, hemorrhoids, aspirin use, junk food diet, premature aging, malnutrition, cells not repairing, inflammation, kidney disease, infections, stress anxiety, worry, rheumatoid arthritis, Vegetarianism, mal-absorption, liver sluggishness, free radical pathology, infection, vitamin C deficiency, stress overwhelm, deficiencies in iron, B-12 and C, folic acid,  manganese, chromium, molybdenum, vanadium, potential loss of hemoglobin necessary to carry oxygen to the cells and transport toxins and carbon dioxide out of the cells
<label>Corresponding need for nutritional support for Low Total Iron:</label>
Anti Anemia Complex, Anti Fatigue, Super Green, Irish Moss/Kelp, Sea Life, Blue/Green Algae, Red Blood Builder, Folic Acid, B-12, 28 Super Amino Acids, Endurall, Duo C Complex, Blood Building Broth.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Iron, Anti Anemia, Anti Fatigue, High Phenol Green Tea
<label>Homeopathic Remedies Number:</label>  # 4, # 9, # 34
<label>Botanical Healing Tea Formulations:</label>
Circulation Formula
<label>Naturopathic Food Medicine Formulations:</label>
Blood Building Broth, Green Drink, Spinach and Whey, Amino Acid Creamed Beet 	Juice, Amino Acid One Dozen Green Vegetable Juice, Vegetarian Blood Builder, 	Fortress Strong
<label>Vitamin and Nutraceutical Supplements:</label>
Anti Anemia, Anti Fatigue, Red Blood Cell Builder, Folic Acid, Duo C Complex, 	Hypericum, Mega B Complex
<label>Clinical Treatments Indicated:</label>
I.V. Super Nutritional Drip, Vitamin B-12 Shot
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, kale, mushroom, avocado, garlic, horseradish, green onion, plum, fig.
<label>Support:</label>
Liver, spleen, detoxification.  (Homeopathic Remedies:  #10, #63, #808, #819)
</div>
<div id="I_IRON" runat="server" visible="false">
<label>Total Iron stand alone indicators generally associated with:</label>
Tired Blood, anemia, cellular blood oxygen gauge, liver function, hemoglobin production
</div>
<div id="H_IRON" runat="server" visible="false">
<label>Generally associated with High Total Iron:</label>
Oral contraceptives, lead toxicity, heavy metal and/or environmental toxicity, liver overload, well water, tap water, excess junk food, hemochromatosis, spleen dysfunction, protein mal-absorption, paradoxin deficiency, cobalamin deficiency, allergies, iron toxicity, iron overload, chemical/environmental exposure excess blood fats jamming the electric transmission of oxygen, deficiencies in alpha lipoic acid, sulfur, enzymes, bio-flavanoids, cellular oxygen deficiency, autointoxication, use of synthetic iron supplements 
Corresponding need for nutritional support for High Total Iron:
Liver Detox, Maxi Cleanse, Fiber Max, Yarrow, L-Cystein, Organic Sulfur, Folic Acid, alfalfa Juice, Mega B Complex, Paradoxin, Cobalamin.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Toxicity Correction, Heavy Metal Detox, Liver Support
<label>Homeopathic Remedies Number:</label> # 4, # 6, # 10
<label>Botanical Healing Tea Formulations:</label>
Anti Toxin Tea, Blood Cleanse Tea, Detox Tea, Kidney Flush
<label>Naturopathic Food Medicine Formulations and Recipes:</label>
Morning Health Drink, Green Drink, Bedtime Bowel Tonic, Jug One Protocol, Jug Two 	Protocol
<label>Vitamin and Nutraceutical Supplements:</label>
Alpha Lipoic Acid, Organic Sulfur, Oral Chelation, Duo C Complex, Enzyme Therapy
<label>Clinical Treatments Indicated:</label>
I.V. Chelation Therapy, Colon Hydrotherapy, Liver Flush, Ozone Infused Far Infrared 	Detoxification Sauna, Naturopathic Detoxification, Ionic Foot Detox Bath with Ozone, 	I.V. Alpha Lipoic Acid
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, kale, mushroom, avocado, garlic, horseradish, green onion, plum, fig.
<label>Support:</label>
Liver, spleen, detoxification.  (Homeopathic Remedies:  #10, #63, #808, #819)
</div>
<div id="N_IRON" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--HDL--%>
<tr><td colspan="4"><h2>HDL-CHOLESTEROL</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealHDL" runat="server" Text="70"></asp:Literal></td>
<td class="brd">50 - 90</td>
<td class="brd">40 - 50</td>
<td class="brd" id="Td1HDL" runat="server"><asp:Literal ID="LtrHDL" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1HDL" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_HDL" runat="server" visible="false">
<label>Generally associated with Low HDL Cholesterol: </label>
Lack of fitness, precursor of obesity, excess carbohydrates, poorly controlled diabetes, excess sugar, junk foods, bad fats, human growth hormone deficiency, serum and cellular oxygen deficiency, under-performing thyroid, sex hormone deficiency, lack of protectors against blocked artery disease, increased risk of heart disease, bowel toxicity, fat gain, stress, blood pressure problems, poor fat utilization, male/female hormone deficiency, under-performing pituitary, thyroid and liver, stroke, heart, cardio-vascular, liver and immune system at risk
<label>Corresponding need for nutritional support for Low HDL Cholesterol:</label>
Wheat Germ Oil, Oil of Evening Primrose, Co-Enzyme, Q-10 with Omega 3 essential fatty acids, Adrenal Restoration, Endurall, Iodine/Iodide, Hawthorn Berry, L-Carnitine
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Zinc
<label>Homeopathic Remedies Number:</label>  # 819
<label>Botanical Healing Tea Formulations:</label>
Adrenal Support, Brain Formula
<label>Naturopathic Food Medicine Formulations:</label>
Super Oil, Nitric Oxide Precursor, Thyroid Broth
<label>Vitamin and Nutraceutical Supplements:</label>
Lignan, Borage Oil, I-Thyroid
<label>Clinical Treatments Indicated:</label>
Foot Detox Bath, Colon Hydrotherapy, Rife Vibrational Medicine
<label>Vegetable Juice Concentrates:</label>
Beet, spinach
<label>Support:</label>
Liver.  (Homeopathic Remedies:  # 10, # 829)
</div>
<div id="I_HDL" runat="server" visible="false">
<label>HDL Cholesterol stand alone indicators generally associated with:</label>
Healthy cholesterol, fat utilization, coronary risk factor, immune liver, male/female hormone, human growth hormone, thyroid, infection, inflammation, takes cholesterol out of the peripheral issue transporting it to the liver (known as good cholesterol). 
</div>
<div id="H_HDL" runat="server" visible="false">
<label>Generally associated with High HDL Cholesterol:</label>
The higher the better, this is the desired goal, cardio, chemo, immune protective, brain, hormone optimizer
<label>Corresponding need for nutritional support for High HDL Cholesterol:</label>
Super Oil, Co-Enzym,e Q-10 with Omega 3 Essential Fatty Acids
<label>Vegetable Juice Concentrates:</label>
Beet, spinach
<label>Support:</label>
Liver.  (Homeopathic Remedies:  # 10, # 829)
</div>
<div id="N_HDL" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--LDL--%>
<tr><td colspan="4"><h2>LDL-CHOLESTEROL</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealLDL" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 100</td>
<td class="brd">0 - 130</td>
<td class="brd" id="Td1LDL" runat="server"><asp:Literal ID="LtrLDL" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1LDL" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_LDL" runat="server" visible="false">
<label>Generally associated with Low LDL Cholesterol:</label>
This is the desired goal, as close to 0 is ideal
<label>Corresponding need for nutritional support for Low LDL Cholesterol:</label>
Super Oil, Co-Enzyme Q-10 with Omega 3 Essential Fatty Acids
<label>Vegetable Juice Concentrates:</label>
Lemon, plum, beet, kale, garlic
<label>Support:</label>
Liver, cardio-vascular, thyroid, pituitary.  (Homeopathic Remedies:  # 10, # 54, # 66, # 805)
</div>
<div id="I_LDL" runat="server" visible="false">
<label>LDL Cholesterol stand alone indicators generally associated with:</label>
Potentially dangerous artery plaque depositor, coronary and stroke risk factors, fat utilization, hormonal and brain function, fatty liver overload monitor
</div>
<div id="H_LDL" runat="server" visible="false">
<label>Generally associated with High LDL Cholesterol:</label>
Lack of fitness, excess sugar, junk food, bad fats, fried foods, sugar, drugs, trans fats, and fast foods, diabetes, excess carbohydrates, alcoholism, over eating, cellular oxygen deficiency, Omega 3 essential fatty acid deficiency, adult onset, human growth hormone deficiency, forgetfulness, brain fog, attention deficit, under-performing thyroid, syndrome X, premature aging, poor fat utilization, liver dysfunction, cardio-vascular and stroke risk factor, under-performing pituitary, male/female hormone deficiency, brain starvation, compromising immune system, hypothyroid, malnutrition
<label>Corresponding need for nutritional support for High LDL Cholesterol:</label>
Cholesterol/Triglycerides, Nature’s Flush, Hawthorn Berry, Alpha Lipoic Acid, L-Cystein, Phosphadtyl Choline, Vitamin E Complex
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cardio Vascular Formula, Sulfur, Liver Support, Germanium, Anti-Cholesterol Formula
<label>Homeopathic Remedies Number:</label>  # 10
<label>Botanical Healing Tea Formulations:</label>
Brain Enhancer, Adrenal Formula, High Phenol Green Tea
<label>Naturopathic Food Medicine Formulations:</label>
Super Oil, Nitric Oxide Precursor
<label>Vitamin and Nutraceutical Supplements:</label>
L-Arginine, L-Carnitine, Co-Enzyme Q-10 with Omega 3 Essential Fatty Acids, Omega 		3 Salmon Oil, Ultra E Complex, Liver Formula, I-Thyroid, Absorption enhancer, Adrenal 	Hormone Restoration, Lignan, Lipotropic Factors 
<label>Clinical Treatments Indicated:</label>
I.V. Chelation Therapy, Ozone Infused Far infrared Detoxification Sauna
<label>Vegetable Juice Concentrates:</label>
Lemon, plum, beet, kale, garlic
<label>Support:</label>
Liver, cardio-vascular, thyroid, pituitary.  (Homeopathic Remedies:  # 10, # 54, # 66, # 805)
</div>
<div id="N_LDL" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CHOL--%>
<tr><td colspan="4"><h2>CHOLESTEROL/HDL RATIO</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCHOL" runat="server" Text="2"></asp:Literal></td>
<td class="brd">0 - 3</td>
<td class="brd">0 - 4.5</td>
<td class="brd" id="Td1CHOL" runat="server"><asp:Literal ID="LtrCHOL" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CHOL" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CHOL" runat="server" visible="false">
<label>Generally associated with Low Cholesterol/HDL Ratio:</label>
This is the desired goal.  Low risk of cardio-vascular disease
<label>Corresponding need for nutritional support for Low Cholesterol/HDL Ratio:</label>
Super Oil, Co-Enzyme Q-10 with Omega 3 Essential Fatty Acids, Iodine/Iodide, Green Drink
<label>Vegetable Juice Concentrates:</label>
Beet, Spinach, lemon, fig, plum
<label>Support:</label>
Liver.  (Homeopathic Remedies: # 10, # 819)
</div>
<div id="I_CHOL" runat="server" visible="false">
<label>Cholesterol/HDL Ratio stand alone indicators generally associated with:</label>
Gauge of overall health, cardio-vascular risk gauge, balanced metabolism, liver, brain hormonal, cardio-vascular and thyroid function.
</div>
<div id="H_CHOL" runat="server" visible="false">
<label>Generally associated with High Cholesterol/HDL Ratio:</label>
Increased cardio-vascular and stroke risk, early indicator of diabetes, obesity, premature aging, liver sluggishness, deficiency in essential fatty acids, excess use of drugs, sugar, alcohol, trans fats, fast foods, carbohydrates, hypothyroidism, human growth hormone deficiency, brain starvation
<label>Corresponding need for nutritional support for High Cholesterol/HDL Ratio:</label>
Cholesterol/Triglycerides Formula, Lipotropic Factors, Nature’s Flush, Fat to Energy, Liver Detox, Fat Emulsifier, Phosphadtyl Choline, Super Oil
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Zinc
<label>Homeopathic Remedies Number:</label>  # 8
<label>Botanical Healing Tea Formulations:</label>
Adrenal Support, Brain Formula
<label>Naturopathic Food Medicine Formulations:</label>
Super Oil, Nitric Oxide Precursor, Thyroid Broth
<label>Vitamin and Nutraceutical Supplements:</label>
Lignan, Borage Oil, I-Thyroid
<label>Clinical Treatments Indicated:</label>
Foot Detox Bath, Colon Hydrotherapy, Rife Vibrational Medicine
<label>Vegetable Juice Concentrates:</label>
Beet, Spinach, lemon, fig, plum
<label>Support:</label>
Liver.  (Homeopathic Remedies: # 10, # 819)
</div>
<div id="N_CHOL" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--GAMMA_CT--%>
<tr><td colspan="4"><h2>GAMMA GT</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealGAMMA_CT" runat="server" Text="36"></asp:Literal></td>
<td class="brd">32 - 40</td>
<td class="brd">22 - 50</td>
<td class="brd" id="Td1GAMMA_CT" runat="server"><asp:Literal ID="LtrGAMMA_CT" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1GAMMA_CT" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_GAMMA_CT" runat="server" visible="false">
<label>Generally associated with Low GAMMA (GT):</label>
Sluggish liver, anemia, deficiencies in enzymes, zinc, B-6, citrus bio-flavanoid, iron, folic acid, B-12, magnesium, N-Acetyl 
cysteine, glutathione, Vitamin E, hormonal deficiency
<label>Corresponding need for nutritional support for Low GAMMA (GT):</label>
Zinc, magnesium, Vitamin E, Liver Formula
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Stomach and Digestion Formula, Liver Support, Liquid Sulfur
<label>Homeopathic Remedies Number:</label>  # 819
<label>Botanical Healing Tea Formulations:</label>
Detox Tea, High Phenol Green Tea
<label>Naturopathic Food Medicine Formulations:</label>
Super C Active
<label>Vitamin and Nutraceutical Supplements:</label>
Pyridoxine, Mega B Complex 1000, Duo C Complex, N-Acetyl Cystein, Ultra E 	Complex
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Ionic Foot Detox Bath
<label>Vegetable Juice Concentrates:</label>
Spinach, lemon, beet, zucchini, artichoke, plum, kale
<label>Support:</label>
Liver, pancreas, gonadal, stomach/digestion, pituitary, prostate.  (Homeopathic Remedies:  # 8, 
# 10, # 40, # 803, # 804, # 808, # 819, # 820, # 821, # 835
</div>
<div id="I_GAMMA_CT" runat="server" visible="false">
<label>GAMMA (GT) stand alone indicators generally associated with:</label>
Alcohol use, caffeine addiction, liver, gall bladder, pancreas efficiency, inflammatory marker, highly sensitive liver enzyme 
gauge, liver health indicator
</div>
<div id="H_GAMMA_CT" runat="server" visible="false">
<label>Generally associated with High GAMMA (GT):</label>
Alcohol use, caffeine addiction, gall bladder, pancreas, sluggishness, drug addiction, excess of sugar, bad fats, junk 
foods, medications, Tylenol, over eating, colon impaction, liver inflammation, liver under-performance, enlarged prostate, heavy 
metal and/or chemical exposure, autointoxication, bile duct blockage, pancreatitis, hepatitis, deficiencies in enzymes, alpha 
lipoic acid, conjugated linoleic acid, choline, inositol, glutathione, taurine, Vitamin E, 
N-Acetyl Cystein, L-Methinine
Corresponding need for nutritional support for High GAMMA (GT):
Omega 3/6 Essential Fatty Acids, Super Oil, Medazyme, Phosphadtyl Choline, Pancreatin, Milk Thistle, Liver Detox
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liver Support, Pancreas Support, Liquid Sulfur
<label>Homeopathic Remedies Number:</label>  # 10
<label>Botanical Healing Tea Formulations:</label>
Detox Tea, Essaic Formula, Liver Detox, Pancreas Tea
<label>Naturopathic Food Medicine Formulations:</label>
Super Oil, Green Drink, Morning Health Drink, Bedtime Bowel Tonic
<label>Vitamin and Nutraceutical Supplements:</label>
Pancreatin, Lipotropic Factors, Phosohadtyl Choline, lignin, Liver Formula, Milk Thistle, 	Alpha Lipoic Acid, Fat to 
Energy, Taurine, N-Acetyl Cysteine, Enzyme Therapy, Fiber 	Max, Maxi Cleanse
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Ozone Insufflations
<label>Vegetable Juice Concentrates:</label>
Spinach, lemon, beet, zucchini, artichoke, plum, kale
<label>Support:</label>
Liver, pancreas, gonadal, stomach/digestion, pituitary, prostate.  (Homeopathic Remedies:  # 8, 
# 10, # 40, # 803, # 804, # 808, # 819, # 820, # 821, # 835
</div>
<div id="N_GAMMA_CT" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--IRON_BINDING--%>
<tr><td colspan="4"><h2>IRON BINDING CAPACITY</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealIRON_BINDING" runat="server" Text="255"></asp:Literal></td>
<td class="brd">205 - 305</td>
<td class="brd">112 - 400</td>
<td class="brd" id="Td1IRON_BINDING" runat="server"><asp:Literal ID="LtrIRON_BINDING" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1IRON_BINDING" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_IRON_BINDING" runat="server" visible="false">
<label>Generally associated with Low Iron Binding Capacity:</label>
Blocked receptor site, heavy metal toxicity, highly toxic condition, environmental overload, fatigue, dizziness, rapid heartbeat, muscle loss, brain fog, cellular oxygen deficiency, 
hemochromatosis, protein mal-absorption, liver sluggishness, B-12, B-6, folic acid deficiencies 
<label>Corresponding need for nutritional support for Low Iron Binding Capacity:</label>
Sea Life, Anti Anemia Complex, Anti Fatigue, Red Blood Builder, Endurall, Folic Acid.
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, tomato, broccoli, celery, garlic, onion, parsley.
<label>Support:</label>
Liver.  (Homeopathic Remedies:  #10, #819)
</div>
<div id="I_IRON_BINDING" runat="server" visible="false">
<label>Iron Binding Capacity stand alone indicators generally associated with:</label>
The ability of iron to bind to its receptor site and get into the cell, gauge for too much or too little iron, heavy metal toxicity and/or environmental pollution occupying the receptor site.
</div>
<div id="H_IRON_BINDING" runat="server" visible="false">
<label>Generally associated with High Iron Binding Capacity:</label>
Hemocromatosis, inflammation, liver mal-function, iron deficiency anemia, blood loss,
bio-flavanoid deficiency
<label>Corresponding need for nutritional support for Low/High Iron Binding Capacity:</label>
Duo C Complex, Bio-Flavanoids.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Heavy Metal Detox
<label>Homeopathic Remedies Number:</label>  # 69
<label>Botanical Healing Tea Formulations:</label>
Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Jug Two Protocol, Morning Health Drink, Green Drink, Bedtime 	Bowel Tonic
<label>Vitamin and Nutraceutical Supplements:</label>
Oral Chelation Therapy
<label>Clinical Treatments Indicated:</label>
I.V. Ozone Therapy, I.V. Chelation Therapy, Hyperbaric Oxygen Therapy, Ionic Foot 	Detoxt Bath, Ozone Infused Far Infrared Detoxification Sauna
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, tomato, broccoli, celery, garlic, onion, parsley.
<label>Support:</label>
Liver.  (Homeopathic Remedies:  #10, #819)
</div>
<div id="N_IRON_BINDING" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--VLDL_CHEMISTRY--%>
<tr><td colspan="4"><h2>VLDL (CHEMISTRY)</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealVLDL_CHEMISTRY" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 15</td>
<td class="brd">0 - 25</td>
<td class="brd" id="Td1VLDL_CHEMISTRY" runat="server"><asp:Literal ID="LtrVLDL_CHEMISTRY" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1VLDL_CHEMISTRY" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_VLDL_CHEMISTRY" runat="server" visible="false">
<label></label>Generally associated with Low VLDL Cholesterol:
This is the desired goal, 0 is ideal.
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, dandelion, kale, broccoli, lemon, fig, plum, sweet potato, avocado
<label>Support:</label>
Liver, pancreas, weight management, immune system.  (Homeopathic Remedies:  # 10, # 66, 
# 825)
</div>
<div id="I_VLDL_CHEMISTRY" runat="server" visible="false">
<label>VLDL Cholesterol stand alone indicators generally associated with:</label>
Arteries gluing up, dangerous LDL Cholesterol oxidizing, danger signal of heart disease, stroke, Alzheimer’s precursor
</div>
<div id="H_VLDL_CHEMISTRY" runat="server" visible="false">
<label>Generally associated with High VLDL Cholesterol:</label>
Increased risk of coronary heart disease, plaque buildup, lack of exercise, HGH deficiency, excess sugar, carbohydrates, medications, junk food, alcohol, trans fats, fried foods, hypothyroidism
<label>Corresponding need for nutritional support for High VLDL Cholesterol:</label>
Super Oil, Liver/Gall Bladder Flush, Borage Oil, Fat Emulsifier, Lignan, Iodine/Iodide
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liver Support Formula, Cholesterol Formula, Immune Formula, Cardio Vascular Formula
<label>Homeopathic Remedies Number:</label>  # 40, # 63, # 89
<label>Botanical Healing Tea Formulations:</label>
Fat Burner, Essiac Formula, Blood Cleanser
<label>Naturopathic Food Medicine Formulations:</label>
Naturopathic Purification Powder, Garden V, Liver Detoxifier
<label>Vitamin and Nutraceutical Supplements:</label>
Cholesterol/Triglycerides Formula, Nature’s Flush, Fat to Energy, Lipotropic Factors, 
L-Cystine, Liver Purifier
<label>Clinical Treatments Indicated:</label>
I.V. Alpha Lipoic Acid, Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, dandelion, kale, broccoli, lemon, fig, plum, sweet potato, avocado
<label>Support:</label>
Liver, pancreas, weight management, immune system.  (Homeopathic Remedies:  # 10, # 66, 
# 825) 
</div>
<div id="N_VLDL_CHEMISTRY" runat="server" visible="false">N/A</div>
</td>
</tr>
<tr><td colspan="4"><h2>HEMATOLOGY</h2></td></tr>
<%--WBC--%>
<tr><td colspan="4"><h2>WBC</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealWBC" runat="server" Text="7.3"></asp:Literal></td>
<td class="brd">6.3 - 8.3</td>
<td class="brd">3.8 - 10.8</td>
<td class="brd" id="Td1WBC" runat="server"><asp:Literal ID="LtrWBC" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1WBC" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_WBC" runat="server" visible="false">
<label>Generally associated with Low WBC:</label>
Immune overwhelm due to toxicity, bone marrow suppression, enzyme deficiency, radiation, chemotherapy, over use of medication, sugar, alcohol, fast foods, malnutrition, exhausted immune system and high susceptibility, low defense capacity, pancreatic insufficiency, environmental exposure, cellular oxygen deficiency, mal-absorption, bowel impaction, slow transition time of food, allergies, adrenal exhaustion, multiple nutritional deficiencies, hepatitis, auto immune condition due to toxicity overrun
<label>Corresponding need for nutritional support for Low WBC:</label>
Glutathine, Immune Formula, Essaic, Lymph Formula, Bowel Tonic, Super C Active, Astruglas
<label>Vegetable Juice Concentrates:</label>
Mushroom, horseradish, broccoli, carrot, peas, spinach, plum, green pepper, asparagus, parsley, oranges, lemon.
<label>Support:</label>
Immune system, lymphatic system, liver, thymus, colon, detoxification, lungs,  (Homeopathic Remedies;  #4, #63, #807, #817)		
</div>
<div id="I_WBC" runat="server" visible="false">
<label>WBC stand alone indicators generally associated with:</label>
Thymus gland and immune system competency.
</div>
<div id="H_WBC" runat="server" visible="false">
<label>Generally associated with High WBC:</label>
Nerves, stress, anxiety, depression, worry, negative mental attitude, inflammatory conditions, viral/bacterial infections, toxicity, cellular oxygen deficiency, heavy metal toxicity, multiple nutritional deficiencies, and parasites.
<label>Corresponding need for nutritional support for High/Low WBC:</label>
Glutathine, Liver Detox, Immune Formula, Lung Forumula, Detox Tea, Green Drink, Beta Carotene, Vitamin E Complex, Chinese Garlic, Super C Active, Echinacea, Propolis, Turmeric, Stress & Toxin Protector.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Zinc, Liquid Silver, Toxicity Correction, Immune Formula
<label>Homeopathic Remedies Number:</label> # 4, # 12, # 14, # 15, # 17/18, # 807
<label>Botanical Healing Tea Formulations:</label>
Immune Tea
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Blood Purification, Garden V, Fortress Strong, Nerve Rejuvenator, 	Magnesium Broth, Bio-Flavanoids, Lycopene Broth, VF-50
<label>Vitamin and Nutraceutical Supplements:</label>
Duo C Complex, Enzyme Therapy, Nature’s Healer, Fiber Max, Maxi Cleanse, 	Absorption Enhancer, Immune Power Formula, Pancreatin, Adrenal Restoration, 
Allergy Formula
<label>Clinical Treatments Indicated:</label>
I.V. Hydrogen Peroxide Drip, I.V. Immune Drip
<label>Vegetable Juice Concentrates:</label>
Mushroom, horseradish, broccoli, carrot, peas, spinach, plum, green pepper, asparagus, parsley, oranges, lemon.
<label>Support:</label>
Immune system, lymphatic system, liver, thymus, colon, detoxification, lungs,  (Homeopathic Remedies;  #4, #63, #807, #817)		
</div>
<div id="N_WBC" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--RBC--%>
<tr><td colspan="4"><h2>RBC</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealRBC" runat="server" Text="5.5"></asp:Literal></td>
<td class="brd">4.9 - 5.9</td>
<td class="brd">4.4 - 6.1</td>
<td class="brd" id="Td1RBC" runat="server"><asp:Literal ID="LtrRBC" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1RBC" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_RBC" runat="server" visible="false">
<label>Generally associated with Low RBC:</label>
Anemia, malaise, fatigue, dizziness, cold extremities, rapid heartbeat, deficiencies in citrus, bio-flavanoid, folic acid, L-Arginine, L-Carnintine, B-6, B complex, iron, vitamin B-12, vitamin C, protein and bone marrow, blood loss, toxic chemical exposure, iron anemia, susceptibility towards chronic infection, Addison’s disease, Hodgkin’s, Lupus
Corresponding need for nutritional support for Low RBC:
Blood Building Broth, Red Blood Cell Builder, Endurall, Wheat Germ Oil, Alfalfa Juice, Capsicum, Anti Anemia Complex, Anti Fatigue.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Iron, Anti Fatigue, Anti Anemia
<label>Homeopathic Remedies Number:</label> # 29, # 32, # 34
<label>Botanical Healing Tea Formulations:</label>
Energy Tea
<label>Naturopathic Food Medicine Formulations:</label>
Bio-Flavanoids, Green Drink, Beet Juice Powder
<label>Vitamin and Nutraceutical Supplements:</label>
Endurall, Folic Acid, Red Blood Builder, Ultra E Complex, Duo C Complex, 
L-Carnitine, L-Arginine, Lipotropic Factor, Anti Anemia, Anti Fatigue, Cardio 
Vascular Formula
<label>Clinical Treatments Indicated:</label>
Hyperbaric Oxygen Therapy, I.V. Ozone Therapy
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, broccoli, jalapeno, parsley, peas, alfalfa, green onion, horseradish, garlic, kale, plum
<label>Support:</label>
Adrenals, lungs, circulation, heart, nutrition.  (Homeopathic Remedies:  #23, #66, #825, #826, #829)
</div>
<div id="I_RBC" runat="server" visible="false">
<label>RBC stand alone indicators generally associated with:</label>
Oxygen carrying capacity, total number of red blood cells gauge, water, temperature, carbon dioxide, glucose, nutrition to cells regulator.
</div>
<div id="H_RBC" runat="server" visible="false">
<label>Generally associated with High RBC:</label>
Poor blood circulation, high blood pressure, blood vessels clotting up, early warning pre-cursor to stroke, dehydration, pulmonary problems, high altitude, congenital heart disease, poor color to skin and nails, excess medications, chemical exposure, heavy metal toxicity, environmental pollution, autointoxication, liver problems, poor circulation, adrenal depletion, deficiency in vitamin E, C, and N-Acetyl Cysteine, hemochromatosis, smoking, obesity, lack of fitness, susceptibility towards pulmonary disease, cardio-vascular disease, cellular oxygen deficiency
<label>Corresponding need for nutritional support for High RBC:</label>
Free Radical Neutralizer, Turmeric, Anti Oxidant, Beta Carotene, Yarba Santa, Goat Whey, Vitamin E, Super Endurance, Adrenal Restoration, Mega B Complex 1000. Lung Tea, Green Drink, Duo C complex, Chinese Garlic, Oregano Oil, Irish Moss/Kelp.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Circulation Formula
<label>Homeopathic Remedies Number:</label> # 825
<label>Botanical Healing Tea Formulations:</label>
Circulation Formula
<label>Naturopathic Food Medicine Formulations:</label>
Blood Building Broth, Jug One Protocol, Green Drink, Naturopathic Purification Powder, 	Super Oil, Amino Acid Creamed One Dozen Green Vegetables Juice
<label>Vitamin and Nutraceutical Supplements:</label>
N-Acetyl Cysteine, L-Arginine, L-Carnitine, Hawthorn Berry, Nature’s flush, Cardio 	Vita, Ultra E complex, Wheat Germ Oil, Nawokinase, Chinese Medicine Garlic
<label>Clinical Treatments Indicated:</label>
I.V. Chelation Therapy, Colon Hydrotherapy												
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, broccoli, jalapeno, parsley, peas, alfalfa, green onion, horseradish, garlic, kale, plum
<label>Support:</label>
Adrenals, lungs, circulation, heart, nutrition.  (Homeopathic Remedies:  #23, #66, #825, #826, #829)
</div>
<div id="N_RBC" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--HEMOGLOBIN--%>
<tr><td colspan="4"><h2>HEMOGLOBIN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealHEMOGLOBIN" runat="server" Text="15.5"></asp:Literal></td>
<td class="brd">14.5 - 16.5</td>
<td class="brd">13.5 - 17.6</td>
<td class="brd" id="Td1HEMOGLOBIN" runat="server"><asp:Literal ID="LtrHEMOGLOBIN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1HEMOGLOBIN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_HEMOGLOBIN" runat="server" visible="false">
<label>Generally associated with Low Hemoglobin:</label>
Cellular oxygen deficiency, deficiency in iron, folic acid, copper, vitamin B complex, protein, vitamin B-6, vitamin B-12, vitamin C, blood loss, menses, anemia, hypochlorhydria, mal-absorption, toxicity, early cancer warning signal
<label>Corresponding need for nutritional support for Low Hemoglobin:</label>
Duo C Complex, Blood Building Broth, Mega B Complex 1000, Ionic Copper, Endurall, Super Juice 22 Vegetables, Irish Moss/Kelp, Anti Anemia, Enzyme Therapy
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Iron, Toxicity Correction
<label>Homeopathic Remedies Number:</label> # 8, # 34 
<label>Botanical Healing Tea Formulations:</label>
Bowel Tea, Circulation Formula
<label>Naturopathic Food Medicine Formulations:</label>
Blood Building Broth, Jug one Protocol, Morning Health Drink, Green Drink, Bedtime 	Bowel Tonic
<label>Vitamin and Nutraceutical Supplements:</label>
Absorption Enhancer, anti Anemia Complex, Red Blood Cell Builder, Endurall, Fiber 	Max, Maxi Cleanse
<label>Clinical Treatments Indicated:</label>
Hyperbaric Oxygen Therapy, Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Spinach, beet, carrot, yam, broccoli
<label>Support:</label>
Spleen, cardio-vascular, adrenals, lungs, immune system, detoxification, liver, bone marrow
(Homeopathic Remedies:  #63, #807, #808, #825, #826) 						
</div>
<div id="I_HEMOGLOBIN" runat="server" visible="false">
<label>Hemoglobin stand alone indicators generally associated with:</label>
Cellular/Blood oxygen deficiency, bone marrow efficiency, carries oxygen to cells and takes carbon dioxide out
</div>
<div id="H_HEMOGLOBIN" runat="server" visible="false">
<label>Generally associated with High Hemoglobin:</label>
Excessive red blood cell production, blood thickening, early warning signal of stroke, spleen and pulmonary dysfunction, hypoxia, allergies, high altitudes, iron toxicity, metabolic acidosis, excessive bone marrow activity, medications, asthma, adrenal fatigue, deficiencies in vitamin C, vitamin E, citrus, bio-flavanoids, dehydration, hemochromatosis 
<label>Corresponding need for nutritional support for High Hemoglobin:</label>
Beta Carotene, Vitamin E Complex, Wheat Germ Oil, Adrenal Restoration, Yarba Santa, Mega B Complex 1000, Chinese Garlic, Oregano Oil Extract, Duo C Complex, Immune Power Formula, Lung Formula.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Adrenal Support
<label>Homeopathic Remedies Number:</label> # 46, # 51, # 829
<label>Botanical Healing Tea Formulations:</label>
Blood Cleanse, Energy Tea, Immune Tea, Circulation Formula
<label>Naturopathic Food Medicine Formulations:</label>
Green Drink, Beet Juice, Jug One Protocol, Super C Active, Vegetarian Blood builder, 	Cellular Detoxification, Amino Acid Creamed One Dozen Vegetables Juice
<label>Vitamin and Nutraceutical Supplements:</label>
Immune Power Formula, Duo C Complex, Ultra E Complex, Adrenal Hormone 	Restoration
<label>Clinical Treatments Indicated:</label>
Hyperbaric Oxygen Therapy, Ozone Infused Far infrared Detoxification Sauna
<label>Vegetable Juice Concentrates:</label>
Spinach, beet, carrot, yam, broccoli
<label>Support:</label>
Spleen, cardio-vascular, adrenals, lungs, immune system, detoxification, liver, bone marrow
(Homeopathic Remedies:  #63, #807, #808, #825, #826) 						
</div>
<div id="N_HEMOGLOBIN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--HEMATOCRIT--%>
<tr><td colspan="4"><h2>HEMATOCRIT</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealHEMATOCRIT" runat="server" Text="46"></asp:Literal></td>
<td class="brd">43 - 49</td>
<td class="brd">40 - 52</td>
<td class="brd" id="Td1HEMATOCRIT" runat="server"><asp:Literal ID="LtrHEMATOCRIT" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1HEMATOCRIT" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_HEMATOCRIT" runat="server" visible="false">
<label>Generally associated with Low Hematocrit:</label>
Nutritional deficiency anemia, cellular oxygen deficiency, toxicity, blood loss
<label>Corresponding need for nutritional support for Low Hematocrit:</label>
Liver Formula, Endurall, Super Endurance. Wheat Grass.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Magnesium, Immune Formula
<label>Homeopathic Remedies Number:</label> # 4
<label>Botanical Healing Tea Formulations:</label>
Immune Tea, Detox Tea, Lung Tea
<label>Naturopathic Food Medicine Formulations:</label>
Stomach Rebuilding Powder, Yogurt health Drink, Green Drink, Jug One Protocol, 	Bedtime Bowel Tonic
<label>Vitamin and Nutraceutical Supplements:</label>
Fiber Max, Maxi Cleanse, Alpha Lipoic Acid
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Hyperbaric Oxygen Therapy
<label>Vegetable Juice Concentrates:</label>
Alfalfa, green drink, beet, spinach, jalapeno, kale
<label>Support:</label>
Nutrition, circulation, oxygen, liver.  (Homeopathic Remedies:  #10, #66)
</div>
<div id="I_HEMATOCRIT" runat="server" visible="false">
<label>Hematocrit stand alone indicators generally associated with:</label>
Determines the concentration of oxygen carrying red blood cells in blood, measures proportion of red blood cells in plasma, measures the amount of hemoglobin contained in the blood, red blood cell production.
</div>
<div id="H_HEMATOCRIT" runat="server" visible="false">
<label>Generally associated with High Hematocrit:</label>
Colon toxicity, intestine inflammation, dehydration, spleen overwhelm, allergies, shock, stress overwhelm, immune system, asthma, respiratory problems, high altitude, hemochromatosis
<label>Corresponding need for nutritional support for High Hematocrit:</label>
Stress & Toxin Protector, 57 Super Minerals, Anti Oxidant, Super Juice, 22 Vegetables, Nerve Builder,  Hypericum.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Bio-Ox, Liquid Enzymes, Aloe Vera Formula
<label>Homeopathic Remedies Number:</label> # 46, # 51, # 60
<label>Botanical Healing Tea Formulations:</label>
Respiratory Tea
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Morning health Drink, Green Drink, Bedtime Bowel Tonic
<label>Vitamin and Nutraceutical Supplements:</label>
Duo C Complex, Fiber Max, Maxi Cleanse
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Alfalfa, green drink, beet, spinach, jalapeno, kale
<label>Support:</label>
Nutrition, circulation, oxygen, liver.  (Homeopathic Remedies:  #10, #66)
</div>
<div id="N_HEMATOCRIT" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--MCV--%>
<tr><td colspan="4"><h2>MCV</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealMCV" runat="server" Text="90"></asp:Literal></td>
<td class="brd">85 - 95</td>
<td class="brd">80 - 100</td>
<td class="brd" id="Td1MCV" runat="server"><asp:Literal ID="LtrMCV" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1MCV" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_MCV" runat="server" visible="false">
<label>Generally associated with Low MCV:</label>
Mal-absorption syndrome resulting in multiple nutritional deficiencies, heavy metal, lead and/or environmental toxicity, cellular oxygen deficiency, severe iron deficiency, anemia, radiation exposure, hypochlorhydria, deficiencies in Bio-Flavanoids, Vitamins B-6 and B-12, chlorophyll, red blood cells, folic acid, intestinal parasites, free radical pathology, internal bleeding
<label>Corresponding need for nutritional support for Low MCV:</label>
Anti Anemia Complex, Blood Builder Broth, Ionic Copper, Pyridoxine, Irish Moss/Kelp.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Stomach & Digestion Formula, Heavy Metal Detoxification, Toxicity Correction
<label>Homeopathic Remedies Number:</label> # 7, # 8, # 10, # 820
<label>Botanical Healing Tea Formulations:</label>
Detox Tea,
<label>Naturopathic Food Medicine Formulations:</label>
Green Drink, Bedtime Bowel Tonic
<label>Vitamin and Nutraceutical Supplements:</label>
Fiber Max, Maxi Cleanse, Absorption Enhancer, Enzyme Therapy, 57 Super Minerals, 
36 Nutrients in One
<label>Clinical Treatments Indicated:</label>
Hyperbaric Oxygen Therapy, I.V. Chelation Therapy, Ozone Infused Far Infrared 	Detoxification Therapy, Ionic Foot Detox Bath with Ozone
<label>Vegetable Juice Concentrates:</label>
Kale, spinach, avocado, asparagus, tomato
<label>Support:</label>
Liver, circulation, nutrition, oxygen.  (Homeopathic Remedy:  #819)
</div>
<div id="I_MCV" runat="server" visible="false">
<label>MCV stand alone indicators generally associated with:</label>
Nutritional deficiency syndrome, screens for occult alcoholic excess, over medication, sugar, devitalized foods, red blood cell production gauge
</div>
<div id="H_MCV" runat="server" visible="false">
<label>Generally associated with High MCV:</label>
Parasitic infections, malnutrition, megaloblastic anemia, excess use of alcohol, over medication, poor nutrition, intestinal parasites, cellular oxygen deficiency, high altitude, multiple nutritional deficiencies, homocysteine toxicity
<label>Corresponding need for nutritional support for High MCV:</label>
Folic Acid, B-12, Endurall, Mega B Complex 1000, Capsicum, Vitamin E Complex.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Germanium, Acidosis Correction
<label>Homeopathic Remedies Number:</label> # 59
<label>Botanical Healing Tea Formulations:</label>
Bowel Tea, Immune Tea, Blood Cleanser
<label>Naturopathic Food Medicine Formulations:</label>
Bedtime Bowel Tonic, Parasite Annihilation Powder, Naturopathic Purification Powder, 	Worm Weed, Yogurt Health Drink, Blood Purification
<label>Vitamin and Nutraceutical Supplements:</label>
Chinese Medicinal Garlic, Oregano Extract, Parasite Protection, Worm Weed
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy,  Ozone Rectal Insufflations, I.V. Hydrogen Peroxide Drip
<label>Vegetable Juice Concentrates:</label>
Kale, spinach, avocado, asparagus, tomato
<label>Support:</label>
Liver, circulation, nutrition, oxygen.  (Homeopathic Remedy:  #819)
</div>
<div id="N_MCV" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--MCH--%>
<tr><td colspan="4"><h2>MCH</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealMCH" runat="server" Text="30"></asp:Literal></td>
<td class="brd">29 - 31</td>
<td class="brd">27 - 33</td>
<td class="brd" id="Td1MCH" runat="server"><asp:Literal ID="LtrMCH" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1MCH" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_MCH" runat="server" visible="false">
<label>Generally associated with Low MCH:</label>
Heavy metal toxicity, cellular/blood oxygen deficiency, internal bleeding, radiation exposure, iron deficiency anemia, hypochlorhydria, parasites, cells not regenerating, deficiencies in iron, vitamins B-6 and C, deficiency in L-Arginine, severely anemic
<label>Corresponding need for nutritional support for Low MCH:</label>
Oral Chelation, 57 Super Minerals, Pyridoxine, Duo C Complex, Anti Anemia Complex, Endurall, Chlorellina, Super Juice 22  Vegetables, Red Blood Cell Builder, Blood Builder Broth, Green Drink.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Heavy Metal Detoxification, Anti Anemia Formula
<label>Homeopathic Remedies Number:</label> # 63, # 819
<label>Botanical Healing Tea Formulations:</label>
Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Super C Active, Bio-Flavanoids
<label>Vitamin and Nutraceutical Supplements:</label>
Duo C Complex, Pyridoxine, Mega B Complex 1000
<label>Clinical Treatments Indicated:</label>
Hyperbaric Oxygen Therapy, I.V. Hydrogen Peroxide Drip
<label>Vegetable Juice Concentrates:</label>
Mushroom, avocado, tomato, garlic, asparagus
<label>Support:</label>
Nutrition, liver, oxygen.  (Homeopathic Remedy:  #40)
</div>
<div id="I_MCH" runat="server" visible="false">
<label>MCH stand alone indicators generally associated with:</label>
Cellular/Serum oxygen deficiency, determines the type of anemia and nutritional deficiency, measures the amount of hemoglobin present in red blood cells, measures the severity of anemia
</div>
<div id="H_MCH" runat="server" visible="false">
<label>Generally associated with High MCH:</label>
Deficiencies in vitamins B-12 and C, folic acid, cobolamin, iron, pyridoxine, parasite infestation.     
<label>Corresponding need for nutritional support for High MCH:</label>
Super Endurance, Wheat Germ Oil, Mega B Complex 1000.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Anti Anemia Formula, Anti Fatigue Formula
<label>Homeopathic Remedies Number:</label> # 10, # 34
<label>Botanical Healing Tea Formulations:</label>
Blood Cleanse
<label>Naturopathic Food Medicine Formulations:</label>
Citrus Bio-Flavanoids, Blood Building Broth, Super Food Drink, Green Drink, Red 	Blood Builder, VF-50 
<label>Vitamin and Nutraceutical Supplements:</label>
Red Blood Cell Builder, Super Endruall, Ultra E Complex, L-Arginine, Folic Acid, 
Duo C Complex, L-Glutamine, Enzyme Therapy
<label>Clinical Treatments Indicated:</label>
Hyperbaric Oxygen Therapy, I.V. Ozone Therapy
<label>Vegetable Juice Concentrates:</label>
Mushroom, avocado, tomato, garlic, asparagus
<label>Support:</label>
Nutrition, liver, oxygen.  (Homeopathic Remedy:  #40)
</div>
<div id="N_MCH" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--MCHC--%>
<tr><td colspan="4"><h2>MCHC</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealMCHC" runat="server" Text="33.5"></asp:Literal></td>
<td class="brd">32 - 35</td>
<td class="brd">30 - 37</td>
<td class="brd" id="Td1MCHC" runat="server"><asp:Literal ID="LtrMCHC" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1MCHC" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_MCHC" runat="server" visible="false">
<label>Generally associated with Low MCHC:</label>
Severe iron deficiency, mal-absorption, parasite infestation, junk foods, cellular oxygen deficiency, hypochlorhydria, deficiencies in folic acid, vitamin C, L-Glutamine, chemical/environment toxicity, parasites.
<label>Corresponding need for nutritional support for Low MCHC:</label>
Ionic Iron, Ionic Copper. Super C Active, Irish Moss/Kelp.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Iron
<label>Homeopathic Remedies Number:</label># 8
<label>Botanical Healing Tea Formulations:</label>
Blood Cleanse, High Phenol Green Tea
<label>Naturopathic Food Medicine Formulations:</label>
Morning Health Drink, parasite Annihilation Powder, Bowel Tonic, Amino Acid 	Creamed Beet Juice, Amino Acid Creamed Broccoli Juice
<label>Vitamin and Nutraceutical Supplements:</label>
Absorption Enhancer, L-Glutamine, Duo C Complex, Folic Acid, Red Blood Cell 	Builder, Anti Anemia Formula, anti Fatigue Formula, Co-Enzyme Q-10, 
Alpha Lipoic Acid
<label>Clinical Treatments Indicated:</label>
Hyperbaric Oxygen Therapy, Ozone Rectal Insufflations
<label>Vegetable Juice Concentrates:</label>
Green pepper, beet, kale, spinach, garlic, green onion
<label>Support:</label>
Nutrition.  (Homeopathic Remedy:  #813)
</div>
<div id="I_MCHC" runat="server" visible="false">
<label>MCHC stand alone indicators generally associated with:</label>
Cellular/Serum oxygen deficiency anemia, monitoring gauge for anemia and cellular oxygen therapy, determines the concentrate of hemoglobin in the red blood cells and hematrocrit
</div>
<div id="H_MCHC" runat="server" visible="false">
<label>Generally associated with High MCHC:</label>
Deficiencies in vitamin B-12, vitamin C, enzymes, folic acid, citrus bio-flavanoids, 
L-Arginine, L-Glutamine, poor nutrition, excess use of alcohol, sugar, soda, synthetic sweetness, medications, faulty dietary habits.
<label>Corresponding need for nutritional support for High MCHC:</label>
Super Oil, Endurall, Super Food, Super Green.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cardio Vascular Formula
<label>Homeopathic Remedies Number:</label> # 825
<label>Botanical Healing Tea Formulations:</label>
Blood Cleanser
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Super C Active, Green Drink, 
<label>Vitamin and Nutraceutical Supplements:</label>
Red Blood Cell Builder, Duo C Complex, Enzyme Therapy, l-Arginine, L-Carnitine
<label>Clinical Treatments Indicated:</label>
Exercise Induced Oxygen Saturated Therapy, Hyperbaric Oxygen Therapy, Colon 	Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Green pepper, beet, kale, spinach, garlic, green onion
<label>Support:</label>
Nutrition.  (Homeopathic Remedy:  #813)
</div>
<div id="N_MCHC" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--RDW--%>
<tr><td colspan="4"><h2>RDW</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealRDW" runat="server" Text="13.3"></asp:Literal></td>
<td class="brd">11.3 - 15.3</td>
<td class="brd">10.1 - 16.5</td>
<td class="brd" id="Td1RDW" runat="server"><asp:Literal ID="LtrRDW" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1RDW" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_RDW" runat="server" visible="false">
<label>Generally associated with Low RDW:</label>
Inflammation, dehydration, colon toxicity, immune system compromised, deficiencies in 
vitamin C, zinc, enzymes.
<label>Corresponding need for nutritional support for Low RDW:</label>
Maxi Cleanse, Fiber Max, Immune Power Formula, Endurall, Green Drink.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Zinc, Liquid Enzymes, Bio-Ox
<label>Homeopathic Remedies Number:</label> # 4
<label>Botanical Healing Tea Formulations:</label>
Blood Cleanse, Immune Tea
<label>Naturopathic Food Medicine Formulations:</label>
VF-50, Cellular Detoxification, Green Drink, Amino Acid Creamed Broccoli Juice, 	Blood Purification
<label>Vitamin and Nutraceutical Supplements:</label>
Enzyme Therapy, Duo C Complex, Nature’s Healer
<label>Clinical Treatments Indicated:</label>
Hyperbaric Oxygen Therapy, Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Kale, beet, mushroom, spinach, squash, horseradish
<label>Support:</label>
Liver, spleen, immune system, lymphatic system.  (Homeopathic Remedy:  #808)
</div>
<div id="I_RDW" runat="server" visible="false">
<label>RDW stand alone indicators generally associated with:</label>
Measures blood cell volume weight, a health gauge of the red blood cells and production of healthy bone marrow. distinguishes early stage deficiency anemia for chronic disease
</div>
<div id="H_RDW" runat="server" visible="false">
<label>Generally associated with High RDW:</label>
High metal toxicity, chemical exposure toxicity, lymphatic congestion, liver sluggishness, blood toxicity, excess use of alcohol, medications, synthetic sweeteners, deficiencies in citrus bio-flavanoids, folic acid, B complex, glycine, iron, B-12, vitamin C, digestive enzymes.
<label>Corresponding need for nutritional support for High LDH:</label>
Oral Chelation, Super Oil, Co-Enzyme Q-10, Alpha Lipoic Acid, Omega 3 Essential Fatty Acids, Immune Power Formula, Vitamin E Complex.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Toxicity Correction
<label>Homeopathic Remedies Number:</label> # 63
<label>Botanical Healing Tea Formulations:</label>
Blood Cleanse
<label>Naturopathic Food Medicine Formulations:</label>
Citrus Bio-Flavanoids, Super Oil
<label>Vitamin and Nutraceutical Supplements:</label>
Duo C Complex, Mega B Complex 1000, Anti Anemia Complex, Enzyme Therapy, 	Endurall
<label>Clinical Treatments Indicated:</label>
I.V. Vitamin C Drip, Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Kale, beet, mushroom, spinach, squash, horseradish
<label>Support:</label>
Liver, spleen, immune system, lymphatic system.  (Homeopathic Remedy:  #808)
</div>
<div id="N_RDW" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--PLATELET_COUNT--%>
<tr><td colspan="4"><h2>PLATELET COUNT</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealPLATELET_COUNT" runat="server" Text="285"></asp:Literal></td>
<td class="brd">235 - 335</td>
<td class="brd">130 - 440</td>
<td class="brd" id="Td1PLATELET_COUNT" runat="server"><asp:Literal ID="LtrPLATELET_COUNT" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1PLATELET_COUNT" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_PLATELET_COUNT" runat="server" visible="false">
<label>Generally associated with Low Platelets:</label>
Overuse of medication, chemotherapy, radiation exposure, nutritional deficiencies, excess sugar, coffee, trans fats, liver dysfunction, anemia, free radical pathology, bone marrow suppression, heavy metal and/or environmental exposure, immune system dysfunction and challenge, deficiencies in Omega 3/6 essential fatty acid enzymes, Vitamin E, excessive blood thinness 
<label>Corresponding need for nutritional support for Low Platelets:</label>
Potassium Broth, Red Blood Building Factors, Green Drink, Chlorophyll, Grape Seed Extract, Propolis, Cobalamin, Paradoxin, Mega B Complex 1000, Essaic, Immune Formula, Liver Detox, Tiger’s Food.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Heavy Metal Detox, Toxicity Correction
<label>Homeopathic Remedies Number:</label>  # 4
<label>Botanical Healing Tea Formulations:</label>
Circulation Formula, Cardio Vascular Formula, Blood Cleanse
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Super C Active, Green Drink, Bedtime Bowel Tonic, Bio-Flavanoid 	Complex, Super Oil, Blood Purification, Amino Acids Creamed One Dozen Green 	Vegetables Juice
<label>Vitamin and Nutraceutical Supplements:</label>
Immune Powder Formula, Duo C Complex, Co-Enzyme Q-10, L-Arginine, L-Glutamine, 	Ultra E Complex, Omega 3
<label>Clinical Treatments Indicated:</label>
Hyperbaric Oxygen Therapy, Colon Hydrotherapy, I.V. Ozone Therapy, B-12 Shot
<label>Vegetable Juice Concentrates:</label>
Kale, peas, parsley, green pepper, asparagus, zucchini, pea pods.
<label>Support:</label>
Immune system, detoxification,  (Homeopathic Remedies:  #4, #63, #807)
</div>
<div id="I_PLATELET_COUNT" runat="server" visible="false">
<label>Platelets stand alone indicators generally associated with:</label>
Platelet activity is necessary for blood clotting, vascular integrity, vasoconstriction, adhesion, and plugging and repair of breaks in small vessels.
</div>
<div id="H_PLATELET_COUNT" runat="server" visible="false">
<label>Generally associated with High Platelets:</label>
Inflammatory disorder, iron deficiency, vitamin B-12 deficiency, excess alcohol, junk foods, medications, infections, bowel impaction, deficiencies in L-Glutamine, L-Arginine, Omega 3 and 6 essential fatty acids, citrus bio-flavanoids, vitamin E, zinc, amino acid deficiency, anemia, free radical pathology
<label>Corresponding need for nutritional support for High Platelets:</label>
L-Arginine Complex, L-Cystine, Organic Sulfur, Immune Power Formula, Essaic, Lymphatic Detox Formula, Anti Anemia Complex, Endurall
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Immune Formula, Liquid Iron, Liquid Zinc	
<label>Homeopathic Remedies Number:</label>  # 4
<label>Botanical Healing Tea Formulations:</label>
Blood Cleanse
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Green Drink, Citrus Bio-Flavanoids, Bedtime Bowel Tonic, Super Oil
<label>Vitamin and Nutraceutical Supplements:</label>
N-Acetyl Cystein, Duo C Complex, Turmeric, Quercetin, Ultra E complex, 
L-Glutamine, L-Arginine, Borage Oil, Omega 3, Lignan, Immune Power Formula, 	Hawthorn Berry, Nanokinase
<label>Clinical Treatments Indicated:</label>
I.V. Ozone Therapy
<label>Vegetable Juice Concentrates:</label>
Kale, peas, parsley, green pepper, asparagus, zucchini, pea pods.
<label>Support:</label>
Immune system, detoxification,  (Homeopathic Remedies:  #4, #63, #807)
</div>
<div id="N_PLATELET_COUNT" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--NETROPHILS--%>
<tr><td colspan="4"><h2>NEUTROPHILS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealNETROPHILS" runat="server" Text="57"></asp:Literal></td>
<td class="brd">47 - 67</td>
<td class="brd">40 - 74</td>
<td class="brd" id="Td1NETROPHILS" runat="server"><asp:Literal ID="LtrNETROPHILS" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1NETROPHILS" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_NETROPHILS" runat="server" visible="false">
<label>Generally associated with Low Neutrophils:</label>
Bacterial infection, viral infection, parasite infestation, colon toxicity, cellular oxygen deficiency.
<label>Corresponding need for nutritional support for Low Neutrophils:</label>
Duo C Complex, Immune Power Formula, Chinese Medicinal Garlic, Astruglas.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid 	Zinc, Liquid Silver
<label>Homeopathic Remedies Number:</label> # 1, # 807, # 817
<label>Botanical Healing Tea Formulations:</label>
Immune Formula
<label>Naturopathic Food Medicine Formulations:</label>
Blood Purification, Cellular Detoxification, Jug One Protocol, Amino Acid Creamed 	Shiitake
<label>Vitamin and Nutraceutical Supplements:</label>
Duo C Complex, Ultra E Complex, Vitamin K-2, Nature’s Healer, Beta Carotene
<label>Clinical Treatments Indicated:</label>
I.V. Hydrogen Peroxide Drip, Colon Hydrotherapy, I.V. Ozone Drip, Immune Drip
<label>Vegetable Juice Concentrates:</label>
Green pepper, garlic, green onion, mushroom, lemon, horseradish.
<label>Support:</label>
Immune System.  (Homeopathic Remedies:  #1, #4, #807)
</div>
<div id="I_NETROPHILS" runat="server" visible="false">
<label>Neutrophils stand alone indicators generally associated with:</label>
Bacteria neutralizer.
</div>
<div id="H_NETROPHILS" runat="server" visible="false">
<label>Generally associated with High Neutrophils:</label>
Generalized inflammation, viral/bacterial infection, autointoxication.
<label>Corresponding need for nutritional support for High Neutrophils:</label>
Super C Active, Rosehips, Bio-Flavanoids, Naturopathic Purification Powder.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Sulfur, Liquid Zinc, Liquid Silver, Immune Formula
<label>Homeopathic Remedies Number:</label> # 1
<label>Botanical Healing Tea Formulations:</label>
Blood Cleanser
<label>Naturopathic Food Medicine Formulations:</label>
Green Drink, Jug One Protocol, Amino Acid Creamed One Dozen Green Vegetables 	Juice
<label>Vitamin and Nutraceutical Supplements:</label>
Ultra E Complex, Vitamin D-3, Vitamin K-2, Alfalfa Juice, Duo C Complex
<label>Clinical Treatments Indicated:</label>
I.V. Hydrogen Peroxide Drip, I.V. Ozone Therapy, I.V. Immune Drip
<label>Vegetable Juice Concentrates:</label>
Green pepper, garlic, green onion, mushroom, lemon, horseradish.
<label>Support:</label>
Immune System.  (Homeopathic Remedies:  #1, #4, #807)
</div>
<div id="N_NETROPHILS" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--LYMPHOCYTES--%>
<tr><td colspan="4"><h2>LYMPHOCYTES</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealLYMPHOCYTES" runat="server" Text="34"></asp:Literal></td>
<td class="brd">28 - 40</td>
<td class="brd">19 - 48</td>
<td class="brd" id="Td1LYMPHOCYTES" runat="server"><asp:Literal ID="LtrLYMPHOCYTES" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1LYMPHOCYTES" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_LYMPHOCYTES" runat="server" visible="false">
<label>Generally associated with Low Lymphocytes:</label>
Trapped toxins in lymph system, lymph system not moving, highly toxic condition, over eating, bowel toxicity, Hodgkin’s disease, stress, anxiety, fear, worry, depression, negative mental outlook, under-performing thyroid, couch potatoism, chemotherapy/radiation exposure, anemia,  adrenal exhaustion, bacterial infection, free radical pathology, immune system compromised prednisone effect, over use of medication, sugar, devitalized foods, alcohol, faulty diet, infection, Hepatitis
<label>Corresponding need for nutritional support for Low Lymphocytes:</label>
Ionic Silver, Super C Active, Immune formula, Bedtime Bowel Tonic, Lymph Formula, Liver Detox, Morning Health Drink, Green Drink, Tomato Juice Powder, Potassium Broth, Jewish Penicillin, Super Juice 22 Vegetables, Chinese Garlic, Blood Purification, Beta Carotene, Duo C Complex.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Immune Formula
<label>Homeopathic Remedies Number:</label>  # 817, # 823
<label>Botanical Healing Tea Formulations:</label>
Lymph Tea, Decongestion Tea, Kidney Flush
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Kidney Cleanse, Spinach Juice with Goat’s Whey
<label>Vitamin and Nutraceutical Supplements:</label>
Lymphatic and Sinus Decongestion, Fiber Max, Maxi Cleanse, Corn Silk, Bearberry
<label>Clinical Treatments Indicated:</label>
Lymphatic Drainage Therapy, Colon Hydrotherapy, Hyperbaric Oxygen Therapy, 	Exercise Induced Oxygen Saturation Therapy
<label>Vegetable Juice Concentrates:</label>
Kale, lemon, celery, parsley, alfalfa, jalapeno, green onion, horseradish, garlic.
<label>Support:</label>
Immune system, liver lymph system, detoxification.  (Homeopathic Remedies:  #10, #63, #807, #817, #819)
</div>
<div id="I_LYMPHOCYTES" runat="server" visible="false">
<label>Lymphocytes stand alone indicators generally associated with:</label>
Lymph system competency antibody production, killer cell indicator, susceptible to congestive heart and kidney dysfunction, lymphatic congestion, tumors, Hodgkin’s disease, severe and debilitating illnesses 
</div>
<div id="H_LYMPHOCYTES" runat="server" visible="false">
<label>Generally associated with High Lymphocytes:</label>
Toxicity, stagnant lymph system, liver overloaded, bowel toxicity, slow metabolism, slow transition time of food, compromised immune system due to toxicity, cold, flu, cough, viral bacterial overload and infection, cellular oxygen deficiencies, heavy metal toxicity, environmental/chemical overload, over use of medications, sugar, devitalized foods, junk foods, alcohol, drugs, antibiotics, backed up colon, infection, autointoxication, multiple nutritional deficiencies, retaining toxic fluids, susceptible to lymphatic leukemia, mumps, measles, upper respiratory tract problems, chicken pox, Crohn’s disease, Addison’s disease, infection mononucleosis, lymphocytosis 
<label>Corresponding need for nutritional support for High Lymphocytes:</label>
Candida Detox, Allergy Detox, Lymph Formula, Anti Tonic, Immune Formula, Parasite Annihilators, Bedtime Bowel Tonic, Green Drink.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liver Detox Formula, Bladder/Kidney Formula
<label>Homeopathic Remedies Number:</label>  # 817
<label>Botanical Healing Tea Formulations:</label>
Kidney Flush, Lymph Tea, Immune Tea
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Jug Two Protocol, Morning Health Drink, Green Drink, 
Bedtime  Bowel Tonic, VF-50
<label>Vitamin and Nutraceutical Supplements:</label>
Norwegian Vitamin A, Beta Carotene, Astragulas, enzyme Therapy, Absorption 	Enhancer, Liver Formula, N-Acetyl Cystein, Quercetin, turmeric, Red Blood Cell 	
Builder
<label>Clinical Treatments Indicated:</label>
I.V. Hydrogen Peroxide Drip, Hyperbaric Oxygen Therapy, Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Kale, lemon, celery, parsley, alfalfa, jalapeno, green onion, horseradish, garlic.
<label>Support:</label>
Immune system, liver lymph system, detoxification.  (Homeopathic Remedies:  #10, #63, #807, #817, #819)
</div>
<div id="N_LYMPHOCYTES" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--MONOCYTES--%>
<tr><td colspan="4"><h2>MONOCYTES</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealMONOCYTES" runat="server" Text="6.2"></asp:Literal></td>
<td class="brd">5.7 - 6.7</td>
<td class="brd">2.4 - 9.0</td>
<td class="brd" id="Td1MONOCYTES" runat="server"><asp:Literal ID="LtrMONOCYTES" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1MONOCYTES" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_MONOCYTES" runat="server" visible="false">
<label>Generally associated with Low Monocytes:</label>
Immune system compromised, toxic overwhelm, viral load, immune deficiency, bone marrow depression, bowel toxicity, cellular oxygen deficiency, multiple nutritional deficiencies, morbific material accumulation, excess medications, radiation, chemotherapy, junk foods, alcohol, adult onset, human growth hormone deficiency, prednisone treatment, infections, deficiencies in 
N-Acetyl Cysteine, Vitamins B-12, C, F and folic acid
<label>Corresponding need for nutritional support for Low Monocytes:</label>
Immune Power Formula, Chinese Garlic, Duo C Complex.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Immune Formula
<label>Homeopathic Remedies Number:</label>  # 4, # 807
<label>Botanical Healing Tea Formulations:</label>
Detox Formula
<label>Naturopathic Food Medicine Formulations:</label>
Blood Purification, Cellular Detoxification, Amino Acid Creamed Shiitake, Amino Acid 	Creamed One Dozen Green Vegetables Juice
<label>Vitamin and Nutraceutical Supplements:</label>
N-Acetyl Cystein, Quercetin, Turmeric, Red Blood Cell Builder, Duo C Complex, Vitamin F, Folic Acid, Ultra E Complex, Immune Power Formula, Astruglas
<label>Clinical Treatments Indicated:</label>
I.V. Immune Drip, I.V. Hydrogen Peroxide Drip
<label>Vegetable Juice Concentrates:</label>
Junglelaya, FV/50, celery juice
<label>Support:</label>
Immune system, lymph system, detoxification.  (Homeopathic Remedies:  #4, #63, #804, #17)
</div>
<div id="I_MONOCYTES" runat="server" visible="false">
<label>Monocytes stand alone indicators generally associated with:</label>
Immune fighters, eats up the bad guys, measures the fitness of the body’s 2nd line of defense, the body’s phagocytic cells ability to remove injured and dead cells and the ability to produce the antiviral agent interferon.
</div>
<div id="H_MONOCYTES" runat="server" visible="false">
<label>Generally associated with High Monocytes:</label>
Highly toxic condition, Candida, inflammation, parasites, fungal, autointoxication, constipation, slow food transition, liver sluggishness, enzyme and multiple nutritional deficiencies, cellular oxygen deficiency, trapped lymphatic toxins, susceptibility to bacterial infections, T.B., ovary and /or breast carcinoma, ulcerated colitis, collagen disease, lymphoma, Hodgkin’s disease, monocytic leukemia, deficiencies in Bio-Flavanoids, Vitamins C and D, and L-Arginine
<label>Corresponding need for nutritional support for High Monocytes:</label>
Lemon, spinach, tomato, green pepper, celery, kale.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Germanium
<label>Homeopathic Remedies Number:</label> # 59
<label>Botanical Healing Tea Formulations:</label>
Immune Tea
<label>Naturopathic Food Medicine Formulations:</label>
Bedtime Bowel Tonic, Parasite Annihilation Powder, Naturopathic Purification Powder, 	Worm Weed, Yogurt Health Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Chinese Medicinal Garlic, Oregano Extract, Parasite Protector, Duo C Complex
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, I.V. Hydrogen Peroxide Drip, Ozone Rectal Insufflations
<label>Vegetable Juice Concentrates:</label>
Junglelaya, FV/50, celery juice
<label>Support:</label>
Immune system, lymph system, detoxification.  (Homeopathic Remedies:  #4, #63, #804, #17)
</div>
<div id="N_MONOCYTES" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--EOSINOPHILS--%>
<tr><td colspan="4"><h2>EOSINOPHILS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealEOSINOPHILS" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0.35</td>
<td class="brd">0 - 7</td>
<td class="brd" id="Td1EOSINOPHILS" runat="server"><asp:Literal ID="LtrEOSINOPHILS" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1EOSINOPHILS" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_EOSINOPHILS" runat="server" visible="false">
<label>Generally associated with Low Eosinophils:</label>
Adrenal exhaustion, excess medication, acute bacterial infections.  Low Eosinophils is desirable.  Score of zero is ideal.  
<label>Vegetable Juice Concentrates:</label>
Broccoli, cauliflower, spinach, tomato, wheat grass.	
<label>Support:</label>
Immune system, lungs, skin, detoxification.  (Homeopathic remedies;  #1, #4, #24, #26, #63, #807, #826)
</div>
<div id="I_EOSINOPHILS" runat="server" visible="false">
<label>Eosinophils stand alone indicators generally associated with:</label>
Protects the body from allergies, parasites, fungal infections, toxins, lung, skin, colon and G.I. tract reactions, phagocyte capability, measures the response to allergies and parasites, a secondary response to inflammation
</div>
<div id="H_EOSINOPHILS" runat="server" visible="false">
<label>Generally associated with High Eosinophils:</label>
Above zero – food and/or environmental allergies, hay fever, skin reactions, bronchial asthma, parasitic infestation, Candida Albicans, colon toxicity, over medication, antibiotics, sugar, junk foods, alcohol, slow food transition, cellular oxygen deficiency, over eating, parasite and allergy sensitivities, sometimes susceptible to asthma and hay fever, constipation, Candida, fungal infection, lung congestion, chronic skin problems, autointoxication, Hodgkin’s disease, lymphoma, immune disorders, infections, Chlamydia, scarlet fever, drug inter reaction, connective tissue disorder
<label>Corresponding need for nutritional support for High Eosinophils:</label>
Essaic Formula, Anti Toxin, Allergy Detox, Ionic Silver, Immune Power Formula, 
Duo C Complex 1000, Blood Purification.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Toxicity Correction, Liquid Silver, Immune Formula
<label>Homeopathic Remedies Number:</label> # 63, # 80
<label>Botanical Healing Tea Formulations:</label>
Allergy Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Jug Two Protocol, Super C Active, Blood Purifier
<label>Vitamin and Nutraceutical Supplements:</label>
Allergy Formula, Duo C Complex, Immune Power Formula, Fiber Max, Maxi Cleanse
<label>Clinical Treatments Indicated:</label>
Naturopathic Detoxification, Colon Hydrotherapy, I.V. Hydrogen Peroxide Drip
<label>Vegetable Juice Concentrates:</label>
Broccoli, cauliflower, spinach, tomato, wheat grass.	
<label>Support:</label>
Immune system, lungs, skin, detoxification.  (Homeopathic remedies;  #1, #4, #24, #26, #63, #807, #826)
</div>
<div id="N_EOSINOPHILS" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--BASOPHILS--%>
<tr><td colspan="4"><h2>BASOPHILS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealBASOPHILS" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0.7</td>
<td class="brd">0 - 1.5</td>
<td class="brd" id="Td1BASOPHILS" runat="server"><asp:Literal ID="LtrBASOPHILS" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1BASOPHILS" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_BASOPHILS" runat="server" visible="false">
<label>Generally associated with Low Basophils:</label>
Hyperthyroidism, stress reaction, prolonged drug, steroid, radiation, chemotherapy therapy, infections.  Low is desirable.  Ideal score is zero.
<label>Vegetable Juice Concentrates:</label>
Green pepper, lemon, asparagus.
<label>Support:</label>
Detoxification, immune system, thyroid.  (Homeopathic Remedies:  #2, #4, #63, #806)
</div>
<div id="I_BASOPHILS" runat="server" visible="false">
<label>Basophils stand alone indicators generally associated with:</label>
Intestinal tract toxicity, parasites, inflammation, phagocyte killer cell feedback indicator
</div>
<div id="H_BASOPHILS" runat="server" visible="false">
<label>Generally associated with High Basophils:</label>
Above zero – colon toxicity, slow transition time of food, allergies, enzyme deficiency, inflammation, hypochlorhydria, intestinal irritations, intestinal virus, liver problems, highly toxic condition, suppressed immune function, parasites, hypersensitivity to food chemicals, preservatives, additives, parasites, inflammation, hypothyroidism, susceptible to sinusitis, allergies, Hodgkin’s disease, leukemia
<label>Corresponding need for nutritional support for High Basophils:</label>
Allery Detox, Candida, Essaic, Immune & Liver Formula’s, I-Thyroid, Parasite Annihilator’s, Bowel Tonic, Absorption Enhancer, Chinese Garlic, Duo C Complex, Green Drink.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Silver, Liver Formula, Liquid Iodine, Immune Formula
<label>Homeopathic Remedies Number:</label>  # 40, # 63, # 80
<label>Botanical Healing Tea Formulations:</label>
Immune Tea, Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Stomach Rebuilding Powder, Jug One Protocol, Morning Health Drink, Green Drink, 	Yogurt Health Drink, Bedtime Bowel Tonic
<label>Vitamin and Nutraceutical Supplements:</label>
Fiber Max, Maxi Cleanse, Enzyme Therapy, Allergy Formula, Absorption Enhancer
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Green pepper, lemon, asparagus.
<label>Support:</label>
Detoxification, immune system, thyroid.  (Homeopathic Remedies:  #2, #4, #63, #806)
</div>
<div id="N_BASOPHILS" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--MPV--%>
<tr><td colspan="4"><h2>MPV</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealMPV" runat="server" Text="8.9"></asp:Literal></td>
<td class="brd">8.4 - 9.4</td>
<td class="brd">7.4 - 10.4</td>
<td class="brd" id="Td1MPV" runat="server"><asp:Literal ID="LtrMPV" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1MPV" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_MPV" runat="server" visible="false">
<label>Generally associated with Low MPV:</label>
Toxicity, chronic bacteria, cellular oxygen deficiency, heavy metal toxicity, chemical exposure, pancreatic deficiency, slow cell repair, adult onset, human growth hormone deficiency, adrenal exhaustion, stress, tension, anxiety, deficiencies in folic acid, Vitamins B-12, B-6, C and choline.
<label>Corresponding need for nutritional support for Low MPV:</label>
Enzyme Therapy, Immune Formula, Lymphatic Formula, Essaic Formula, Enzyme Therapy, Bromaline.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Heavy Metal Detoxification, Adrenal Support
<label>Homeopathic Remedies Number:</label> # 66, # 825
<label>Botanical Healing Tea Formulations:</label>
Circulation Formula, Detox Tea, Cardio Vascular Formula
<label>Naturopathic Food Medicine Formulations:</label>
Blood Purification, Green Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Cardio Vita, Duo C Complex, Ultra E Complex, L-Carnitine, L-Arginine, hawthorn 	Berry, Nanokanase
<label>Clinical Treatments Indicated:</label>
I.V. Chelation Therapy, I.V. Immune Drip, Hyperbaric Oxygen Therapy, I.V. Hydrogen Peroxide Drip, Colon Hydrotherapy, Exercise Induced Oxygen Saturation Therapy
<label>Vegetable Juice Concentrates:</label>
Green pepper, squash, mushroom.
<label>Support:</label>
Detoxification, cardio-vascular, liver, immune system.  (Homeopathic Remedies:  #4, #10, #63, #66)
</div>
<div id="I_MPV" runat="server" visible="false">
<label>MPV stand alone indicators generally associated with:</label>
Cardio-vascular risk detective, gauge the size of the platelets, their development time and turnover, inflammatory, liver and auto immune disease marker, allergy markers. 
</div>
<div id="H_MPV" runat="server" visible="false">
<label>Generally associated with High MPV:</label>
Multiple nutritional deficiencies, bone marrow suppression, immune system over run with toxins, deficiencies in bio-flavanoids, Vitamin C, Omega 3 and 6 essential fatty acids and chlorophyll 
<label>Corresponding need for nutritional support for High MPV:</label>
Turmeric, Enzymes Therapy, Immune Power Formula, Morning Health Broth, Green Drink, Bedtime Bowel Tonic, Duo C Complex.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Zinc, Immune Formula, Liquid Silver
<label>Homeopathic Remedies Number:</label>  # 4, # 807
<label>Botanical Healing Tea Formulations:</label>
Kidney Flush, Liver Detox, Anti Toxin Formula
<label>Naturopathic Food Medicine Formulations:</label>
Super Oil, Jug One Protocol, Jug Two Protocol, Morning Health Drink, Green Drink, 	Bedtime Bowel Tonic
<label>Vitamin and Nutraceutical Supplements:</label>
Duo C Complex, Red Blood Cell builder, Norwegian Vitamin A, Beta Carotene, 	Turmeric, Immune Power Formula, Fiber Max, Maxi Cleanse
<label>Clinical Treatments Indicated:</label>
I.V. Immune Drip, Colon Hydrotherapy, I.V. Hydrogen Peroxide, Naturopathic 	Detoxification
<label>Vegetable Juice Concentrates:</label>
Green pepper, squash, mushroom.
<label>Support:</label>
Detoxification, cardio-vascular, liver, immune system.  (Homeopathic Remedies:  #4, #10, #63, #66)
</div>
<div id="N_MPV" runat="server" visible="false">N/A</div>
</td>
</tr>
<tr><td colspan="4"><h2>URINALYSIS</h2></td></tr>
<%--SPECIFIC_GRAVITY--%>
<tr><td colspan="4"><h2>SPECIFIC GRAVITY</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealSPECIFIC_GRAVITY" runat="server" Text="1.10"></asp:Literal></td>
<td class="brd">1.005 - 1.015</td>
<td class="brd">1.005 - 1.020</td>
<td class="brd" id="Td1SPECIFIC_GRAVITY" runat="server"><asp:Literal ID="LtrSPECIFIC_GRAVITY" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1SPECIFIC_GRAVITY" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_SPECIFIC_GRAVITY" runat="server" visible="false">
<label>Generally associated with Low Specific Gravity:</label>
Kidney not clearing efficiently, liver/kidney dysfunction, over active posterior pituitary, sub-clinical dehydration, excess sugar, soda drinks, alcohol, coffee, chemical sweeteners, medications.
<label>Corresponding need for nutritional support for Low Specific Gravity:</label>
Electrolyte Formula, Bio-Ox, Super Salt, Cats Claw, Jug One Protocol, Kidney Tea, Cranberry Complex.
<label>Vegetable Juice Concentrates:</label>
Apple, celery, asparagus, fig.
<label>Support:</label>
Kidneys, liver, pituitary.  (Homeopathic Remedies;  #10, #29, #32, #805, #823)
</div>
<div id="I_SPECIFIC_GRAVITY" runat="server" visible="false">
<label>Specific Gravity stand alone indicators generally associated with:</label>
Posterior pituitary function, cellular hydration. Metabolic efficiency, toxicity levels, body fat storing or burning indicator
</div>
<div id="H_SPECIFIC_GRAVITY" runat="server" visible="false">
<label>Generally associated with High Specific Gravity:</label>
Cellular dehydration, heart congestion, liver sluggishness, electrolyte depletion, metabolic acidosis, hyper-metabolic state, excess liver metabolites under performing, posterior pituitary.
<label>Corresponding need for nutritional support for High Specific Gravity:</label>
Jug One Protocol, L-Arginine Complex, Bio-Ox, Electrolyte Formula, Kidney Flush, Liver Detox Formula.
<label>Vegetable Juice Concentrates:</label>
Apple, celery, asparagus, fig.
<label>Support:</label>
Kidneys, liver, pituitary.  (Homeopathic Remedies;  #10, #29, #32, #805, #823)
</div>
<div id="N_SPECIFIC_GRAVITY" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--PH--%>
<tr><td colspan="4"><h2>PH</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealPH" runat="server" Text="6.5"></asp:Literal></td>
<td class="brd">6.4 - 6.8</td>
<td class="brd">6.0 - 7.0</td>
<td class="brd" id="Td1PH" runat="server"><asp:Literal ID="LtrPH" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1PH" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_PH" runat="server" visible="false">
<label>Generally associated with Low Urine PH:</label>
Overly acid by-product, toxicity, faulty diet, excess use of sugar, sugar substitutes, diet soda, cola drinks, devitalized foods, lack of greens.
<label>Corresponding need for nutritional support for Urine PH:</label>
Cal/Mag, Super Green, Jug One Protocol, Acid PH Balancer, Alkaline Water.
<label>Vegetable Juice Concentrates:</label>
Mushroom, avocado, sweet potato, celery, tomato, spinach, asparagus, lemon, orange, squash, zucchini.
<label>Support:</label>
Detoxification, kidneys.  (Homeopathic Remedies:  #4, #63, #823)
</div>
<div id="I_PH" runat="server" visible="false">
<label>Urine PH stand alone indicators generally associated with:</label>
Acid/Alkaline balance.									   
</div>
<div id="H_PH" runat="server" visible="false">
<label>Generally associated with High Urine PH:</label>
Urinary tract infection, Candida, bacteria over run, flora imbalance.
<label>Corresponding need for nutritional support for High Urine PH:</label>
Crude Apple Cider Vinegar, Super C Active, Jug One Protocol, Kidney Flush, Immune Formula.
<label>Vegetable Juice Concentrates:</label>
Mushroom, avocado, sweet potato, celery, tomato, spinach, asparagus, lemon, orange, squash, zucchini.
<label>Support:</label>
Detoxification, kidneys.  (Homeopathic Remedies:  #4, #63, #823)
</div>
<div id="N_PH" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--U_GLUCOSE--%>
<tr><td colspan="4"><h2>U GLUCOSE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealU_GLUCOSE" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0.7</td>
<td class="brd">0 - 1.0</td>
<td class="brd" id="Td1U_GLUCOSE" runat="server"><asp:Literal ID="LtrU_GLUCOSE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1U_GLUCOSE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_U_GLUCOSE" runat="server" visible="false">
<label>Generally associated with Low Urine Glucose:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Apple, sweet potato, beet, orange, avocado, artichoke, zucchini, peas, plum		   
<label>Support:</label>
Pancreas, detoxification, liver.  (Homeopathic Remedies:  #10, #63, #808, #819)
</div>
<div id="I_U_GLUCOSE" runat="server" visible="false">
<label>Urine Glucose stand alone indicators generally associated with:</label>
Blood sugar balance.
</div>
<div id="H_U_GLUCOSE" runat="server" visible="false">
<label>Generally associated with High Urine Glucose:</label>
Syndrome X, uncontrolled diabetes, pancreatic problems, severe metabolic acidosis, kidney dysfunction, blood sugar spilling into urinary tract due to faulty diet, excess use of alcohol, medications, alcohol, sugar, sugar substitutes, devitalized foods, faulty eating habits, insulin resistance, body fat weight gain, fluid retention, chronic fatigue
<label>Corresponding need for nutritional support for High Urine Glucose:</label>
Mega B Complex 1000, Super Food, Chromium Picolonate, Licorice Root Complex, Super Drink, Tigers Food, Blood Sugar/Cortisol Formula, Golden Seal Root, GTF Formula
<label>Vegetable Juice Concentrates:</label>
Apple, sweet potato, beet, orange, avocado, artichoke, zucchini, peas, plum		   
<label>Support:</label>
Pancreas, detoxification, liver.  (Homeopathic Remedies:  #10, #63, #808, #819)
</div>
<div id="N_U_GLUCOSE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--BILIRUBIN_URINE--%>
<tr><td colspan="4"><h2>BILIRUBIN, URINE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealBILIRUBIN_URINE" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0.7</td>
<td class="brd">0 - 1.0</td>
<td class="brd" id="Td1BILIRUBIN_URINE" runat="server"><asp:Literal ID="LtrBILIRUBIN_URINE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1BILIRUBIN_URINE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_BILIRUBIN_URINE" runat="server" visible="false">
<label>Generally associated with Low Bilirubin:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, garlic, lemon, artichoke, mushroom, fig, plum.
<label>Support:</label>
Liver, colon.  (Homeopathic Remedies:  #10, #40, #819)
</div>
<div id="I_BILIRUBIN_URINE" runat="server" visible="false">
<label>Bilirubin stand alone indicators generally associated with:</label>
Liver efficiency.
</div>
<div id="H_BILIRUBIN_URINE" runat="server" visible="false">
<label>Generally associated with High Bilirubin:</label>
Liver sluggishness, liver not functioning efficiently, thickening blood, enzyme deficiency, constipation, enzyme deficiency, toxicity, gall bladder sluggishness, devitalized foods, multiple nutritional deficiencies, over eating, faulty dietary habits.
<label>Corresponding need for nutritional support for High Bilirubin:</label>
Liver Formula, Bowel Tonic, Jug One Protocol, Green Drink, Milk Thistle, L-Cystein, Organic Sulfur.
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, garlic, lemon, artichoke, mushroom, fig, plum.
<label>Support:</label>
Liver, colon.  (Homeopathic Remedies:  #10, #40, #819)
</div>
<div id="N_BILIRUBIN_URINE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--KETONE--%>
<tr><td colspan="4"><h2>KETONE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealKETONE" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0.7</td>
<td class="brd">0 - 1.0</td>
<td class="brd" id="Td1KETONE" runat="server"><asp:Literal ID="LtrKETONE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1KETONE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_KETONE" runat="server" visible="false">
<label>Generally associated with Low Ketone:</label>
Low is desirable.  Zero is ideal.	
<label>Vegetable Juice Concentrates:</label>
Sweet potato, artichoke, avocado.
<label>Support:</label>
Muscles, pituitary, digestion.  (Homeopathic Remedies:  #802, #803, #804, #820)			                                                  
</div>
<div id="I_KETONE" runat="server" visible="false">
<label>Ketone stand alone indicators generally associated with:</label>
</div>
<div id="H_KETONE" runat="server" visible="false">
<label>Generally associated with High Ketone:</label>
Metabolic acidosis, cells breaking down, severe psychological stress, fasting, over training, muscles & cells breaking down faster than they are repairing, fat burn off by-product, diabetes precursor, fasting, starvation, mal-nutrition, sudden weight loss.
<label>Corresponding need for nutritional support for High Ketone:</label>
Super Food Drink, 28 Super Amino Acids, RNA/DNA, Tigers Food, L-Carnitine, L-Arginine Complex, L-Glutamine, Green Drink, Endurall.
<label>Vegetable Juice Concentrates:</label>
Sweet potato, artichoke, avocado.
<label>Support:</label>
Muscles, pituitary, digestion.  (Homeopathic Remedies:  #802, #803, #804, #820)
</div>
<div id="N_KETONE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--BLOOD--%>
<tr><td colspan="4"><h2>BLOOD</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealBLOOD" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0.7</td>
<td class="brd">0 - 1.0</td>
<td class="brd" id="Td1BLOOD" runat="server"><asp:Literal ID="LtrBLOOD" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1BLOOD" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_BLOOD" runat="server" visible="false">
<label>Generally associated with Low Urinary Occult Blood:</label>
Low is desirable.  Zero is perfect.
<label>Vegetable Juice Concentrates:</label>
Lemon, orange, jalapeno, green pepper, tomato, garlic, plum.
<label>Support:</label>
Nutritional deficiencies, kidneys.  (Homeopathic Remedies:  #805, #823)                              
</div>
<div id="I_BLOOD" runat="server" visible="false">
<label>Urinary Occult Blood stand alone indicators generally associated with:</label>
Capillary integrity.
</div>
<div id="H_BLOOD" runat="server" visible="false">
<label>Generally associated with High Urinary Occult Blood:</label>
Collagen breakdown, vitamin C deficiency, kidney stone, trauma, injury, kidney dysfunction, ulcer, excess aspirin, bio-flavanoid deficiency, cellular degeneration, hemorrhoids, hormone imbalance, menstruation, weak capillary wall, potential of internal bleeding and cancer, prostate enlargement, perri menopause.
<label>Corresponding need for nutritional support for High Urinary Occult Blood:</label>
Duo C Complex, Super C Active, Cranberry Complex, San Palmetto, Blood Building Formula, Endurall, RNA/DNA, Green Drink, Rose Hip/Bio-Flavanoid Formula, Kidney Flush, Jug One Protocol.
<label>Vegetable Juice Concentrates:</label>
Lemon, orange, jalapeno, green pepper, tomato, garlic, plum.
<label>Support:</label>
Nutritional deficiencies, kidneys.  (Homeopathic Remedies:  #805, #823)                              
</div>
<div id="N_BLOOD" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--PROTEIN--%>
<tr><td colspan="4"><h2>PROTEIN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealPROTEIN" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1PROTEIN" runat="server"><asp:Literal ID="LtrPROTEIN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1PROTEIN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_PROTEIN" runat="server" visible="false">
<label>Generally associated with Low Protein:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Celery, beet, cabbage, broccoli, kale, parsley.
<label>Support:</label>
Kidneys, colon, detoxification, nutrition.  (Homeopathic Remedies;  #8, #823)
</div>
<div id="I_PROTEIN" runat="server" visible="false">
<label>Protein stand alone indicators generally associated with:</label>
Protein utilization, kidney malfunction.
</div>
<div id="H_PROTEIN" runat="server" visible="false">
<label>Generally associated with High Protein:</label>
Protein wasting, cells breaking down, muscle loss due to toxic overload of the kidneys, human growth hormone deficiency.
<label>Corresponding need for nutritional support for High Protein:</label>
Super Food Drink, L-Arginine, L-Carnitine, L-Glutamine, Jug One Protocol, Kidney Formula, Bowel Tonic, Cats Claw.
<label>Vegetable Juice Concentrates:</label>
Celery, beet, cabbage, broccoli, kale, parsley.
<label>Support:</label>
Kidneys, colon, detoxification, nutrition.  (Homeopathic Remedies;  #8, #823)
</div>
<div id="N_PROTEIN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--UROBILINOGEN--%>
<tr><td colspan="4"><h2>UROBILINOGEN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealUROBILINOGEN" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1UROBILINOGEN" runat="server"><asp:Literal ID="LtrUROBILINOGEN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1UROBILINOGEN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_UROBILINOGEN" runat="server" visible="false">
<label>Generally associated with Low Urobilinogen:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Parsley, cucumber, beet, garlic, kale, asparagus, green onion.
<label>Support:</label>
Detoxification, kidneys, liver, colon.  (Homeopathic Remedies:  #4, $10, #823)
</div>
<div id="I_UROBILINOGEN" runat="server" visible="false">
<label>Urobilinogen stand alone indicators generally associated with:</label>
Kidney and liver function.
</div>
<div id="H_UROBILINOGEN" runat="server" visible="false">
<label>Generally associated with High Urobilinogen:</label>
Liver malfunction, kidney overwhelm, colon toxicity, blood toxicity, colon impaction, jaundice precursor, red blood cells breaking down, cellular oxygen deficiency.                     
<label>Corresponding need for nutritional support for High Urobilinogen:</label>
Liver Detox, Kidney Flush Formula, Jug One Protocol, Green Drink, Spinach Juice Extract, L-Cystein, Organic Sulfur.
<label>Vegetable Juice Concentrates:</label>
Parsley, cucumber, beet, garlic, kale, asparagus, green onion.
<label>Support:</label>
Detoxification, kidneys, liver, colon.  (Homeopathic Remedies:  #4, $10, #823)
</div>
<div id="N_UROBILINOGEN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--NITRITE--%>
<tr><td colspan="4"><h2>NITRITE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealNITRITE" runat="server" Text="3"></asp:Literal></td>
<td class="brd">2 - 4</td>
<td class="brd">1 - 5</td>
<td class="brd" id="Td1NITRITE" runat="server"><asp:Literal ID="LtrNITRITE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1NITRITE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_NITRITE" runat="server" visible="false">
<label>Generally associated with Low Nitrite:</label>
Low is desirable.
<label>Vegetable Juice Concentrates:</label>
Spinach, apple, cabbage, green onion, broccoli, fig, plum
<label>Support:</label>
Colon, detoxification, kidneys.  (Homeopathic Remedies:  #40, #61, #63)
</div>
<div id="I_NITRITE" runat="server" visible="false">
<label>Nitrite stand alone indicators generally associated with:</label>
Detoxification, colon, kidney efficiency, constipation indicator, highly toxic condition, slow for transition time.
</div>
<div id="H_NITRITE" runat="server" visible="false">
<label>Generally associated with High Nitrite:</label>
Kidney not clearing efficiently, toxin overwhelm, colon toxicity, overwhelming colon back up, kidney, lungs, mal-absorption, lymphatic congestion, liver overloaded affecting blood chemistry, constipation, slow food transition, autointoxication
<label>Corresponding need for nutritional support for High Nitrite:</label>
Bowel Tonic, Morning Health Drink, Green Drink, Maxi Cleanse, Fiber Max, Beet, Spinach, Carrot Juice Extracts, Enzyme Therapy, Absorption Enhancer
<label>Vegetable Juice Concentrates:</label>
Spinach, apple, cabbage, green onion, broccoli, fig, plum
<label>Support:</label>
Colon, detoxification, kidneys.  (Homeopathic Remedies:  #40, #61, #63)
</div>
<div id="N_NITRITE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--LEUKOCYTES--%>
<tr><td colspan="4"><h2>LEUKOCYTES</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealLEUKOCYTES" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1LEUKOCYTES" runat="server"><asp:Literal ID="LtrLEUKOCYTES" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1LEUKOCYTES" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_LEUKOCYTES" runat="server" visible="false">
<label>Generally associated with Low Leukocytes:</label>
Low is desired.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Lemon, horseradish, broccoli, kale, tomato.
<label>Support:</label>
Detoxification, immune system.  (Homeopathic Remedies;  #2, #4, #817)
</div>
<div id="I_LEUKOCYTES" runat="server" visible="false">
<label>Leukocytes stand alone indicators generally associated with:</label>
Urinary tract health, immune system competency.
</div>
<div id="H_LEUKOCYTES" runat="server" visible="false">
<label>Generally associated with High Leukocytes:</label>
Urinary tract infection, colon toxicity, autointoxication, Candida Albicans, immune system over run with metabolic toxins, suppressed immune function, viral/bacteria infection precursor.
<label>Corresponding need for nutritional support for High Leukocytes:</label>
Jug One Protocol, Green Drink, Immune Detox Formula, Duo C Complex, Immune Power Formula, Immune Broth, Naturopathic Purification Powder, Chinese Garlic, Oregano Extract, Gold Seal Root.
<label>Vegetable Juice Concentrates:</label>
Lemon, horseradish, broccoli, kale, tomato.
<label>Support:</label>
Detoxification, immune system.  (Homeopathic Remedies;  #2, #4, #817)
</div>
<div id="N_LEUKOCYTES" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CAST--%>
<tr><td colspan="4"><h2>CAST</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCAST" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1CAST" runat="server"><asp:Literal ID="LtrCAST" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CAST" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CAST" runat="server" visible="false">
<label>Generally associated with Low Cast</label>
Low is desired.  Zero is ideal.
<label>Corresponding need for nutritional support for Low Cast:</label>
Jug One Protocol, Parsley Juice, Green Drink.
<label>Vegetable Juice Concentrates:</label>
Celery, zucchini, parsley, cucumber, eggplant, broccoli, tomato, spinach.
<label>Support:</label>
Kidney, detoxification, liver.  (Homeopathic Remedies;  #4, #10, #61)
</div>
<div id="I_CAST" runat="server" visible="false">
<label>Cast stand alone indicators generally associated with:</label>
Kidney filtration efficiency.
</div>
<div id="H_CAST" runat="server" visible="false">
<label>Generally associated with High Cast</label>
Urine flow stagnation, urine sediment precipitating within the renal tubes, highly toxic condition.
<label>Corresponding need for nutritional support for High Cast:</label>
Jug One Protocol, Kidney, Liver, Bowel Detox Formula’s, Bowel Tonic, Green Drink, Green Pepper Juice Formula.
<label>Vegetable Juice Concentrates:</label>
Celery, zucchini, parsley, cucumber, eggplant, broccoli, tomato, spinach.
<label>Support:</label>
Kidney, detoxification, liver.  (Homeopathic Remedies;  #4, #10, #61)
</div>
<div id="N_CAST" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--MUCUS--%>
<tr><td colspan="4"><h2>MUCUS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealMUCUS" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1MUCUS" runat="server"><asp:Literal ID="LtrMUCUS" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1MUCUS" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_MUCUS" runat="server" visible="false">
<label>Generally associated with Low Mucus:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Lemon, orange, parsley, asparagus.
<label>Support:</label>
Kidneys, immune system.  (Homeopathic Remedies;  #807, #823)
</div>
<div id="I_MUCUS" runat="server" visible="false">
<label>Mucus stand alone indicators generally associated with:</label>
Inflammatory marker.
</div>
<div id="H_MUCUS" runat="server" visible="false">
<label>Generally associated with High Mucus:</label>
Inflammation, infection, colitis.
<label>Corresponding need for nutritional support for High Mucus:</label>
Jug One Protocol, Duo C Complex, Medazyme Therapy, Mucus Cleanse.
<label>Vegetable Juice Concentrates:</label>
Lemon, orange, parsley, asparagus.
<label>Support:</label>
Kidneys, immune system.  (Homeopathic Remedies;  #807, #823)
</div>
<div id="N_MUCUS" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--WBC_URINE--%>
<tr><td colspan="4"><h2>WBC URINE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealWBC_URINE" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 3 (Negative)</td>
<td class="brd" id="Td1WBC_URINE" runat="server"><asp:Literal ID="LtrWBC_URINE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1WBC_URINE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_WBC_URINE" runat="server" visible="false">
<label>Generally associated with Low WBC:</label>
n/a
</div>
<div id="I_WBC_URINE" runat="server" visible="false">
<label>WBC stand alone indicators generally associated with:</label>
n/a
</div>
<div id="H_WBC_URINE" runat="server" visible="false">
<label>Generally associated with High Urine WBC:</label>
Toxic condition, Bladder and Kidney overwhelmed with morbificmaterial, High bacteria, Kidney and/or Bladder infection, painful and/or burning urination, Cloudy urine
<label>Corresponding need for nutritional support for High Urine WBC:</label>
Duo-C Complex, Corn Silk, Lignan
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Ionic Silver, Liquid Zinc, Bladder and Kidney Support Formula
<label>Homeopathic Remedies Number:</label>#1, #807, #817
<label>Botanical Healing Tea Formulations:</label> 
Immune Formula
<label>Naturopathic Food Medicine Formulations:</label> 
Green Drinks
<label>Vitamin and Nutraceutical Supplements:</label>
Super C Active, Duo C Complex
<label>Clinic Treatments Indicated:</label>
Coffee Enema, Colon Hydrotherapy 
<label>Vegetable Juice Concentrates:</label>
Cranberry, Celery, Kile
<label>Support:</label>
Immune System
</div>
<div id="N_WBC_URINE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--RBC_URINE--%>
<tr><td colspan="4"><h2>RBC URINE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealRBC_URINE" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1RBC_URINE" runat="server"><asp:Literal ID="LtrRBC_URINE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1RBC_URINE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_RBC_URINE" runat="server" visible="false">
<label>Generally associated with Low RBC:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Spinach, kale, beet.
<label>Support:</label>
Liver.  (Homeopathic Remedies;  #19, #819)
</div>
<div id="I_RBC_URINE" runat="server" visible="false">
<label>RBC stand alone indicators generally associated with:</label>
Red blood cells breaking down.
</div>
<div id="H_RBC_URINE" runat="server" visible="false">
<label>Generally associated with High Urinary RBC:</label>
Red blood cells dying off, nutritional deficiency, loss of fighting force.
<label>Corresponding need for nutritional support for High Urinary RBC:</label>
Red Blood Builder, Blood Building Broth.
<label>Vegetable Juice Concentrates:</label>
Spinach, kale, beet.
<label>Support:</label>
Liver.  (Homeopathic Remedies;  #19, #819)
</div>
<div id="N_RBC_URINE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--EPITHELIAL_CELLS--%>
<tr><td colspan="4"><h2>EPITHELIAL CELLS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealEPITHELIAL_CELLS" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1EPITHELIAL_CELLS" runat="server"><asp:Literal ID="LtrEPITHELIAL_CELLS" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1EPITHELIAL_CELLS" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_EPITHELIAL_CELLS" runat="server" visible="false">
<label>Generally associated with Low Epithelial Cells:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Green pepper, spinach, kale, garlic, broccoli.
<label>Support:</label>
Immune system, muscles.  (Homeopathic Remedies;  #802, #807)
</div>
<div id="I_EPITHELIAL_CELLS" runat="server" visible="false">
<label>Epithelial Cells stand alone indicators generally associated with:</label>
Cellular integrity.
</div>
<div id="H_EPITHELIAL_CELLS" runat="server" visible="false">
<label>Generally associated with High Epithelial Cells:</label>
Immune system breaking down, cellular breakdown.
<label>Corresponding need for nutritional support for High Epithelial Cells:</label>
28 Super Amino Acids, Duo C Complex, Super Food Drink.
<label>Vegetable Juice Concentrates:</label>
Green pepper, spinach, kale, garlic, broccoli.
<label>Support:</label>
Immune system, muscles.  (Homeopathic Remedies;  #802, #807)
</div>
<div id="N_EPITHELIAL_CELLS" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CALCIUM_OXALATE--%>
<tr><td colspan="4"><h2>CALCIUM OXALATE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCALCIUM_OXALATE" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1CALCIUM_OXALATE" runat="server"><asp:Literal ID="LtrCALCIUM_OXALATE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CALCIUM_OXALATE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CALCIUM_OXALATE" runat="server" visible="false">
<label>Generally associated with Low Calcium Oxalate:</label>
Low is desirable.  Zero is ideal.
<label>Corresponding need for nutritional support for Low Calcium Oxalate:</label>
Ionic Magnesium, Jug One Protocol.
<label>Vegetable Juice Concentrates:</label>
Parsley, celery, asparagus, apple, fig.
<label>Support:</label>
Kidneys, detoxification.  (Homeopathic Remedies;  #40, #61, #823)
</div>
<div id="I_CALCIUM_OXALATE" runat="server" visible="false">
<label>Calcium Oxalate stand alone indicators generally associated with:</label>
Early stage kidney stone formation.
</div>
<div id="H_CALCIUM_OXALATE" runat="server" visible="false">
<label>Generally associated with High Calcium Oxalate:</label>
Kidney disorder, metabolic acidosis, calcium out of solution, kidney stone formation.
<label>Corresponding need for nutritional support for High Calcium Oxalate:</label>
Jug One Protocol, Kidney Formula, Green Drink, Ionic Magnesium, Boron, Kidney Tea, Morning Health Drink, Bedtime Bowel Tonic.
<label>Vegetable Juice Concentrates:</label>
Parsley, celery, asparagus, apple, fig.
<label>Support:</label>
Kidneys, detoxification.  (Homeopathic Remedies;  #40, #61, #823)
</div>
<div id="N_CALCIUM_OXALATE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--TRIPLE_PHOSPHATE--%>
<tr><td colspan="4"><h2>TRIPLE PHOSPHATE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealTRIPLE_PHOSPHATE" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1TRIPLE_PHOSPHATE" runat="server"><asp:Literal ID="LtrTRIPLE_PHOSPHATE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1TRIPLE_PHOSPHATE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_TRIPLE_PHOSPHATE" runat="server" visible="false">
<label>Generally associated with Low Triple Phosphate:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Celery, kale.
<label>Support:</label>
Kidneys, nutrition.  (Homeopathic Remedy:  #6)
</div>
<div id="I_TRIPLE_PHOSPHATE" runat="server" visible="false">
<label>Triple Phosphate stand alone indicators generally associated with:</label>
Mineral imbalance, calcium balance, parathyroid homeostasis.
</div>
<div id="H_TRIPLE_PHOSPHATE" runat="server" visible="false">
<label>Generally associated with High Triple Phosphate:</label>
Bone depletion, calcium out of solution.
<label>Corresponding need for nutritional support for High Triple Phosphate:</label>
Ionic Cal/Mag, Boron Tonic, Vitamin D-3.
<label>Vegetable Juice Concentrates:</label>
Celery, kale.
<label>Support:</label>
Kidneys, nutrition.  (Homeopathic Remedy:  #6)
</div>
<div id="N_TRIPLE_PHOSPHATE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--URIC_ACID_CRYSTALS--%>
<tr><td colspan="4"><h2>URIC ACID CRYSTALS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealURIC_ACID_CRYSTALS" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1URIC_ACID_CRYSTALS" runat="server"><asp:Literal ID="LtrURIC_ACID_CRYSTALS" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1URIC_ACID_CRYSTALS" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_URIC_ACID_CRYSTALS" runat="server" visible="false">
<label>Generally associated with Low Uric Acid:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Celery, cucumber, parsley, broccoli, cauliflower, garlic, onion, horseradish, plum, apple, fig.
<label>Support:</label>
Kidneys, detoxification.  (Homeopathic Remedies:  #4, #40, #61, #823)
</div>
<div id="I_URIC_ACID_CRYSTALS" runat="server" visible="false">
<label>Uric Acid stand alone indicators generally associated with:</label>
Bad acid, gout gauge. Arthritis, rheumatism, stiffness
</div>
<div id="H_URIC_ACID_CRYSTALS" runat="server" visible="false">
<label>Generally associated with High Uric Acid:</label>
Pre-gout, connective tissue problems, arthritic/rheumatoid like conditions, uric acid depositing near joints, cartilage and connective tissue joint swelling, inflammation, big toe pain, faulty diet, excess use of devitalized foods.
<label>Corresponding need for nutritional support for High Uric Acid:</label>
Jug One Protocol, Green Drink, Bowel Tonic, Kidney & Liver Detox Formula, Wheat Grass Juice Concentrate.
<label>Vegetable Juice Concentrates:</label>
Celery, cucumber, parsley, broccoli, cauliflower, garlic, onion, horseradish, plum, apple, fig.
<label>Support:</label>
Kidneys, detoxification.  (Homeopathic Remedies:  #4, #40, #61, #823)
</div>
<div id="N_URIC_ACID_CRYSTALS" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--AMORPHOUS--%>
<tr><td colspan="4"><h2>AMORPHOUS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealAMORPHOUS" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1AMORPHOUS" runat="server"><asp:Literal ID="LtrAMORPHOUS" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1AMORPHOUS" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_AMORPHOUS" runat="server" visible="false">
<label>Generally associated with Low Amorphous:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Parsley, carrot, spinach, fig, apple, yogurt health drink
<label>Support:</label>
Spleen.  (Homeopathic Remedy: #808)
</div>
<div id="I_AMORPHOUS" runat="server" visible="false">
<label>Amorphous stand alone indicators generally associated with:</label>
Flora balance.		
</div>
<div id="H_AMORPHOUS" runat="server" visible="false">
<label>Generally associated with High Amorphous:</label>
Floral imbalance, cellular oxygen deficiency, excess junk foods, fiber, enzyme & multiple nutritional deficiencies.
<label>Corresponding need for nutritional support for High Amorphous:</label>
Mega B Complex 1000, Stress & Toxin Protector, Green Drink.
<label>Vegetable Juice Concentrates:</label>
Parsley, carrot, spinach, fig, apple, yogurt health drink
<label>Support:</label>
Spleen.  (Homeopathic Remedy: #808)
</div>
<div id="N_AMORPHOUS" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--BACTERIA--%>
<tr><td colspan="4"><h2>BACTERIA</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealBACTERIA" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1BACTERIA" runat="server"><asp:Literal ID="LtrBACTERIA" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1BACTERIA" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_BACTERIA" runat="server" visible="false">
<label>Generally associated with Low Bacteria:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Green onion, horseradish, asparagus, kale, lemon, green pepper, jalapeno, orange, plum.
<label>Support:</label>
Kidneys, immune system, detoxification.  (Homeopathic Remedies:  #4, #40, #61, #63)
</div>
<div id="I_BACTERIA" runat="server" visible="false">
<label>Bacteria stand alone indicators generally associated with:</label>
Immune competency, urinary tract infection.
</div>
<div id="H_BACTERIA" runat="server" visible="false">
<label>Generally associated with High Bacteria:</label>
Autointoxication, Candida, bacterial infection, urinary tract infection, burning on urination, immune system over run.
<label>Corresponding need for nutritional support for High Bacteria:</label>
Jug One Protocol, Kidney, Immune Detox Formula’s, Duo C Complex, Cats Claw, Oregano Oil Extract, Chinese Garlic, Golden Seal Root, Red Clover Blossom.
<label>Vegetable Juice Concentrates:</label>
Green onion, horseradish, asparagus, kale, lemon, green pepper, jalapeno, orange, plum.
<label>Support:</label>
Kidneys, immune system, detoxification.  (Homeopathic Remedies:  #4, #40, #61, #63)
</div>
<div id="N_BACTERIA" runat="server" visible="false">N/A</div>
</td>
</tr>
<tr><td colspan="4"><h2>ANA</h2></td></tr>
<%--ANTI_NUCLEAR_ANTIBODY--%>
<tr><td colspan="4"><h2>ANTI-NUCLEAR ANTIBODY</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealANTI_NUCLEAR_ANTIBODY" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1ANTI_NUCLEAR_ANTIBODY" runat="server"><asp:Literal ID="LtrANTI_NUCLEAR_ANTIBODY" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1ANTI_NUCLEAR_ANTIBODY" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_ANTI_NUCLEAR_ANTIBODY" runat="server" visible="false">
<label>Generally associated with Anti-Nuclear Antibody (ANA)</label>
Early stage Rheumatoid/ Arthritis Condition, Inflammation, Low grade fever, nervousness, nerve exhaustion, persistent fatigue, Arthritic Liver  pain, hair loss, muscle pain, numbness in hands or feet, early stage damage to kidneys and lungs, heart condition, Nervous system blood vessels.
<label>Vegetable Juice Concentrates:</label>
Celery Carrot, Apple
<label>Support:</label>
Immune System
</div>
<div id="I_ANTI_NUCLEAR_ANTIBODY" runat="server" visible="false">
<label>Anti-Nuclear Antibody (ANA) standalone indication generally associated with:</label>
Immune system functionality, highly toxic condition overwhelming the immune system. Anti-Immune disorder, early auto immune warning, Low Grade Fever
</div>
<div id="H_ANTI_NUCLEAR_ANTIBODY" runat="server" visible="false">
<label>Corresponding need for nutritional support for Anti-Nuclear Antibody (ANA):</label>
Co-Enzyme Q10, Spearmint
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Immune Formula, Germanium
<label>Homeopathic Remedies Number:</label> #4, #63, #807, #817
<label>Botanical Healing Tea Formulations:</label>
Immune Tea
<label>Naturopathic Food Medicine Formulations:</label>
Green Drink, Super C Active
<label>Vitamin and Nutraceutical Supplements:</label>
Duo C Complex, Sunshine Vitamin
<label>Clinic Treatments Indicated:</label>
Colon Hydrotherapy, Photo Luminescence
<label>Vegetable Juice Concentrates:</label>
Celery Carrot, Apple
<label>Support:</label>
Immune System
</div>
<div id="N_ANTI_NUCLEAR_ANTIBODY" runat="server" visible="false">N/A</div>
</td>
</tr>
<tr><td colspan="4"><h2>THYROID</h2></td></tr>
<%--T4_FREE--%>
<tr><td colspan="4"><h2>T4, FREE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealT4_FREE" runat="server" Text="1.26"></asp:Literal></td>
<td class="brd">1.00 - 1.52</td>
<td class="brd">0.58 - 0.64</td>
<td class="brd" id="Td1T4_FREE" runat="server"><asp:Literal ID="LtrT4_FREE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1T4_FREE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_T4_FREE" runat="server" visible="false">
<label>Generally associated with Low Thyroid T4 Free Circulating T4:</label>
Slow thinking, low mental/physical energy, sluggish, slow moving, creeping weight gain, poor sleep, hair loss, hypothyroid, stress over run, nervous breakdown, chronic fatigue, adrenal exhaustion, anxiety, tension.
<label>Corresponding need for nutritional support for Low Thyroid T4 Free Circulating T4:</label>
Iodine/Iodide, Duo C Complex, Hypericum, Stress & Toxin Protector, Cal/Mag, Super Oil, Co-Enzyme Q-10, Brain Flush, Selenium, Zinc, Tourine.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Adrenal Support
<label>Homeopathic Remedies Number:</label> # 57, # 806
<label>Botanical Healing Tea Formulations:</label>
Adrenal Formula, Energy Tea
<label>Naturopathic Food Medicine Formulations:</label>
87 Sea Minerals, Brain Food, Brain Invigorating Powder, Green Power Formula,
Energy Powder, Super Drink
<label>Vitamin and Nutraceutical Supplements:</label>
I-Thyroid, Sea Life, Adrenal Hormone Restoration, Royal Queen Bee Jelly, 
Mega B Complex 1000
<label>Clinical Treatments Indicated:</label>
Bio-Identical hormone Restoration Therapy, Male/Female Hormone Restoration 
Therapy, Human Growth Hormone Restoration Therapy
<label>Vegetable Juice Concentrates:</label>
Cauliflower, mushroom, beet, garlic.
<label>Support:</label>
Thyroid, adrenals, gonads, pituitary, nerves.  (Homeopathic Remedies:  #17, #54, #803, #804)
</div>
<div id="I_T4_FREE" runat="server" visible="false">
Thyroid T4 Free Circulating T4 stand alone indicators generally associated with:
Optimum thyroid function.	
</div>
<div id="H_T4_FREE" runat="server" visible="false">
<label>Generally associated with High Thyroid T4 Free Circulating T4:</label>
Heart palpitations, hand tremors, increased perspiration, nervousness, jumpiness, sudden weight loss, hypothyroid, stress over run, nervous breakdown, chronic fatigue, adrenal exhaustion, anxiety, tension.
<label>Corresponding need for nutritional support for High Thyroid T4 Free Circulating T4:</label>
Iodine/Iodide, Mega B Complex 1000, Duo C Complex, Hypericum, Stress & Toxin Protector, Nerve Builder, Super Oil, Co-Enzyme Q-10, Brain Flush
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Magnesium, Stress & Nerve Relief
<label>Homeopathic Remedies Number:<label> # 17
<label>Botanical Healing Tea Formulations:</label>
Tranquility Tea, Stress & Nerve Relief
<label>Naturopathic Food Medicine Formulations:</label>
Nerve Rejuvenation
<label>Vitamin and Nutraceutical Supplements:</label>
Cal/Mag, Royal Queen Bee Jelly, Pineal Hormone Restoration, Valerian Root, 
Adrenal Hormone Restoration
<label>Clinical Treatments Indicated:</label>
Rife Vibrational Medicine, Light & Sound Stress Therapy, Male/Female Hormone 	Restoration Therapy, Bio-Identical Hormone Restoration Therapy
<label>Vegetable Juice Concentrates:</label>
Cauliflower, mushroom, beet, garlic.
<label>Support:</label>
Thyroid, adrenals, gonads, pituitary, nerves.  (Homeopathic Remedies:  #17, #54, #803, #804)
</div>
<div id="N_T4_FREE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--THYROID_STIM--%>
<tr><td colspan="4"><h2>THYROID STIM. HORMONE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealTHYROID_STIM" runat="server" Text="1.25"></asp:Literal></td>
<td class="brd">1.00 - 1.50</td>
<td class="brd">0.35 - 5.00</td>
<td class="brd" id="Td1THYROID_STIM" runat="server"><asp:Literal ID="LtrTHYROID_STIM" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1THYROID_STIM" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_THYROID_STIM" runat="server" visible="false">
<label>Generally associated with Low TSH:</label>
Under performing pituitary, adult onset, human growth hormone deficiency, large appetite, hungry, coffee, soda, sugar, drug excess, hyperthyroidism, deficiencies in boron, calcium, 
B Complex, N-Acetyl Cystein, selenium, vitamin D-3, vitamin E, iodine/iodide, overmedication, over stimulated adrenal, stress overwhelm, over use of synthetic thyroid, alcohol, sugar, trans fats, bakery products, tap water
<label>Corresponding need for nutritional support for Low TSH:</label>
Stress & Toxin Protector, Mega B Complex 1000, Hypericum, Cal/Mag, Adrenal Hormone Restoration, Thyroid Hormone Replacement Therapy
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Adrenal Support
<label>Homeopathic Remedies Number:</label> # 805
<label>Botanical Healing Tea Formulations:</label>
Adrenal Tea, Energy Tea, Nerve Tea
<label>Naturopathic Food Medicine Formulations:</label>
Royal Pollen Complex, Energy Powder, Nerve Rejuvenation, Super Food Drink, Amino 	Acid Creamed Peas, Brain Invigorating Powder  
<label>Vitamin and Nutraceutical Supplements:</label>
Mega B Complex, Co-Enzyme Q-10, Royal Queen Bee Jelly, Adrenal Hormone 	Restoration
<label>Clinical Treatments Indicated:</label>
Human Growth Hormone Restoration Therapy, I.V. Super Nutrition Drip, Hyperbaric 	Oxygen Therapy	
<label>Vegetable Juice Concentrates:</label>
Kale, broccoli, cauliflower, mushrooms, horseradish, fig
<label>Support:</label>
Thyroid, anterior pituitary.  (Homeopathic Remedy:  #834)
</div>
<div id="I_THYROID_STIM" runat="server" visible="false">
<label>TSH stand alone indicators generally associated with:</label>
Pituitary/Thyroid thermostat
</div>
<div id="H_THYROID_STIM" runat="server" visible="false">
<label>Generally associated with High TSH:</label>
Hypothyroidism, no energy, no heat, no motivation, gradual unexplained weight gain, hair brittleness, jumpiness, anxiety, heart palpitations hand tremors, sleep problems, forgetfulness, under-performing pituitary, adult onset, human growth hormone deficiency, deficiencies in iodine/iodide, selenium, zinc and tyrosine
<label>Corresponding need for nutritional support for High TSH:</label>
I-Thyroid, Selenium, Tyrosine, Taurine.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Thyroid Formula, Liquid Selenium, Liquid Zinc, Liquid Cobalt
<label>Homeopathic Remedies Number:</label> # 806
<label>Botanical Healing Tea Formulations:</label>
Adrenal Tea, Energy Tea
<label>Naturopathic Food Medicine Formulations:</label>
Thyroid Broth, Energy Powder
<label>Vitamin and Nutraceutical Supplements:</label>
I-Thyroid, L-Tyrosine, Selenium, Nature’s Healer, Abunda Body, Asian Exotic Fruit
<label>Clinical Treatments Indicated:</label>
Bio-Identical Thyroid Hormone Restoration
<label>Vegetable Juice Concentrates:</label>
Kale, broccoli, cauliflower, mushrooms, horseradish, fig
<label>Support:</label>
Thyroid, anterior pituitary.  (Homeopathic Remedy:  #834)
</div>
<div id="N_THYROID_STIM" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--T4_TOTAL--%>
<tr><td colspan="4"><h2>T4,TOTAL</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealT4_TOTAL" runat="server" Text="8.5"></asp:Literal></td>
<td class="brd">7 - 10.0</td>
<td class="brd">4.5 - 12.5</td>
<td class="brd" id="Td1T4_TOTAL" runat="server"><asp:Literal ID="LtrT4_TOTAL" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1T4_TOTAL" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_T4_TOTAL" runat="server" visible="false">
<label>Generally associated with Low Thyroid Total T4:</label>
Hypothyroidism, premature aging, mal-absorption, junk food, sugar, fast food excess, protein/amino acid deficiency deficiencies in iodine/iodide, selenium, N-Acetyl Cysteine, vitamin D-3, vitamin E, vitamin B-5, immune system compromise, under acting pituitary, excess use of aspirin, drugs, alcohol, bakery products, tap water, birth control pills, liver, spleen and bone marrow sluggishness.
<label>Corresponding need for nutritional support for Low Thyroid Total T4:</label>
Iodine/Iodide, 28 Super Amino Acids, Immune Power Formula, Super Food Drink, Super Oil, Spirulina, Liver Detox, Alfalfa Juice, Duo C Complex.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Iodine, Liquid Selenium, Liquid Zinc
<label>Homeopathic Remedies Number:</label> # 806
<label>Botanical Healing Tea Formulations:</label>
Thyroid Tea
<label>Naturopathic Food Medicine Formulations:</label>
Thyroid Broth, Irish Moss/Kelp, 87 Sea Minerals (Liquid)
<label>Vitamin and Nutraceutical Supplements:</label>
I-Thyroid, Sea Life, Selenium, Nature’s Healer, Adrenal Hormone Restoration, 
L-Taruine, Royal Queen Bee Jelly, Absorption Enhancer, Vitamin D-3, Ultra E complex, 	Pyridoxine, N-Acetyl Cystein, L-Arginine, L-Carnitine
<label>Clinical Treatments Indicated:</label>
Bio-Identical Thyroid Restoration Therapy, Colon Hydrotherapy, I.V. Super Nutritional 	Drip
<label>Vegetable Juice Concentrates:</label>
Beet, avocado, mushroom, tomato, celery, horseradish, asparagus.
<label>Support:</label>
Thyroid, adrenals, pituitary, gonads.  (Homeopathic Remedies:  #54, 803, #804, #806)
</div>
<div id="I_T4_TOTAL" runat="server" visible="false">
<label>Thyroid Total T4 stand alone indicators generally associated with:</label>
Hypo/Hyperthyroidism marker, malnutrition, premature aging, thyroid function.
</div>
<div id="H_T4_TOTAL" runat="server" visible="false">
<label>Generally associated with High Thyroid Total T4:</label>
Liver problems, autointoxication, adrenal exhaustion, stress, medications, magnesium, vitamin D-3, L-Arginine, N-Acetyl Cysteine, hyperthyroidism, over use of aspirin, birth control pills, synthetic thyroid, liver dysfunction, cellular fluid loss, parathyroid imbalance, lymphatic congestion, hormonal deficiency, multiple mineral deficiencies, deficiency in magnesium
<label>Corresponding need for nutritional support for High Thyroid Total T4:</label>
Adrenal Restoration, royal Queen Bee Jelly, Stress & Toxin Protector, Lymphatic Formula, Nerve Builder.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Adrenal Support, Liver Detox
<label>Homeopathic Remedies Number:</label> # 10
<label>Botanical Healing Tea Formulations:</label>
Liver Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Morning Health Drink, Green Drink, Super Drink, Bedtime Bowel 	Tonic, Super Oil, Fortress Strong, Amino acid Creamed Zucchini
<label>Vitamin and Nutraceutical Supplements:</label>
Liver Formula, Milk Thistle, Dandelion Root, L-Arginine, N-Acetyl Cysteine, Adrenal
Hormone Restoration, Vitmin D-3, Cal/Mag, Stress & Tonic Protector, Royal Queen 
Bee Jelly
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, I.V. Alpha Lipoic Acid Drip
<label>Vegetable Juice Concentrates:</label>
Beet, avocado, mushroom, tomato, celery, horseradish, asparagus.
<label>Support:</label>
Thyroid, adrenals, pituitary, gonads.  (Homeopathic Remedies:  #54, 803, #804, #806)
</div>
<div id="N_T4_TOTAL" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--T3_UPTAKE--%>
<tr><td colspan="4"><h2>T3 UPTAKE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealT3_UPTAKE" runat="server" Text="32.5"></asp:Literal></td>
<td class="brd">30 - 35</td>
<td class="brd">25 - 40</td>
<td class="brd" id="Td1T3_UPTAKE" runat="server"><asp:Literal ID="LtrT3_UPTAKE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1T3_UPTAKE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_T3_UPTAKE" runat="server" visible="false">
<label>Generally associated with Low Thyroid T3 Uptake:</label>
Deficiencies in Iodine/Iodide, tyrosine, protein, amino acids, vitamins E, and D-3, selenium, 
N-Acetyl Cysteine, vitamin B-5, easy weight gain, adrenal exhaustion, adult onset, growth hormone deficiency, male/female hormone deficiency, loss of animation for life, loss of libido, loss of motivation, memory loss, hair loss, inability to concentrate, hyperthyroidism, over use of medications, synthetic thyroid, synthetic estrogen, junk foods, use of heparin, xenoestrogeous toxicity
<label>Corresponding need for nutritional support for Low Thyroid T3 Uptake:</label>
Iodine/Iodide, Selenium, Tyrosine, Tourine.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Stress & Nerve Repair, Liquid Magnesium
<label>Homeopathic Remedies Number:</label> # 17, # 803/804, # 806, # 812
<label>Botanical Healing Tea Formulations:</label>
Nerve Tea
<label>Naturopathic Food Medicine Formulations:</label>
Thyroid Broth, Super Drink, Amino Acid Creamed One Dozen Green Vegetable Juice
<label>Vitamin and Nutraceutical Supplements:</label>
Hypericum, Nerve Builder, Cal/Mag, Ultra E Complex, Pyridoxine, Mega B Complex 	1000, N-Acetyl Cysteine, Vitamin D-3, Valerian Root, Pineal Hormone Restoration, 	Stress & Toxin Protector, Adrenal Restoration
<label>Clinical Treatments Indicated:</label>
Bio-Identical Thyroid Restoration Therapy, Bio-Identical Male/Female Hormone 	Restoration Therapy, Hormone Growth Restoration Therapy
<label>Vegetable Juice Concentrates:</label>
Mushroom, zucchini, beet, celery, green onion.
<label>Support:</label>
Thyroid, adrenal, pituitary, gonads.  (Homeopathic Remedies:  #54, #801, #806)
</div>
<div id="I_T3_UPTAKE" runat="server" visible="false">
<label>Thyroid T3 Uptake stand alone indicators generally associated with:</label>
Need for thyroid nutritional support, thyroid hormone binding site availability gauge.
</div>
<div id="H_T3_UPTAKE" runat="server" visible="false">
<label>Generally associated with High Thyroid T3 Uptake:</label>
Nervousness, sleep problems, sudden weight loss, stress, tension, worry, anxiety, adrenal exhaustion, nerve burn out, pituitary under performance, excess medications, protein mal-absorption, over use of drugs, alcohol, tap water, sugar, trans fats, bakery products, over use of synthetic thyroid replacement, hyperthyroidism, deficiencies in N-Acetyl Cysteine, selenium, vitamin D-3, vitamin E, kidney overload, thyroid hyperfunction
<label>Corresponding need for nutritional support for High Thyroid T3 Uptake:</label>
Mega B Complex 1000, 57 Super Minerals, Enzyme Therapy, Bromaline, Stress & Toxin Protector. 
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Thyroid Support, Brain De Fog, Liquid Iron
<label>Homeopathic Remedies Number:</label> # 805, # 806
<label>Botanical Healing Tea Formulations:</label>
Thyroid Tea, Adrenal Tea
<label>Naturopathic Food Medicine Formulations:</label>
Thyroid Broth, Super Food Drink, 92% Egg & Milk Isolate Protector
<label>Vitamin and Nutraceutical Supplements:</label>
I-Thyroid, Sea Life, L-Tyrosine, 28 Super Amino Acid Brain Flush, Super Endurall, 	Adrenal Hormone Restoration, Ultra E Complex, Vitamin D-3, Hair Formula, 
N-Acetyl Cysteine, Paradoxin, Animation of Life, Royal Queen Bee Jelly, Alpha 
Lipoic Acid, Co-Enzyme Q-10
<label>Clinical Treatments Indicated:</label>
Rife Vibrational Medicine
<label>Vegetable Juice Concentrates:</label>
Mushroom, zucchini, beet, celery, green onion.
<label>Support:</label>
Thyroid, adrenal, pituitary, gonads.  (Homeopathic Remedies:  #54, #801, #806)
</div>
<div id="N_T3_UPTAKE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--FREE_THYROXINE_INDEX--%>
<tr><td colspan="4"><h2>FREE THYROXINE INDEX</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealFREE_THYROXINE_INDEX" runat="server" Text="3.15"></asp:Literal></td>
<td class="brd">2.65 - 3.85</td>
<td class="brd">1.30 - 5.00</td>
<td class="brd" id="Td1FREE_THYROXINE_INDEX" runat="server"><asp:Literal ID="LtrFREE_THYROXINE_INDEX" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1FREE_THYROXINE_INDEX" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_FREE_THYROXINE_INDEX" runat="server" visible="false">
<label>Generally associated with Low Free Thyroxin Index – Thyroid Free 4 Index T 7 :</label>
Mental confusion, anxiety, depression, moodiness, worry, memory loss, unexplained weight gain, hyperthyroidism, slow metabolism, adrenal over activity, suppressing thyroid function, stress overwhelm, slow down of the conversion of oxygen weight gain, obesity, goiter															
Corresponding need for nutritional support for Low 
<label>Free Thyroxin Index – Thyroid Free 4 Index T 7:</label>
Iodine/Iodide, Selenium
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Brain De Fog, Liquid Gold, Liquid Lithium
<label>Homeopathic Remedies Number:</label> # 57, # 812, # 814
<label>Botanical Healing Tea Formulations:</label>
Adrenal Formula, Energy Tea
<label>Naturopathic Food Medicine Formulations:</label>
Brain Invigoration Powder, Brain Food, Super Oil, Fortress Strong
<label>Vitamin and Nutraceutical Supplements:</label>
Hypericum, Nature’s Flush, Mega B Complex 1000, I-Thyroid, L-Taurine, L-Tyrosine, 	Thiamin, Riboflavin, Red Blood Cell Builder, Phosphadtyl Choline, Lignan, Lipotropic 	Factor
<label>Clinical Treatments Indicated:</label>
Rife Vibrational Medicine, Light & Sound Therapy, Ozone Infused Far Infrared 	Detoxification Sauna
<label>Vegetable Juice Concentrates:</label>
Mushroom, avocado, beet, garlic, green onion, fig.
<label>Support:</label>
Thyroid, adrenals, nerves, gonads, pineal.  (Homeopathic Remedies:  #17, #50, #54, #803, #804, #806)
</div>
<div id="I_FREE_THYROXINE_INDEX" runat="server" visible="false">
<label>Free Thyroxin Index – Thyroid Free 4 Index T 7 </label> stand alone indicators 
Memory, anxiety, mental tranquanimity, stress, adrenal, thyroid function and gauge.
</div>
<div id="H_FREE_THYROXINE_INDEX" runat="server" visible="false">
<label>Generally associated with High Free Thyroxin Index – Thyroid Free 4 Index T 7:</label>
Cold extremities, forgetfulness, jumpy feelings, nervous, sleep problems, hyperthyroidism, adrenal burnout, elevating metabolism, chronic fatigue, excess use of synthetic thyroid hormone, birth control pills, alcohol, sugar, junk foods, estrogen dominance, zenoestrogen, stress overwhelm.
<label>Corresponding need for nutritional support for High </label>
Free Thyroxin Index – Thyroid Free 4 Index T 7:
Adrenal Hormone Restoration, Pineal Hormone Restoration, Hypericum, Mega B Complex 1000, Co-Enzyme Q-10 with Omega Essential Fatty Acids 3 and 6
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Gold, Liquid Lithium
<label>Homeopathic Remedies Number:</label>  # 17
<label>Botanical Healing Tea Formulations:</label>
Adrenal Tea, Nerve Tea, 87 Sea Minerals (Liquid), Tranquility Tea
<label>Naturopathic Food Medicine Formulations:</label>
Nerve Rejuvenation, Magnesium Broth
<label>Vitamin and Nutraceutical Supplements:</label>
Cal/Mag, I-Thyroid, Mega B Complex 1000, Sea Life
<label>Clinical Treatments Indicated:</label>
Bio-Identical Thyroid Hormone Restoration, Pineal Hormone Restoration, I.V. Super 	Nutritional Drip, Rife Vibrational Medicine
<label>Vegetable Juice Concentrates:</label>
Mushroom, avocado, beet, garlic, green onion, fig.
<label>Support:</label>
Thyroid, adrenals, nerves, gonads, pineal.  (Homeopathic Remedies:  #17, #50, #54, #803, #804, #806)
</div>
<div id="N_FREE_THYROXINE_INDEX" runat="server" visible="false">N/A</div>
</td>
</tr>
<tr><td colspan="4"><h2>&nbsp;</h2></td></tr>
<%--BASOPHILS_ABSOLUTE_COUNT--%>
<tr><td colspan="4"><h2>BASOPHILS, ABSOLUTE COUNT</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealBASOPHILS_ABSOLUTE_COUNT" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 1.12</td>
<td class="brd">0 - 1.5</td>
<td class="brd" id="Td1BASOPHILS_ABSOLUTE_COUNT" runat="server"><asp:Literal ID="LtrBASOPHILS_ABSOLUTE_COUNT" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1BASOPHILS_ABSOLUTE_COUNT" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_BASOPHILS_ABSOLUTE_COUNT" runat="server" visible="false">
<label>Generally associated with Low Basophils Absolute Count:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Carrot, celery, parsley, oregano, green onion, spinach, broccoli, plum, lemon.
<label>Support:</label>
Detoxification, lymph system, colon, immune system, liver.  (Homeopathic Remedies:
#4, #87)
</div>
<div id="I_BASOPHILS_ABSOLUTE_COUNT" runat="server" visible="false">
<label>Basophils Absolute Count stand alone indicators generally associated with:</label>
Inflammation fighter.
</div>
<div id="H_BASOPHILS_ABSOLUTE_COUNT" runat="server" visible="false">
<label>Corresponding need for nutritional support for High Basophils Absolute Count:</label>
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Allergy Detoxification, Liver Support
<label>Homeopathic Remedies Number:</label>  # 4, # 40, # 63, # 807
<label>Botanical Healing Tea Formulations:</label>
Allergy Detox, Adrenal Restoration, Liver Detox
<label>Naturopathic Food Medicine Formulations:</label>
Cellular Detoxification, Fortress Strong, Morning Health Drink, Bedtime Bowel Tonic, 	Amino Acid Creamed Asparagus
<label>Vitamin and Nutraceutical Supplements:</label>
Allergy Formula, Nature’s Flush, Adrenal Hormone Restoration
<label>Clinical Treatments Indicated:</label>
Naturopathic Detoxification
<label>Generally associated with High Basophils Absolute Count:</label>
Allergic reaction, hyperthyroid, infection, autointoxication, stress, excess alcohol, tobacco, drugs, medications, radiation, chemotherapy, cellular oxygen deficiency, nutritional deficiencies, parasite infestation, trapped lymphatic toxins, bowel toxicity.
<label>Corresponding need for nutritional support for High Basophils Absolute Count:</label>
Medazyme Therapy, I-Thyroid, Parasite Annihilator’s, Bowel Tonic, Lymphatic Formula, Chinese Garlic, Ionic Copper.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Toxicity Correction, Liver Support, Liquid Germanium, Liquid Silver, Liquid Sulfur		
<label>Homeopathic Remedies Number:</label> # 59, # 817
<label>Botanical Healing Tea Formulations:</label>
Lymph Tea
<label>Naturopathic Food Medicine Formulations:</label>
Bedtime Bowel Tonic. Parasite Annihilation Powder, Naturopathic Purification Powder
<label>Vitamin and Nutraceutical Supplements:</label>
<label>Clinical Treatments Indicated:</label>
Naturopathic Detoxification
<label>Vegetable Juice Concentrates:</label>
Carrot, celery, parsley, oregano, green onion, spinach, broccoli, plum, lemon.
<label>Support:</label>
Detoxification, lymph system, colon, immune system, liver.  (Homeopathic Remedies:
#4, #87)
</div>
<div id="N_BASOPHILS_ABSOLUTE_COUNT" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CARCINOEMBRYONIC_ANTIGEN--%>
<tr><td colspan="4"><h2>CARCINOEMBRYONIC ANTIGEN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCARCINOEMBRYONIC_ANTIGEN" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 2.8</td>
<td class="brd">0 - 3.8</td>
<td class="brd" id="Td1CARCINOEMBRYONIC_ANTIGEN" runat="server"><asp:Literal ID="LtrCARCINOEMBRYONIC_ANTIGEN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CARCINOEMBRYONIC_ANTIGEN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CARCINOEMBRYONIC_ANTIGEN" runat="server" visible="false">
<label>Generally associated with Low CEA:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Broccoli, cauliflower, beet, cabbage, spinach, kale, mushroom, avocado.
<label>Support:</label>
(Homeopathic Remedies:  #4, #20, #807)
</div>
<div id="I_CARCINOEMBRYONIC_ANTIGEN" runat="server" visible="false">
<label>CEA stand alone indicators generally associated with:</label>
Early stage cancer anti body screening.
</div>
<div id="H_CARCINOEMBRYONIC_ANTIGEN" runat="server" visible="false">
<label>Generally associated with High CEA:</label>
Immune system fighting antibodies, not containing and destroying all the cancer cells, early detection of lung, bone, breast, liver, pancreatic, stomach and colon cancer.
<label>Corresponding need for nutritional support for High CEA:</label>
Jug One Protocol, green Drink, Bedtime Bowel Tonic, Super Food Drink, Duo C Complex, Hydrozine Sulfate, immune Power Formula, Vitamin D-3, Beta Carotene, Wheat Grass, Super Juice 22 Vegetables, 28 Super Amino Acids, Endurall, RNA/DNA, Ionic Iodine, Germanium, Platinum, Cobalt, Selenium, Zinc, Potassium.
<label>Vegetable Juice Concentrates:</label>
Broccoli, cauliflower, beet, cabbage, spinach, kale, mushroom, avocado.
<label>Support:</label>
(Homeopathic Remedies:  #4, #20, #807)
</div>
<div id="N_CARCINOEMBRYONIC_ANTIGEN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--C_PEPTIDE--%>
<tr><td colspan="4"><h2>C-PEPTIDE, SERUM</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealC_PEPTIDE" runat="server" Text="2.5"></asp:Literal></td>
<td class="brd">2.0 - 3.0</td>
<td class="brd">0.8 - 3.9</td>
<td class="brd" id="Td1C_PEPTIDE" runat="server"><asp:Literal ID="LtrC_PEPTIDE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1C_PEPTIDE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_C_PEPTIDE" runat="server" visible="false">
<label>Generally associated with LowC-Peptide Serum:</label>
Insufficient insulin production by the pancreas and being released by the beta cells into the blood. Hypoglycemic
<label>Corresponding need for nutritional support for LowC-Peptide Serum:</label>
Super Food Drink, Super Food Drink
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Pancreas Support, Chromium, Vanadium
<label>Homeopathic Remedies Number:</label> #29, #34, #808
<label>Botanical Healing Tea Formulations:</label>
Diabetes Prevention, Energy Tea, HypericumTea
<label>Naturopathic Food Medicine Formulations:</label>
Super Food Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Mega B Complex, Stress and Toxin Protection, Bromelain, Pancreatic extract
<label>Clinic Treatments Indicated:</label>
Colon Hydrotherapy, Chelation Therapy, Hyperbaric Oxygen
<label>Vegetable Juice Concentrates:</label>
Green Drink
<label>Support:</label>
Pancreas, Liver
</div>
<div id="I_C_PEPTIDE" runat="server" visible="false">
<label>C-Peptide Serum standalone indicators generally associated with:</label>
Evaluates Insulin production by the beta cells in the pancreas. Determines the cause of blood sugar an Imbalance determines the production of Insulin.
</div>
<div id="H_C_PEPTIDE" runat="server" visible="false">
<label>Generally associated with HighC-Peptide Serum:</label>
Too much insulin being manufactured by the pancreas and being released into the blood by beta cells. Diabetes
<label>Corresponding need for nutritional support for HighC-Peptide Serum:</label>
Super Food Drink, Super Food Drink
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Pancreas Support, Chromium, Vanadium
<label>Homeopathic Remedies Number:</label>  #10, #43, #808
<label>Botanical Healing Tea Formulations:</label>
Diabetes Prevention, Energy Tea, Hypericum Tea
<label>Naturopathic Food Medicine Formulations:</label>
Super Food Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Mega B Complex, Stress and Toxin Protection, Bromelain, Pancreatic extract
<label>Clinic Treatments Indicated:</label>
Colon Hydrotherapy, Chelation Therapy, Hyperbaric Oxygen
<label>Vegetable Juice Concentrates:</label>
Green Drink
<label>Support:</label>
Pancreas, Liver
</div>
<div id="N_C_PEPTIDE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--ESTRADIOL--%>
<tr><td colspan="4"><h2>ESTRADIOL</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealESTRADIOL" runat="server" Text="30 (men) <br />80 (women)"></asp:Literal></td>
<td class="brd">10 - 60 (men) <br />70 - 90 (women)</td>
<td class="brd">20 - 75 (men) <br />60 - 100 (women)</td>
<td class="brd" id="Td1ESTRADIOL" runat="server"><asp:Literal ID="LtrESTRADIOL" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1ESTRADIOL" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_ESTRADIOL_MALE" runat="server" visible="false">
<label>Generally associated with Low Estradiol:</label>
Adrenal exhaustion, overwhelming stress.
<label>Corresponding need for nutritional support for Low Estradiol:</label>
Adrenal Hormone Restoration Factors, Vitamin E Complex, Ionic Zinc, Omega 3/6 Essential Fatty Acids, Pineal Hormone restoration Factors, Wheat Germ Oil, Ionic Magnesium, Super Oil.
<label>Vegetable Juice Concentrates:</label>
Beet, kale, tomato, avocado, broccoli.
<label>Support:</label>
Male hormone system, pituitary.  (Homeopathic Remedies:  # 22, #44, #803, #805)
</div>
<div id="I_ESTRADIOL_MALE" runat="server" visible="false">
<label>Estradiol stand alone indicators generally associated with:</label>
Hormonal balance.
</div>
<div id="H_ESTRADIOL_MALE" runat="server" visible="false">
<label>Generally associated with High Estradiol:</label>
Testosterone deficiency, human growth hormone deficiency, thyroid imbalance, premature aging, impotence, infertility, male pattern balding, benign prostate hypertrophy, urinary difficulties, heart muscle weakness, excess use of medications, beta blockers, cardio-vascular drugs, high blood pressure drugs, anti-fungals, antibiotics, cortisol, alcohol, devitalized foods, diet soda, coffee, sugar, sugar substitutes, gynecomastia, erectile dysfunction.
<label>Corresponding need for nutritional support for High Estradiol:</label>
Vitamin E Complex, Wheat Germ Oil, Co-Enzyme Q-10, Alfalfa, Lipoic Acid, L-Carnitine, L-Arginine, Jug One Protocol, Ionic Zinc, Sulfur, Germanium, Cobalt, Macho Herba
<label>Vegetable Juice Concentrates:</label>
Beet, kale, tomato, avocado, broccoli.
<label>Support:</label>
Male hormone system, pituitary.  (Homeopathic Remedies:  # 22, #44, #803, #805)
</div>
<div id="L_ESTRADIOL_FEMALE" runat="server" visible="false">
<label>Generally associated with Low Estradiol:</label>
Ovarian fatigue, menopause, perri menopause, complete or partial hysterectomy and/or removal of the ovaries, muscle loss, bone loss, loss of interest in sex, body fat gain, premature aging, hot flashes, vaginal dryness, vaginal itching, hypo amenorrhea, urterus protapse, vaginal protapse, painful intercourse, recurrent cystitis, bladder protapse, osteoarthritis type conditions, night sweats, memory loss, depression, wrinkles, droopy breasts.
<label>Corresponding need for nutritional support for Low Estradiol:</label>
Female Hormone Restoration Factors, Adrenal Hormone Restoration Factors, Oil of Evening Primrose, Female Vigor, Lady Tonic, Wheat Germ Oil, Super Oil, Vitamin E Complex, Black Cohash, I-Thyroid
<label>Vegetable Juice Concentrates:</label>
Avocado, kale, broccoli, sweet potato.
<label>Support:</label>
Female system, thyroid, pituitary. (Homeopathic Remedies: #23, #44, #804, #805, #806, #810)
</div>
<div id="I_ESTRADIOL_FEMALE" runat="server" visible="false">
<label>Estradiol stand alone indicators generally associated with:</label>
Predominant female hormone.
</div>
<div id="H_ESTRADIOL_FEMALE" runat="server" visible="false">
<label>Generally associated with High Estradiol:</label>
Over medication, excess use of alcohol, sugar, devitalized foods, adrenal exhaustion, progesterone deficiency, human growth hormone deficiency, excess body fat storing, obesity, PMS, increased risk of female cancers.
<label>Corresponding need for nutritional support for High Estradiol:</label>
Female Hormone Restoration Factors, Oil of Evening Primrose, Bio-Identical Female Restoration Therapy, Ferma Herba, Wheat Germ Oil, Super Oil, Ultra E Complex, Fema Vita, 
<label>Clinical Treatments Indicated:</label>
Bio-Identical Hormone Restoration Therapy
<label>Vegetable Juice Concentrates:</label>
Avocado, kale, broccoli, sweet potato.
<label>Support:</label>
Female system, thyroid, pituitary. (Homeopathic Remedies: #23, #44, #804, #805, #806, #810)
</div>
<div id="N_ESTRADIOL" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--FERRITIN--%>
<tr><td colspan="4"><h2>FERRITIN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealFERRITIN" runat="server" Text="215"></asp:Literal></td>
<td class="brd">150 - 280</td>
<td class="brd">30 - 400</td>
<td class="brd" id="Td1FERRITIN" runat="server"><asp:Literal ID="LtrFERRITIN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1FERRITIN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_FERRITIN" runat="server" visible="false">
<label>Generally associated with Low Ferritin:</label>
Nutrition deficiency anemia, low iron storage in cells, stress, protein deficiency, blood loss, copper deficiency, hypochlorhydria, iron deficiency anemia.
<label>Corresponding need for nutritional support for Low Ferrtin:</label>
Anti Anemia Complex, Endurall, Red Blood Cell Builder, BloodBuilding Broth, Anti Fatigue.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Iron, Anti Anemia Formula, Heavy Metal Detox, Liquid Copper
<label>Homeopathic Remedies Number:</label> # 17, # 34, # 63
<label>Botanical Healing Tea Formulations:</label>
Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Jug One Protocol, Green Drink, Super Drink, Amino Acid Creamed Beet Juice, Amino 	Acid Creamed One Dozen Green Vegetables Juice, Blood Building Broth
<label>Vitamin and Nutraceutical Supplements:</label>
Red Blood Cell Builder, Pyridoxine, Anti Anemia Complex, Anti Fatigue, Folic Acid, 	Duo C Complex, Absorption Enhancer, Hypericum, Cal/Mag, 28 super Amino Acids, 	Endurall
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Vitamin B-12 Shot, I.V. Super Nutritional Drip
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, mushroom, green peppers, jalapeno, avocado, garlic, horseradish, green onion, fig, lemon.
<label>Support:</label>
Liver, detoxification.  (Homeopathic Remedies:  #10, #63, #819)
</div>
<div id="I_FERRITIN" runat="server" visible="false">
<label>Ferritin stand alone indicators generally associated with:</label>
Iron tissue reserve bank, most reliable indicator of total body iron status, reflects the body’s iron stores.
</div>
<div id="H_FERRITIN" runat="server" visible="false">
<label>Generally associated with High Ferritin:</label>
Liver problems, iron over load, inflammatory marker, excess alcohol, junk foods, susceptible to liver disease, Hodgkin’s, breast carcinoma, lymphoma, autointoxication, heavy metal or environmental toxicity, hemochromatosis, excess use of aspirin, drugs, fast foods, sugar, soda drinks, hyperthyroidism, deficiencies in folic acid, Vitamins B-12 and B-6, enzymes, sulfur, fiber, Co-Enzyme Q-10, alpha lipoic acid, omega 3and 6 essential fatty acids, choline, inositol, green foods, chlorophyll																		
<label>Corresponding need for nutritional support for High Ferritin:</label>
Morning Health Drink, Liver Flush, Green Drink, Bedtime Bowel Tonic, ilk Thistle, 
L-Cystein, Organic Sulfur
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Heavy Metal Detox, Toxicity Correction, Liver Detoxification
<label>Homeopathic Remedies Number:</label> # 10, # 63
<label>Botanical Healing Tea Formulations:</label>
Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Super Oil
<label>Vitamin and Nutraceutical Supplements:</label>
Co-Enzyme Q-10, Alpha Lipoic Acid, Lipotropic Factor, Salmon Oil, Borage Oil, 
Mega B Complex, Fiber Max, Maxi Cleanse
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, I.V. Chelation Therpay, Ionic Foot Bath with Ozone, Ozone 	Infused Far Infrared Detoxification Sauna
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, mushroom, green peppers, jalapeno, avocado, garlic, horseradish, green onion, fig, lemon.
<label>Support:</label>
Liver, detoxification.  (Homeopathic Remedies:  #10, #63, #819)
</div>
<div id="N_FERRITIN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CORTISOL--%>
<tr><td colspan="4"><h2>CORTISOL</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCORTISOL" runat="server" Text="12.5"></asp:Literal></td>
<td class="brd">7.2 - 17.2</td>
<td class="brd">4.3 - 22.4</td>
<td class="brd" id="Td1CORTISOL" runat="server"><asp:Literal ID="LtrCORTISOL" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CORTISOL" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CORTISOL" runat="server" visible="false">
<label>Generally associated with Low Cortisol:</label>
Hypoglycemia, hypotension, out of gas, adrenal exhaustion, chronic fatigue syndrome, connective tissue disease, depression, hypothyroid, allergies, suppressed immune system, loss of strength, psoriasis, nerve burn out, reduced work capacity, eczema, premature aging, anxiety, nervous exhaustion, rheumatoid and/or arthritic type conditions, hypopituitaryism, human growth hormone deficiency, multiple nutrition deficiency syndrome.
<label>Corresponding need for nutritional support for Low Cortisol:</label>
Adrenal Hormone Restoration, Royal Queen Bee Jelly, Macho Herba, Bio-Identical Hormone Restoration, Human Growth Hormone Restoration Therapy
<label>Vegetable Juice Concentrates:</label>
Spinach, tomato, zucchini.
<label>Support:</label>
Nerves, brain, immune system.  (Homeopathic Remedies:  #17, #807, #812, #814)
</div>
<div id="I_CORTISOL" runat="server" visible="false">
<label>Cortisol stand alone indicators generally associated with:</label>
Stress indicator, the effects of the mind and emotions are having on the organs, nerves, cells and immune system.
</div>
<div id="H_CORTISOL" runat="server" visible="false">
<label>Generally associated with High Cortisol:</label>
Obesity, cancer, hypertension, deficiencies in magnesium, vitamin C, citrus bio-flavanoids, 
B complex, pantothemic acid, adrenal exhaustion, nervous breakdown, stressed out thyroid problems, nerves and body in a state of high alert, excess cortisol level due to worry, anxiety, stress, anger, fear, trauma, carcinoma, high blood pressure, high cholesterol, early warning heart disease, stroke, immune breakdown, G.I. type diseases.
<label>Corresponding need for nutritional support for High Cortisol:</label>
Nerve Builder, Mega B Complex 1000, Duo C Complex, Stress & Tonic Protector, Adrenal Hormone Restoration Factors, Pineal Hormone Restoration Factors, Cal/Mag, Hypericum, Valerian Root.
<label>Vegetable Juice Concentrates:</label>
Spinach, tomato, zucchini.
<label>Support:</label>
Nerves, brain, immune system.  (Homeopathic Remedies:  #17, #807, #812, #814)
</div>
<div id="N_CORTISOL" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--HEMOGLOBIN_A1C--%>
<tr><td colspan="4"><h2>HEMOGLOBIN A1c</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealHEMOGLOBIN_A1C" runat="server" Text="5.40"></asp:Literal></td>
<td class="brd">4.00 - 6.00</td>
<td class="brd">4.40 - 6.40</td>
<td class="brd" id="Td1HEMOGLOBIN_A1C" runat="server"><asp:Literal ID="LtrHEMOGLOBIN_A1C" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1HEMOGLOBIN_A1C" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_HEMOGLOBIN_A1C" runat="server" visible="false">
<label>Generally associated with Low A1C:</label>
Reactive hypoglycemia, low body sugar, brain fog, mood swings, depression, forgetfulness, inability to concentrate, eye sight, nervousness, anxiety, irrational fears, worry, undue fatigue, drained energy, uncompleted work, nutritional deficiencies in chromium.
<label>Corresponding need for nutritional support for Low A1C:</label>
Amino Acids, Vitamin B Complex, Pantothenic Acid, Alpha Lipoic Acid, Co-Enzyme Q-10, Pancreatin, Hydrocloric Acid, Inositol, full spectrum of Amino Acid Chelated Minerals.
<label>Vegetable Juice Concentrates:</label>
Zucchini, avocado, mushrooms, celery, kale.
<label>Support:</label>
Pancreas, adrenals.  (Homeopathic Remedies:  #29, #32, #43, #818, #829)
</div>
<div id="I_HEMOGLOBIN_A1C" runat="server" visible="false">
<label>Hemoglobin A1C stand alone indicators generally associated with:</label>
Early detection of diabetes, metabolic syndrome, body fat weight gain, depression, hypoglycemia, also a more advanced test to determine if the present diabetic treatment is working, renders a 120 day blood sugar average.
</div>
<div id="H_HEMOGLOBIN_A1C" runat="server" visible="false">
<label>Generally associated with High A1C:</label>
Diabetes, hypertension, high cholesterol, high triglycerides, body fat gain, high blood sugar, circulatory problems, early warning of kidney, brain, and heart disorders.
<label>Corresponding need for nutritional support for High A1C:</label>
Biotin, Choline, Chromium, Folic Acid, Inositol, full spectrum of Amino Acid Chelated Minerals, Alpha Lipoic Acid, Niacin, Pantothenic Acid, Co-Enzyme Q-10, Absorption Enhancer, Vitamin E, Cobolamin, Alfalfa Juice, Mega B Complex, Bio-Flavanoids, 
Vitamin C, L-Carnitine, Pancreatian, Maxi Fiber, Fiber Max.
<label>Clinical Treatments Indicated:</label>
Alpha Lipoic Acid, I.V. Drips, I.V. Ozone
<label>Vegetable Juice Concentrates:</label>
Zucchini, avocado, mushrooms, celery, kale.
<label>Support:</label>
Pancreas, adrenals.  (Homeopathic Remedies:  #29, #32, #43, #818, #829)
</div>
<div id="N_HEMOGLOBIN_A1C" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--INSULINLIKE_GROWTH_FACT--%>
<tr><td colspan="4"><h2>INSULINLIKE GROWTH FACT</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealINSULINLIKE_GROWTH_FACT" runat="server" Text="400"></asp:Literal></td>
<td class="brd">200 - 600</td>
<td class="brd">118 - 550</td>
<td class="brd" id="Td1INSULINLIKE_GROWTH_FACT" runat="server"><asp:Literal ID="LtrINSULINLIKE_GROWTH_FACT" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1INSULINLIKE_GROWTH_FACT" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_INSULINLIKE_GROWTH_FACT" runat="server" visible="false">
<label>Generally associated with Low IGF-1:</label>
Premature aging, poor protein assimilation, lack of exercise, sleep disorders, stress overwhelm, hypopitutaryism, anxiety, diabetes, deficiency in human growth hormone.
<label>Corresponding need for nutritional support for Low IGF-1:</label>
L-Arginine Complex, Super Food Drink, 28 super Amino Acids, L-Glutamine, L-Carnitine, Super Endurance.
<label>Vegetable Juice Concentrates:</label>
Spinach, zucchini, avocado, apple, Thyroid Broth.
<label>Support:</label>
Adrenals, thyroid, pituitary.  (Homeopathic Remedies:  #802,  #805,  #806)
</div>
<div id="I_INSULINLIKE_GROWTH_FACT" runat="server" visible="false">
<label>IGF-1 stand alone indicators generally associated with:</label>
Physiological aging gauge, pituitary function, body’s ability to repair.
</div>
<div id="H_INSULINLIKE_GROWTH_FACT" runat="server" visible="false">
<label>Generally associated with High IGF-1:</label>
Over medication, over stimulation of the pituitary, under performing thyroid.
<label>Corresponding need for nutritional support for High IGF-1:</label>
I-Thyroid.
<label>Clinical Treatments Indicated:</label>
Bio-Identical Hormone Restoration Therapy Factor, Human Growth (HGH) Restoration Therapy 
<label>Vegetable Juice Concentrates:</label>
Spinach, zucchini, avocado, apple, Thyroid Broth.
<label>Support:</label>
Adrenals, thyroid, pituitary.  (Homeopathic Remedies:  #802,  #805,  #806)
</div>
<div id="N_INSULINLIKE_GROWTH_FACT" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--ALPHA_FETOPROTEIN--%>
<tr><td colspan="4"><h2>ALPHA-FETOPROTEIN, TUMOR</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealALPHA_FETOPROTEIN" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 3.9</td>
<td class="brd">0 - 8</td>
<td class="brd" id="Td1ALPHA_FETOPROTEIN" runat="server"><asp:Literal ID="LtrALPHA_FETOPROTEIN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1ALPHA_FETOPROTEIN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_ALPHA_FETOPROTEIN" runat="server" visible="false">
<label>Generally associated with Low AFP:</label>
Immune system keeping cancer antigens under control, cellular degeneration/regeneration gauge
<label>Vegetable Juice Concentrates:</label>
Broccoli, cauliflower, beet, cabbage, kale, horseradish, mushroom, avocado.
<label>Support:</label>
(Homeopathic Remedies:  #4, #20, #803, #804)
</div>
<div id="I_ALPHA_FETOPROTEIN" runat="server" visible="false">
<label>AFP stand alone indicators generally associated with:</label>
Used in the early detection of testicular carcinoma in men and ovarian carcinoma in women, liver tumors, cancer antigens over running immune system
</div>
<div id="H_ALPHA_FETOPROTEIN" runat="server" visible="false">
<label>Generally associated with High AFP:</label>
Highly toxic condition, faulty life style, alcohol consumption, junk foods, sugar consumption, over medicated, mal-absorption syndrome, liver sluggishness, cellular oxygen deficiency, metabolic acidosis, compromised immune system, stressed physiology, multiple nutritional deficiency syndrome, cells breaking down faster than they are rebuilding, early cancer or inflammation or malignancy or autoimmune condition
<label>Corresponding need for nutritional support for High AFP:</label>
Ionic iodine, Potassium, Zinc, Platinum, Cobalt, Gold, Germanium, Hydrozine, Sulfate, 
Duo C Complex, Bio-Flavanoids, Super C Active.
<label>Clinical Treatments Incidated:</label>
I.V. Immune Drips, I.V. Ozone Therapy, Naturopathic Detoxification, Nutritional 	Saturation Therapy
<label>Vegetable Juice Concentrates:</label>
Broccoli, cauliflower, beet, cabbage, kale, horseradish, mushroom, avocado.
<label>Support:</label>
(Homeopathic Remedies:  #4, #20, #803, #804)
</div>
<div id="N_ALPHA_FETOPROTEIN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--INSULIN--%>
<tr><td colspan="4"><h2>INSULIN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealINSULIN" runat="server" Text="3"></asp:Literal></td>
<td class="brd">0 - 6</td>
<td class="brd">6 - 27</td>
<td class="brd" id="Td1INSULIN" runat="server"><asp:Literal ID="LtrINSULIN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1INSULIN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_INSULIN" runat="server" visible="false">
<label>Generally associated with Low Insulin:</label>
Pancreatic insufficiency, hypopituitaryism, human growth hormone (HGH) deficiency
<label>Corresponding need for nutritional support for Low Insulin:</label>
L-Glutamine, L-Arginine, L-Carnitine, Pancreatin, Enzyme Therapy, Mega B complex 1000, Enzyme Therapy, Super Oil 
<label>Vegetable Juice Concentrates:</label>
Zucchini, kale, broccoli, cauliflower.
<label>Support:</label>
Pancreas, adrenals.  (Homeopathic Remedies; #818, #829)
</div>
<div id="I_INSULIN" runat="server" visible="false">
<label>Insulin stand alone indicators generally associated with:</label>
Insulin gauge, diabetes, hypoglycemia and metabolic syndrome, body fat weight gain
</div>
<div id="H_INSULIN" runat="server" visible="false">
<label>Generally associated with High Insulin:</label>
Insulin resistance, diabetes, stress tension, anxiety, excess sugar, junk foods, carbohydrates, medications, alcohol, obesity, lack of fitness, liver sluggishness, kidney disorder, early heart disease warning, hypertension and dyslipidema.
<label>Corresponding need for nutritional support for High Insulin:</label>
Mega B Complex 1000, Golden Seal Root, Gymena Sylvestre, RNA/DNA, Blood Sugar and Energy Stabilizer, Endurall, G.T.F. Factors, Super Food Drink, Licorice Root, Ginseng, Green Drink, 28 Super Amino Acids, L-Arginine Complex, Pancreatic, Adrenal Hormone Restoration Factors, Queen Bee Jelly, Alpha Lipoic Acid, Co-Enzyme Q-10, Thiamine, Magnesium, Potassium, Chromium.
<label>Clinical Treatments Indicated:</label>
Bio-Identical Hormone Restoration Therapy, I.V. Alpha Lipoic Acid Therapy, Fitness 	Medicine, Naturopathic Detoxification Ozone Therapy
<label>Vegetable Juice Concentrates:</label>
Zucchini, kale, broccoli, cauliflower.
<label>Support:</label>
Pancreas, adrenals.  (Homeopathic Remedies; #818, #829)
</div>
<div id="N_INSULIN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--HOMOCTSTEINE--%>
<tr><td colspan="4"><h2>HOMOCTSTEINE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealHOMOCTSTEINE" runat="server" Text="3.9"></asp:Literal></td>
<td class="brd">0 - 7</td>
<td class="brd">4.0 - 15.4</td>
<td class="brd" id="Td1HOMOCTSTEINE" runat="server"><asp:Literal ID="LtrHOMOCTSTEINE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1HOMOCTSTEINE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_HOMOCTSTEINE" runat="server" visible="false">
<label>Generally associated with Low Homocysteine:</label>
Mal-absorption syndrome, deficiencies in enzymes and proteins, homeopathic remedies: #18, #29, #32, #805
<label>Corresponding need for nutritional support for Low Homocysteine:</label>
Cysteine, Methionine, L-Carnitine, L-Glutamine, L-Arginine.
<label>Vegetable Juice Concentrates:</label>
Celery, zucchini, spinach, avocado, mushroom.
<label>Support:</label>
Cardio-vascular system, brain.  (Homeopathic Remedies: #43, #812, #814, #825)
</div>
<div id="I_HOMOCTSTEINE" runat="server" visible="false">
<label>Homocysteine stand alone indicators generally associated with:</label>
Early warning stroke, cardio-vascular disease, cancer, Alzheimer’s.
</div>
<div id="H_HOMOCTSTEINE" runat="server" visible="false">
<label>Generally associated with High Homocysteine:</label>
Inflammation, 100 times more predictive than cholesterol for cardio-vascular disease, lack of fitness, early warnings of stroke, cancer, Alzheimer’s, depression, dementia, arterial stiffness, repressed anger.
<label>Corresponding need for nutritional support for High Homocysteine:</label>
Vitamin B Complex, Vitamin B-12, Co-Enzyme Q-10, L-Arginine, Zinc, DMG, L-Carnitine, Folic Acid, Pyridoxine, Enzymes Therapy
<label>Clinical Treatments Indicated:</label>
I.V. Super Nutritional Drip, Naturopathic Detoxification, Nutritional Saturation 	Therapy
<label>Vegetable Juice Concentrates:</label>
Celery, zucchini, spinach, avocado, mushroom.
<label>Support:</label>
Cardio-vascular system, brain.  (Homeopathic Remedies: #43, #812, #814, #825)
</div>
<div id="N_HOMOCTSTEINE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--TESTOSTERONE_FREE--%>
<tr><td colspan="4"><h2>TESTOSTERONE, FREE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealTESTOSTERONE_FREE" runat="server" Text="3.0 (men) <br />1.0 (women)"></asp:Literal></td>
<td class="brd">2.0 - 4.0 (men) <br />0.8 - 1.2 (women)</td>
<td class="brd">1.6 - 2.9 (men) <br />0.4 - 1.0 (women)</td>
<td class="brd" id="Td1TESTOSTERONE_FREE" runat="server"><asp:Literal ID="LtrTESTOSTERONE_FREE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1TESTOSTERONE_FREE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_TESTOSTERONE_FREE_MALE" runat="server" visible="false">
<label>Generally associated with Low Free Testosterone:</label>
Slow healing, muscle loss, bone density, diabetes, fatigue, loss of sexual function and interest, body fat gain, loss of muscular strength, high blood pressure, low HDL/high LDL cholesterol, heart weakness, cardio-vascular disease, loss of brain function, loss of ambition and enthusiasm for life.
<label>Corresponding need for nutritional support for Low Free Testosterone:</label>
Male Hormone restoration, Macho Vita, Wheat Germ Oil, Natures Healer, Ionic Zinc, Iodine, Germanium, I-Thyroid, Super Endurance, Ginseng, Vitamin E Complex, Mega B Complex 1000, Omega 3/6 Essential Fatty Acids, Co-Enzyme Q-10, L-Carnitine, L-Arginine Complex.
</div>
<div id="I_TESTOSTERONE_FREE_MALE" runat="server" visible="false">
<label>Free Testosterone stand alone indicators generally associated with:</label>
Gauge for usable testosterone, physiological aging, heart disease, stroke, diabetes, loss of muscle, bones, libido, premature aging
<label>Vegetable Juice Concentrates:</label>
Spinach, zucchini, peas, mushroom, avocado, cranberry, Noni juice
<label>Support:</label>
Pituitary, prostrate.  (Homeopathic Remedies:  #44, #802, #803, #805, #809, #835)
</div>
<div id="H_TESTOSTERONE_FREE_MALE" runat="server" visible="false">
<label>Generally associated with High Free Testosterone:</label>
Desirable except in cases of prostate cancer
<label>Corresponding need for nutritional support for High Free Testosterone:</label>
San Palmetto.
<label>Clinical Treatment Indicated:</label>
Bio-Identical Hormone Restoration therapy, Human Growth Hormone (HGH) 	Restoration Therapy
<label>Vegetable Juice Concentrates:</label>
Spinach, zucchini, peas, mushroom, avocado, cranberry, Noni juice
<label>Support:</label>
Pituitary, prostrate.  (Homeopathic Remedies:  #44, #802, #803, #805, #809, #835)
</div>
<div id="L_TESTOSTERONE_FREE_FEMALE" runat="server" visible="false">
<label>Generally associated with Low Free Testosterone:</label>
Lowered immune function, loss of muscle, gain of flab and body fat, forgetfulness, loss of brain function, slow healing, slow thinking, loss of sexual desire, high blood pressure, diabetes, heart weakness, mini stroke symptoms, low HDL cholesterol, high LDL cholesterol, underperforming thyroid.
<label>Corresponding need for nutritional support for Low Free Testosterone:</label>
Omega 3/6 Essential Fatty Acids, L-Arginine Complex, I-thyroid, L-Carnitine, Vitamin E Complex, Co-Enzyme Q-10, Female Vigor, Female Hormone Restoration Factors, Black Cohash, Bio-Identical Female Hormone Restoration therapy, Ionic Zinc, Germanium, Cobalt, Ferma Herba
<label>Vegetable Juice Concentrates:</label>
Kale, zucchini, broccoli. 
<label>Support:</label>
Female system, pituitary, thyroid.  (Homeopathic Remedies:  #44, #804, #806, #810)
</div>
<div id="I_TESTOSTERONE_FREE_FEMALE" runat="server" visible="false">
<label>Free Testosterone stand alone indicators generally associated with:</label>
Hormonal level gauge, signs of physiological premature aging.
</div>
<div id="H_TESTOSTERONE_FREE_FEMALE" runat="server" visible="false">
<label>Generally associated with High Free Testosterone:</label>
Female hormone imbalance, oil, skin, facial hairs.
<label>Corresponding need for nutritional support for High Free Testosterone:</label>
Wheat Germ Oil, Vitamin E Complex, Black Cohash.
<label>Vegetable Juice Concentrates:</label>
Kale, zucchini, broccoli. 
<label>Support:</label>
Female system, pituitary, thyroid.  (Homeopathic Remedies:  #44, #804, #806, #810)
</div>
<div id="N_TESTOSTERONE_FREE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--C_REACT_PROTEIN--%>
<tr><td colspan="4"><h2>C-REACT, PROTEIN CARDIAC</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealC_REACT_PROTEIN" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 3</td>
<td class="brd">0 - 6</td>
<td class="brd" id="Td1C_REACT_PROTEIN" runat="server"><asp:Literal ID="LtrC_REACT_PROTEIN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1C_REACT_PROTEIN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_C_REACT_PROTEIN" runat="server" visible="false">
<label>Generally associated with Low C-Reactive Protein:</label>
Low is desirable.  Zero is ideal
</div>
<div id="I_C_REACT_PROTEIN" runat="server" visible="false">
<label>C-Reactive Protein stand alone indicators generally associated with:</label>
Inflammatory marker, after effect of the body, scavenger/clean up process, early warning marker of cardio-vascular disease, peripheral vascular disease, cellular breakdown, cancer, Alzheimer’s, early stage infection gauge
<label>Vegetable Juice Concentrates:</label>
Spinach, avocado, mushroom, broccoli, cauliflower
<label>Support:</label>
Cardio-vascular system, immune system, brain. (Homeopathic Remedies:  #66, #807, #814, #825)
</div>
<div id="H_C_REACT_PROTEIN" runat="server" visible="false">
<label>Generally associated with High C-Reactive Protein:</label>
Inflammatory and/or degenerative condition, excess sugar, constipation, cellular oxygen deficiency, toxicity, diabetes, mellitus, hypothyroidism, obstruction, pancreatitis, pregnancy, liver malfunction, early warning of cardio-vascular disease, future stroke, rheumatoid arthritis, cancer, T.B., pneumonia, SLE, Alzheimer’s, low grade infection, colon toxicity, bacteria infection, fungal condition, over use of medications, trapped lymphatic toxins
<label>Corresponding need for nutritional support for High C-Reactive Protein:</label>
Enzyme Therapy, L-Carnitine, L-Arginine Complex, Hawthorn Berry, Capsicum, Alpha Lipoic Acid, Co-Enzyme Q-10, Bromoline, Omega 3/6 Essential Fatty Acids, Wheat Germ
Oil, Vitamin E Complex, Brain Flush, Lipotropic Factors, Phasphadtyl Choline, Duo C Complex, Green Drink, Green Tea Extract, Immune Power Formula, N-Acetyl Cysteine, Turmeric
<label>Vegetable Juice Concentrates:</label>
Spinach, avocado, mushroom, broccoli, cauliflower
<label>Support:</label>
Cardio-vascular system, immune system, brain. (Homeopathic Remedies:  #66, #807, #814, #825)
</div>
<div id="N_C_REACT_PROTEIN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--PROGESTERONE--%>
<tr><td colspan="4"><h2>PROGESTERONE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealPROGESTERONE" runat="server" Text="15"></asp:Literal></td>
<td class="brd">10 - 20</td>
<td class="brd">4 - 25</td>
<td class="brd" id="Td1PROGESTERONE" runat="server"><asp:Literal ID="LtrPROGESTERONE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1PROGESTERONE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_PROGESTERONE" runat="server" visible="false">
<label>Generally associated with Low Progesterone:</label>
Premature aging, tumor formation, low libido, anxiety, sleep disturbances, constipation, amenorrhea, hair loss, estrogen dominance, myocardial infraction, adrenal depletion, elevated DHT, breast cysts, ovarian cysts, PMS, early warning uterine cancer, osteoporosis
<label>Corresponding need for nutritional support for Low Progesterone:</label>
Oil of Evening Primrose, Vitamin E Complex, Ionic Selenium, Cobalt, Zinc, Germanium, Fema Herba, Bio-Identical Hormone Restoration Therapy
<label>Vegetable Juice Concentrates:</label>
Thyroid Broth, Royal Pollen Complex, Queen Bee Milk
<label>Support:</label>
Sex hormones, thyroid, adrenals, pituitary.  (Homeopathic Remedies:  #44, #802, #803, #804, #806, #809, #810)
</div>
<div id="I_PROGESTERONE" runat="server" visible="false">
<label>Progesterone stand alone indicators generally associated with:</label>
Hormone balancer, women and men, tumor protector
</div>
<div id="H_PROGESTERONE" runat="server" visible="false">
<label>Generally associated with High Progesterone:</label>
Ovarian fatty tumors, fatigue, depression, loss of sex drive, vertigo, low blood pressure, faint, drowsiness, sleepiness, liver sluggishness, feminization in men
<label>Corresponding need for nutritional support for High Progesterone:</label>
Adrenal Hormone Restoration Factors, Queen Bee Jelly, L-Arginine, Omega 3 and 6 Essential Fatty Acids, I-Thyroid
<label>Vegetable Juice Concentrates:</label>
Thyroid Broth, Royal Pollen Complex, Queen Bee Milk
<label>Support:</label>
Sex hormones, thyroid, adrenals, pituitary.  (Homeopathic Remedies:  #44, #802, #803, #804, #806, #809, #810)
</div>
<div id="N_PROGESTERONE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--SODIUM_POTASSIUM_RATIO--%>
<tr><td colspan="4"><h2>SODIUM/POTASSIUM RATIO</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealSODIUM_POTASSIUM_RATIO" runat="server" Text="30"></asp:Literal></td>
<td class="brd">27.5 - 32.5</td>
<td class="brd">25 - 35</td>
<td class="brd" id="Td1SODIUM_POTASSIUM_RATIO" runat="server"><asp:Literal ID="LtrSODIUM_POTASSIUM_RATIO" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1SODIUM_POTASSIUM_RATIO" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_SODIUM_POTASSIUM_RATIO" runat="server" visible="false">
<label>Generally associated with Low/High Sodium/Potassium:</label>
Adrenal exhaustion, nerve burnout, dehydration, over use of medications, acid/alkaline imbalance, heart attack risk, muscular weakness, cramps, general lethargy, signs of early hand and/or leg paralysis, pending nervous breakdown, diuretic drugs, swollen ankles and/or fingers, exaggerated PMS or menopause symptoms.
<label>Corresponding need for nutritional support for Low/High Sodium/Potassium:</label>
Electrolytes, Ionic Liquid Minerals, Blood Builder, Potassium Broth, L-Carnitine, L-Arginine Complex, Hawthorn Berry, Chinese Garlic, Jug One Protocol, Jug Two Protocol
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Jug One Protocol, 87 Sea Minerals
<label>Homeopathic Remedies Number:</label> # 4, # 823
<label>Botanical Healing Tea Formulations:</label>
Kidney Flush, Lymph Tea
<label>Naturopathic Food Medicine Formulations:</label>
Spinach and Whey, Green Drink, Bedtime Bowel Tonic, Cranberry Juice Complex
Vitamin and Nutraceutical Supplements:
57 Super Minerals, Noni Juice Extract, Aloe Vera Gel, Alpha Lipoic Acid, Multizyme, 	Blueberry Leaf Extract, Herbal Anti Inflammatory, HMP 33, G.I. Tract Transition 	Stimulator
<label>Clinical Treatments Indicated:</label>
<label>Vegetable Juice Concentrates:</label>
Parsley, kale, celery, figs
<label>Support:</label>
Heart, cardiovascular, pineal nerves.  (Homeopathic Remedies:  #17, #66, #825, #827)
<label>Vegetable Juice Concentrates:</label>
Parsley, kale, celery, figs
<label>Support:</label>
Heart, cardiovascular, pineal nerves.  (Homeopathic Remedies:  #17, #66, #825, #827)
</div>
<div id="I_SODIUM_POTASSIUM_RATIO" runat="server" visible="false">
<label>Sodium/Potassium Ratio stand alone indicators generally associated with:</label>
Electrolyte balance, inner/outer ionic exchange efficiency, assesses kidney function.
</div>
<div id="H_SODIUM_POTASSIUM_RATIO" runat="server" visible="false">
<label>Generally associated with Low/High Sodium/Potassium:</label>
Adrenal exhaustion, nerve burnout, dehydration, over use of medications, acid/alkaline imbalance, heart attack risk, muscular weakness, cramps, general lethargy, signs of early hand and/or leg paralysis, pending nervous breakdown, diuretic drugs, swollen ankles and/or fingers, exaggerated PMS or menopause symptoms.
<label>Corresponding need for nutritional support for Low/High Sodium/Potassium:</label>
Electrolytes, Ionic Liquid Minerals, Blood Builder, Potassium Broth, L-Carnitine, L-Arginine Complex, Hawthorn Berry, Chinese Garlic, Jug One Protocol, Jug Two Protocol
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Jug One Protocol, 87 Sea Minerals
<label>Homeopathic Remedies Number:</label> # 4, # 823
<label>Botanical Healing Tea Formulations:</label>
Kidney Flush, Lymph Tea
<label>Naturopathic Food Medicine Formulations:</label>
Spinach and Whey, Green Drink, Bedtime Bowel Tonic, Cranberry Juice Complex
Vitamin and Nutraceutical Supplements:
57 Super Minerals, Noni Juice Extract, Aloe Vera Gel, Alpha Lipoic Acid, Multizyme, 	Blueberry Leaf Extract, Herbal Anti Inflammatory, HMP 33, G.I. Tract Transition 	Stimulator
<label>Clinical Treatments Indicated:</label>
<label>Vegetable Juice Concentrates:</label>
Parsley, kale, celery, figs
<label>Support:</label>
Heart, cardiovascular, pineal nerves.  (Homeopathic Remedies:  #17, #66, #825, #827)
</div>
<div id="N_SODIUM_POTASSIUM_RATIO" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CALCIUM_ALBUMIN_RATIO--%>
<tr><td colspan="4"><h2>CALCIUM/ALBUMIN RATIO</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCALCIUM_ALBUMIN_RATIO" runat="server" Text="2.9"></asp:Literal></td>
<td class="brd">2.0 - 3.70</td>
<td class="brd">1.2 - 4.5</td>
<td class="brd" id="Td1CALCIUM_ALBUMIN_RATIO" runat="server"><asp:Literal ID="LtrCALCIUM_ALBUMIN_RATIO" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CALCIUM_ALBUMIN_RATIO" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CALCIUM_ALBUMIN_RATIO" runat="server" visible="false">
<label>Generally associated with Low Calcium/Albumin Ratio:</label>
Protein deficiency, loss of muscle tissue, dehydration, adult onset, human growth hormone deficiency, vitamin D-3 deficiency, kidney overwhelm due to toxicity, mal-absorption syndrome, hyperparathyroidism, pancreatitis, hypochlorhydia, calcium deficiency.
<label>Corresponding need for nutritional support for Low Calcium/Albumin Ratio:</label>
Okinawan Longevity Formula, 57 Super Minerals, 28 Super Amino Acids
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Stomach & Digestion Formula, Liquid Enzymes, Bio-Ox
<label>Homeopathic Remedies Number:</label> # 815
<label>Botanical Healing Tea Formulations:</label>
Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Super Food Drink, Jug One Protocol, Bedtime Bowel Tonic, Morning Health Drink, 	Super Oil, Co-Enzyme Q-10, Omega 3
<label>Vitamin and Nutraceutical Supplements:</label>
Absorption Enhancer, Crude Apple Cider Vinegar, Vitamin D-3, Enzyme Therapy, Bearberry, Corn Silk, 28 Super Amino Acids, L-Glutimine, L-Arginine, L-Carnitine
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Ionic Foot Detox Bath with Ozone, I.V. Ozone Therapy 
<label>Vegetable Juice Concentrates:</label>
Celery, lemon, kale, cabbage, broccoli, spinach, fig, plum
<label>Support:</label>
Parathyroid, bones, connective tissue, stomach, digestion, colon.  (Homeopathic Remedies:
#815, #828)
</div>
<div id="I_CALCIUM_ALBUMIN_RATIO" runat="server" visible="false">
<label>Calcium/Albumin Ratio stand alone indicators generally associated with:</label>
Parathyroid function, G.I. Tract, liver, inflammation, total nutrition, dehydration gauge.
</div>
<div id="H_CALCIUM_ALBUMIN_RATIO" runat="server" visible="false">
<label>Generally associated with High Calcium/Albumin Ratio:</label>
Hypothyroidism, hyperparathyroidism, liver toxicity, dehydration, enzyme deficiency, calcium out of solution, protein/amino acid deficiency, metabolic acidosis.
<label>Corresponding need for nutritional support for High Calcium/Albumin Ratio:</label>
Magnesium, Boron, Absorption Enhancer, Metazyme Therapy, Enzyme Therapy, Bromaline, 28 Super Amino Acids, Super Drink.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Sulfur, Liver Support
<label>Homeopathic Remedies Number:</label> # 806
<label>Botanical Healing Tea Formulations:</label>
Liver Detox
<label>Naturopathic Food Medicine Formulations:</label>
Amino Acid Creamed Beet Juice
<label>Vitamin and Nutraceutical Supplements:</label>
I-Thyroid, Sea Life, Alpha Lipoic Acid, Organic Sulfur, Absorption Enhancer, Enzyme 	Therapy
<label>Clinical Treatments Indicated:</label>
I.V. Alpha Lipoic Acid Drip, I.V. Ozone Therapy, I.V. Hydrogen Peroxide Drip
<label>Vegetable Juice Concentrates:</label>
Celery, lemon, kale, cabbage, broccoli, spinach, fig, plum
<label>Support:</label>
Parathyroid, bones, connective tissue, stomach, digestion, colon.  (Homeopathic Remedies:
#815, #828)
</div>
<div id="N_CALCIUM_ALBUMIN_RATIO" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--ABSOLUTE_NEUTROPHILS_1--%>
<tr><td colspan="4"><h2>ABSOLUTE NEUTROPHILS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealABSOLUTE_NEUTROPHILS_1" runat="server" Text="4.2"></asp:Literal></td>
<td class="brd">3.9 - 4.5</td>
<td class="brd">3.2 - 5.2</td>
<td class="brd" id="Td1ABSOLUTE_NEUTROPHILS_1" runat="server"><asp:Literal ID="LtrABSOLUTE_NEUTROPHILS_1" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1ABSOLUTE_NEUTROPHILS_1" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_ABSOLUTE_NEUTROPHILS_1" runat="server" visible="false">
<label>Generally associated with Low Absolute Neutrophils:</label>
Excess junk food, alcohol, medications, drugs, stress overwhelm, suppressed immune system, multiple nutritional deficiencies, chemotherapy/radiation after effects, chemical/environmental exposure, infection, viral overload, malnutrition, heavy metal toxicity, autointoxication, deficiencies in vitamins B complex, C, E, A, D and bio-flavanoids, hormonal disorder, inflammation
<label>Corresponding need for nutritional support for Low Absolute Neutrophils:</label>
Immune Power Formula, Essaic Formula, Adrenal restoration, Royal Queen Bee, Super Green, Blood Purifier, Super Juice 22 Vegetables, Kidney Flush, Grape Seed Extract, Astruglas, Stress & Toxin Protector.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Zinc, Liquid Silver, Immune Formula
<label>Homeopathic Remedies Number:</label> # 22/23, # 17/18, # 807
<label>Botanical Healing Tea Formulations:</label>
Immune Tea
Naturopathic Food Medicine Formulations:
Morning Health Drink, Jug One Protocol, Jug Two Protocol, Green Drink, Bedtime 	Bowel Tonic
<label>Vitamin and Nutraceutical Supplements:</label>
Quercetin, Echinacea, Duo C Complex, Turmeric, Vitamin D-3, Astragals, Norwegian 	Vitamin A, Nature’s Healer, Immune Power Formula, Fiber Max, Maxi Cleanse
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Asparagus, parsley, spinach, green onion, green pepper, horseradish, mushroom.
<label>Support:</label>
Detoxification, adrenals, nerves, immune system.  (Homeopathic Remedies:  #17, #63, #817, #819)
</div>
<div id="I_ABSOLUTE_NEUTROPHILS_1" runat="server" visible="false">
<label>Absolute Neutrophils stand alone indicators generally associated with:</label>
Immune systems standing army engulfs bacteria and annihilates them, immune competency, inflammation marker.
</div>
<div id="H_ABSOLUTE_NEUTROPHILS_1" runat="server" visible="false">
<label>Generally associated with High Absolute Neutrophils:</label>
Colon impaction, bacterial infection, exhaustion, excess medications, metabolic acidosis, autointoxication, fear, emotional stress, anxiety, suppressed immune system, menstruation, tissue damage, Candida, fungal infection, food allergies, drug reaction, hay fever, asthma, parasitic infestation, colon toxicity, lymph congestion, gout, adrenal burn out, deficiencies in vitamins 
B-12, A, K-2 and bio-flavanoids, inflammation, high viral load, cellular oxygen deficiency
<label>Corresponding need for nutritional support for High Absolute Neutrophils:</label>
Royal Queen Bee, Immune Formula, Adrenal Formula, Anti Toxin, Essaic Formula, 
Duo C Complex, Potassium Broth, Co-Enzyme Q-10, Chinese Garlic, Oregano Oil Extract.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Immune Formula, Toxicity Correction
<label>Homeopathic Remedies Number:</label> # 6, # 22/23, # 40
<label>Botanical Healing Tea Formulations:</label>
Bowel Tea, Detox Tea, Immune Tea
<label>Naturopathic Food Medicine Formulations:</label>
Morning Health Drink, Green Drink, Bedtime Bowel Tonic, Blood Purification, 	Cruciferous Vegetable Juice, Spinach Juice with Goat’s Whey
<label>Vitamin and Nutraceutical Supplements:</label>
Duo C Complex, Beta Carotene, Turmeric, Immune Power Formula, Red Blood  Cell 	Builder, Fiber Max, Maxi Cleanse
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Asparagus, parsley, spinach, green onion, green pepper, horseradish, mushroom.
<label>Support:</label>
Detoxification, adrenals, nerves, immune system.  (Homeopathic Remedies:  #17, #63, #817, #819)
</div>
<div id="N_ABSOLUTE_NEUTROPHILS_1" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--BANDS_1--%>
<tr><td colspan="4"><h2>BANDS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealBANDS_1" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 3.75</td>
<td class="brd">0 - 5.00</td>
<td class="brd" id="Td1BANDS_1" runat="server"><asp:Literal ID="LtrBANDS_1" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1BANDS_1" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_BANDS_1" runat="server" visible="false">
<label>Generally associated with Low Bands:</label>
Low is Desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Broccoli, tomato, garlic, cauliflower, spinach, mushroom, lemon.
<label>Support:</label>
Immune system, detoxification, nervous system.  (Homeopathic Remedies:  #1, #17, #63)
</div>
<div id="I_BANDS_1" runat="server" visible="false">
<label>Bands stand alone indicators generally associated with:</label>
Body’s ability to develop immune fighters, gauge of the immune system’s Army and National Guard Reserve, recruiting and developing immune cells.
</div>
<div id="H_BANDS_1" runat="server" visible="false">
<label>Generally associated with High Bands:</label>
Bone marrow over stimulation, any number above zero is an indication of an emergency, acute infection, injury, trauma, the immune system is being compromised by toxins, baby immune cells are being thrown into battle before they mature, stress overwhelm, highly toxic condition, suppressed immune function.
<label>Corresponding need for nutritional support for High Bands:</label>
Duo C Complex, Immune Power Formula, Golden Seal.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Silver, Liquid Zinc, Immune Formula, Toxicity Correction
<label>Homeopathic Remedies Number:</label> # 4, # 807
<label>Botanical Healing Tea Formulations:</label>
Immune Tea, Lymph Tea, Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Cruciferous Vegetable Juice, Liver Detoxification, Blood Purification, Cellular 	Detoxification, Green Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Astruglas, Immune Power Formula, Duo C Complex
<label>Clinical Treatments Indicated:</label>
Naturopathic Detoxification, I.V. Immune Drip, Rife Vibrational Medicine
<label>Vegetable Juice Concentrates:</label>
Broccoli, tomato, garlic, cauliflower, spinach, mushroom, lemon.
<label>Support:</label>
Immune system, detoxification, nervous system.  (Homeopathic Remedies:  #1, #17, #63)
</div>
<div id="N_BANDS_1" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--ABSOLUTE_MONOCYTES_1--%>
<tr><td colspan="4"><h2>ABSOLUTE MONOCYTES</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealABSOLUTE_MONOCYTES_1" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 3</td>
<td class="brd">0 - 5</td>
<td class="brd" id="Td1ABSOLUTE_MONOCYTES_1" runat="server"><asp:Literal ID="LtrABSOLUTE_MONOCYTES_1" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1ABSOLUTE_MONOCYTES_1" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_ABSOLUTE_MONOCYTES_1" runat="server" visible="false">
<label>Generally associated with Low Absolute Monocytes:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Tomato, spinach, broccoli, wheat grass, peas, sweet potato, artichoke, cauliflower, kale, plum, orange, lemon
<label>Support:</label>
Thymus, lymph system, immune system, detoxification.  (Homeopathic Remedies:  #4, #63, #807, #817)
</div>
<div id="I_ABSOLUTE_MONOCYTES_1" runat="server" visible="false">
<label>Absolute Monocytes stand alone indicators generally associated with:</label>
Pathogen destroyer, immune system’s Paratroopers, gauge of the immune system’s ability to surround toxins, pathogens, harmful bacteria, viral loads, Candida and other bad guys and destroy them.
</div>
<div id="H_ABSOLUTE_MONOCYTES_1" runat="server" visible="false">
<label>Generally associated with High Absolute Monocytes:</label>
Bad buys stronger than the good guys, phagocyte deficiency due to toxicity overwhelm, bodies defense system over run due to multiple nutritional deficiencies, urinary tract infection, congestion, prostate hypertrophy, highly toxic condition, parasites, Candida, inflammation, tissue breaking down faster than it is rebuilding, collagen disease precursors, lymphoma pre-cursor, colitis.
<label>Corresponding need for nutritional support for High Absolute Monocytes:</label>
Duo C Complex, Immune Power Formula, Bowel Tonic, Green Drink, Naturopathic Purification Powder, Enzyme Therapy, 28 Super Amino Acids, Super Drink, Turmeric, Cats Claws 
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Silver, Liquid Sulfur, Liquid Germanium	
<label>Homeopathic Remedies Number:</label> # 59, # 63, # 819
<label>Botanical Healing Tea Formulations:</label>
Detox Formula, Kidney Flush, Immune Tea
<label>Naturopathic Food Medicine Formulations:</label>
Morning Health Drink, Bedtime Bowel Tonic, Parasite Annihilation Powder, 	Naturopathic Purification Powder, Intestinal Decongestion, Yogurt Health Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Chinese Medicinal Garlic, Oregano Extract, Parasite Protector
<label>Clinical Treatments Indicated:</label>
Colon Hydrotherapy, Naturopathic Detoxification, I.V. Hydrogen Peroxide Drip
<label>Vegetable Juice Concentrates:</label>
Tomato, spinach, broccoli, wheat grass, peas, sweet potato, artichoke, cauliflower, kale, plum, orange, lemon
<label>Support:</label>
Thymus, lymph system, immune system, detoxification.  (Homeopathic Remedies:  #4, #63, #807, #817)
</div>
<div id="N_ABSOLUTE_MONOCYTES_1" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--MIXED_CELLS--%>
<tr><td colspan="4"><h2>MIXED CELLS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealMIXED_CELLS" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1MIXED_CELLS" runat="server"><asp:Literal ID="LtrMIXED_CELLS" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1MIXED_CELLS" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_MIXED_CELLS" runat="server" visible="false">
<label>Generally associated with Low Mixed Cells:</label>
Low is desirable.  Ideal number is zero.
<label>Vegetable Juice Concentrates:</label>
Mushroom, lemon, asparagus, tomato, green pepper
<label>Support:</label>
Detoxification, immune system.  (Homeopathic Remedy:  #4)
</div>
<div id="I_MIXED_CELLS" runat="server" visible="false">
<label>Mixed Cells stand alone indicators generally associated with:</label>
Immune system quick responder force.
</div>
<div id="H_MIXED_CELLS" runat="server" visible="false">
<label>Generally associated with High Mixed Cells:</label>
Above zero – immune system is activated due to metabolic and environmental toxicity, autointoxication.
<label>Corresponding need for nutritional support for High Mixed Cells:</label>
Essaic Formula, Auto Toxin Detox, Lymphatic Formula, Duo C Complex, Chinese Garlic, Oregano Oil Extract, Immune Power Formula, Ionic Zinc, Propolis.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Immune Formula, Liquid Silver, Liquid Sulfur, Liquid Germanium
<label>Homeopathic Remedies Number:</label># 4, # 63, # 807
<label>Botanical Healing Tea Formulations:</label>
Immune Tea
<label>Naturopathic Food Medicine Formulations:</label>
Green Drink
<label>Vitamin and Nutraceutical Supplements:</label>
<label>Clinical Treatments Indicated:</label>
<label>Vegetable Juice Concentrates:</label>
Mushroom, lemon, asparagus, tomato, green pepper
<label>Support:</label>
Detoxification, immune system.  (Homeopathic Remedy:  #4)
</div>
<div id="N_MIXED_CELLS" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--ABSOLUTE_MIXED_CELLS--%>
<tr><td colspan="4"><h2>ABSOLUTE MIXED CELLS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealABSOLUTE_MIXED_CELLS" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1ABSOLUTE_MIXED_CELLS" runat="server"><asp:Literal ID="LtrABSOLUTE_MIXED_CELLS" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1ABSOLUTE_MIXED_CELLS" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_ABSOLUTE_MIXED_CELLS" runat="server" visible="false">
<label>Generally associated with Low Absolute Mixed Cells:</label>
Low is desirable.  Zero is ideal
<label>Vegetable Juice Concentrates:</label>
Tomato, garlic, mushroom, spinach
<label>Support:</label>
Immune system.  (Homeopathic Remedies:  #1, #4)
</div>
<div id="I_ABSOLUTE_MIXED_CELLS" runat="server" visible="false">
<label>Absolute Mixed Cells stand alone indicators generally associated with:</label>
Immune system overwhelmed with toxins.
</div>
<div id="H_ABSOLUTE_MIXED_CELLS" runat="server" visible="false">
<label>Generally associated with High Absolute Mixed Cells:</label>
Infection, inflammation.
<label>Corresponding need for nutritional support for High Absolute Mixed Cells:</label>
Immune Power Formula, Duo C Complex.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Toxicity Correction
<label>Homeopathic Remedies Number:</label>  # 4, # 63, # 807 
<label>Botanical Healing Tea Formulations:</label>
Immune Formula, Detox Tea 
<label>Naturopathic Food Medicine Formulations:</label>
Fortress Strong, Blood Purification, Cruciferous Vegetables 
<label>Vitamin and Nutraceutical Supplements:</label>
Duo C Complex, Immune Power Formula 
<label>Clinical Treatments Indicated:</label>
Naturopathic Detoxification
<label>Vegetable Juice Concentrates:</label>
Tomato, garlic, mushroom, spinach
<label>Support:</label>
Immune system.  (Homeopathic Remedies:  #1, #4)
</div>
<div id="N_ABSOLUTE_MIXED_CELLS" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--ATYPICAL_LYMPHS--%>
<tr><td colspan="4"><h2>ATYPICAL LYMPHS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealATYPICAL_LYMPHS" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 0</td>
<td class="brd">0 - 0</td>
<td class="brd" id="Td1ATYPICAL_LYMPHS" runat="server"><asp:Literal ID="LtrATYPICAL_LYMPHS" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1ATYPICAL_LYMPHS" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_ATYPICAL_LYMPHS" runat="server" visible="false">
<label>Generally associated with Low Atypical Lymphocytes:</label>
Low is desirable.  Zero is ideal.
<label>Corresponding need for nutritional support for Low Atypical Lymphocytes:</label>
Zero is desired score at all times.  Anything above indicates that your lymph nodes are filled to capacity with toxins and fatigues.
<label>Vegetable Juice Concentrates:</label>
Celery, kale, peas,spinach, garlic, horseradish, broccoli, fig.
<label>Support:</label>
Lymph system, bowel, detoxification.  (Homeopathic Remedy:  #817)
</div>
<div id="I_ATYPICAL_LYMPHS" runat="server" visible="false">
<label>Atypical Lymphocytes stand alone indicators generally associated with:</label>
Lymph node function.
</div>
<div id="H_ATYPICAL_LYMPHS" runat="server" visible="false">
<label>Generally associated with High Atypical Lymphocytes:</label>
Compromised immune system, viral infection, trapped toxins in lymph system, liver toxicity, impacted bowel, autointoxication, severe infection, toxins building up faster than your immune system can process them, weak, multiple nutritional deficiencies.
<label>Corresponding need for nutritional support for High Atypical Lymphocytes:</label>
Liver Detox, Immune, Lymph Detox Formula’s, Bowel Tonic, Green Drink, Immune Power Formula, Super C Active, Aloe Vera Concentrate. 
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid Potassium, Metabolic Balancer, Acidosis Correction, Bladder/Kidney, 
Edema Correction, Immune Enhancer
<label>Homeopathic Remedies Number:</label> # 817
<label>Botanical Healing Tea Formulations:</label>
Lymph Tea, Detox Formula
<label>Naturopathic Food Medicine Formulations:</label>
Bedtime Bowel Tonic
<label>Vitamin and Nutraceutical Supplements:</label>
Duo C Complex, Astragulas, Chinese Medicinal Garlic, Sinus/Lymphic Decongestion, 	Fiber Max, Maxi Cleanse 
<label>Clinical Treatments Indicated:</label>
Lymphatic Drainage Machine, I.V. Hydrogen Peroxide Drip, Colon Hydrotherapy
<label>Vegetable Juice Concentrates:</label>
Celery, kale, peas,spinach, garlic, horseradish, broccoli, fig.
<label>Support:</label>
Lymph system, bowel, detoxification.  (Homeopathic Remedy:  #817)
</div>
<div id="N_ATYPICAL_LYMPHS" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--TESTOSTERONE--%>
<tr><td colspan="4"><h2>TESTOSTERONE, TOTAL</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealTESTOSTERONE" runat="server" Text="750 (men) <br />150 (women)"></asp:Literal></td>
<td class="brd">500 - 1000 (men) <br />100 - 200 (women)</td>
<td class="brd">300 - 800 (men) <br />75 - 150 (women)</td>
<td class="brd" id="Td1TESTOSTERONE" runat="server"><asp:Literal ID="LtrTESTOSTERONE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1TESTOSTERONE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_TESTOSTERONE" runat="server" visible="false">
<label>Generally associated with Low Total Testosterone:</label>
(Men and Women)  Loss of energy, get up and go, libido, ambition, immune function, cardio-vascular integrity, diabetes, strength bone loss, muscle loss, muscle tone, flabbiness, osteoporosis, infertility, erectile dysfunction, malnutrition, inflammatory bowel disease, memory problems, depression, heart problems, loss of animation for life
<label>Corresponding need for nutritional support for Low Total Testosterone:</label>
L-Arginine, L-Glutamine, L-Carnitine, 28 Super Amino Acids, Endurall, Super Drink, 
I-Thyroid, Super Oil, Vitamin E Complex, Wheat Germ Oil, Muscle Builder, Male Hormone Restoration Factors, Bio-Identical Hormone Restoration Factors
<label>Vegetable Juice Concentrates:</label>
Beet, celery, avocado, mushroom, kale.
<label>Support:</label>
Sex hormones, thyroid, pituitary.  (Homeopathic Remedies;  #44, #805, #801, #810) 
</div>
<div id="I_TESTOSTERONE" runat="server" visible="false">
<label>Total Testosterone stand alone indicators generally associated with:</label>
Aging and total well being marker.
</div>
<div id="H_TESTOSTERONE" runat="server" visible="false">
<label>Generally associated with High Total Testosterone:</label>
Clitoromegaly (in women), increased libido, frequency of erection, clitoral engorgement, facial hair, deepening voice, phallic enlargement, decrease subcutaneous fat, increased fertility
<label>Corresponding need for nutritional support for High Total Testosterone:</label>
Enzyme Therapy
<label>Vegetable Juice Concentrates:</label>
Beet, celery, avocado, mushroom, kale.
<label>Support:</label>
Sex hormones, thyroid, pituitary.  (Homeopathic Remedies;  #44, #805, #801, #810) 
</div>
<div id="N_TESTOSTERONE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--LEPITIN--%>
<tr><td colspan="4"><h2>LEPTIN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealLEPITIN" runat="server" Text="6.0"></asp:Literal></td>
<td class="brd">4.0 - 8.0</td>
<td class="brd">1.2 - 9.5</td>
<td class="brd" id="Td1LEPITIN" runat="server"><asp:Literal ID="LtrLEPITIN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1LEPITIN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_LEPITIN" runat="server" visible="false">
<label>Generally associated with Low LEPTIN:</label>
Low Leptin may be the cause of over eating an indication of multiple nutrition deficiencies, enzyme deficiency, sluggish liver, Malabsorption Syndrome
<label>Corresponding need for nutritional support for Low LEPTIN:</label>
Low Leptin triggers hunger, multiple nutrition deficiencies
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liver Support, Pancreas Support, Chromium, Vanadium 
<label>Homeopathic Remedies Number:</label>
Low: #29, #32, #10, #808-
<label>Botanical Healing Tea Formulations:</label>
Fat Burner, Liver Detox
<label>Naturopathic Food Medicine Formulations:</label>
Super Food Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Chromium Picolinate, Mega B Complex
<label>Clinic Treatments Indicated:</label>
Colon Hydrotherapy, Ozone Therapy, Far-Infrared Therapy
<label>Vegetable Juice Concentrates:</label>
Spinach Juice, Beet Juice
<label>Support:</label>
Pancreas, Liver, Stomach
</div>
<div id="I_LEPITIN" runat="server" visible="false">
<label>LEPTIN standalone indication generally associated with:</label>
Determines if there is a leptin deficiency or excess that may be contributing to excess body fat weight production, over eating, constant eating, and difficulty controlling appetite.
</div>
<div id="H_LEPITIN" runat="server" visible="false">
<label>Generally associated with High LEPTIN:</label>
High Leptin is a hormone that helps regulate appetite by signaling the appetite ratification..
<label>Corresponding need for nutritional support for High LEPTIN:</label>
Hunger diminutions. Super Food Drink, Yogurt Health Drink
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liver Support, Pancreas Support, Chromium, Vanadium 
<label>Homeopathic Remedies Number:</label>
&nbsp;
<label>Botanical Healing Tea Formulations:</label>
Fat Burner, Liver Detox
<label>Naturopathic Food Medicine Formulations:</label>
Super Food Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Chromium Picolinate, Mega B Complex
<label>Clinic Treatments Indicated:</label>
Colon Hydrotherapy, Ozone Therapy, Far-Infrared Therapy
<label>Vegetable Juice Concentrates:</label>
Spinach Juice, Beet Juice
<label>Support:</label>
Pancreas, Liver, Stomach
</div>
<div id="N_LEPITIN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CA_15_3--%>
<tr><td colspan="4"><h2>CA 15-3, SERUM</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCA_15_3" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 16</td>
<td class="brd">0 - 31.3</td>
<td class="brd" id="Td1CA_15_3" runat="server"><asp:Literal ID="LtrCA_15_3" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CA_15_3" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CA_15_3" runat="server" visible="false">
<label>Generally associated with Low CA 15-3:</label>
Ideal – immune system containing, chewing up and spitting out cancer cells
<label>Vegetable Juice Concentrates:</label>
Tomato, broccoli, cauliflower, green pepper, horseradish, green onion, mushroom, avocado
<label>Support:</label>
(Homeopathic Remedies:  #2, #20, #807, #817)
</div>
<div id="I_CA_15_3" runat="server" visible="false">
<label>CA 15-3 stand alone indicators generally associated with:</label>
Early antigen tumor marker for breast tissue
</div>
<div id="H_CA_15_3" runat="server" visible="false">
<label>Generally associated with High CA 15-3:</label>
Immune system compromised, autointoxication, stressed physiology, trapped lymphatic toxins, cellular oxygen deficiency, metabolic acidosis, sugar consumption, birth control pills, female hormone imbalance, impacted bowel, bio-identical progesterone deficiency, hypothyroid, adrenal exhaustion, early indication of associated breast tissue abnormality or tumor recurrence, highly toxic condition
<label>Corresponding need for nutritional support for High CA 15-3:</label>
I-Thyroid, Mega B Complex, Cobalamin, Pyridoxine, Endurall, Duo C Complex, Hydrozine Sulfur, Ionic Germanium, Platinum, Cobalt, Selenium, Zinc, Potassium, Iodine, Omega 3/6 Essential Fatty Acids, Vitamin E, Co-Enzyme Q-10
<label>Vegetable Juice Concentrates:</label>
Tomato, broccoli, cauliflower, green pepper, horseradish, green onion, mushroom, avocado
<label>Support:</label>
(Homeopathic Remedies:  #2, #20, #807, #817)
</div>
<div id="N_CA_15_3" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CA_19_9--%>
<tr><td colspan="4"><h2>CA 19-9</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCA_19_9" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 18</td>
<td class="brd">0 - 37</td>
<td class="brd" id="Td1CA_19_9" runat="server"><asp:Literal ID="LtrCA_19_9" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CA_19_9" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CA_19_9" runat="server" visible="false">
<label>Generally associated with Low CA 19-9:</label>
Ideal, immune system working efficiently
<label>Vegetable Juice Concentrates:</label>
Spinach, broccoli, cauliflower, tomato, mushroom, avocado
<label>Support:</label>
(Homeopathic Remedies:  #2, #4, #20, #807)
</div>
<div id="I_CA_19_9" runat="server" visible="false">
<label>CA 19-9 stand alone indicators generally associated with:</label>
Early detection inflammatory bowel disease, autoimmune condition, gastrointestinal, pancreatic, liver, rectal/colon malignancies
</div>
<div id="H_CA_19_9" runat="server" visible="false">
<label>Generally associated with High CA 19-9:</label>
Highly toxic condition, faulty life style, alcohol consumption, junk foods, sugar consumption, over medicated, mal-absorption syndrome, liver sluggishness, cellular oxygen deficiency, metabolic acidosis, compromised immune system, stressed physiology, multiple nutritional deficiency syndrome, cells breaking down faster than they are rebuilding, early cancer or inflammation or malignancy or autoimmune condition
<label>Corresponding need for nutritional support for High CA 19-9:</label>
Hydrozine Sulfate, Jug One Protocol, Green Drink, Bowel Tonic, Ionic  Potassium, Iodine, Selenium, Germanium, Zinc, Gold, Platinum
<label>Vegetable Juice Concentrates:</label>
Spinach, broccoli, cauliflower, tomato, mushroom, avocado
<label>Support:</label>
(Homeopathic Remedies:  #2, #4, #20, #807)
</div>
<div id="N_CA_19_9" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--PERCENT--%>
<tr><td colspan="4"><h2>PERCENT SATURATION</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealPERCENT" runat="server" Text="35"></asp:Literal></td>
<td class="brd">30 - 40</td>
<td class="brd">15 - 50</td>
<td class="brd" id="Td1PERCENT" runat="server"><asp:Literal ID="LtrPERCENT" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1PERCENT" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_PERCENT" runat="server" visible="false">
<label>Generally associated with Low Percent Transferrin Saturation:</label>
Iron deficiency anemia, protein depletion, junk food habit, deficiencies in folic acid, B-12, iron, sluggish liver, 
inflammatory condition blocking iron utilization by bone marrow, protein mal-absorption, susceptibility to chronic 
infection, deficiencies in bio-flavanoids, Co-Enzyme Q-10, iodine/iodide,  B-12, alpha lipoic acid, N-Acytle Cystein, 
sulfur, synthetic iron overload
Corresponding need for nutritional support for Low Percent Transferrin Saturation:
Ionic Iron, Anti Anemia, Absorption Enhancer, Endurall, Red Blood Cell Builder, Liver Formula.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Liquid iron, Anti Anemia Formula, Liquid Iodine, Liquid Sulfur
<label>Homeopathic Remedies Number:</label> # 34
<label>Botanical Healing Tea Formulations:</label>
High Phenol Green Tea
<label>Naturopathic Food Medicine Formulations:</label>
Super Food Drink, Bio-Flavanoids
<label>Vitamin and Nutraceutical Supplements:</label>
Anti Anemia, Anti Fatigue, Folic Acid, Pyridoxine, Red Blood Cell Builder, Duo C 	Complex, Co-Enzyme Q-10, Organic Sulfur, 
Alpha Lipoic Acid, I-thyroid, 
N-Acteyl Cystein
<label>Clinical Treatments Indicated:</label>
I.V. Super Nutritional Drip
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, jalapeno, green peppers, garlic, horseradish
<label>Support:</label>
Spleen.  (Homeopathic Remedies:  #18, #22, #23, #808)
</div>
<div id="I_PERCENT" runat="server" visible="false">
<label>Percent Transferrin Saturation stand alone indicators generally associated with:</label>
Too much or too little iron, level of cellular iron, the transport protein that regulates iron absorption, high levels relate 
to the body’s ability to fight infection
</div>
<div id="H_PERCENT" runat="server" visible="false">
<label>Generally associated with High Percent Transferrin Saturation:</label>
High transferrin, deficiencies in bio-flavanoids, vitamin C, blood loss, depletion iron stores, liver condition, iron too high 
or too low not getting into the cell
<label>Corresponding need for nutritional support for High Percent Transferrin Saturation:</label>
Bio-flavanoids, Vitamin C, iron deficiency anemia, synthetic estrogen therapy
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Toxicity Correction
<label>Homeopathic Remedies Number:</label>  # 4
<label>Botanical Healing Tea Formulations:</label>
Blood Cleanse
<label>Naturopathic Food Medicine Formulations:</label>
Bio-Flavanoids
<label>Vitamin and Nutraceutical Supplements:</label>
Duo C Complex
<label>Clinical Treatments Indicated:</label>
Hyperbaric Oxygen Therapy, I.V. Vitamin C Drip
<label>Vegetable Juice Concentrates:</label>
Beet, spinach, jalapeno, green peppers, garlic, horseradish
<label>Support:</label>
Spleen.  (Homeopathic Remedies:  #18, #22, #23, #808)
</div>
<div id="N_PERCENT" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--SEX_HORMONE--%>
<tr><td colspan="4"><h2>SEX HORMONE BINDING GLOB.</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealSEX_HORMONE" runat="server" Text="10 (men) <br />Under 20 (women)"></asp:Literal></td>
<td class="brd">5 - 30 (men) <br />1 - 40 (women)</td>
<td class="brd">13 - 17 (men) <br />1 - 114 (women)</td>
<td class="brd" id="Td1SEX_HORMONE" runat="server"><asp:Literal ID="LtrSEX_HORMONE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1SEX_HORMONE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_SEX_HORMONE_FEMALE" runat="server" visible="false">
<label>Generally associated with Low SHBG:</label>
Desirable
<label>Vegetable Juice Concentrates:</label>
Zucchini, avocado, mushroom
<label>Support:</label>
Female system, pituitary, thyroid.  (Homeopathic Remedies: #44, #804, #805, #806, #810)
</div>
<div id="I_SEX_HORMONE_FEMALE" runat="server" visible="false">
<label>SHBG stand alone indicators generally associated with SHBG:</label>
Female sex hormone in circulation, hormone availability
</div>
<div id="H_SEX_HORMONE_FEMALE" runat="server" visible="false">
<label>Generally associated with High SHBG:</label>
Hypothryoid, liver sluggishness, female hormones are bound and unavailable in free form, polycystic ovarian precursor, secondary effects of birth control pills, breast cancer e early warning, autointoxication, trapped lymphatic toxins, toxic bowel, cellular deficiency, hormone imbalance
<label>Corresponding need for nutritional support for High SHBG:</label>
Ionic Liquid Minerals, Zinc, Cobalt, Magnesium. Choline, Citrus Bio-Flavanoid, Fiber Max,
Vitamin B Complex 1000, Inositol, Selenium, Taurine, Vitamin’s E, C, B-3
<label>Vegetable Juice Concentrates:</label>
Zucchini, avocado, mushroom
<label>Support:</label>
Female system, pituitary, thyroid.  (Homeopathic Remedies: #44, #804, #805, #806, #810)
</div>
<div id="L_SEX_HORMONE_MALE" runat="server" visible="false">
<label>Generally associated with Low SHBG:</label>
Desirable
<label>Vegetable Juice Concentrates:</label>
Parsley, spinach, mushroom, avocado
<label>Support:</label>
Male/Female system, thyroid, pituitary, prostate.  (Homeopathic Remedies:  #44, #804, #805, #806, #809, #834)
</div>
<div id="I_SEX_HORMONE_MALE" runat="server" visible="false">
<label>SHBG stand alone indicators generally associated with:</label>
Hormone availability at tissue level, free testosterone availability	
</div>
<div id="H_SEX_HORMONE_MALE" runat="server" visible="false">
<label>Generally associated with High SHBG:</label>
Binding globulin decreases the availability of testosterone, prostate enlargement, increased estradiol, degenerative condition affecting every cell and organ of the body, hormone deficiency
<label>Corresponding need for nutritional support for High SHBG:</label>
Choline, Citrus Bio-Flavanoid, Folic Acid, Vitamin B-6, Vitamin B-12, Vitamin B Complex 1000, Inositol, Methionine, Selenium, Zinc, L-Taurine, Vitamin C, Vitamin D-3, Vitamin E,  Omega 3 and 6 Essential Fatty Acids, Cobalt, Magnesium, L-Arginine Complex, Macho Vita, Male Hormone Restoration Factors, Ginseng
<label>Vegetable Juice Concentrates:</label>
Parsley, spinach, mushroom, avocado
<label>Support:</label>
Male/Female system, thyroid, pituitary, prostate.  (Homeopathic Remedies:  #44, #804, #805, #806, #809, #834)
</div>
<div id="N_SEX_HORMONE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--C_REACTIVE--%>
<tr><td colspan="4"><h2>C-REACTIVE PROTEIN, hS</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealC_REACTIVE" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 3</td>
<td class="brd">0 - 6</td>
<td class="brd" id="Td1C_REACTIVE" runat="server"><asp:Literal ID="LtrC_REACTIVE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1C_REACTIVE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_C_REACTIVE" runat="server" visible="false">
<label>Generally associated with Low C-Reactive Protein:</label>
Low is desirable.  Zero is ideal
<label>Vegetable Juice Concentrates:</label>
Spinach, avocado, mushroom, broccoli, cauliflower
<label>Support:</label>
Cardio-vascular system, immune system, brain. (Homeopathic Remedies:  #66, #807, #814, #825)
</div>
<div id="I_C_REACTIVE" runat="server" visible="false">
<label>C-Reactive Protein stand alone indicators generally associated with:</label>
Inflammatory marker, after effect of the body, scavenger/clean up process, early warning marker of cardio-vascular 
disease, peripheral vascular disease, cellular breakdown, cancer, Alzheimer’s, early stage infection gauge
</div>
<div id="H_C_REACTIVE" runat="server" visible="false">
<label>Generally associated with High C-Reactive Protein:</label>
Inflammatory and/or degenerative condition, excess sugar, constipation, cellular oxygen deficiency, toxicity, diabetes, 
mellitus, hypothyroidism, obstruction, pancreatitis, pregnancy, liver malfunction, early warning of cardio-vascular 
disease, future stroke, rheumatoid arthritis, cancer, T.B., pneumonia, SLE, Alzheimer’s, low grade infection, colon 
toxicity, bacteria infection, fungal condition, over use of medications, trapped lymphatic toxins
<label>Corresponding need for nutritional support for High C-Reactive Protein:</label>
Enzyme Therapy, L-Carnitine, L-Arginine Complex, Hawthorn Berry, Capsicum, Alpha Lipoic Acid, Co-Enzyme Q-10, Bromoline, Omega 
3/6 Essential Fatty Acids, Wheat Germ
Oil, Vitamin E Complex, Brain Flush, Lipotropic Factors, Phasphadtyl Choline, Duo C Complex, Green Drink, Green Tea Extract, 
Immune Power Formula, N-Acetyl Cysteine, Turmeric
<label>Vegetable Juice Concentrates:</label>
Spinach, avocado, mushroom, broccoli, cauliflower
<label>Support:</label>
Cardio-vascular system, immune system, brain. (Homeopathic Remedies:  #66, #807, #814, #825)
</div>
<div id="N_C_REACTIVE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--ERYTHROCYTE--%>
<tr><td colspan="4"><h2>ERYTHROCYTE SED RATE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealERYTHROCYTE" runat="server" Text="15"></asp:Literal></td>
<td class="brd">12 - 18</td>
<td class="brd">0 - 30</td>
<td class="brd" id="Td1ERYTHROCYTE" runat="server"><asp:Literal ID="LtrERYTHROCYTE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1ERYTHROCYTE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_ERYTHROCYTE" runat="server" visible="false">
<label>Generally associated with Low ERYTHROCYTE SED RATE:</label>
Inhibition of sedimentation rate of red blood cells.
<label>Corresponding need for nutritional support for (Low) (High):</label>
Duo C Complex
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Detox Formula
<label>Homeopathic Remedies Number:</label>#4
<label>Botanical Healing Tea Formulations:</label>
Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Green Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Bromelain
<label>Clinic Treatments Indicated:</label>
Colon Hydrotherapy, Ozone Therapy
<label>Vegetable Juice Concentrates:</label>
Beet Juice
<label>Support:</label>
Immune System
</div>
<div id="I_ERYTHROCYTE" runat="server" visible="false">
<label>ERYTHROCYTE SED RATE standalone indication generally associated with:</label>
General inflammation
</div>
<div id="H_ERYTHROCYTE" runat="server" visible="false">
<label>Generally associated with High ERYTHROCYTE SED RATE:</label>
High: Nutrition deficiency, early stage Rheumatoid/Arthritis Condition, Auto intoxication
<label>Corresponding need for nutritional support for High ERYTHROCYTE SED RATE:</label>
Duo C Complex
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Detox Formula
<label>Homeopathic Remedies Number:</label>#4
<label>Botanical Healing Tea Formulations:</label>
Detox Tea
<label>Naturopathic Food Medicine Formulations:</label>
Green Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Bromelain
<label>Clinic Treatments Indicated:</label>
Colon Hydrotherapy, Ozone Therapy
<label>Vegetable Juice Concentrates:</label>
Beet Juice
<label>Support:</label>
Immune System
</div>
<div id="N_ERYTHROCYTE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--RHEUMATOID--%>
<tr><td colspan="4"><h2>RHEUMATOID ARTH. AB. SCRN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealRHEUMATOID" runat="server" Text="10"></asp:Literal></td>
<td class="brd">8 - 12</td>
<td class="brd">0 - 20</td>
<td class="brd" id="Td1RHEUMATOID" runat="server"><asp:Literal ID="LtrRHEUMATOID" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1RHEUMATOID" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_RHEUMATOID" runat="server" visible="false">
<label>Generally associated with Low RHEUMATOID ARTH. AB. SCREEN:</label>
Early stage Joint Disorder Rheumatoid/Arthritis Condition
<label>Corresponding need for nutritional support for Low) RHEUMATOID ARTH. AB. SCREEN:</label>
Joint Disorder Rheumatoid/Arthritis Condition
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cal/Mag, Boron
<label>Homeopathic Remedies Number:</label>#33, #828
<label>Botanical Healing Tea Formulations:</label>
Bone Joint Tea
<label>Naturopathic Food Medicine Formulations:</label>
Cal/Mag, Goat Milk
<label>Vitamin and Nutraceutical Supplements:</label>
Cal/Mag, Bromelain, Super C Active
<label>Clinic Treatments Indicated:</label>
Far-Inferred Therapy
<label>Vegetable Juice Concentrates:</label>
Broccolis
<label>Support:</label>
Immune System, Bones, Joints
</div>
<div id="I_RHEUMATOID" runat="server" visible="false">
<label>SRHEUMATOID ARTH. AB. SCREEN standalone indication generally associated with:</label>
Early state Joint Disorder Rheumatoid/Arthritis Condition
</div>
<div id="H_RHEUMATOID" runat="server" visible="false">
<label>Generally associated with High RHEUMATOID ARTH. AB. SCREEN:</label>
Early stage Joint Disorder Rheumatoid/Arthritis Condition
<label>Corresponding need for nutritional support for High RHEUMATOID ARTH. AB. SCREEN:</label>
Joint Disorder Rheumatoid/Arthritis Condition
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cal/Mag, Boron
<label>Homeopathic Remedies Number:</label>#33, #828
<label>Botanical Healing Tea Formulations:</label>
Bone Joint Tea
<label>Naturopathic Food Medicine Formulations:</label>
Cal/Mag, Goat Milk
<label>Vitamin and Nutraceutical Supplements:</label>
Cal/Mag, Bromelain, Super C Active
<label>Clinic Treatments Indicated:</label>
Far-Inferred Therapy
<label>Vegetable Juice Concentrates:</label>
Broccolis
<label>Support:</label>
Immune System, Bones, Joints
</div>
<div id="N_RHEUMATOID" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--DHEA_S--%>
<tr><td colspan="4"><h2>DHEA-S</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealDHEA_S" runat="server" Text="600 (men) <br />300 (women)"></asp:Literal></td>
<td class="brd">500 - 700 (men) <br />250 - 350 (women)</td>
<td class="brd">28 - 175 (men) <br />- (women)</td>
<td class="brd" id="Td1DHEA_S" runat="server"><asp:Literal ID="LtrDHEA_S" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1DHEA_S" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_DHEA_S" runat="server" visible="false">
<label>Generally associated with Low DHEA Sulfate:</label>
Cancer susceptibility, high cholesterol, arthrosclerosis, loss of sex drive, hypertension, anxiety, memory loss, pre-Alzheimer’s, sleep disorders, immune deficiencies, loss of muscle, gain of body fat and flab, strong early warning of diabetes, osteoporosis, multiple nutritional deficiencies
<label>Corresponding need for nutritional support for Low DHEA Sulfate:</label>
Adrenal Hormone Restoration Therapy, Royal Queen Bee Jelly, Mega B Complex, Super Food Drink, Tigers Food, Duo C Complex, L-Arginine Complex, L-Carnitine, Endurall, 
I-Thyroid
<label>Vegetable Juice Concentrates:</label>
Spinach, avocado, zucchini, mushroom, apple, orange
<label>Support:</label>
Hormones, thyroid, nerves, pituitary.  (Homeopathic Remedies:  #17, #802, #803, #804, #806)	
</div>
<div id="I_DHEA_S" runat="server" visible="false">
<label>DHEA sulfate stand alone indicators generally associated with:</label>
Quality of life, physiological stress, adrenal, hormone indicator
</div>
<div id="H_DHEA_S" runat="server" visible="false">
<label>Generally associated with High DHEA Sulfate:</label>
Over use of medications, alcohol, sugar, devitalized foods, birth control pills, stress overwhelm, adrenal burn out
<label>Corresponding need for nutritional support for High DHEA Sulfate:</label>
I-Thyroid, Bio-Identical Human Growth Hormone Restoration Therapy
<label>Vegetable Juice Concentrates:</label>
Spinach, avocado, zucchini, mushroom, apple, orange
<label>Support:</label>
Hormones, thyroid, nerves, pituitary.  (Homeopathic Remedies:  #17, #802, #803, #804, #806)	
</div>
<div id="N_DHEA_S" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CA_125--%>
<tr><td colspan="4"><h2>CA-125</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCA_125" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 10</td>
<td class="brd">0 - 20</td>
<td class="brd" id="Td1CA_125" runat="server"><asp:Literal ID="LtrCA_125" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CA_125" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CA_125" runat="server" visible="false">
<label>Generally associated with LowCA-125:</label>
Low is desirable.  Zero is ideal
<label>Vegetable Juice Concentrates:</label>
Peas, celery, tomato, mushroom, garlic
<label>Support:</label>
Immune system.  (Homeopathic Remedies:  #4, #20, #807)
</div>
<div id="I_CA_125" runat="server" visible="false">
<label>CA-125 stand alone indicators generally associated with:</label>
Pre-ovarian cancer screening, early stage immune competency
</div>
<div id="H_CA_125" runat="server" visible="false">
<label>Generally associated with High CA-125:</label>
Cancer cells beginning to over run the immune system, pre-ovarian tumor warning, highly toxic condition neutralizing the body’s ability to contain and destroy all the cancer cells
<label>Corresponding need for nutritional support for High CA-125:</label>
Intensive naturopathic detoxification and nutritional saturation therapy is indicated
<label>Vegetable Juice Concentrates:</label>
Peas, celery, tomato, mushroom, garlic
<label>Support:</label>
Immune system.  (Homeopathic Remedies:  #4, #20, #807)
</div>
<div id="N_CA_125" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--SS_A--%>
<tr><td colspan="4"><h2>SS-A (ANTI-R0)</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealSS_A" runat="server" Text="10"></asp:Literal></td>
<td class="brd">8 - 12</td>
<td class="brd">0 - 20</td>
<td class="brd" id="Td1SS_A" runat="server"><asp:Literal ID="LtrSS_A" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1SS_A" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_SS_A" runat="server" visible="false">
<label>Generally associated with Low SS-A (ANTI-Ro):</label>
Early stage connective tissue, Rheumatoid/Arthritis Condition
<label>Corresponding need for nutritional support for Low SS-A (ANTI-Ro):</label>
Catalyst, Oseto Joint and Cartilage Relief
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cal/Mag Boron Tonic, Sulfur, Manganese
<label>Homeopathic Remedies Number:</label>  #4, #33, #820
<label>Botanical Healing Tea Formulations:</label>
Bone/Joint
<label>Naturopathic Food Medicine Formulations:</label>
Cal/Mag
<label>Vitamin and Nutraceutical Supplements:</label>
Osteo Joint and Cartilage Catalyst, Cal/Mag
<label>Clinic Treatments Indicated:</label>
Far-Inferred Therapy
<label>Vegetable Juice Concentrates:</label>
<label>Support:</label>
Stomach
</div>
<div id="I_SS_A" runat="server" visible="false">
<label>SS-A (ANTI-Ro) standalone indicators generally associated with:</label>
Early stage connective tissue disorder
</div>
<div id="H_SS_A" runat="server" visible="false">
<label>Generally associated with High SS-A (ANTI-Ro):</label>
Early stage connective tissue, Rheumatoid/Arthritis Condition
<label>Corresponding need for nutritional support for High SS-A (ANTI-Ro):</label>
Catalyst
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cal/Mag Boron Tonic
<label>Homeopathic Remedies Number:</label>#4, #33, #820
<label>Botanical Healing Tea Formulations:</label>
Bone/Joint
<label>Naturopathic Food Medicine Formulations:</label>
Cal/Mag
<label>Vitamin and Nutraceutical Supplements:</label>
Osteo Joint and Cartilage Catalyst
<label>Clinic Treatments Indicated:</label>
Far-Inferred Therapy
<label>Vegetable Juice Concentrates:</label>
<label>Support:</label>
Stomach
</div>
<div id="N_SS_A" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--SS_B--%>
<tr><td colspan="4"><h2>SS-B (ANTI-La)</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealSS_B" runat="server" Text="10"></asp:Literal></td>
<td class="brd">8 - 12</td>
<td class="brd">0 - 20</td>
<td class="brd" id="Td1SS_B" runat="server"><asp:Literal ID="LtrSS_B" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1SS_B" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_SS_B" runat="server" visible="false">
<label>Generally associated with Low SS-B (Anti-La):</label>
Early stage Arthritic, Rheumatic, connective tissue disorder.
<label>Corresponding need for nutritional support for Low SS-B (Anti-La):</label>
Manganese
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cal/Mag, Sulfur
<label>Homeopathic Remedies Number:</label>#4, #33, #829
<label>Botanical Healing Tea Formulations:</label>
Bone and Joint Formula 
<label>Naturopathic Food Medicine Formulations:</label>
Cal/Mag, M.S.M, Green Drink
<label>Vitamin and Nutraceutical Supplements:</label>
Osteo Joint and Cartilage Relief
<label>Clinic Treatments Indicated:</label>
Ozone Therapy Direct
<label>Vegetable Juice Concentrates:</label>
<label>Support:</label>
Stomach
</div>
<div id="I_SS_B" runat="server" visible="false">
<label>SS-B (Anti-La)Standalone indication generally associated with:</label>
Detecting early warning signal for connective tissue problem.
</div>
<div id="H_SS_B" runat="server" visible="false">
<label>Generally associated with High SS-B (Anti-La):</label>
Early stage Arthritic, Rheumatic, connective tissue disorder.
<label>Corresponding need for nutritional support for High SS-B (Anti-La):</label>
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cal/Mag
<label>Homeopathic Remedies Number:</label>#4, #33, #829
<label>Botanical Healing Tea Formulations:</label>
Bone and Joint Formula
<label>Naturopathic Food Medicine Formulations:</label>
Cal/Mag
<label>Vitamin and Nutraceutical Supplements:</label>
Ostes Joint and Cartilage Relief
<label>Clinic Treatments Indicated:</label>
Ozone Therapy Direct
<label>Vegetable Juice Concentrates:</label>
<label>Support:</label>
Stomach
</div>
<div id="N_SS_B" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--PREGNENOLONE--%>
<tr><td colspan="4"><h2>PREGNENOLONE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealPREGNENOLONE" runat="server" Text="95"></asp:Literal></td>
<td class="brd">90 - 100</td>
<td class="brd">7 - 188 (18-51 years), 13 - 111 (59-91 years)</td>
<td class="brd" id="Td1PREGNENOLONE" runat="server"><asp:Literal ID="LtrPREGNENOLONE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1PREGNENOLONE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_PREGNENOLONE" runat="server" visible="false">
<label>Generally associated with Low PREGNENOLONE:</label>
Poor memory, Dry skin, Modest joint pain, Modest muscle pain, Reduced mobility, Reduced awareness, Lack of artisticawareness, Low libido, Indecisiveness, Lack of aggressiveness, Poor muscle strength, unclear thinking, Drowsiness, Light headaches, Feeling faint at times, Vaginal dryness, Chronic fatigue, Sugar craving, Nervousness, Hunger, Sweaty hands, Hypertension, Burn Out syndrome, Depression
<label>Corresponding need for nutritional support for Low PREGNENOLONE:</label>
Cobalt, Zinc, Iodine, Lithium, Vitamin E, Omega 3 & 6, Mega B, Wheat Germ Oil
<label>Ionic Liquid Mineral Formulations and Tonics:</label>Ionic Cobalt, Ionic Germanium, Ionic Zinc
<label>Homeopathic Remedies Number:</label> #22, #23, #44, #803, #804, #809, #810
<label>Botanical Healing Tea Formulations:</label>Female tea,Liver Detox, Essaic tea
<label>Naturopathic Food Medicine Formulations:</label> Super Food, Power Cell
<label>Vitamin and Nutraceutical Supplements:</label>Mega B Complex, L-Arginine
<label>Clinic Treatments Indicated:</label>Bio-Identical Hormone Restoration
</div>
<div id="I_PREGNENOLONE" runat="server" visible="false">
<label>PREGNENOLONE Standalone indication generally associated with:</label>
Highly Toxic Condition, Hormone Imbalance
</div>
<div id="H_PREGNENOLONE" runat="server" visible="false">
<label>Generally associated with High PREGNENOLONE:</label>
Highly Toxic Condition, Sluggish Liver, Hormone Imbalance
<label>Corresponding need for nutritional support for High PREGNENOLONE:</label>
L-Glutamine, Stress and Toxin Protector 
<label>Ionic Liquid Mineral Formulations and Tonics:</label>Cobalt, Zinc, Iodine,Magnesium, Lithium
<label>Homeopathic Remedies Number:</label>#22, #23, #44, #803, #804, #809, #810
<label>Botanical Healing Tea Formulations:</label>Liver Detox
<label>Naturopathic Food Medicine Formulations:</label>Super Green Drinks
<label>Vitamin and Nutraceutical Supplements:</label>Mega B Complex, L-Arginine
<label>Clinic Treatments Indicated:</label>Bio-Identical Thyroid Support
<label>Vegetable Juice Concentrates:</label>
<label>Support:</label>
</div>
<div id="N_PREGNENOLONE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--FIBRINOGEN--%>
<tr><td colspan="4"><h2>FIBRINOGEN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealFIBRINOGEN" runat="server" Text="250"></asp:Literal></td>
<td class="brd">200 - 300</td>
<td class="brd">200 - 400</td>
<td class="brd" id="Td1FIBRINOGEN" runat="server"><asp:Literal ID="LtrFIBRINOGEN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1FIBRINOGEN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_FIBRINOGEN" runat="server" visible="false">
<label>Generally associated with Low Fibrinogen:</label>
Multiple nutritional deficiencies syndrome, liver sluggishness, mal-absorption syndrome, efficiency in enzymes, junk food habit, excess sugar, hypochlorhydria, spontaneous bleeding, early heart disease warning, excess aspirin, blood thinners, medication
<label>Corresponding need for nutritional support for Low Fibrinogen:</label>
Beta Carotene, Mega B Complex 1000, Stress & Toxin Protector, Duo C Complex, 57 Super Minerals, Vitamin D-3 Complex, Green Drink, Jug One Protocol
<label>Vegetable Juice Concentrates:</label>
Celery, zucchini, tomato, mushroom, peas
<label>Support:</label>
Gut.  (Homeopathic Remedies:  #7, #8)
</div>
<div id="I_FIBRINOGEN" runat="server" visible="false">
<label>Fibrinogen stand alone indicators generally associated with:</label>
Inflammatory marking, early cardio-vascular disease and/or stroke warning, early Alzheimer’s warning
</div>
<div id="H_FIBRINOGEN" runat="server" visible="false">
<label>Generally associated with High Fibrinogen:</label>
Excess blood sledging, unexplained excess body fat weight gain, underlying inflammation, leaky gut, intestinal bacterial over growth, bowel toxicity, slow food transition, acute infection, premature aging, under performing pituitary, human growth hormone deficiency, trauma, tissue damage, body/mind physiological stress indicator, heart disease, stroke, Alzheimer’s early warning
<label>Corresponding need for nutritional support for High Fibrinogen:</label>
L-Carnitine, L-Arginine, I-Thyroid, Co-Enzyme Q-10, Super Oil, Borage Oil, Vitamin E Complex, Alpha Lipoic Acid, Duo C Complex, Yogurt Health Drink, Mega B Complex 1000, Stress & Toxin Protector
<label>Vegetable Juice Concentrates:</label>
Celery, zucchini, tomato, mushroom, peas
<label>Support:</label>
Gut.  (Homeopathic Remedies:  #7, #8)
</div>
<div id="N_FIBRINOGEN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--EOSINOPHIL_CT_ABSOLUTE--%>
<tr><td colspan="4"><h2>EOSINOPHIL CT. ABSOLUTE</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealEOSINOPHIL_CT_ABSOLUTE" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 1.12</td>
<td class="brd">0 - 1.5</td>
<td class="brd" id="Td1EOSINOPHIL_CT_ABSOLUTE" runat="server"><asp:Literal ID="LtrEOSINOPHIL_CT_ABSOLUTE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1EOSINOPHIL_CT_ABSOLUTE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_EOSINOPHIL_CT_ABSOLUTE" runat="server" visible="false">
<label>Generally associated with Low Eosinophil Count Absolute:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Mushroom, kale, spinach, celery, apple.
<label>Support:</label>
Liver, adrenals, pituitary, digestion, colon, detoxification.  (Homeopathic Remedies:  #8, #10, #63)
</div>
<div id="I_EOSINOPHIL_CT_ABSOLUTE" runat="server" visible="false">
<label>Eosinophil Count Absolute stand alone indicators generally associated with:</label>
Allergies/Parasite annihilator.
</div>
<div id="H_EOSINOPHIL_CT_ABSOLUTE" runat="server" visible="false">
<label>Generally associated with High Eosinophil Count Absolute:</label>
Adrenal over activity, allergies, hyper sensitivity, infectious process, parasite infestations, excess medications, antihistamines, adult onset, growth hormone deficiency, enzyme and multiple nutritional deficiencies, food and/or environmental allergies, highly toxic condition, bowel toxicity, liver sluggishness, over eating, cellular oxygen deficiency, excess antibiotics, drugs, junk foods, alcohol, enzyme deficiencies, mal-absorption syndrome.
<label>Corresponding need for nutritional support for High Eosinophil Count Absolute:</label>
Adrenal Restoration, Allergy Detox, Nerve, Immune, Liver Detox, Essaic Formula’s, 
L-Arginine Complex, L-Carnitine, 28 Super Amino Acids,  Stomach Detox, Green Drink, Absorption Enhancer.
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Toxicity correction, Liquid Silver
<label>Homeopathic Remedies Number:</label>  # 40, # 59
<label>Botanical Healing Tea Formulations:</label>
Liver Detox, Kidney Flush
<label>Naturopathic Food Medicine Formulations:</label>
Morning Health Drink, Parasite Annihilation Powder, Bedtime Bowel Tonic, 
Immune  Broth, Naturopathic Purification
<label>Vitamin and Nutraceutical Supplements:</label>
Fiber Max, Maxi Cleanse, Parasite Protector
<label>Clinical Treatments Indicated:</label>
Naturopathic Detoxification
<label>Vegetable Juice Concentrates:</label>
Mushroom, kale, spinach, celery, apple.
<label>Support:</label>
Liver, adrenals, pituitary, digestion, colon, detoxification.  (Homeopathic Remedies:  #8, #10, #63)
</div>
<div id="N_EOSINOPHIL_CT_ABSOLUTE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--INDICAN--%>
<tr><td colspan="4"><h2>INDICAN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealINDICAN" runat="server" Text="300"></asp:Literal></td>
<td class="brd">300 - 600</td>
<td class="brd">250 - 750</td>
<td class="brd" id="Td1INDICAN" runat="server"><asp:Literal ID="LtrINDICAN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1INDICAN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_INDICAN" runat="server" visible="false">
<label>Generally associated with Low Indican:</label>
Low is desirable.  
<label>Vegetable Juice Concentrates:</label>
Spinach, broccoli, cauliflower, apple.
<label>Support:</label>
Detoxification.  (Homeopathic Remedies:  #40, #63, #819)
</div>
<div id="I_INDICAN" runat="server" visible="false">
<label>Indican stand alone indicators generally associated with:</label>
Colon health, bowel toxicity, efficient food transition, autointoxication.
</div>
<div id="H_INDICAN" runat="server" visible="false">
<label>Generally associated with High Indican:</label>
Colon toxicity, constipation (having less than a bowel movement for each meal that you eat), toxins backing up into cells, immune system being over run, lymphatic congestion, energy being diverted to neutralize toxins, bouts with physical and mental fatigue, bloating, toxic fluid retention, excess body fat, autointoxication.
<label>Corresponding need for nutritional support for High Indican:</label>
Jug One Protocol, Jug Two Protocol, Morning Health Drink, Yogurt Health Drink, Green Drink, Bedtime Bowel Tonic, Fiber Max, Maxi Cleanse.
<label>Vegetable Juice Concentrates:</label>
Spinach, broccoli, cauliflower, apple.
<label>Support:</label>
Detoxification.  (Homeopathic Remedies:  #40, #63, #819)
</div>
<div id="N_INDICAN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--ESTRONE--%>
<tr><td colspan="4"><h2>ESTRONE, SERUM</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealESTRONE" runat="server" Text="90"></asp:Literal></td>
<td class="brd">70 - 110</td>
<td class="brd">10 - 173</td>
<td class="brd" id="Td1ESTRONE" runat="server"><asp:Literal ID="LtrESTRONE" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1ESTRONE" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_ESTRONE" runat="server" visible="false">
<label>Generally associated with Low ESTRONE, SERUM:</label>
Estrogen deficiency
<label>Corresponding need for nutritional support for Low ESTRONE, SERUM:</label>
FemaHerba, Cobalt, Oil of Evening Primrose, Vitamin E Complex
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cobalt
<label>Homeopathic Remedies Number:</label>#23, #44, #804
<label>Botanical Healing Tea Formulations:</label>
Female Formula
<label>Naturopathic Food Medicine Formulations:</label>
Green Drink
<label>Vitamin and Nutraceutical Supplements:</label>
FemaHerba, Vitamin E Complex
<label>Clinic Treatments Indicated:</label>
Ozone Therapy
<label>Vegetable Juice Concentrates:</label>
Zucchini, String Beans
<label>Support:</label>
Endocrine System
</div>
<div id="I_ESTRONE" runat="server" visible="false">
<label>ESTRONE, SERUM standalone indication generally associated with:</label>
Estrogen Dominance
</div>
<div id="H_ESTRONE" runat="server" visible="false">
<label>Generally associated with High ESTRONE, SERUM:</label>
Estrogen deficiency
<label>Corresponding need for nutritional support for High ESTRONE, SERUM:</label>
FemaHerba, Cobalt, Oil of Evening Primrose, Vitamin E Complex
<label>Ionic Liquid Mineral Formulations and Tonics:</label>
Cobalt
<label>Homeopathic Remedies Number:</label>#23, #44, #804
<label>Botanical Healing Tea Formulations:</label>
Female Formula
<label>Naturopathic Food Medicine Formulations:</label>
Green Drink
<label>Vitamin and Nutraceutical Supplements:</label>
FemaHerba, Vitamin E Complex
<label>Clinic Treatments Indicated:</label>
Ozone Therapy
<label>Vegetable Juice Concentrates:</label>
Zucchini, String Beans
<label>Support:</label>
Endocrine System
</div>
<div id="N_ESTRONE" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--PROSTATIC_SPEC_ANTIGEN--%>
<tr><td colspan="4"><h2>PROSTATIC SPEC. ANTIGEN</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealPROSTATIC_SPEC_ANTIGEN" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 2.9</td>
<td class="brd">0 - 4.0</td>
<td class="brd" id="Td1PROSTATIC_SPEC_ANTIGEN" runat="server"><asp:Literal ID="LtrPROSTATIC_SPEC_ANTIGEN" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1PROSTATIC_SPEC_ANTIGEN" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_PROSTATIC_SPEC_ANTIGEN" runat="server" visible="false">
<label>Generally associated with Low PSA:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Spinach, tomato, parsley, mushroom, avocado
<label>Support:</label>
Prostate, colon.  (Homeopathic Remedies:  #4, #40, #835)
</div>
<div id="I_PROSTATIC_SPEC_ANTIGEN" runat="server" visible="false">
<label>PSA stand alone indicators generally associated with:</label>
Prostate health
</div>
<div id="H_PROSTATIC_SPEC_ANTIGEN" runat="server" visible="false">
<label>Generally associated with High PSA:</label>
Prostatitis, benign enlarged prostate, lower spine subluxation, constipation, zinc deficiency, prostate cancer, urinary tract infection, impacted colon
<label>Corresponding need for nutritional support for High PSA:</label>
San Palmetto, PSA, Cranberry Juice Concentrate, Co-Enzyme Q-10, Vitamin E Complex, Wheat Germ Oil, Super Oil, Omega 3/6 Essential Fatty Acids, Duo C Complex, Green Drink, Bowel Tonic, Turmeric, Ionic Zinc, Cobalt, Prostate Formula, Fiber Max, maxi Cleanse, Enzyme Therapy, Chinese Garlic, Natures Healer, Silver, Magnesium, Germanium
<label>Vegetable Juice Concentrates:</label>
Spinach, tomato, parsley, mushroom, avocado
<label>Support:</label>
Prostate, colon.  (Homeopathic Remedies:  #4, #40, #835)
</div>
<div id="N_PROSTATIC_SPEC_ANTIGEN" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CANDIDA_ALBICANS_ANTIBODY--%>
<tr><td colspan="4"><h2>CANDIDA ALBICANS ANTIBODY</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCANDIDA_ALBICANS_ANTIBODY" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 600</td>
<td class="brd">250 - 750</td>
<td class="brd" id="Td1CANDIDA_ALBICANS_ANTIBODY" runat="server"><asp:Literal ID="LtrCANDIDA_ALBICANS_ANTIBODY" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CANDIDA_ALBICANS_ANTIBODY" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CANDIDA_ALBICANS_ANTIBODY" runat="server" visible="false">
<label>Generally associated with Low Candida Albicans Antibody:</label>
Low is desirable.  Zero is ideal
<label>Vegetable Juice Concentrates:</label>
Spinach, celery, broccoli, garlic, horseradish
<label>Support:</label>
Detoxification, immune system, stomach, colon.  (Homeopathic Remedies:  #4, #40, #63, #807, #820)
</div>
<div id="I_CANDIDA_ALBICANS_ANTIBODY" runat="server" visible="false">
<label>Candida Albicans Antibody stand alone indicators generally associated with:</label>
Candida, yeast, parasite, fungus toxicity gauge
</div>
<div id="H_CANDIDA_ALBICANS_ANTIBODY" runat="server" visible="false">
<label>Generally associated with High Candida Albicans Antibody:</label>
Antibiotic use, radiation exposure, excess use of medications, birth control pills, psychotropic drugs, aspirin, over the counter drugs, alcohol, soda, diet soda, sugar, devitalized foods, constipation (having less than a bowel movement for each meal), cellular oxygen deficiency, mal-absorption, sub-clinical dehydration, multiple food allergies, weak immune system, autointoxication, chemotherapy
<label>Corresponding need for nutritional support for High Candida Albicans Antibody:</label>
Jug One Protocol, Jug Two Protocol, Morning Health Drink, Yogurt Health Drink, Green drink, Bedtime Bowel Tonic, Enzyme Therapy, Fiber Max, Maxi Cleanse, Enzyme Therapy, Candida Formula, Absorption Enhancer
<label>Vegetable Juice Concentrates:</label>
Spinach, celery, broccoli, garlic, horseradish
<label>Support:</label>
Detoxification, immune system, stomach, colon.  (Homeopathic Remedies:  #4, #40, #63, #807, #820)
</div>
<div id="N_CANDIDA_ALBICANS_ANTIBODY" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--LACTIC_ACID--%>
<tr><td colspan="4"><h2>LACTIC ACID</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealLACTIC_ACID" runat="server" Text="0"></asp:Literal></td>
<td class="brd">0 - 9.5</td>
<td class="brd">4.5 - 1.8</td>
<td class="brd" id="Td1LACTIC_ACID" runat="server"><asp:Literal ID="LtrLACTIC_ACID" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1LACTIC_ACID" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_LACTIC_ACID" runat="server" visible="false">
<label>Generally associated with Low Lactic Acid:</label>
Low is desirable.  Zero is ideal.
<label>Vegetable Juice Concentrates:</label>
Beet, zucchini, spinach
<label>Support:</label>
Lungs, cardio-vascular, muscles.  (Homeopathic Remedies: #825, #826)
</div>
<div id="I_LACTIC_ACID" runat="server" visible="false">
<label>Lactic Acid stand alone indicators generally associated with:</label>
Level of oxygen at cell level.
</div>
<div id="H_LACTIC_ACID" runat="server" visible="false">
<label>Generally associated with High Lactic  Acid:</label>
Cellular oxygen deficiency, precursor to metabolic acidosis, the environment necessary for Candida,  fungal, yeast, viral parasite, bacteria infections, autointoxication, chronic fatigue syndrome, muscle fatigue, low fitness level, slow repair, sore muscles, sluggish metabolism, excess body fat accumulation, mal-absorption, skin disorders, brain fog, forgetfulness, inability to cooperate, broken brain disorders, premature aging, early warning of degenerative disease, stroke, heart disease, immune system vulnerability, low tolerance to stress, depression disorientation, exhaustion, pre cancer warning
<label>Corresponding need for nutritional support for High Lactic Acid:</label>
Green Drink, L-Arginine Complex, L-Carnitine, Co-Enzyme Q-10, Vitamin E Complex, Wheat Germ Oil
<label>Vegetable Juice Concentrates:</label>
Beet, zucchini, spinach
<label>Support:</label>
Lungs, cardio-vascular, muscles.  (Homeopathic Remedies: #825, #826)
</div>
<div id="N_LACTIC_ACID" runat="server" visible="false">N/A</div>
</td>
</tr>
<%--CREATININE_URINE_RANDOM--%>
<tr><td colspan="4"><h2>CREATININE, URINE, RANDOM</h2></td></tr>
<tr>
<td class="brd">Ideal</td>
<td class="brd">Preventive Medicine Range</td>
<td class="brd">Orthodox Medicine Range</td>
<td class="brd">Your Test Score</td>
</tr>
<tr>
<td class="brd"><asp:Literal ID="LtrIdealCREATININE_URINE_RANDOM" runat="server" Text="170"></asp:Literal></td>
<td class="brd">140 - 200</td>
<td class="brd">20 - 320</td>
<td class="brd" id="Td1CREATININE_URINE_RANDOM" runat="server"><asp:Literal ID="LtrCREATININE_URINE_RANDOM" runat="server"></asp:Literal></td>
</tr>
<tr><td colspan="4">&nbsp;</td></tr>
<tr id="Tr1CREATININE_URINE_RANDOM" runat="server">
<td valign="top">Comments :</td>
<td colspan="3" valign="top">
<div id="L_CREATININE_URINE_RANDOM" runat="server" visible="false">
<label>Generally associated with Low Creatinine, Urine, Random:</label>
Urinary Tract efficiency, Creatinine Clearness,Firm your muscles, Sub-Clinical Dehydration, Protein, Multiple Amino Acid deficiency, Need more muscle mass
<label>Corresponding need for nutritional support for LowCreatinine, Urine, Random:</label>
<label>Ionic Liquid Mineral Formulations and Tonics:</label> 
Silver, Zinc, Germanium 
<label>Homeopathic Remedies Number:</label>#4, #823
<label>Botanical Healing Tea Formulations:</label>
<label>Naturopathic Food Medicine Formulations:</label> 
Jug One Protocol 
<label>Vitamin and Nutraceutical Supplements:</label>
D-Mannose,Super C Active, Power Cell
<label>Clinic Treatments Indicated:</label>
Colon Hydrotherapy
</div>
<div id="I_CREATININE_URINE_RANDOM" runat="server" visible="false">
<label>Creatinine, Urine, RandomStandalone indication generally associated with:</label>
Kidney overwhelmed, Highly Toxic condition, Lymphatic Condition
</div>
<div id="H_CREATININE_URINE_RANDOM" runat="server" visible="false">
<label>Generally associated with HighCreatinine, Urine, Random:</label>
Urinary Tract efficiency, Creatinine Clearness, Firm your muscles, Sub-Clinical Dehydration, Liver detoxification, excess red meat
<label>Corresponding need for nutritional support for HighCreatinine, Urine, Random:</label>
Jug One Protocol
<label>Ionic Liquid Mineral Formulations and Tonics:</label> 
Zinc, Germanium, Sulfur 
<label>Homeopathic Remedies Number:</label> #23, #44, #802, #804, #830, #836
<label>Botanical Healing Tea Formulations:</label> Kidney Flush
<label>Naturopathic Food Medicine Formulations:</label> Green Drinks, Yogurt Health Drinks
<label>Vitamin and Nutraceutical Supplements:</label>
Alfalfa, D-Mannose
<label>Clinic Treatments Indicated:</label>
<label>Vegetable Juice Concentrates:</label>
Carrot, Broccoli, Cauliflower
<label>Support:</label>
Power Cell, 28 Super Amino Acids, L-Arginine, L-Glutamine
</div>
<div id="N_CREATININE_URINE_RANDOM" runat="server" visible="false">N/A</div>
</td>
</tr>
</table>
</div>
</td>
</tr>
</asp:Content>
<asp:Content ID="CntH" ContentPlaceHolderID="Ch" runat="server">
<link href="css/print.css" rel="stylesheet" media="print" type="text/css" />
<!--[if IE]>
    <script src="js/html5.js" type="text/javascript"></script>
<![endif]-->
</asp:Content>