<%@ Page Title="Enter Clinical Alternative Therapy" Language="C#" MasterPageFile="~/Master.Master"
    AutoEventWireup="true" CodeBehind="Final-Result-Key2.aspx.cs" Inherits="abundalife1001.Final_Result_Key2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="xid" runat="server" />
    <div class="default">
        <h1>
            Enter Clinical Alternative Therapy
        </h1>
        <div class="back-menu">
            <asp:Button ID="btnBack" runat="server" Text="Back to Main Menu" CssClass="left"
                OnClick="BackToMainMenu" />
            <asp:Button ID="btnSignOut" runat="server" Text="Sign Out" CssClass="left left-margin10"
                OnClick="SignOut" />
        </div>
        <hr align="left" style="width: 550px; color: #7D7D7D; float: left;" />
        <div class="top-margin90 clear">
            <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#D52025">
                <tr>
                    <td width="5%" valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="1" id="1" />
                        </div>
                    </td>
                    <td width="43%" valign="top">
                        A-10 Day Naturopathic Detoxification Program
                    </td>
                    <td width="5%" valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="2" id="2" />
                        </div>
                    </td>
                    <td width="44%" valign="top">
                        B-20 Day Naturopathic Deoxification Program
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="3" id="3" />
                        </div>
                    </td>
                    <td valign="top">
                        C-30 Day Naturopathic Detoxification Program
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="4" id="4" />
                        </div>
                    </td>
                    <td valign="top">
                        D-40 Day Naturopathic Detoxification Program
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="5" id="5" />
                        </div>
                    </td>
                    <td valign="top">
                        E-60 Day Naturopathic Detoxification Program
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="6" id="6" />
                        </div>
                    </td>
                    <td valign="top">
                        F-Jug One Protocol
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="7" id="7" />
                        </div>
                    </td>
                    <td valign="top">
                        G-Jug Two Protocol
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="8" id="8" />
                        </div>
                    </td>
                    <td valign="top">
                        H-Special Dietary Programes bases on individual Bio-Chemistry
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="9" id="9" />
                        </div>
                    </td>
                    <td valign="top">
                        I-Nutritioal Supplement Saturation Therapy Based on Individual bio-Chemistry
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="10" id="10" />
                        </div>
                    </td>
                    <td valign="top">
                        J-Series of Colon HydroTherapy Treatments
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="11" id="11" />
                        </div>
                    </td>
                    <td valign="top">
                        K-Special Home Enema
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="12" id="12" />
                        </div>
                    </td>
                    <td valign="top">
                        L-Ozone Infused Far Infrared Detoxification Suana Therapy
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="13" id="13" />
                        </div>
                    </td>
                    <td valign="top">
                        M-Ionic Foot Detox Bath with Ozone and Accupuncture
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="14" id="14" />
                        </div>
                    </td>
                    <td valign="top">
                        N-Rife Vibrational Medicine
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="15" id="15" />
                        </div>
                    </td>
                    <td valign="top">
                        O-Five Day Naturopathic Detoxification BodyFat Loss BootCamp
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="16" id="16" />
                        </div>
                    </td>
                    <td valign="top">
                        P-BioIdentical Hormone Restoration Therapy
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="17" id="17" />
                        </div>
                    </td>
                    <td valign="top">
                        Q-BioIdentical Human Growth Hormone Restoration Therapy
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="18" id="18" />
                        </div>
                    </td>
                    <td valign="top">
                        R-BioIdentical Thyroid Hormone Restoration Therapy
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="19" id="19" />
                        </div>
                    </td>
                    <td valign="top">
                        S-I.V. Super Nutritional Therapy
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="20" id="20" />
                        </div>
                    </td>
                    <td valign="top">
                        T-Blood Building Shot
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="21" id="21" />
                        </div>
                    </td>
                    <td valign="top">
                        U-Hormone Restoration Shot
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="22" id="22" />
                        </div>
                    </td>
                    <td valign="top">
                        V-I.V. Chelation Therapy
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="23" id="23" />
                        </div>
                    </td>
                    <td valign="top">
                        W. I.V. Alpha Lipoic Acid Drip
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="24" id="24" />
                        </div>
                    </td>
                    <td valign="top">
                        X-I.V. L-Glutathione Drip
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="25" id="25" />
                        </div>
                    </td>
                    <td valign="top">
                        Y-I.V. Medical Grade Hydrogen Peroxide Drip
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="26" id="26" />
                        </div>
                    </td>
                    <td valign="top">
                        Z-I.V. Colodial Silver Drip
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="27" id="27" />
                        </div>
                    </td>
                    <td valign="top">
                        AA-I.V. Immune Drip
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="28" id="28" />
                        </div>
                    </td>
                    <td valign="top">
                        BB-PhotoLuminescense Therapy with Medical Grade Hydrogen Peroxide
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="29" id="29" />
                        </div>
                    </td>
                    <td valign="top">
                        CC-I.V. Vitamin C Drip
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="30" id="30" />
                        </div>
                    </td>
                    <td valign="top">
                        DD-I.V. Beta C Drip
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="31" id="31" />
                        </div>
                    </td>
                    <td valign="top">
                        EE-I.V. Electrolyte Drip
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="32" id="32" />
                        </div>
                    </td>
                    <td valign="top">
                        FF-I.V. Mineral Drip
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="33" id="33" />
                        </div>
                    </td>
                    <td valign="top">
                        GG-Testosterone Shot
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="34" id="34" />
                        </div>
                    </td>
                    <td valign="top">
                        HH-Vitamin BOoster Shot
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="35" id="35" />
                        </div>
                    </td>
                    <td valign="top">
                        II-I.V. Phoshaydyl Choline Drip
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="36" id="36" />
                        </div>
                    </td>
                    <td valign="top">
                        JJ-I.V. Diabetes Nutritional Support Drip
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="37" id="37" />
                        </div>
                    </td>
                    <td valign="top">
                        KK-I.V. Dr. Mathis Rat Protocol
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="38" id="38" />
                        </div>
                    </td>
                    <td valign="top">
                        LL-I.V. Liver Restoration Nutrition Drip
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="39" id="39" />
                        </div>
                    </td>
                    <td valign="top">
                        MM-I.V. Liver Detoxification Drip
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="40" id="40" />
                        </div>
                    </td>
                    <td valign="top">
                        NN-I.V. Amino Acid Restoration Drip
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="41" id="41" />
                        </div>
                    </td>
                    <td valign="top">
                        OO-I.V. Adrenal Restoration Drip
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="42" id="42" />
                        </div>
                    </td>
                    <td valign="top">
                        PP-I.V. Fibromyalgia Relief Drip
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="43" id="43" />
                        </div>
                    </td>
                    <td valign="top">
                        QQ-I.V. Abunda Life Rejuvination Cocktail
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="44" id="44" />
                        </div>
                    </td>
                    <td valign="top">
                        RR-I.V. Chronic Fatigue Drip
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="45" id="45" />
                        </div>
                    </td>
                    <td valign="top">
                        SS-Custom made Drip
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="46" id="46" />
                        </div>
                    </td>
                    <td valign="top">
                        TT-Spine Strengthening Program
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="47" id="47" />
                        </div>
                    </td>
                    <td valign="top">
                        UU-BodyWork Therapy
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="48" id="48" />
                        </div>
                    </td>
                    <td valign="top">
                        VV-Palma Christa (Plaea?)
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="49" id="49" />
                        </div>
                    </td>
                    <td valign="top">
                        WW-Naturopathic Spinal Manipulation
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="50" id="50" />
                        </div>
                    </td>
                    <td valign="top">
                        XX-Fitness Medicine
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="51" id="51" />
                        </div>
                    </td>
                    <td valign="top">
                        YY-Physical Therapy
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="52" id="52" />
                        </div>
                    </td>
                    <td valign="top">
                        <p>
                            ZZ-(???)</p>
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="53" id="53" />
                        </div>
                    </td>
                    <td valign="top">
                        A3-Stress Managment Therapy
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="54" id="54" />
                        </div>
                    </td>
                    <td valign="top">
                        B3-Light and Sound Therapy
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="55" id="55" />
                        </div>
                    </td>
                    <td valign="top">
                        C3-Massage Chair Therapy
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="56" id="56" />
                        </div>
                    </td>
                    <td valign="top">
                        D4-Jade Bed Therapy
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="57" id="57" />
                        </div>
                    </td>
                    <td valign="top">
                        E3-The Morning Health Drink
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="58" id="58" />
                        </div>
                    </td>
                    <td valign="top">
                        F3-The Intestional Balancer Drink
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="59" id="59" />
                        </div>
                    </td>
                    <td valign="top">
                        G3-The Super Drink
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="60" id="60" />
                        </div>
                    </td>
                    <td valign="top">
                        H3-The Green Drink
                    </td>
                </tr>
                <tr>
                    <td height="22" valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="61" id="61" />
                        </div>
                    </td>
                    <td valign="top">
                        I3-The Blood Building Broth
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="62" id="62" />
                        </div>
                    </td>
                    <td valign="top">
                        J3-Special Naturopathic Condition
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="63" id="63" />
                        </div>
                    </td>
                    <td valign="top">
                        K3-Protocols
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="64" id="64" />
                        </div>
                    </td>
                    <td valign="top">
                        L3-Skin Brushing
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="65" id="65" />
                        </div>
                    </td>
                    <td valign="top">
                        M3-Super Bath Home Treatment
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="66" id="66" />
                        </div>
                    </td>
                    <td valign="top">
                        N3-Liver Flush
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="67" id="67" />
                        </div>
                    </td>
                    <td valign="top">
                        O3-Kidney Flush
                    </td>
                    <td valign="top" bgcolor="#D52025">
                        <div align="center">
                            <input type="checkbox" name="68" id="68" />
                        </div>
                    </td>
                    <td valign="top">
                        &nbsp;
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
