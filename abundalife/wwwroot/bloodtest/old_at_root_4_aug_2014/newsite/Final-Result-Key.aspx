<%@ Page Title="Enter Clinical Conditions" Language="C#" MasterPageFile="~/Master.Master"
    AutoEventWireup="true" CodeBehind="Final-Result-Key.aspx.cs" Inherits="abundalife1001.Final_Result_Key" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="xid" runat="server" />
    <div class="default">
    <h1>
           Enter Clinical Conditions
        </h1>
        <div class="back-menu">
            <asp:Button ID="btnBack" runat="server" Text="Back to Main Menu" CssClass="left"
                OnClick="BackToMainMenu" />
            <asp:Button ID="btnSignOut" runat="server" Text="Sign Out" CssClass="left left-margin10"
                OnClick="SignOut" />
        </div>
        <hr align="left" style="width: 550px; color: #7D7D7D; float: left;">
        <div class="top-margin90 clear">
        </div>
        
        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#D52025">
            <tr>
                <td width="5%" bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="1" id="1" />
                    </div>
                </td>
                <td width="43%">
                    1-Mal Absorption Syndrome
                </td>
                <td width="5%" bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="2" id="2" />
                    </div>
                </td>
                <td width="44%">
                    2-Cellular Oxygen Deficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="3" id="3" />
                    </div>
                </td>
                <td>
                    3-Sluggish Metabolism
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="4" id="4" />
                    </div>
                </td>
                <td>
                    4-Colon Toxicity
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="5" id="5" />
                    </div>
                </td>
                <td>
                    5-Liver Sluggishmess
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="6" id="6" />
                    </div>
                </td>
                <td>
                    6-Liver Inflammation
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="7" id="7" />
                    </div>
                </td>
                <td>
                    7-Liver Enzyme Deficiency
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="8" id="8" />
                    </div>
                </td>
                <td>
                    8-Candida Albicans
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="9" id="9" />
                    </div>
                </td>
                <td>
                    9-Hypoglycemia
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="10" id="10" />
                    </div>
                </td>
                <td>
                    10-Pancreatic Insufficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="11" id="11" />
                    </div>
                </td>
                <td>
                    11-Hypochlorhydria
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="12" id="12" />
                    </div>
                </td>
                <td>
                    12-Intestinal Fermentation
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="13" id="13" />
                    </div>
                </td>
                <td>
                    13-Autointoxication
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="14" id="14" />
                    </div>
                </td>
                <td>
                    14-Gall Bladder Sluggishness
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="15" id="15" />
                    </div>
                </td>
                <td>
                    15-Hyperglycemia
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="16" id="16" />
                    </div>
                </td>
                <td>
                    16-Syndrome X
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="17" id="17" />
                    </div>
                </td>
                <td>
                    17-Metabolic Syndrome
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="18" id="18" />
                    </div>
                </td>
                <td>
                    18-Diabetic Syndrome
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="19" id="19" />
                    </div>
                </td>
                <td>
                    19-Pre-Diabetic Syndrome
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="20" id="20" />
                    </div>
                </td>
                <td>
                    20-Under Performing Thyroid
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="21" id="21" />
                    </div>
                </td>
                <td>
                    21-Sluggish Thyroid
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="22" id="22" />
                    </div>
                </td>
                <td>
                    22-Hyperthyroid
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="23" id="23" />
                    </div>
                </td>
                <td>
                    23-Hypothyroid
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="24" id="24" />
                    </div>
                </td>
                <td>
                    24-Low Blood Sugar
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="25" id="25" />
                    </div>
                </td>
                <td>
                    25-Hypercholestrolemia
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="26" id="26" />
                    </div>
                </td>
                <td>
                    26-Hypocholestrolemia
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="27" id="27" />
                    </div>
                </td>
                <td>
                    27-Electrolyte Imbalance
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="28" id="28" />
                    </div>
                </td>
                <td>
                    28-Electolyte Deficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="s29" id="29" />
                    </div>
                </td>
                <td>
                    29-Metabolic Acidosis
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="30" id="30" />
                    </div>
                </td>
                <td>
                    30-Immune System Overwhelm
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="31" id="31" />
                    </div>
                </td>
                <td>
                    31-Highly Toxic Condition
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="32" id="32" />
                    </div>
                </td>
                <td>
                    32-Immune System Challenge
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="33" id="33" />
                    </div>
                </td>
                <td>
                    33-Sub Clinical Dehydration
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="34" id="34" />
                    </div>
                </td>
                <td>
                    34-Malnutrition
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="35" id="35" />
                    </div>
                </td>
                <td>
                    35-SAD (Standard American Diet Syndrome)
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="36" id="36" />
                    </div>
                </td>
                <td>
                    36-Digestive Enzyme Deficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="37" id="37" />
                    </div>
                </td>
                <td>
                    37-Metabolic Inefficiency
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="38" id="38" />
                    </div>
                </td>
                <td>
                    38-Lymphatic Congestion
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="39" id="39" />
                    </div>
                </td>
                <td>
                    39-Brain Oxygen Deficiency
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="40" id="40" />
                    </div>
                </td>
                <td>
                    40-Adrenal Insfficinecy
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="41" id="41" />
                    </div>
                </td>
                <td>
                    41-Adrenal Depletion
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="42" id="42" />
                    </div>
                </td>
                <td>
                    42-Adrenal Exhaustion
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="43" id="43" />
                    </div>
                </td>
                <td>
                    43-Pineal Gland Hormone Imbalance
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="44" id="44" />
                    </div>
                </td>
                <td>
                    44-Hypothalmus Gland Imbalance
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="45" id="45" />
                    </div>
                </td>
                <td>
                    45-Para Thyoid Gland Imbalance
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="46" id="46" />
                    </div>
                </td>
                <td>
                    46-Bone Metabolism Imbalcne
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="47" id="47" />
                    </div>
                </td>
                <td>
                    47-Atrophy
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="48" id="48" />
                    </div>
                </td>
                <td>
                    48-Spinal Subluxation
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="49" id="49" />
                    </div>
                </td>
                <td>
                    49-Connective Tissue Weakness
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="50" id="50" />
                    </div>
                </td>
                <td>
                    50-Adult Onset Hypopitutaryism
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="51" id="51" />
                    </div>
                </td>
                <td>
                    51-Growth Hormone Deficiency
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="52" id="52" />
                    </div>
                </td>
                <td>
                    52-Adult Onset Growth Hormone Deficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="53" id="53" />
                    </div>
                </td>
                <td>
                    53-Female Hormone Imbalance
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="54" id="54" />
                    </div>
                </td>
                <td>
                    54-Female Hormone Deficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="55" id="55" />
                    </div>
                </td>
                <td>
                    55-Estrogen Dominance
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="56" id="56" />
                    </div>
                </td>
                <td>
                    56-Testosterone Deficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="57" id="57" />
                    </div>
                </td>
                <td>
                    57-Adult Onset Male Hormne Deficiency
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="58" id="58" />
                    </div>
                </td>
                <td>
                    58-Adult Onset Female Hormone Deficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="59" id="59" />
                    </div>
                </td>
                <td>
                    59-Primenopause
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="60" id="60" />
                    </div>
                </td>
                <td>
                    60-Adropause
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="61" id="61" />
                    </div>
                </td>
                <td>
                    61-Circulatory Insufficiency
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="62" id="62" />
                    </div>
                </td>
                <td>
                    62-Circulatory Disorder
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="63" id="63" />
                    </div>
                </td>
                <td>
                    63-Circulatory Sluggishness
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="64" id="64" />
                    </div>
                </td>
                <td>
                    64-Highly Toxic Condition
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="65" id="65" />
                    </div>
                </td>
                <td>
                    65-Blood Viscosity Challenge
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="66" id="66" />
                    </div>
                </td>
                <td>
                    66-Constipation
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="67" id="67" />
                    </div>
                </td>
                <td>
                    67-Obesity
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="68" id="68" />
                    </div>
                </td>
                <td>
                    68-Loss of Muscle Tone
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="69" id="69" />
                    </div>
                </td>
                <td>
                    69-Low Fitness Level
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="70" id="70" />
                    </div>
                </td>
                <td>
                    70-Poor Physical Condition
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="71" id="71" />
                    </div>
                </td>
                <td>
                    71-Poor Muscle Tone
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="72" id="72" />
                    </div>
                </td>
                <td>
                    72-Excess Body Fat Weight
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="73" id="73" />
                    </div>
                </td>
                <td>
                    73-Yeast Overgrowth
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="74" id="74" />
                    </div>
                </td>
                <td>
                    74-Floral Imbalance
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="s75" id="75" />
                    </div>
                </td>
                <td>
                    75-E Coli Dominance
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="76" id="76" />
                    </div>
                </td>
                <td>
                    76-Fungal Condition
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="77" id="77" />
                    </div>
                </td>
                <td>
                    77-Parasite Infestation
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="78" id="78" />
                    </div>
                </td>
                <td>
                    78-Inflammation
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="79" id="79" />
                    </div>
                </td>
                <td>
                    79-Blocked Receptor Sites
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="80" id="80" />
                    </div>
                </td>
                <td>
                    80-Toxins Fravitating to Fat Cells
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="81" id="81" />
                    </div>
                </td>
                <td>
                    81-Medications Contributing to Weight Gain
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="82" id="82" />
                    </div>
                </td>
                <td>
                    82-Carbohydrate Intolerance
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="83" id="83" />
                    </div>
                </td>
                <td>
                    83-Trapped Lymphic Toxins
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="84" id="84" />
                    </div>
                </td>
                <td>
                    84-Bowel Toxins
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="85" id="85" />
                    </div>
                </td>
                <td>
                    85-Estrogen Dominance
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="86" id="86" />
                    </div>
                </td>
                <td>
                    86-Fementation
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="87" id="87" />
                    </div>
                </td>
                <td>
                    87-Blody Clock Upset
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="88" id="88" />
                    </div>
                </td>
                <td>
                    88-Stress Suppressing Immune System
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="89" id="89" />
                    </div>
                </td>
                <td>
                    89-Worry Suppressing Immune System
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="90" id="90" />
                    </div>
                </td>
                <td>
                    90-Anxiety Suppressing Immune System
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="91" id="91" />
                    </div>
                </td>
                <td>
                    91-Depression Suppressing immune System
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="92" id="92" />
                    </div>
                </td>
                <td>
                    92-Stress Suppressing Immune System
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="93" id="93" />
                    </div>
                </td>
                <td>
                    93-Depression Suppressing Hormonal System
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="94" id="94" />
                    </div>
                </td>
                <td>
                    94-Anxiety Suppressing Hormonal System
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="95" id="95" />
                    </div>
                </td>
                <td>
                    95-Depression Suppressing Hormonal System
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="96" id="96" />
                    </div>
                </td>
                <td>
                    96-Smoking Suppressing Immune Function
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="97" id="97" />
                    </div>
                </td>
                <td>
                    97-Faulty Diet Suppressing Immune Function
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="98" id="98" />
                    </div>
                </td>
                <td>
                    98-Kidney Not Efficiently Clearing Toxins
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="99" id="99" />
                    </div>
                </td>
                <td>
                    99-Iodine/Iodene Deficiency
                </td>
                <td bgcolor="#D52025">
                    <div align="center">
                        <input type="checkbox" name="100" id="slugthyroid80" />
                    </div>
                </td>
                <td>
                    100-Enzyme Deficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="101" id="101" />
                </td>
                <td>
                    101-Over Eating
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="102" id="102" />
                </td>
                <td>
                    102-Toxins building up at a faster rate than the body's elimination channels can
                    process
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="103" id="103" />
                </td>
                <td>
                    103-Autointoxication
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="104" id="104" />
                </td>
                <td>
                    104-Sub Clinical Dehydration
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="105" id="105" />
                </td>
                <td>
                    105-Poor Circulation
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="106" id="106" />
                </td>
                <td>
                    106-Anemia in Extremities
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="107" id="107" />
                </td>
                <td>
                    107-Nutritional Deficiency Anemia
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="108" id="108" />
                </td>
                <td>
                    108-Over Medicated
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="109" id="109" />
                </td>
                <td>
                    109-Inefficient Protein Utilization
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="110" id="110" />
                </td>
                <td>
                    110-Faulty Amino Acid Conversion
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="111" id="111" />
                </td>
                <td>
                    111-Coffee Habit Depleting Adrenal Reserves
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="112" id="112" />
                </td>
                <td>
                    112-Toxic Fluid Retention
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="113" id="113" />
                </td>
                <td>
                    113-Deficiency in Omega 6 and Omega 3 Essential Fatty Acids
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="114" id="114" />
                </td>
                <td>
                    114-Nitrogen By-Product Putrifacation
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="115" id="115" />
                </td>
                <td>
                    115-Couch Potato-ism Affecting Immune Function
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="116" id="116" />
                </td>
                <td>
                    116-Electrolyte Imbalance
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="117" id="117" />
                </td>
                <td>
                    117-Toxic Fluid Build Up
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="118" id="118" />
                </td>
                <td>
                    118-Kidney's Not Efficiently Filtering Toxins
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="119" id="119" />
                </td>
                <td>
                    119-Over Training
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="120" id="120" />
                </td>
                <td>
                    120-Brain Cells Requiring Nutritional Support
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="121" id="121" />
                </td>
                <td>
                    121-Increase Risk of Cardio Vascular Disease
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="122" id="122" />
                </td>
                <td>
                    122-Alcohol Affecting Liver Function
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="123" id="123" />
                </td>
                <td>
                    123-Increased Risk of Cancer
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="124" id="124" />
                </td>
                <td>
                    124-Increased Risk of Alzheimer's
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="125" id="125" />
                </td>
                <td>
                    125-Plaque Build Up
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="126" id="126" />
                </td>
                <td>
                    126-Excess Sugar, Junk Foods, Carbohydrates
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="127" id="127" />
                </td>
                <td>
                    127-Carohydrates Converting to Sugar
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="128" id="128" />
                </td>
                <td>
                    128-Sunshine/Fresh Air Deficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="129" id="129" />
                </td>
                <td>
                    129-Heavy Metal Toxicity
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="130" id="130" />
                </td>
                <td>
                    130-Enviornmental Pollutant Accumulation
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="131" id="131" />
                </td>
                <td>
                    131-Chemical Exposure
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="132" id="132" />
                </td>
                <td>
                    132-Calcium Out of Solution
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="133" id="133" />
                </td>
                <td>
                    133-Intestinal Dysbiosis
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="134" id="134" />
                </td>
                <td>
                    134-Kidney's Overwhelmed with Toxins
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="135" id="135" />
                </td>
                <td>
                    135-Liver Inflammation
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="136" id="136" />
                </td>
                <td>
                    136-Allergy Syndrome due to Toxicity
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="137" id="137" />
                </td>
                <td>
                    137-Alcoholism
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="138" id="138" />
                </td>
                <td>
                    138-Gout Related Condition
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="139" id="139" />
                </td>
                <td>
                    139-Under Active Parathyroid
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="140" id="140" />
                </td>
                <td>
                    140-Cellular Degeneration
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="141" id="141" />
                </td>
                <td>
                    141-Pre Mature Aging
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="142" id="142" />
                </td>
                <td>
                    142-Inability to Concentrate
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="143" id="143" />
                </td>
                <td>
                    143-Nerve Depletion
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="144" id="144" />
                </td>
                <td>
                    144-Nerve Nutritional Support Indicated
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="145" id="145" />
                </td>
                <td>
                    145-Thyroid Nutritional Support Indicated
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="146" id="146" />
                </td>
                <td>
                    146-Blood Viscosity Problem
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="147" id="147" />
                </td>
                <td>
                    147-Bone Marrow Production Deficiency
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="148" id="148" />
                </td>
                <td>
                    148-Capillary Integrity Deficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="149" id="149" />
                </td>
                <td>
                    149-Thymus Gland Incompetence
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="150" id="150" />
                </td>
                <td>
                    150-Blood Clotting Deficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="151" id="151" />
                </td>
                <td>
                    151-Vasoconstriction
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="152" id="152" />
                </td>
                <td>
                    152-Chronic Bacteria
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="153" id="153" />
                </td>
                <td>
                    153-Immune System Challenge
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="154" id="154" />
                </td>
                <td>
                    154-Slow Transition Time of Food
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="155" id="155" />
                </td>
                <td>
                    155-Bacterial Infection
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="156" id="156" />
                </td>
                <td>
                    156-Viral Infection
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="157" id="157" />
                </td>
                <td>
                    157-Lymph Sluggishness
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="158" id="158" />
                </td>
                <td>
                    158-Multiple Nutritional Deficiencies
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="159" id="159" />
                </td>
                <td>
                    159-Cellular Breakdown
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="160" id="slugthyroid160" />
                </td>
                <td>
                    160-Cahizia
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="161" id="161" />
                </td>
                <td>
                    161-Metastasis
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="162" id="162" />
                </td>
                <td>
                    162-Uncontrolled Diabetes
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="163" id="163" />
                </td>
                <td>
                    163-Heart Congestion
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="164" id="164" />
                </td>
                <td>
                    164-Ulcer
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="165" id="165" />
                </td>
                <td>
                    165-Cellular Degeneration
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="166" id="166" />
                </td>
                <td>
                    166-Acid/Alkaline PH Imbalance
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="167" id="167" />
                </td>
                <td>
                    167-Toxicity Due to Faulty Diet
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="168" id="168" />
                </td>
                <td>
                    168-Urinary Tract Infection
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="169" id="169" />
                </td>
                <td>
                    169-Candida Albacans
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="170" id="170" />
                </td>
                <td>
                    170-Red Blood Cell Destruction-Loss of Fighting Force
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="171" id="171" />
                </td>
                <td>
                    171-Stone Formation Starting
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="172" id="172" />
                </td>
                <td>
                    172-BOne Depletion
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="173" id="173" />
                </td>
                <td>
                    173-Multiple Mineral Deficiencies
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="174" id="174" />
                </td>
                <td>
                    174-Uric Acid Build Up Affecting Joints
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="175" id="175" />
                </td>
                <td>
                    175-Dirty Colon
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="176" id="176" />
                </td>
                <td>
                    176-Overuse of Antacids
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="177" id="177" />
                </td>
                <td>
                    177-Loss of BioOrganic Sodium Reserves for Stomach
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="178" id="178" />
                </td>
                <td>
                    178-Slow Transition Time causing Fermentation
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="179" id="179" />
                </td>
                <td>
                    179-Under Performing Endocrine System
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="180" id="180" />
                </td>
                <td>
                    180-Nervous Breakdown
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="181" id="181" />
                </td>
                <td>
                    181-Poor Food Combinations
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="182" id="182" />
                </td>
                <td>
                    182-Chronic Fatigue
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="183" id="183" />
                </td>
                <td>
                    184-Low Libido
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="184" id="184" />
                </td>
                <td>
                    185-Breast Cysts
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="185" id="185" />
                </td>
                <td>
                    186-Ovarian Cysts
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="186" id="186" />
                </td>
                <td>
                    187-Prostate Problems
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="187" id="187" />
                </td>
                <td>
                    188-Polycystic Ovarian Syndrome
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="188" id="188" />
                </td>
                <td>
                    189-Loss of Animation for Life
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="189" id="189" />
                </td>
                <td>
                    190-Brain Fog Syndrome
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="190" id="190" />
                </td>
                <td>
                    191-Drug Addiction
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="191" id="191" />
                </td>
                <td>
                    192-Pineal Gland Deficiency
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="192" id="192" />
                </td>
                <td>
                    193-PhotoNutrient Deficiency
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="193" id="slugthyroid173" />
                </td>
                <td>
                    194-Nutracutical Deficiency
                </td>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="194" id="194" />
                </td>
                <td>
                    195-Deficiency in Raw Vegetables
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    <input type="checkbox" name="195" id="195" />
                </td>
                <td>
                    196-Deficiency in Green Vegetables
                </td>
                <td bgcolor="#D52025">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td bgcolor="#D52025">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td bgcolor="#D52025">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td bgcolor="#D52025">
                    &nbsp;
                </td>
                <td>
                    &nbsp&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="4">
                  <%--  <input type="button" onclick="sumcheck();" name="enter" value="Enter" />--%>
                  <asp:Button ID="btnEnter" runat="server" 
                        OnClientClick="javascript: return sumcheck()" Text="Enter" 
                        onclick="btnEnter_Click" />
                </td>
            </tr>
        </table>
    </div>

    <script type="text/javascript">

        function sumcheck() {          
/*
            var z = 0;
            for (i = 0; i < document.forms[0].elements.length; i++) {
                if (document.forms[0].elements[i].type == "checkbox") {
                    if (document.forms[0].elements[i].checked == true) {
                        z++;
                    }
                }               
            }         

            if (z == 12) {
                //document.forms[0].submit();
            }
            else if (z > 12) {
            alert('Please uncheck some conditions, you must have 12, and you have ' + z + ' ');
            return false;
            } else if (z < 12) {
            alert('Please check more conditions, you must have 12, and you have ' + z + ' ');
            return false;
            }
*/
            
        }

    </script>

</asp:Content>
