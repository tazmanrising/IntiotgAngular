<%@ Page Language="C#" MasterPageFile="~/Questionnaire/Master.Master" AutoEventWireup="true"
CodeBehind="Questionnaire.aspx.cs" Inherits="abundalife1001.Questionnaire.Questionnaire" %>

<asp:Content ID="CntMain" ContentPlaceHolderID="Cnt" runat="server">
<script type="text/javascript" src="Graph/js/enhance.js"></script>	
<script type="text/javascript">
// Run capabilities test
enhance({
loadScripts: [
{ src: 'Graph/js/excanvas.js', iecondition: 'all' },
'Scripts/jquery-1.6.2.min.js',
'Graph/js/visualize.jQuery.js',
'Graph/js/example.js'
],
loadStyles: [
'Graph/css/basic.css',
'Graph/css/visualize.css',
'Graph/css/visualize-dark.css'
]
});
</script>
<div id="first" class="grid_12">
<h1 class="main noPrint">Take A New Questionnaire</h1><hr />
<asp:Label ID="LblMessage" runat="server" CssClass="noPrint"></asp:Label>
<div>
<div id="DivInstructions" runat="server" class="noPrint">
<h4>
Instructions:</h4>
<ul style="line-height: 20px; text-align: justify; list-style-type:square;">
<li>There will be <b>6</b> main sections.</li>
<li>Each main section will contain sub-sections which consists of questions which a
patient have to <b>answer in the range of 0 to 5</b>.</li>
<li>In each sub-section you will find a number of potential symptoms, body signs, signals
and conditions. Some will pertain to you, others will not. Underline the worst conditions
that apply to you. Choose the worst of the worst, the most intense condition and
give it score from 1 to 5.
<br />
<br />
<ul style="list-style-type:lower-alpha;">
<li><b>Five (5)</b> and <b>four (4)</b> represent a primary symptom, complaint or concern. You would
most likely want to discuss your 5 and 4 primary symptoms with your health care
practitioner. Five (5) represents the most intense of your conditions in that section.</li>
<li><b>Three (3)</b> represents a secondary symptom, condition or concern. If there was enough
time available you would discuss this condition with your primary care practitioner.</li>
<li><b>Two (2)</b> represents a symptom, concern or condition that you are consciously aware
of but it is so minor that you probably won&#39;t discuss it with your health care
practitioner.</li>
<li><b>One (1)</b> represents a symptom of such little concern that you&#39;re not consciously
aware of it until the test question reawakens your awareness of its existence.</li>
<li><b>Zero (0)</b> or <b>"Blank value"</b> represents “no” or “I don&#39;t know.”</li>
</ul>
<br />
</li>
<li>There is a space allocated at the end of the questionnaire in the event that you
feel you need to elaborate on any particular section or symptom. Also, feel free
to use the additional space to address any health matter or personal concern which
may not have been addressed by the questionnaire.</li>
<li>Focus: Be sure to find a quite place free of intrusion and interruptions, television,
radio, talking, door bells or cell phones. </li>
</ul>
<div class="field">
<div class="field-lable">
&nbsp;
</div>
<div class="field-conrol">
<asp:Button ID="BtnStartTest" runat="server" Text="Start Questionnaire" ToolTip="Please click here to start a new Questionnaire"
OnClick="BtnStartTest_Click" /></div>
</div>
</div>
<div id="DivQuestion" runat="server" visible="false" class="noPrint">
<h4>
<asp:Literal ID="LtrDivision" runat="server" Text="Division A"></asp:Literal>
-
<asp:Literal ID="LtrSection" runat="server" Text="Section 1"></asp:Literal>
<%--(<asp:Literal ID="LtrSectionName" runat="server" Text="Calcium"></asp:Literal>)--%></h4> <%--not in use as of now--%>
<asp:Repeater ID="RptQuestions" runat="server">
<ItemTemplate>
<div class="clear">
&nbsp;</div>
<div class="questionaire">
<div class="questionaire-control">
<asp:HiddenField ID="HdnQuestionId" runat="server" Value='<%#Eval("QuestionId") %>'>
</asp:HiddenField>
Q.
<%#Convert.ToInt16(DataBinder.Eval(Container, "ItemIndex", "")) + 1%>)&nbsp;&nbsp;<asp:TextBox
ID='TxtQ' runat="server" onkeypress="return allowNumber(event);" MaxLength="1"
autocomplete="off" CssClass="Score" Text='<%#Eval("Answer") %>' onchange='javascript:Calculate();'></asp:TextBox></div>
<div class="questionaire-lable">
<%#Eval("Question")%>
</div>
</div>
</ItemTemplate>
</asp:Repeater>
<div class="clear">
&nbsp;</div>
<div class="questionaire">
<div class="questionaire-lable">
<asp:TextBox ID="TxtSectionScore" runat="server" onkeypress="return notAllowAnything(event);"></asp:TextBox>&nbsp;&nbsp;&nbsp;<b>Total Input</b></div>
</div>
<div class="clear">
&nbsp;</div>
<div class="field">
<div class="field-lable">
&nbsp;
</div>
<div class="field-conrol">
<asp:Button ID="BtnPrevious" runat="server" Text="Previous" OnClick="BtnPrevious_Click" />&nbsp;&nbsp;
<asp:Button ID="BtnNext" runat="server" Text="Next" OnClick="BtnNext_Click" />
<div class="clear">
&nbsp;</div>
<br />
<asp:Button ID="BtnDivisionA" runat="server" Text="Go to Division A" OnClick="BtnDivisionA_Click" />&nbsp;&nbsp;
<asp:Button ID="BtnDivisionB" runat="server" Text="Go to Division B" OnClick="BtnDivisionB_Click" />&nbsp;&nbsp;
<asp:Button ID="BtnDivisionC" runat="server" Text="Go to Division C" OnClick="BtnDivisionC_Click" />&nbsp;&nbsp;
<asp:Button ID="BtnDivisionD" runat="server" Text="Go to Division D" OnClick="BtnDivisionD_Click" />&nbsp;&nbsp;
<asp:Button ID="BtnDivisionE" runat="server" Text="Go to Division E" OnClick="BtnDivisionE_Click" />&nbsp;&nbsp;
<asp:Button ID="BtnDivisionF" runat="server" Text="Go to Division F" OnClick="BtnDivisionF_Click" />&nbsp;&nbsp;
</div>
</div>
</div>
<p class="noPrint" id="ParaAdditionalInformation" runat="server">
<br />
Any Additional Information you want to mention?
<br />
<asp:TextBox ID="TxtAdditionalInformation" runat="server" TextMode="MultiLine" SkinID="MultiLineBox"
Width="595" onkeypress="return notAllowSpecialCharacters(event);"></asp:TextBox><br />
</p>
<p class="noPrint">
<asp:Button ID="BtnSubmitTest" runat="server" Text="Submit Questionnaire" ToolTip="Please click here to submit the Questionnaire and see the results"
OnClick="BtnSubmitTest_Click" OnClientClick="return SubmitTest();" /></p>
<div id="DivResult" runat="server" visible="false" class="yesPrint" style="text-align: left;">
<%--Cover Report - Start--%>
<div id="DivCoverReport" runat="server" style='display: none;'>
<h5>
Personal Cover Report of Finding Prepared Exclusively For:</h5>
<br />
<u><b>PATIENT INFORMATION</b></u>
<br />
<br />
<b>NAME:</b>&nbsp;<asp:Literal ID="LtrPName" runat="server"></asp:Literal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>DATE
& TIME:</b>&nbsp;<asp:Literal ID="LtrPDate" runat="server"></asp:Literal>
<br />
<br />
<h4>Section Wise Total Scores</h4>
<%--<h4>Division A</h4><br />--%>
<div class="cvr">
<div class="fl clm">1.) Calcium <%--Section 1--%>:&nbsp;<b><asp:Literal ID="LtrDivASec1Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">2.) Chromium <%--Section 2--%>:&nbsp;<b><asp:Literal ID="LtrDivASec2Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">3.) Copper <%--Section 3--%>:&nbsp;<b><asp:Literal ID="LtrDivASec3Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">4.) Iodine <%--Section 4--%>:&nbsp;<b><asp:Literal ID="LtrDivASec4Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">5.) Iron <%--Section 5--%>:&nbsp;<b><asp:Literal ID="LtrDivASec5Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">6.) Magnesium <%--Section 6--%>:&nbsp;<b><asp:Literal ID="LtrDivASec6Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">7.) Manganese <%--Section 7--%>:&nbsp;<b><asp:Literal ID="LtrDivASec7Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">8.) Phosphorus <%--Section 8--%>:&nbsp;<b><asp:Literal ID="LtrDivASec8Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">9.) Potassium <%--Section 9--%>:&nbsp;<b><asp:Literal ID="LtrDivASec9Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">10.) Silicon <%--Section 10--%>:&nbsp;<b><asp:Literal ID="LtrDivASec10Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">11.) Bio Organic Sodium <%--Section 11--%>:&nbsp;<b><asp:Literal ID="LtrDivASec11Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">12.) Sulfur <%--Section 12--%>:&nbsp;<b><asp:Literal ID="LtrDivASec12Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">13.) Zinc <%--Section 13--%>:&nbsp;<b><asp:Literal ID="LtrDivASec13Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">14.) Digestive Enzymes/Hypochlorhydria <%--Section 14--%>:&nbsp;<b><asp:Literal ID="LtrDivASec14Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">15.) Protein/Amino Acids <%--Section 15--%>:&nbsp;<b><asp:Literal ID="LtrDivASec15Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">16.) Vitamin B Complex <%--Section 16--%>:&nbsp;<b><asp:Literal ID="LtrDivASec16Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">17.) Thiamin (vitamin B1) <%--Section 17--%>:&nbsp;<b><asp:Literal ID="LtrDivASec17Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">18.) Riboflavin (vitamin B2) <%--Section 18--%>:&nbsp;<b><asp:Literal ID="LtrDivASec18Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">19.) Niacin (vitamin B3) <%--Section 19--%>:&nbsp;<b><asp:Literal ID="LtrDivASec19Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">20.) Vitamin A <%--Section 20--%>:&nbsp;<b><asp:Literal ID="LtrDivASec20Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">21.) Pyridoxine (vitamin B6) <%--Section 21--%>:&nbsp;<b><asp:Literal ID="LtrDivASec21Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">22.) Cobalamin (Vitamin B12) <%--Section 22--%>:&nbsp;<b><asp:Literal ID="LtrDivASec22Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">23.) Pangamic Acid (Vitamin B15) <%--Section 23--%>:&nbsp;<b><asp:Literal ID="LtrDivASec23Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">24.) Biotin <%--Section 24--%>:&nbsp;<b><asp:Literal ID="LtrDivASec24Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">25.) Choline <%--Section 25--%>:&nbsp;<b><asp:Literal ID="LtrDivASec25Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">26.) Inositol <%--Section 26--%>:&nbsp;<b><asp:Literal ID="LtrDivASec26Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">27.) Folic Acid <%--Section 27--%>:&nbsp;<b><asp:Literal ID="LtrDivASec27Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">28.) Pantothenic Acid (Vitamin B5) <%--Section 28--%>:&nbsp;<b><asp:Literal ID="LtrDivASec28Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">29.) Para- Amino Benzoic Acid(vitamin B5) <%--Section 29--%>:&nbsp;<b><asp:Literal ID="LtrDivASec29Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">30.) Vitamin C <%--Section 30--%>:&nbsp;<b><asp:Literal ID="LtrDivASec30Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">31.) Vitamin D-3 <%--Section 31--%>:&nbsp;<b><asp:Literal ID="LtrDivASec31Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">32.) Essential Fatty Acids (Vitamin F) <%--Section 32--%>:&nbsp;<b><asp:Literal ID="LtrDivASec32Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">33.) Vitamin E <%--Section 33--%>:&nbsp;<b><asp:Literal ID="LtrDivASec33Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">34.) Boron <%--Section 34--%>:&nbsp;<b><asp:Literal ID="LtrDivASec34Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">35.) Cobalt <%--Section 35--%>:&nbsp;<b><asp:Literal ID="LtrDivASec35Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">36.) Germanium <%--Section 36--%>:&nbsp;<b><asp:Literal ID="LtrDivASec36Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">37.) Gold <%--Section 37--%>:&nbsp;<b><asp:Literal ID="LtrDivASec37Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">38.) Lithium <%--Section 38--%>:&nbsp;<b><asp:Literal ID="LtrDivASec38Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">39.) Molybdenum <%--Section 39--%>:&nbsp;<b><asp:Literal ID="LtrDivASec39Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">40.) Platinum <%--Section 40--%>:&nbsp;<b><asp:Literal ID="LtrDivASec40Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">41.) Selenium <%--Section 41--%>:&nbsp;<b><asp:Literal ID="LtrDivASec41Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">42.) Silver <%--Section 42--%>:&nbsp;<b><asp:Literal ID="LtrDivASec42Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">43.) Vanadium <%--Section 43--%>:&nbsp;<b><asp:Literal ID="LtrDivASec43Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">44.) Vitamin B17 Laetrile <%--Section 44--%>:&nbsp;<b><asp:Literal ID="LtrDivASec44Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">45.) Vitamin K <%--Section 45--%>:&nbsp;<b><asp:Literal ID="LtrDivASec45Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">46.) Bio-Organic Chlorine <%--Section 46--%>:&nbsp;<b><asp:Literal ID="LtrDivASec46Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">47.) Bio-organic Fluorine <%--Section 47--%>:&nbsp;<b><asp:Literal ID="LtrDivASec47Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">48.) Bromine <%--Section 48--%>:&nbsp;<b><asp:Literal ID="LtrDivASec48Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">49.) Bioflavonoid <%--Section 49--%>:&nbsp;<b><asp:Literal ID="LtrDivASec49Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">50.) Electrolytes <%--Section 50--%>:&nbsp;<b><asp:Literal ID="LtrDivASec50Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">51.) Co Enzyme Q10 <%--Section 51--%>:&nbsp;<b><asp:Literal ID="LtrDivASec51Score" runat="server"></asp:Literal></b></div>
</div>
<br />
<br />
<%--<h4>Division B</h4><br />--%>
<div class="cvr">
<div class="fl clm">1.) Thyroid <%--Section 1--%>:&nbsp;<b><asp:Literal ID="LtrDivBSec1Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">2.) Adrenal <%--Section 2--%>:&nbsp;<b><asp:Literal ID="LtrDivBSec2Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">3.) Pineal <%--Section 3--%>:&nbsp;<b><asp:Literal ID="LtrDivBSec3Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">4.) Pituitary <%--Section 4--%>:&nbsp;<b><asp:Literal ID="LtrDivBSec4Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">5.) Pregnenolone <%--Section 5--%>:&nbsp;<b><asp:Literal ID="LtrDivBSec5Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">6.) Aldosterone <%--Section 6--%>:&nbsp;<b><asp:Literal ID="LtrDivBSec6Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">7.) Estrogen (Women) <%--Section 7--%>:&nbsp;<b><asp:Literal ID="LtrDivBSec7Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">8.) Progesterone (Women) <%--Section 8--%>:&nbsp;<b><asp:Literal ID="LtrDivBSec8Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">9.) Testosterone (Women) <%--Section 9--%>:&nbsp;<b><asp:Literal ID="LtrDivBSec9Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">10.) Testosterone (Men) <%--Section 10--%>:&nbsp;<b><asp:Literal ID="LtrDivBSec10Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">11.) Progesterone (Men) <%--Section 11--%>:&nbsp;<b><asp:Literal ID="LtrDivBSec11Score" runat="server"></asp:Literal></b></div>
</div>
<br />
<br />
<%--<h4>Division C</h4><br />--%>
<div class="cvr">
<div class="fl clm">1.) Arginine <%--Section 1--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec1Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">2.) Histidine <%--Section 2--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec2Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">3.) Isoleucine <%--Section 3--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec3Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">4.) Leucine <%--Section 4--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec4Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">5.) Lysine <%--Section 5--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec5Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">6.) Methionine <%--Section 6--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec6Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">7.) Phenylalaine <%--Section 7--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec7Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">8.) Theonine <%--Section 8--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec8Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">9.) Tryptophan <%--Section 9--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec9Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">10.) Valine <%--Section 10--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec10Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">11.) Proline <%--Section 11--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec11Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">12.) Taurine <%--Section 12--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec12Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">13.) Carnitine <%--Section 13--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec13Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">14.) Tyrosine <%--Section 14--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec14Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">15.) Glutamine <%--Section 15--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec15Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">16.) Cystene / cystine <%--Section 16--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec16Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">17.) Glycine <%--Section 17--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec17Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">18.) Alanine <%--Section 18--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec18Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">19.) Gama Amino Butyric Acid (GABA) <%--Section 19--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec19Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">20.) Asparagina / Aspartic Acid <%--Section 20--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec20Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">21.) Citrulline <%--Section 21--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec21Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">22.) Ornithine <%--Section 22--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec22Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">23.) Glutathione <%--Section 23--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec23Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">24.) Acetyl-L-Carnitine <%--Section 24--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec24Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">25.) Alpha Lipoic Acid <%--Section 25--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec25Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">26.) Arginine Alpha Ketoglutarate <%--Section 26--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec26Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">27.) Creatine Monohydrate <%--Section 27--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec27Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">28.) N-Acetyl-Cystine <%--Section 28--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec28Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">29.) Ornithine Alpha Ketoglutarate <%--Section 29--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec29Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">30.) S-Adenosyl-L-Methionesame <%--Section 30--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec30Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">31.) Pyruvate <%--Section 31--%>:&nbsp;<b><asp:Literal ID="LtrDivCSec31Score" runat="server"></asp:Literal></b></div>
</div>
<br />
<br />
<%--<h4>Division D</h4><br />--%>
<div class="cvr">
<div class="fl">1.) Pre-mature Aging – Aging/Degenerating faster than chronological years <%--Section 1--%>:&nbsp;<b><asp:Literal ID="LtrDivDSec1Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl">2.) Blood Sugar Collapse / Bio Energy Thief <%--Section 2--%>:&nbsp;<b><asp:Literal ID="LtrDivDSec2Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">3.) Candida Albacans <%--Section 3--%>:&nbsp;<b><asp:Literal ID="LtrDivDSec3Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">4.) Intestinal Parasite Syndrome <%--Section 4--%>:&nbsp;<b><asp:Literal ID="LtrDivDSec4Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">5.) Mal-Absorption Syndrome <%--Section 5--%>:&nbsp;<b><asp:Literal ID="LtrDivDSec5Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">6.) Liver Sluggishness <%--Section 6--%>:&nbsp;<b><asp:Literal ID="LtrDivDSec6Score" runat="server"></asp:Literal></b></div>
<div class="fl">7.) Intestinal Dysbiosis, Fermentation - Yeast Fungus Syndrome <%--Section 7--%>:&nbsp;<b><asp:Literal ID="LtrDivDSec7Score" runat="server"></asp:Literal></b></div>
</div>
<br />
<br />
<%--<h4>Division E</h4><br />--%>
<div class="cvr">
<div class="fl">1.) Body/Mind Psycho Induced/Exacerbated Somatic Significance <%--Section 1--%>:&nbsp;<b><asp:Literal ID="LtrDivESec1Score" runat="server"></asp:Literal></b></div>
</div>
<br />
<br />
<%--<h4>Division F</h4><br />--%>
<div class="cvr">
<div class="fl clm">1.) Cellular Oxygen Deficiency <%--Section 1--%>:&nbsp;<b><asp:Literal ID="LtrDivFSec1Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">2.) Dopamine <%--Section 2--%>:&nbsp;<b><asp:Literal ID="LtrDivFSec2Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">3.) Serotonin <%--Section 3--%>:&nbsp;<b><asp:Literal ID="LtrDivFSec3Score" runat="server"></asp:Literal></b></div>
<div class="clr"></div>
<div class="fl clm">4.) Gaba <%--Section 4--%>:&nbsp;<b><asp:Literal ID="LtrDivFSec4Score" runat="server"></asp:Literal></b></div>
<div class="fl clm">5.) L-Acetylcholine <%--Section 5--%>:&nbsp;<b><asp:Literal ID="LtrDivFSec5Score" runat="server"></asp:Literal></b></div>
</div>
<br />
<br />
<h4>
Any Additional Information</h4>
<br />
<asp:Literal ID="LtrAddInfo" runat="server"></asp:Literal>
<br />
<br />
</div>
<%--Cover Report - End--%>
<%--<div class="pagebreak">&nbsp;</div>--%> <%--not of use bcoz cover report will not be shown to customer now...--%>
<%--Detailed Report - Start--%>
<h5>
Personal Detailed Report of Finding Prepared Exclusively For:</h5>
<br />
<u><b>PATIENT INFORMATION</b></u>
<br />
<br />
<b>NAME:</b>&nbsp;<asp:Literal ID="LtrName" runat="server"></asp:Literal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>DATE
& TIME:</b>&nbsp;<asp:Literal ID="LtrDate" runat="server"></asp:Literal>
<br />
<br />
True science is based on cause and effect. This report is based on the science of symptomatology which connects your personal symptoms 
and present state of health to nutritional deficiencies. We believe that our Creator designed the human body for high level wellness. 
Every bodily symptom can be traced to a nutritional deficiency and every named medical condition is the end result of a long term nutritional 
deficiency, either ignored or worse suppressed with a drug.
<br /><br />
Abunda Life&#39;s 21st century computerized symptom analysis is a time tested, proven and efficacious individual nutritional assessment and 
educational tool for both the patient and busy doctor. It was designed as a stand alone presentation of your personal nutritional state even 
if laboratory diagnostics was not available.
<br /><br />
The Abunda Life clinic&#39;s total evaluation includes comprehensive laboratory diagnostics of blood, urine, saliva, hair and iridology all cross 
correlated with the naturopathic doctors 1001 symptom questions. All these difficult tests are incorporated into one master program based on 
your individual bio-chemistry.
<br /><br />
The American Medical Association has stated that 80% of all doctors office visits in the U.S. are for complaints and conditions for which there 
is no valid or effective medical treatment. We believe that it is these vague medically non-treatable conditions that can best be served with 
nutritional and naturopathic care.
<br /><br />
Natural food based nutritional saturation therapy and other naturopathic modalities over the last six decades have proven to be a very 
effective, sensible and cost efficient approach to health care when compared to the orthodox drub medicine model. Best of all, unlike 
pharmaceuticals they are 100% safe, zero deaths have been attributed to national food based nutritional therapy. This type of evaluation is able 
to accurately detect and address nutritional deficiencies at their very earliest inception, long before they develop into named medical conditions.
<br /><br />
Our true scientists tell us that most of our modern day diseases are preventable. Degenerate diseases including sudden death heart attack, 
crippling stroke, life debilitation, chronic fatigue syndrome, terrifying Alzheimer&#39;s and cancer take many years, even decades to develop into a 
full blown diagnosis.
<br /><br />
Abunda Life&#39;s naturopathic and nutritional evaluation services enable you to uncover your exact nutrition, metabolic and hormonal deficiencies 
and propensities far in advance of serious medical conditions, long before the enemy can gain a foothold.
<br /><br />
Your personal report of finding represents the most comprehensive program for nutritional purposes developed to date. The program is based on 
the latest scientific break through in laboratory diagnosis all cross correlated with your personal input of over 4,000 potential symptoms.
<br /><br />
Abunda Life&#39;s transcendental goal in developing this program is to guide the sincere subscriber of the Abunda Life Natural Healing Philosophy 
to build an indestructible immune system, achieve and maintain an ideal body fat weight, develop indefatigable physical and mental energy, 
control stress, become substance free and prevent rapid and premature aging with its related degenerative diseases that our true scientists 
tell us are preventable.<br /><br />
We believe that nutritional optimization can help the subscriber of the Abunda Life Natural Healing Philosophy achieves this goal.
<br />
<br />
<asp:Literal ID="LtrGraph" runat="server"></asp:Literal>
<br />
Based on a combination of laboratory diagnostics – Symptomology, Iridology and Your
Naturopathic Blood results.
<br />
<br />
<%--<h4>Division A</h4><br />--%>
<h5>
Calcium <%--Section 1--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection1Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection1Result" runat="server" Text="Your Test results indicate your Calcium Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in calcium are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Difficult thinking, sighing, listless, complaining, muscle, cramps, leg cramps,
– hip and/or back pain, toe cramps, nervous, high strung, irritable, nervous habits,
hyperactive. aching joints, carpal tunnel, brittle nails, kidney stones, bells palsy,
twitches, convulsions, arthritis symptoms, spastic colon and/or stomach colitis,
cavities, tooth decay, loose teeth, dental filling, crowded teeth, excessive saliva,
menstrual pains/cramps, PMS, osteoporosis, soft bones, afternoon headaches, insomnia,
slow knitting scars, heart palpitations, enlarged heart, high blood pressure, fibromyalgia,
panic attacks, discourage easily, anxiety, lack of courage, lack of will, indecisive.
<br />
<br />
<b>Nutrient - Calcium</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Sesame seeds, kelp, Irish moss, collard leaves, kale, turnip leaks, almonds,
filberts, raw milk, yogurt, caviar, raw cheese, cottage cheese, broccoli, tofu, 
sardines, salmon, goats milk, figs, oranges, sunflower seeds, black strap 
molasses, anchovies. Brussels sprouts, buttermilk, carob, dandelion greens<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Calcium<br />
Cal/Mag Powder<br />
Calcium Broth<br />
Irish Moss/Kelp<br />
Kale Juice<br />
Ionic Liquid Baron
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Sea Cal</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Okinawan Longevity Formula</td>
<td>4 X 3</td>
</tr>
<tr>
<td>57 Super Minerals</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Vitamin D 3</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Absorption Enhancer</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Nerve Builder</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Silicon</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Catalyst</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Calcium Orotate</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Bone Teeth and Nail Formula</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Goats Whey</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Chromium <%--Section 2--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection2Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection2Result" runat="server" Text="Your Test results indicate your Chromium Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in chromium are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
History of Diabetes, hypoglycemia, sugar addiction, sweet craving, high or low triglycerides,
gains weight after eating starch, undue fatigue, moody, easily angered, episodes
of shakiness and/or tremors, manic depression, bi-polar, emotional instability,
blurred vision, nausea.
<br />
<br />
<b>Nutrient - Chromium</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Super yeast, organic calf liver, organic beef, organic eggs, black strap 	  	     
molasses, sweet potatoes, tomatoes, whole grain products, raw cheese, 	   	     
apples, corn on the cob, brown rice, potato skins, raw wheat germ, raw 	   	     
wheat germ oil, mushrooms, broccoli, spinach, yams<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Chromium<br />
Ionic Liquid Blood Sugar Formula<br />
Broccoli Juice Powder<br />
Black Strap Powder<br />
Cold Pressed Wheat Germ Oil<br />
Yam Juice Powder<br />
Nutritional Yeast<br />
G.T.F. Powder<br />
Tigers Food
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chromium Picolonate</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Blood Sugar and Cortisol Control</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Mega B complex 1000</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Gymnema Sylvestre</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Blood Sugar and Energy Stabilizer</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Copper <%--Section 3--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection3Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection3Result" runat="server" Text="Your Test results indicate your Copper Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in copper are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
History of anemia, forgetfulness, thyroid problems, mal-absorption, require extra
vitamin C, loss of skin pigmentation, bitter mouth taste, history of parasites,
fungus, yeast overgrowth, Candida, skin rashes, history of low blood pressure or
anemia.
<br />
<br />
<b>Nutrient - Copper</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Organic raisins, juice, black strap molasses, unsulfured prunes, lentils, 	  	     
cherry&#39;s, mushrooms, potato skins, free range eggs, organic beef, leafy 
greens, avocado&#39;s, clean fish, legumes, oranges, calf&#39;s liver, oats, raw 	 	     
peanuts, Alaskan Salmon, soybeans, leeks, garlic, artichoke, parsley, 	 	     
rutabaga
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Copper<br />
Ionic Liquid Anti Anemia<br />
Black Strap Powder<br />
Avocado Juice Powder<br />
Spinach Juice Powder<br />
Black Powder<br />
Raisin Juice<br />
Artichoke Juice Powder<br />
Potato Juice Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>57 super Minerals</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Chinese Garlic Oil</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Alfalfa Juice</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Anti Anemia Complex</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Anti Fatigue</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Iodine <%--Section 4--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection4Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection4Result" runat="server" Text="Your Test results indicate your Iodine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in iodine are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Gain weight easily, lose weight slowly, puffy face and/or body constipation (less
than a BM for each meal), hair loss, chronic skin problems, can&#39;t stand moisture
or humidity, dry scaly skin, puffy face and/or body, high strung, head ache, history
of allergies, stuffy nose, sinuses, bronchitis, pneumonia, ear infections, strep
throat high cholesterol, thyroid problems, cold feeling, cold hands and/or feet,
memory problems. difficulty putting muscle weight on cystic breast, cystic ovaries,
PMS, heavy bleeding menstruation, slow movement, slow thinking, brain fog, can&#39;t
get words out on time, listless.
<br />
<br />
<b>Nutrient - Iodine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Kelp, dulse, agar, Swiss chard, raw milk, super yeast, salmon, cod, 	 	  	     
haddock, herring, super salt<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Iodine<br />
Ionic Liquid Thyroid Formula<br />
Irish Moss/Kelp<br />
Thyroid Broth<br />
Super Salt<br />
Sea Vegetable Tonic<br />
Raisin Juice Tonic
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Sea Life</td>
<td>1 X 3</td>
</tr>
<tr>
<td>1-Thyroid T3/T3 Nutritional Support Factors</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Thyroid Nutritional Support Factors</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Revitalizer </td>
<td>1 X 3</td>
</tr>
<tr>
<td>Shiu Chu Root</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Nature&#39;s Thyroid (Prescription Item)</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Super Juice 24 Vegetables</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Oriental Regeneration Tonic</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Adrenal Hormone Restoration Factors	</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Iron <%--Section 5--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection5Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection5Result" runat="server" Text="Your Test results indicate your Iron Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in iron are often predisposed to and/or possibly experience some
of the following symptoms:
<br />
<br />
Dizziness, light headed, spots before your eyes after sudden movement, pale skin,
chronic headaches, shortness of breath, craving for ice or cold drinks, pains in
heel and/or soles of feet, burning feet. heavy menstruation, hard to please emotionally
or mentally, rapid heart beat with minimum of exertion, inflamed and/or sore tongue,
tingling in fingers or toes, stinging pain in head, picky eater, lack of appetite,
inability to focus and/or concentrate. history of anemia.
<br />
<br />
<b>Nutrient - Iron</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Dulse, kelp,  rice bran, wheat bran, pumpkin seeds, sesame seeds, raw 	  	     
wheat germ, Irish moss, free range organic eggs, black strap, organic 	  	     
meat, sea vegetables, whole grains organic liver, lentils, garbanzo beans<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Iron<br />
Ionic Liquid Anti Anemia Formula<br />
Ionic Liquid Anti Fatigue Formula<br />
Blood Building Tonic<br />
Blood Building Broth<br />
Red Blood Building Factors<br />
Irish Moss/Kelp<br />
Black Strap Powder<br />
Super Green<br />
Beet Juice Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Anti Anemia Complex</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega Dose Cobolamin</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Anemia Nutritional Support</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Mega Dose Folic Acid</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Animation of Life</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Blood Builder</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Exotic Asian Fruit</td>
<td>1 X 3</td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Duo C Complex</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Magnesium <%--Section 6--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection6Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection6Result" runat="server" Text="Your Test results indicate your Magnesium Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in magnesium are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Myocardial infarction, Insomnia, excess body odor, hyper-tension, rapid heartbeat,
heart disease, irregular heartbeat, arrhythmia, history of kidney stone, gall stones,
sluggish colon, chronic arthritis, chronic pain, intestinal gas, fibromyalgia, aching
neck and/or shoulder, irritable bowel syndrome, spastic colon, colitis, chilly after
retiring, allergies to wool, easily irritated, uncontrolled sweating, burning sensation
in mouth, noise sensitive, restless leg syndrome, repeated tapping of hands and/or
feet, lack of muscular coordination, muscle twitching, back ache, muscle cramps/spasms,
tooth ache when nothing is wrong, heart palpitations, easily weakened by stress,
fears, anxiety, apprehension, grief, depression.
<br />
<br />
<b>Nutrient - Magnesium</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Kelp, raw wheat germ, wheat bran, almonds, cashews, soybean, cow 	  	     
pea&#39;s, brazil nuts, peanuts, black walnut, filbert, sesame seed, lima beans, 	  	     
millet, cod, herring,  mackerel, black strap, ocean perch, figs, tofu, 	   	  	     
apricots, banana&#39;s, raw milk, raw goats milk, yogurt <br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Magnesium<br />
Cal/Mag Powder<br />
Magnesium Broth<br />
Goats Whey<br />
Black Strap<br />
Pea Juice Powder<br />
Irish Moss/Kelp<br />
Sea Vegetable Tonic
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Catalyst</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>57 Super Minerals</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Nerve Builder</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Okinawan Longevity Formula</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Vitamin D 3</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Manganese <%--Section 7--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection7Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection7Result" runat="server" Text="Your Test results indicate your Manganese Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in manganese are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Irritability, nervousness, confusion, brain dysfunction, depression, desire to be
left alone, dislike for children, mental disagreement to almost every statement,
crying spells, stuttering, tooth grinding, convulsions, tremors, stiff tendons,
gout, carpel tunnel, glands swell easily, hearing difficulties, tendonitis, red
and/or swollen eyes, nipple tenderness, fallen and/or protruding womb, creaking
and/or clicking of joints, arthritis, joint pain, sprains or injury of joints, gripping
sensation in limbs and/or body bone loss, brittle teeth, low serum protein, globulin,
albumin, chronic knee, hip, ankle pains.
<br />
<br />
<b>Nutrient - Manganese</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Raw wheat germ oil, cold pressed wheat germ, whole grain breads, green 	     
leaves, pea&#39;s, beets, egg yolks, sunflower seeds, cold pressed sunflower 	  	     
seed oil, blueberries, blackberries, bran, buckwheat, carrots, chestnuts, 	  	     
hazelnuts, oatmeal, pecans, filberts, sea vegetables, sea weed, spinach, 	 	     
green tea, raspberries, broccoli, pineapples, legumes, avocado&#39;s kelp. <br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Manganese<br />
Sea Vegetable Juice Tonic<br />
Abunda Vim<br />
Beet Juice Powder<br />
Carrot Juice Powder<br />
Spinach Juice Powder<br />
Super Green
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Coordination</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>57 Super Minerals</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Juice 24 Vegetables</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Catalyst</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Phosphorus <%--Section 8--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection8Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection8Result" runat="server" Text="Your Test results indicate your Phosphorus Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in phosphorous are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Loss of muscle tone, hardened ear wax, afraid of tomorrow, low red blood count,
low hemoglobin, need for glasses – (not stigmatism).
<br />
<br />
<b>Nutrient - Phosphorous</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Rice bran, wheat bran, pumpkin seeds, squash seeds, raw wheat germ, 	  	     
cold pressed wheat germ oil, rice polish, sunflower seeds, brazil nuts, 	 	     
cold pressed safflower oil, sesame seeds, black walnuts, soybeans, 	  	  	     
almonds, pistachio&#39;s, coconut, calf liver, eggs, fish, milk products, 	 	 	     
poultry, red meat, sardines, tuna<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Super Oil<br />
Coconut Cream Powder<br />
Abunda Vim<br />
Phosphatyl Choline 
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Phosphatidyl Choline</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Lipotropic Factors</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Lignin</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Fat Emulsifier</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Normalizer</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Wheat Germ Oil</td>
<td>1 X 3</td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Sargent Strong</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Potassium <%--Section 9--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection9Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection9Result" runat="server" Text="Your Test results indicate your Potassium Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in potassium are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Acne, itchy skin, swollen glands, nausea, edema, thirsty, chills, fluid retention,
muscle twitches, tendency towards blisters, muscle cramps, ankle swelling, salt
retention, kidney problems, low blood pressure, slow heart beat, metabolic acidosis,
acid urine, acid blood, electrolyte imbalance, highly toxic, liver sluggishness,
repeated low grade infection, high blood pressure, rapid heart beat, angina.
<br />
<br />
<b>Nutrient - Potassium</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Dulse, kelp, Irish moss, soybean, lima bean, rice bran, banana, hot red 	  	     
pepper, dried beans, dried unsulfured apricot, prune, coconut, watercress, 	 	     
avocado, filberts, rice, parsley, raisin, almond, asparagus, cantaloupe, 	  	     
carrots, Swiss chard, grapefruit, tomato, orange, spinach, parsnips, dairy 	 	     
products, fish, mushrooms, broccoli, Brussels sprouts<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Potassium<br />
Coconut Cream Powder<br />
Black Strap<br />	
Organic Bean Powder<br />
Super Salt<br />	
Unsulfured Prune/Fig Powder<br />
Irish Moss/Kelp<br />
Watercress Juice Powder<br />
Potassium Broth<br />
Spinach Juice Powder<br />
Naturopathic Purification Powder<br />
Sea Vegetable Juice Tonic
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Potassium Orotate</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>57 Super Minerals</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Juice 24 Vegetables</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Sea Life</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Silicon <%--Section 10--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection10Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection10Result" runat="server" Text="Your Test results indicate your Silicon Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in silicon are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Hair thinning or falling out, brittle hair, boils, psoriasis, dermatitis, itchy
eyes, highly toxic condition, premature aging, nervous exhaustion, weak and/or swelling
joints and/or ligaments, ear discharge, ulcerated tongue or lip, parched finger
nails, brittle nails, slow wound healing, teeth sensitive to cold, dry flaky skin,
drug addiction.
<br />
<br />
<b>Nutrient - Silicon</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Boston bob lettuce, iceberg lettuce, parsnip, asparagus, dandelion, rice 	 	     
bran, raw horseradish, onion, spinach, cucumber, strawberries, leek, 	   	     
Savoy cabbage, sunflower seeds, artichoke, Swish chard, pumpkin, 	 	     
celery, rhubarb, cherry&#39;s tomato, carrot<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Spinach Juice Powder<br />
Jerusalem Artichoke Juice Powder<br />
Super Greens<br />
Alfalfa Juice Powder<br />
Blue/Green Algae<br />
Celery Juice Powder<br />
Asparagus Juice Powder<br />
Cabbage Juice Powder<br />
Samson&#39;s Meal
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Silica</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Shavegrass/Horsetail</td>
<td>1 X 3</td>
</tr>
<tr>
<td>57 Super Minerals</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Alfalfa Juice</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Juice 24 Vegetables</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Goats Whey</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Bio Organic Sodium <%--Section 11--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection11Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection11Result" runat="server" Text="Your Test results indicate your Bio Organic Sodium Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in bio organic sodium are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
History of sunstroke, heat exhaustion, dehydration, dry tongue, salt craving, stomach
problems, digestive disorders, mal-absorption, colon toxicity, constipation (less
than a bowel movement for each meal), joint stiffness, low serum platelets, low
sodium, low electrolytes, protein foods cause gas, heart palpitations, eyeglasses
need to be changed often, low blood pressure, hay fever, vomiting, nauseated, diarrhea,
loss of appetite, sourness of digestive tract, foul breath, memory loss, physical
apathy, loss of smell, excess perspiration, acidosis, autointoxication, use of diuretics,
bloating.
<br />
<br />
<b>Nutrient - Bio Organic Sodium</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Kelp, Irish moss, raw goat milk, goat yogurt, goat&#39;s whey, dulse, ripe 	 	     
olives, hot red pepper, celery, beet greens, Swiss chard, horseradish, 	 	     
dandelion, kale, spinach, beets, watercress, parsley<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Liquid Electrolyte Formula<br />
Irish Moss/Kelp<br />
Jerusalem Artichoke Juice Powder<br />
Celery Juice Powder<br />
Watercress Juice Powder<br />
Queen Bee Milk<br />
Super Salt<br />
Sea Vegetable Juice Tonic<br />
Beet Juice Powder<br />
Naturopathic Purification Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Sea Life</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Celtic Sea Vegetable Formula</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Dandelion Root</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Stomach Restoration Formula</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Silicon</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>5 Alive Vegetable Juice</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Goats Whey</td>
<td>1 X 3</td>
</tr>
<tr>
<td>South Pacific Spirulina</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Sulfur <%--Section 12--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection12Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection12Result" runat="server" Text="Your Test results indicate your Sulfur Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in sulfur are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
History of allergies, respiratory congestion/inflammation, toxic condition, migraines,
nerve disorders, difficulties speaking and/or speaking voice gives out easily, itching
skin, acne, dry skin, skin discharges, desire to massage and/or knead the muscles
of arms and legs, muscle cramping, infection prone, joint pain, connective tissue
pain and/or inflammation, sports injury, arthritis, bone disorders, back ache, stress,
tension, worry, anxiety, uptight, unhappy, joyless, moodiness, acid stomach, acid
reflux, slow recuperation after exercise, illness, or overwork, urinary tract disorder,
over alkaline urine, saliva, or blood.
<br />
<br />
<b>Nutrient - Sulfur</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Kale, watercress, Brussels sprouts, horseradish, cabbage, cranberry, duck, 	     
snap beans, turnips, turnip greens, cauliflower, raspberry, spinach, Savoy 	  	     
red cabbage, kelp, parsnip, leek, kohlrabi, radish, okra, cucumber, Swiss 	 	     
chard, lettuce, eggs, fish, garlic, beef, milk, wheat germ, poultry<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Sulfur<br />
Watercress Juice Powder<br />
Kale Juice Powder<br />
Cabbage Juice Powder<br />
Naturopathic Purification Powder<br />
Cauliflower Juice Powder<br />
M. S. M.
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Organic Sulfur</td>
<td>1 X 3</td>
</tr>
<tr>
<td>N-Acetyl Cysteine Cellular Detoxifier</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chinese Garlic Oil</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Sea Life</td>
<td>4 X 3</td>
</tr>
<tr>
<td>M. S. M.</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Oregano Oil Extract</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Connective tissue Nutritional Support</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Zinc <%--Section 13--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection13Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection13Result" runat="server" Text="Your Test results indicate your Zinc Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in zinc are often predisposed to and/or possibly experience some
of the following symptoms:
<br />
<br />
Prostate problems, infertility, stillbirth, impotency, low sperm count, low sex
drive, erectile dysfunction, slow wound healing, slow hair growth, slow nail growing,
acne, dermatitis, stretch marks, sun induced rashes, sunburn easily, canker sores,
loss of smell or taste, lack of appetite, body odor, oral ulceration, weak immune
system, reoccurring ear infections, susceptibility to colds or flu, reoccurring
urinary tract infection, Candida, white spots on nails, slow growth, delayed sexual
maturity, pancreatic disorders, thyroid disorders.
<br />
<br />
<b>Nutrient - Zinc</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Raw Wheat Germ, beans, beef liver, spinach, pea&#39;s, nutritional yeast, 	 	     
kelp, wheat bran, whole grains, pumpkin seeds, beef, chicken heart, eggs, 	     
fish, herring, lamb, black strap, sesame seeds, soy beans, sunflower 	 	     
seeds, turkey<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Zinc<br />
Spinach Juice Powder<br />
Samson&#39;s Meal<br />
Abunda Vim<br />
Nutritional Yeast<br />
Black Strap<br />
Zinc Broth<br />
Sea Vegetable Juice Tonic
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Nature&#39;s Healer</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Astragalus Chinese Immune Builder</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Wheat Germ Oil</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Vegetarian Animation of Life</td>
<td>1 X 3</td>
</tr>
<tr>
<td>57 Super Minerals</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Dyna Cell</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Juice 24 Vegetables</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Immune Power Booster</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Digestive Enzymes/Hypochlorhydria <%--Section 14--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection14Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection14Result" runat="server" Text="Your Test results indicate your Digestive Enzymes/Hypochlorhydria Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>digestive enzymes/hypochlorhydria</b> are often predisposed
to and/or possibly experience some of the following symptoms:
<br />
<br />
Indigestion, excess gas, periods of constipation alternating with diarrhea, constipation
(less than a BM for each meal), poorly formed stools, pale or gray floating stools,
bloated, super bloated after meals, sour stomach, bad breath, colitis, spastic colon,
irritable bowel syndrome, diarrhea, undigested food particles in stool, stomach
or intestinal pain after eating, history of overeating, history of being treated
for anemia or other nutritional deficiencies, history of diabetes or hypoglycemia,
history of sluggish digestion, feeling that food is not digesting fast enough, vitamins
or pills in stool, tired after eating, white coated tongue.
<br />
<br />
<b>Nutrient - Digestive Enzymes Hypochlorhydria</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Ripe papaya, ripe pineapple, crude apple cider vinegar, raw sauerkraut, 	  	     
raw sauerkraut juice, raw vegetable juices<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Bio-Ox<br />
Liquid Enzymes<br />
Celery Juice<br />
Cabbage Juice	
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Absorption Enhancer</td>
<td>1 X 3</td>
</tr>
<tr>
<td>After Meals Digestive Chews</td>
<td>2 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Pancreatin</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Bromeline</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Sam-E</td>
<td>1 X 1</td>
</tr>
<tr>
<td>Crude Apple Cider Vinegar</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Enzyme Therapy Formula</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Herbal Digestant</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Mega Dolpholus</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Lata  (?)</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Protein/Amino Acids <%--Section 15--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection15Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection15Result" runat="server" Text="Your Test results indicate your Protein/Amino Acids Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>protein/amino acids</b> are often predisposed to and/or
possibly experience some of the following symptoms:
<br />
<br />
Brittle hair, slow hair growth, brittle nails, slow nail growth - splitting nails,
soft nails, cataracts, red lines in eyes, mood swings, nervousness, agitation, grouchy,
diminished ability to handle stress, inability to recall dreams, insomnia, difficulty
losing fat weight, muscular weakness, chronic fatigue, anemia, feeling overall weakness,
low serum, bun, albumin, globulin, protein, hormone levels, difficulty digesting
meat, history of hypoglycemia, diabetes, alcoholism, pancreatitis, slow cut, burn
or wound healing, sore muscles, slow recovery after exercise or illness, difficulty
putting on muscle weight, anxiety, depression, panic attacks, digestive disturbances,
susceptibility to infection.
<br />
<br />
<b>Nutrient - Protein Amino Acid</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Coconut cream, fish, beef, eggs, chicken, turkey, lamb, buffalo, brazil 	  	     
nuts, Soy, pumpkin seed, cashew, sesame seed, sunflower seed, raw goat 	 	     
milk, almond, goat yogurt, walnuts, raw goat cheese, cottage cheese, 	 	     
ricotta, raw milk cheese, tofu<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Super Food<br />
28 Super Amino Acids<br />
Coconut Cream Powder<br />
90% Whey Protein<br />
80% Soy Protein<br />
South Pacific Spirulina<br />
Abunda Meal
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Pancreatin</td>
<td>1 X 3</td>
</tr>
<tr>
<td>L-Arginine Complex</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Glutimine</td>
<td>4 X 3</td>
</tr>
<tr>
<td>After Meal Digestive Chews</td>
<td>1 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Absorption Enhancer</td>
<td>1 X 3</td>
</tr>
<tr>
<td>L-Carnitine</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Muscle Builder</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 1</td>
</tr>
<tr>
<td>Bromeline</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Acetyl L-Carnitine</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Vitamin B Complex <%--Section 16--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection16Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection16Result" runat="server" Text="Your Test results indicate your Vitamin B Complex Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>vitamin B complex</b> are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
Anxiety, rapid personality change, depression, mood swings, cracks in corner of
mouth, sore tongue and/or mouth, sugar addiction, sensitivity or intolerance, blurred
vision, dry burning and/or itching eyes, feeling of sand in eyes, chronic fatigue,
dizziness, muscular weight loss, eczema, dandruff, dry skin patches, rough skin,
sleep apnea, insomnia, painful tongue, red or blue tongue, burning tongue or swollen
tongue, tongue trenches, agitation, irritability, anger, nervousness, junk food
and/or sugar cravings or addiction, mental dullness, poor concentration, attention
deficit, nausea, vomiting, eye fatigue, eye twitches, muscular degeneration, near
sightedness, cataracts, constant rubbing eyes, confusion, fear of unknown origin,
paranoia, phobias, MSG sensitive, dark circles under eyes, vulnerability to insect
bites, compulsive behavior, emotional/mental instability, crying spells, jumpiness,
shakiness, hypochlorhydria, stomach distension after eating, dryness and/or scaling
behind ears, burning feet and/or heels, chapped lips, seborrhea, dermatitis, feeling
overwhelmed, convulsions, epilepsy, dry hair, loss of texture or shine of hair,
too oily hair.
<br />
<br />
<b>Nutrient - Vitamin B Complex</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Rice bran, raw wheat germ, rice polish, liver, red meat, blue cheese, 	 	     
avocado&#39;s, salmon, soy beans, turkey, raw peanut butter, nutritional yeast, 	     
sprouts, beans sesame seeds, brazil nut, whole grains<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Black Strap<br />
Abunda Meal<br />
Nutritional Yeast<br />		
Samson&#39;s Meal
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Sargent Strong</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 1</td>
</tr>
<tr>
<td>Mega Cobolimin</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Stress and Toxin Protector</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Nature&#39;s Flush</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Nutritional Metabolizer</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Red Cell Builder</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Nutritional Yeast</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Thiamin (vitamin B1) <%--Section 17--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection17Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection17Result" runat="server" Text="Your Test results indicate your Thiamin Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>thiamin (vitamin B1)</b> are often predisposed to and/or
possibly experience some of the following symptoms:
<br />
<br />
Attention deficit, mental dullness, inability to focus, short attention span, history
of alcoholism, listlessness, craving for sweets, feeling of impending doom, feeling
you would like to cry, high blood pressure, irregular heartbeat, rapid pulse, undue
fatigue, loss of moral and/on animation for life, loss of sense of humor, nerves
on edge.
<br />
<br />
<b>Nutrient -  Thiamine, Vitamin B 1</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Beef kidneys, beef liver, cream of  rye, garbanzo beans, chick pea&#39;s, 	 	     
kidney beans, navy beans, oranges, raw peanut butter, pea&#39;s, raisins, 	 	     
brown rice, whole grains, raw wheat germ, millet, lima beans<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Organic Bean Powder<br />
Blood Building Tonic<br />
Blood Building Broth<br />
Coconut Cream Powder<br />
Abunda Vim<br />
Super Green<br />
Nutritional Yeast	
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega Thiamine</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Sargent Strong</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Riboflavin (vitamin B2) <%--Section 18--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection18Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection18Result" runat="server" Text="Your Test results indicate your Riboflavin Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>riboflavin (vitamin B2)</b> are often predisposed to and/or
possibly experience some of the following symptoms:
<br />
<br />
Dandruff, dermatitis, brown blotches of skin, feeling like sand is in the eyes,
blurred vision, acne, cataracts, eyes tear spontaneously, blood shot eyes, conjunctivitis,
eye twitches, cracks in corner of eye, chronic sinus problems, facial white heads,
greasy facial skin, oily hair, itchy genitals.
<br />
<br />
<b>Nutrient -  Riboflavin, Vitamin B 2</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Hot red pepper, capsicum, almonds, raw wheat germ, cold pressed wheat 	 	     	     
germ oil, wild rice, mushrooms, sunflower seeds, turnip greens, chestnuts, 
millet, wheat bran, kelp, bananas, beef liver, raw milk, raw cheese, eggs, 	 	     	     
oat bran, oat grouts, Irish oat meal, tuna<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Abunda Vim<br />
Abunda Meal<br />
Naturopathic Purification Powder<br />
Samson&#39;s Meal<br />
Mushroom Extract Powder<br />
Nutritional Yeast<br />
Beet Juice
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Riboflavin</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Niacin (vitamin B3) <%--Section 19--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection19Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection19Result" runat="server" Text="Your Test results indicate your Niacin Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>niacin (vitamin B3)</b> are often predisposed to and/or
possibly experience some of the following symptoms:
<br />
<br />
History of anxiety, irritability, manic depression, schizophrenia, history of recreation
drug use, emotional instability, psychotic behavior, poor thinking, psychosis, nervous
disorder, senility, dementia, memory loss, high cholesterol, thyroid problems, chronic
headaches, exposed to x-rays, burning mouth or throat, red tongue.
<br />
<br />
<b>Nutrient -  Niacin, Vitamin B 3</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Rice bran, rice polish, wheat bran, capsicum, beef liver, chicken, dried 	 	     
pea&#39;s, halibut, dried beans, raw peanut butter, potato skins, salmon, tuna, 	 	     
turkey<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Abunda Meal<br />
Samson&#39;s Meal<br />
Nutritional Yeast<br />
Organic Bean Powder<br />
Pea Juice Powder<br />
Beet Juice Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Nature&#39;s Flush</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Sargent Strong</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Vitamin A <%--Section 20--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection20Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection20Result" runat="server" Text="Your Test results indicate your Vitamin A Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>vitamin A</b> are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
Susceptibility to infections, sore nose, lungs, throat, ear aches, colds, flu, sinusitis,
calluses, corns, history of skin cancer, hoarseness, dry cough, night blindness,
conjunctivitis, redness in eyes, dry eye, eye cysts, eye inflammation, intolerance
of bright lights, eye strain, impaired vision, itching eyes, burning eyes, difficulty
reading fine print, eye fatigue.
<br />
<br />
<b>Nutrient -  Vitamin A</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Capsicum, hot red pepper, lamb, dandelion greens, carrot, dried 	  	   	     
unsulfured apricots, kale, spinach, sweet potato, parsley, turnip greens, 	 	     
alfalfa, mustard greens, beet greens, watercress, squash, broccoli, cream 	  	     
cheese, onions, butter, dried prunes, unsulfured tomato, asparagus, 	 	   	     
endive, kale, leaf lettuce, liver, raw milk, raw cheese<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Carrot Juice Powder<br />
Yam Juice Powder<br />
Coconut Cream Powder<br />
Alfalfa Juice Powder<br />
Spinach Juice Powder<br />
Naturopathic Purification Powder<br />
Watercress Juice Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Norwegian Vitamin A</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Beta Carotene</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Salmon Oil</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Nature&#39;s 30 Nutrients</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Juice 22 Vegetables</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Alfalfa juice Powder</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Capsicum</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Pyridoxine (vitamin B6) <%--Section 21--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection21Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection21Result" runat="server" Text="Your Test results indicate your Pyridoxine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>pyridoxine (vitamin B6)</b> are often predisposed to and/or
possibly experience some of the following symptoms:
<br />
<br />
Prone to motion sickness, nausea, vomiting, vaginal inflammation, low blood pressure,
dizziness, hands and/or feet sweating, sore tip of tongue, tongue ulceration, fluid
retention, ear noises, skin cracks open easily, chapped lips, MSG sensitive, history
of M.S., M.D., Parkinson&#39;s, convulsions, epilepsy, brain injury, brain, neurological
or nerve disorders.
<br />
<br />
<b>Nutrient -  Pyridoxine, Vitamin B 6</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Nutritional yeast, raw wheat germ, wheat bran, black strap, eggs, liver, 	  	     
red meat, raw milk, raw cheese, almonds, carrots, kale, okra, spinach, 	 	     
watercress, cabbage, tomato&#39;s, sauerkraut, pea&#39;s, mushrooms, tuna, lentils, 	     
potato skins, salmon, soy beans, sunflower seeds, hazelnuts<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Nutritional Yeast<br />
Black Strap<br />
Defatted Peanut Butter Protein Powder<br />
Tigers Food<br />
Blood Building Broth<br />
Abunda Vim<br />
Abunda Meal<br />
Samson&#39;s Meal<br />
Spinach Juice Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Nutritional Insulin Balancer</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Pyridoxine</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Sargent Strong</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Dyna Cell</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Cobalamin (Vitamin B12) <%--Section 22--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection22Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection22Result" runat="server" Text="Your Test results indicate your Cobalamin Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>cobalamin (vitamin B12)</b> are often predisposed to and/or
possibly experience some of the following symptoms:
<br />
<br />
Extreme fatigue, nervous exhaustion, under performing thyroid, adrenal depletion,
asthma, anemia, muscle weight loss, lack of muscle tone, pale complexion, dark circles
under eyes, vegetarian, hives, eczema, dry scaly skin, menstrual problems, difficulty
walking, loss of balance, staggering, numbness or tingling of hands and feet, history
of anemia.
<br />
<br />
<b>Nutrient -  Cobalamin, Vitamin B 12</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Liver, red meat, eggs, flounder, herring, mackerel, raw milk, sardines, 	 	     	     
snapper, Swiss cheese, blue/green algae, spirulina, kidneys, raw cheese<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Blood Building Tonic<br />
Beet Juice Powder<br />
Tigers Food<br />
Blood Building Broth<br />
Blue/Green Algae<br />
Nutritional Yeast<br />
Celery Juice Powder<br />
Queen Bee Milk<br />
Cabbage Juice Powder<br />
Abunda Vim
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Red Blood Cell Builder</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Mega Dose Coalamin</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Anti Anemia Complex</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Vegetarian Blood Building Formula</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Animation of Life</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Green Gorilia</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Pangamic Acid (Vitamin B15) <%--Section 23--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection23Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection23Result" runat="server" Text="Your Test results indicate your Pangamic Acid Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>pangamic acid (vitamin B15)</b> are often predisposed to
and/or possibly experience some of the following symptoms:
<br />
<br />
History of cancer, alcoholism, smoking, gangrene, asthma, anemia, rheumatic heart
disease, angina pectoris, sclerosis of leg arteries, cellular oxygen deficiency,
low red blood cell count, hemoglobin, MCV, MCH, traumatic stress in last two years.
<br />
<br />
<b>Nutrient -  Pangamic Acid, Vitamin B 15</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Nutritional yeast, apricot seeds, almonds, sunflower seeds, pumpkin seeds, 	 	     
sesame seeds<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Nutritional Yeast<br />
Abunda Meal<br />
Samson&#39;s Meal
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Sargent Strong</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Dyna Cell</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Biotin <%--Section 24--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection24Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection24Result" runat="server" Text="Your Test results indicate your Biotin Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>biotin</b> are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
History of baldness, hardening of arteries, high triglycerides, high cholesterol,
diabetes, mental depression, high or low insulin, poor appetite, chronic fatigue,
chapped lips, essential fatty acid deficiency, poor muscle tone, muscular soreness
or pain, muscular atrophy, scales on scalp or skin, seborrhea, dry flaky skin, dermatitis,
sugar or sweet cravings, carbohydrate intolerance, dandruff, unmanageable hair,
hair loss.
<br />
<br />
<b>Nutrient -  Biotin</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Nutritional yeast, eggs, liver, raw milk, yogurt, fish, alfalfa, glandular 
meats, whole grains, green leafy vegetables, sprouts, black strap, rice
polish, fish, almonds, bananas, brown rice, bulgor wheat, butter, calf&#39;s 
liver lentils, chicken, walnuts, tuna, salmon, raw peanut butter, steel cut oats, 	  	     
mushrooms
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Tigers Food<br />
Nutritional Powder Yeast<br />
Black Strap<br />
Livebae Intestinal Powder<br />
Alfalfa Juice Powder<br />
Mushroom Extract<br />
Spinach Juice Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Paba/Biotin</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Dyna Cell</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Choline <%--Section 25--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection25Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection25Result" runat="server" Text="Your Test results indicate your Choline Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>choline</b> are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
High cholesterol, low iron, high triglycerides, obesity, excess body fat, dark yellow
urine, yellow tint to eyes, yellow skin, diabetes, anemia, history of heart disease/disorder,
arteriosclerosis, muscular dystrophy, cirrhosis of liver, hepatitis, fatty liver,
enlarged liver, sluggish liver, liver disorders.
<br />
<br />
<h5>
Inositol <%--Section 26--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection26Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection26Result" runat="server" Text="Your Test results indicate your Inositol Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>inositol</b> are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Difficulty digesting fat, gall bladder problems, gall bladder surgery, liver disease,
liver sluggishness, tired after eating, constipation (less than a BM after each
meal), high LDL cholesterol, high triglycerides, alcoholism, hypertension, heart
disease, stroke, angina, eye disorders, nerve disorders, M.S., C.P., M.D.
<br />
<br />
<b>Nutrient -  Inositol</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Liver, soybean, lecithin, oat grouts, Irish oat meal, black strap, 
cantaloupe, lima beans, oranges, raw wheat germ oil, nutritional yeast, 
grapefruit, sesame seeds, whole grain bread, raisins, cabbage<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Super Oil<br />
Abunda Vim<br />
Abunda Meal<br />
Blood Building Broth<br />
Nutritional Yeast<br />
Black Strap<br />
Samson&#39;s meal<br />
Cabbage Juice Powder	
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Lipotropic Factors</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Lignan</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Fat Emulsigyer</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Cholesterol/Triglycerides</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Folic Acid <%--Section 27--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection27Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection27Result" runat="server" Text="Your Test results indicate your Folic Acid Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>folic acid</b> are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
History of anemia, abnormal pap smears, cervical dysplasia and/or cancer, born with
birth defect or gave birth to a child with a birth defect, lack of resistance to
infections, pre-mature graying, falling eyelashes or eye brows, slow healing, G.I.
disorders, skin pigmentation, undue fatigue, anxiety, depression, mania, schizophrenia,
psychosis, mental illness, nervous breakdown, bleeding gums, receding gums, pyorrhea,
chronic gum infections, mouth sores, canker sores, cracks in corner of mouth, eyes,
nose, soreness or inflammation of tongue, ulcerated lips, sore throat.
<br />
<br />
<b>Nutrient -  Folic Acid</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Calf&#39;s liver, nutritional yeast, yogurt, eggs, soybeans, raw wheat germ 
oil, sprouts, mushrooms, kidneys, raw wheat germ, beets, bananas, beans, 	     
avocado&#39;s, asparagus, beans, Brussels sprouts, cabbage, cantaloupe, citrus 	     
fruits, endive, whole grains, garbanzo beans, lentils, green leafy vegetables
<br />
<br />
<%--<b>Naturopathic Food Medicines and Tonics :</b><br />
<br /><br />--%>
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega Dose Folic Acid Anti Anemia Support</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Mega Dose Cobolamin</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Vegetarian Animation of Life</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Sargent Strong</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Anti Fatigue</td>
<td>1 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Pantothenic Acid (Vitamin B5) <%--Section 28--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection28Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection28Result" runat="server" Text="Your Test results indicate your Pantothenic Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>Pantothenic acid (vitamin B5)</b> are often predisposed
to and/or possibly experience some of the following symptoms:
<br />
<br />
Inability to handle stress, feeling of being overwhelmed, vague abdominal pains,
pains in lower necks and upper back, restless leg syndrome, teeth grinding, clenching
of jaw, jumpiness, shakiness, adrenal exhaustion, slow recuperation, long term hypoglycemia,
low blood pressure, insomnia, anxiety, panic attacks, phobias, mood swings, agitation,
temper tantrums, quarrelsome, compulsive behavior, thyroid disorder, allergies,
sensitivity to chemicals and fumes, sore tip of tongue, lack of skin pigmentation,
burning sensations in feet, sleepiness during the day, fall asleep spontaneously,
light sensitivity, can&#39;t stand the noise, sleep apnea.
<br />
<br />
<b>Nutrient -  Panothenic Acid, Vitamin B 5</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Royal queen bee jelly, nutritional yeast, black strap, eggs, liver, cold 
pressed wheat germ oil, soybeans, raw wheat germ, raw milk, almonds,
carrots, kale, okra, spinach, watercress, apples, bananas, cabbage, 
celery, onions, tomatoes, mushrooms, asparagus, alfalfa, wheat grass, 
barley green, blue/green algae, cheddar cheese, kelp, sea vegetables, 
turnip greens
<br />
<br />
<%--<b>Naturopathic Food Medicines and Tonics :</b><br />
<br /><br />--%>
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega Pantothenic Acid</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Adrenal Hormone Restoration Factors</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Stress and Toxin Protector</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Royal Queen Bee Jelly</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Sargent Strong</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Bee hive Substances</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Dyna Cell</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Duo C Complex 1000</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Para- Amino Benzoic Acid(vitamin B5) <%--Section 29--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection29Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection29Result" runat="server" Text="Your Test results indicate your Para- Amino Benzoic Acid Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>para-aminobenzoic acid</b> are often predisposed to and/or
possibly experience some of the following symptoms:
<br />
<br />
Dermatitis, graying hair, loss of skin pigmentation, loss of hair, slow growing
hair, dry hair, dry skin, low serum, bun, albumin, globulin, calcium, creatine,
protein, iron, or red blood count, exhaustion, burning candle at both ends, thyroid
or para- thyroid disorders, can&#39;t handle anymore stress, insomnia, adrenal depletion,
burns easily in sun, sun sensitivity.
<br />
<br />
<b>Nutrient -  Para Amino Benzoic Acid (Paba)</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Eggs, black strap, cold pressed wheat germ oil, brown rice, nutritional 
yeast, raw wheat germ, whole grains, sunflower seeds, lecithin, yogurt, 	   	  	     
mushrooms
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Black Strap<br />
Super Oil<br />
Abunda Vim<br />
Samson&#39;s Meal<br />
Abunda Meal<br />
Nutritional Yeast<br />
Goat&#39;s Whey<br />
Mushroom Extract
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Paba/Biotin</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Alfalfa Juice	</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Vitamin C <%--Section 30--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection30Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection30Result" runat="server" Text="Your Test results indicate your Vitamin C Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>vitamin C</b> are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
Nervous exhaustion, undue fatigue, listlessness, apathy, low blood pressure, shortness
of breath, gastric ulcer, slow wound healing, blood in urine of stools, hay fever,
heavy metal toxicity, environmental illness, rheumatic fever, weak capillaries,
tiny red spots on skin, liver spots on skin, prone to infection, colds, flu, sore
throats, coughs, mucus, sinus problems, allergies, loose teeth, bleeding gums, soft/spongy
or swollen gums, purple gums, tooth tartar or plaque.
<br />
<br />
<b>Nutrient -  Vitamin C</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Acerola juice, acerola cherry, hot red pepper, guava, hot green pepper, 
sweet red pepper, black currant, kale, parsley, spinach, broccoli, 
horseradish, watercress, cauliflower, lemon, orange, pineapple, lime, 
grapefruit, watercress, cabbage, tangerines, tomatoes, strawberries,
rose hips, potato skins
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Super C Active<br />
Capsicum<br />
Naturopathic Purification Powder<br />
Watercress Juice Powder<br />
Cabbage Juice Powder<br />
Rose hip Bio Flavinoid Extract<br />
Tomato Juice Powder<br />
Spinach Juice Complex
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Duo C. Complex 1000</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Bio Flavinoid Extract</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Juice 22 Vegetables</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Vitamin D-3 <%--Section 31--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection31Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection31Result" runat="server" Text="Your Test results indicate your Vitamin D-3 Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>vitamin D-3</b> are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
History of bow legs, rickets, osteomalacia, TB, shatter disease, bone cancer, bone
and/or tooth structural deformity, pigeon breast, soft teeth, chipping or cracking
teeth, spinal curvature, scoliosis, gall stones, low serum calcium, phosphorous
or high serum calcium, low cholesterol, avoids sun exposure, insomnia, nervous,
excitability, irritable, susceptibility to dental cavities, aching teeth, twitching,
cramps, scoliosis, loss of muscle weight, muscle weakness, prone to infection, colds,
allergies, sinus problems, swollen joints, compromised immune system, cancer history.
<br />
<br />
<b>Nutrient -  Vitamin D-3</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Sunshine, eggs, egg yolk, butter, raw milk, fish liver oils, spinach, 
raw cream, tuna, salmon, peppers, tomatoes, cabbage, kelp, onions, 
garlic, Irish moss, watercress, herring, mackerel, sardines
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Coconut Cream Powder<br />
Spinach Juice Powder<br />
Super Green<br />
Irish Moss/Kelp<br />
Naturopathic Purification Powder<br />
Watercress Juice Powder	
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Vitamin D-3</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Okinawan Longevity Formula</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>57 Super Minerals</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Norwegian Vitamin A and D</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Salmon Oil</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Sea Cal</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Essential Fatty Acids (Vitamin F) <%--Section 32--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection32Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection32Result" runat="server" Text="Your Test results indicate your Essential Fatty Acids (Vitamin F) Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>essential fatty acids (vitamin F)</b> are often predisposed
to and/or possibly experience some of the following symptoms:
<br />
<br />
Dry or flaky skin, eczema, dermatitis, acne, psoriasis, chapped lips, dry or lifeless
hair, hair loss, oily hair, unmanageable hair, split ends, hot weather distresses,
general weakness, muscular weakness, tendency to over eat, history of asthma, emphysema,
stomach ulcers, colitis, prostate gland problems, hormonal imbalance, diabetes,
arthritis, senility, Crohn&#39;s disease, irritable bowel syndrome, cancer, infertility,
alcoholism, kidney and/or gall bladder, complaints, high serum cholesterol and/or
calcium, low serum iron or platelets, tendency to over eat, attention deficit, violent
behavior, memory loss, autism, mental retardation, anxiety, seizures, headache,
depression, hormonal deficiencies.
<br />
<br />
<b>Nutrient -  Essential Fatty Acid, (Vitamin F)</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Alaskan Salmon, cold pressed oils, flaxseed, sesame seeds, pumpkin 
seeds, sunflower seeds, coconut, almond, lecithin, egg yolk, soy,
avocado, sardines, fish oils, cashews, raw milk, raw cheese, nuts, cod 
liver oil, alfalfa, Irish moss
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Super Oil<br />
Samson&#39;s Meal<br />
Abunda Vim<br />
Abunda Meal<br />
Avocado Juice Powder<br />
Alfalfa Juice<br />
Irish Moss/Kelp<br />		
Super Green<br />
Coconut Cream Powder<br />
Queen Bee Milk
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Omega 3</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Flaxseed Oil</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Lignan</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Borage Oil</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Oil of Evening Primrose</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Normalizer Vitamin P</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Black Currant Seed Oil</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Juice 22 Vegetables</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Norwegian Vitamin A and D</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Pumpkin Seed Oil</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Wheat Germ Oil</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Lipotropic Factors</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Vitamin E <%--Section 33--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection33Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection33Result" runat="server" Text="Your Test results indicate your Vitamin E Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>vitamin E</b> are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
History of heart attack or hardening of arteries, angina, stroke, sterility, miscarriage,
reproductive difficulties, poor lactation, weak fertility, spontaneous abortion,
weak or low sperm cells, circulatory problems, impotence or frigidity, shortness
of breath, hormonal imbalance, tendency to form blood clots, cross eyed, blurred
or double vision, cataracts, muscular degeneration, loss of muscle, swollen legs
or ankles, high serum uric acid.
<br />
<br />
<b>Nutrient -  Vitamin E</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Cold pressed wheat germ oil, lettuce, watercress, spinach, alfalfa, 
kale, bananas, kale, oats, corn, green pea&#39;s, cold pressed oils, raw 
milk, egg yolks, sweet potatoes, rice bran, mushrooms, celery, kelp, 
sesame seeds, pumpkin seeds, flaxseeds, asparagus, almonds, avocado&#39;s,
brazil nuts, hazelnuts, walnuts
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Abunda Vim<br />
Super Oil<br />		
Abunda Meal<br />	
Samson&#39;s Meal<br />
Avocado Juice Powder<br />
Blue/Green Algae<br />
Yam Juice<br />
Mushroom Extract<br />
Spinach Juice
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Vitamin E Complex</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Wheat Germ Oil</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Selenium Complex</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Co-Enzyme Q 10 With Salmon Oil</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Dyna Cell</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Black Currant Seed Oil</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Boron <%--Section 34--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection34Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection34Result" runat="server" Text="Your Test results indicate your Boron Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>boron</b> are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Brittle bones, soft teeth, cavities, receding gums, signs of calcium deficiency
in spite of taking supplements, weak cartilage, joint disease, shoulder pain, low
back pain, arthritis, brain fog, carpel tunnel syndrome, female/male hormone imbalance,
loss of libido.
<br />
<br />
<b>Nutrient -  Boron</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Apples, carrots, apple cider, grapes, pears, legumes, brazil nuts, 
walnuts, green leafy vegetables, raisins, prunes
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Boron
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Ionic Liquid Boron</td>
<td>2 Tablespoons</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Strong Bones, Nerves A & D</td>
<td>2 tablespoons</td>
</tr>
<tr>
<td>Teeth Liquid 1</td>
<td>2 tablespoons</td>
</tr>
<tr>
<td>Ionic Mineral Formula</td>
<td>2 tablespoons</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Ionic Liquid Calcium Formula</td>
<td>2 tablespoons</td>
</tr>
</table>
<br />
<br />
<h5>
Cobalt <%--Section 35--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection35Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection35Result" runat="server" Text="Your Test results indicate your Cobalt Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>cobalt</b> are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Female hormone imbalance, digestive disorders, poor circulation, nerve damage, brain
fog, slow recovery, slow repair, slow muscle recovery, fibromyalgia, chronic fatigue,
low or high serum iron, anemia.
<br />
<br />
<b>Nutrient -  Cobalt</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Organ meats, kidneys, liver, raw milk, raw cheese<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Cobalt
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Ionic Liquid Cobalt</td>
<td>2 Tablespoons</td>
</tr>
</table>
<br />
<br />
<h5>
Germanium <%--Section 36--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection36Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection36Result" runat="server" Text="Your Test results indicate your Germanium Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>germanium</b> are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
Cellular oxygen deficiency, blood pressure problems, anemia history, history of
cancer, stroke, leukemia, toxicity, acidosis, autointoxication, liver sluggishness,
brain fog, cirrhosis, viral infection, Candida, nephritis, yeast infection, bacterial
infection, fungal infection, frequent colds, short winded asthma, low red blood
count, excess body fat weight.
<br />
<br />
<b>Nutrient -  Germanium</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Aloe Vera, comfrey, chlorella, garlic, ginseng, onions, Suma, mushrooms<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Germanium<br />
Super Green<br />
Aloe Vera Formula<br />
Naturopathic Purification Powder<br />
Mushroom Extract<br />
Abunda Vim
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Ionic Liquid Germanium</td>
<td>2 Tablespoons</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>57 Super Minerals</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Juice 22 Vegetables</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Green Chlorophyll Alkalizing Juice</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Gold <%--Section 37--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection37Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection37Result" runat="server" Text="Your Test results indicate your Gold Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>gold</b> are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Desire to go on an optimal anti-aging, high level wellness, program, seasonal affected
disorder (SAD), melancholy, depression, mental anguish, drug use, alcohol addiction,
need for stimulants, mood elevators and pick me uppers, history of cancer, joint
inflammation, arthritis like symptoms, fear of ill health or old age or failure,
brain dysfunction, looking, feeling, acting older than your years, sleeplessness,
inability to sleep soundly, feeling down in the dumps.
<br />
<br />
<b>Nutrient -  Gold</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;No natural food sources available at this time due to soil depletion.<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Gold
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Ionic Liquid Gold</td>
<td>2 Tablespoons</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>57 Super Minerals</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Hypericum</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Sam-E</td>
<td>1 X 1</td>
</tr>
</table>
<br />
<br />
<h5>
Lithium <%--Section 38--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection38Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection38Result" runat="server" Text="Your Test results indicate your Lithium Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>lithium</b> are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
History of clinical depression, insanity, manic depression, bi-polar disorder, behavior
disorder, history of nervous breakdown, feeling like you could have a nervous breakdown,
emotional instability, crying spells.
<br />
<br />
<b>Nutrient -  Lithium</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;No natural food sources available at this time due to soil depletion.<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Lithium
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Ionic Liquid Lithium</td>
<td>2 Tablespoons</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Hypericum</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Blood Sugar and Cortisol Control</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Pineal Hormone Restoration Factors</td>
<td>1 X 1 (bedtime)</td>
</tr>
<tr>
<td>Sam-E</td>
<td>1 X 1 (morning)</td>
</tr>
</table>
<br />
<br />
<h5>
Molybdenum <%--Section 39--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection39Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection39Result" runat="server" Text="Your Test results indicate your Molybdenum Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>molybdenum</b> are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
History of cancer, cirrhosis, hepatitis, Lyme disease, Epstein bar virus, Candida,
parasites, herpes, athletes foot, canker sores, ring worm, bells palsy, M.S., prostrate
infection, bladder infection, low libido, impotency, frigidity, acidosis, highly
toxic, condition, highly acid urine and/or saliva, long term obesity, challenge,
difficulty losing fat weight even when dieting, anemia.
<br />
<br />
<b>Nutrient -  Molydednium</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Organ meats, liver, whole grains, red meat, pea&#39;s, snow pea&#39;s, dried 
pea&#39;s, pea pods, legumes, sweet breads, kidneys, dandelion greens, 
turnip greens, Swiss chard, spinach, barley green, wheat grass, spirulina, 	  	  	     
sunflower seeds, yams, potato skins, buckwheat, raw wheat germ, cold 
pressed wheat germ oil, sea vegetables, kelp, green beans, string beans
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Molydednium<br />
Pea Juice Powder<br />
Barley Green<br />
Spinach Juice Powder<br />
Sea Vegetable Juice Extract<br />
Abunda Vim<br />
Blue/Green Algae<br />
Irish Moss/Kelp		
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Ionic Liquid Molydednium</td>
<td>2 Tablespoons</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
<tr>
<td>57 Super Minerals</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Green Chlorophyll Alkalizing Juice</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Platinum <%--Section 40--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection40Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection40Result" runat="server" Text="Your Test results indicate your Platinum Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>platinum</b> are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
History of cancer, brain injury, nerve damage, neuralgia, insomnia, PMS, inability
to concentrate, poor memory, headaches, weak immune system, frequent colds, viral
conditions, fungus condition.
<br />
<br />
<b>Nutrient -  Platinum</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;No natural food source available due to soil depletion.<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Platinum
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Ionic Liquid Platinum</td>
<td>2 Tablespoons</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>57 Super Minerals</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Green Chlorophyll Alkalizing Juice</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Duo C Complex</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Selenium <%--Section 41--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection41Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection41Result" runat="server" Text="Your Test results indicate your Selenium Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>selenium</b> are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
History of cancer, liver disease, Parkinson&#39;s, M.D., M.S., cystic fibrosis,
Alzheimer&#39;s, heart disease, pancreatitis, immune weakness, frequent colds, muscular
weakness, anemia, sickle cell, undue fatigue, infertility, liver spots, looking
older than your age.
<br />
<br />
<b>Nutrient -  Selenium</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Oat bran, wheat bran, rice bran, broccoli, brown rice, rice polishing, 
cabbage, chicken, garlic, kidney, liver, raw milk, goat&#39;s milk, mushrooms, 	 	     
nutritional yeast, Irish oat meal, oat grouts, onions, tuna, whole grains, 
brazil nuts, salmon depletion.
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Selenium<br />
Irish moss/Kelp<br />
Livebac Intestinal Powder<br />
Nutritional Yeast<br />
Sea Vegetable Juice Extract Tonic
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Ionic Liquid Selenium</td>
<td>2 Tablespoons</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Selenium Complex</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>57 Super Minerals</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Vitamin E Complex</td>
<td>1 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Silver <%--Section 42--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection42Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection42Result" runat="server" Text="Your Test results indicate your Silver Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>silver</b> are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
History of Candida, athletes foot, impetigo, ring worm, parasites, staph, tonsillitis,
boils, meningitis, ear infection, influenza, T.B., whooping cough, pneumonia, shingles,
gonorrhea, enlarged prostate, bladder infection or irritation, cystitis, hemorrhoids,
colitis, dysentery, G.I. tract infections, frequent colds.
<br />
<br />
<b>Nutrient -  Silver</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;No natural food source available due to soil depletion.
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Silver
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Ionic Liquid Silver</td>
<td>2 Tablespoons</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Ionic Liquid Immune Formula</td>
<td>2 tablespoons</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Immune Power Formula</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Duo C Complex 1000</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Vanadium <%--Section 43--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection43Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection43Result" runat="server" Text="Your Test results indicate your Vanadium Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>vanadium</b> are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Diabetic, insulin resistant, hypoglycemia, syndrome X, metabolic syndrome, cardio
vascular disease, Chronic weight gain, excess body fat, high cholesterol and/or
triglycerides, undue fatigue, excessive thirst, Jekyll and Hyde personality.
<br />
<br />
<b>Nutrient -  Vanadium</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Liver, dill, soy, parsley, mushrooms, whole grains, salmon, sardines, herring.
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Vanadium<br />
Ionic Liquid Blood Sugar Formula<br />
Parsley Juice Powder<br />
Mushroom Extract Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Blood Sugar and Cortisol Control</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chromium Picolonate</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Pancreatin</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Blood Sugar and Energy Factors</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Vitamin B17 Laetrile <%--Section 44--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection44Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection44Result" runat="server" Text="Your Test results indicate your Vitamin B17 Laetrile Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>vitamin B17 laetrile</b> are often predisposed to and/or
possibly experience some of the following symptoms:
<br />
<br />
Recently diagnosed with cancer, do you desire to go on an intensive cancer preventive
nutrition protocol?, history of cancer in remission, family history of cancer, high
CEA and/or CA-125, a mass or other cancer antibody blood tests.
<br />
<br />
<b>Nutrient -  Lactrile, Vitamin B 17</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Apricot pits
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Blue/Green Algae<br />
Mushroom Extract Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Vitamin K <%--Section 45--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection45Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection45Result" runat="server" Text="Your Test results indicate your Vitamin K Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>vitamin K</b> are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
History of hemorrhages and/or inability for the blood to clot in a timely fashion,
low serum platelets, tendency to excess bleeding from minor wounds, use of sulfa
drug, x-ray&#39;s, CT scans, radiation or chemotherapy in last two years, mal-function
or blockage of G.I. tract, liver or bile duct blockage, mal-absorption, thin blood.
<br />
<br />
<b>Nutrient -  Phytonadione, Vitamin K</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Alfalfa, kelp, barley green, wheat grass, sea vegetables, blue/green 
algae, asparagus, Brussels spouts, cabbage, cheddar cheese, turnip 
greens, spinach, liver, egg yolks, raw goat cheese, yogurt, butter, 
tomatoes, avocado&#39;s, steel cut oats, pea&#39;s in pod, dried pea&#39;s, broccoli, 
dried beans
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Alfalfa Juice Powder<br />
Irish Moss/Kelp<br />
Barley Green<br />
Blue/Green Algae<br />	
Asparagus Juice Powder<br />
Cabbage Juice Powder<br />
Spinach Juice Powder<br />
Pea Powder<br />
Avocado Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Alfalfa Juice Powder</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Vitamin K</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Bio-Organic Chlorine <%--Section 46--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection46Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection46Result" runat="server" Text="Your Test results indicate your Bio-Organic Chlorine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>bio-organic chlorine</b> are often predisposed to and/or
possibly experience some of the following symptoms:
<br />
<br />
Extreme exhaustion with hot weather, history of electrolyte imbalance, low serum
chlorine, sudden loss of weight, cramps, constipation, digestive disorders, gall
bladder problems, history of jaundice, biliousness, spleen problems, highly toxic
conditions, obesity.
<br />
<br />
<b>Nutrient -  Chlorine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Super salt, sea vegetables, kelp, spirulina, tomatoes, celery, iceberg 
lettuce, spinach, cabbage, horseradish, watercress, eggplant, kale
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Sea Vegetable Extract Tonic<br />
Irish Moss/Kelp<br />
Super Salt<br />
Blue/Green Algae<br />		
Watercress Juice Powder<br />
Horseradish Juice Powder<br />
Spinach Juice Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Sea Life</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Juice 22 Vegetables</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Bio-organic Fluorine <%--Section 47--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection47Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection47Result" runat="server" Text="Your Test results indicate your Bio-organic Fluorine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>bio-organic fluorine</b> are often predisposed to and/or
possibly experience some of the following symptoms:
<br />
<br />
Tooth decay, weak tooth enamel, poor tooth structure, history of cataracts, failing
eye sight, murky color of eyes, great aversion to darkness, puffy, swollen lips,
ankles, neck and abdomen.
<br />
<br />
<b>Nutrient -  Fluorine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Cabbage, beets, goat milk, raw milk, corn silk, watercress, garlic, 
lettuce, radishes, lentils, parsnips,  dill seed, carob, cod, apples, 
calf liver, eggs, kidney, salmon, sardines
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Sea Vegetable Extract Tonic<br />
Watercress Juice Powder<br />
Cabbage Juice Powder<br />
Beet Juice Powder<br />
Naturopathic Purification Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Sea Life</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Super juice 22 Vegetables</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Bromine <%--Section 48--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection48Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection48Result" runat="server" Text="Your Test results indicate your Bromine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>bromine</b> are often predisposed to and/or possibly experience
some of the following symptoms:
<br />
<br />
Depressed mental state, human growth hormone deficiency, pituitary gland imbalance.
<br />
<br />
<h5>
Bioflavonoid <%--Section 49--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection49Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection49Result" runat="server" Text="Your Test results indicate your Bioflavonoid Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>bioflavonoid</b> are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
Vision failing, glaucoma, history of stomach and/or duodenal ulcer, hemorrhages
or excess bleeding, blood in stool or urine, history of stroke, hardening of arteries,
coronary heart disease, respiratory infections, poor circulation, weak heart, bleeding
gums, nose bleeds, loose teeth, spider veins and/or varicose veins, tiny red spots
on skin, weak capillaries, history of fever blisters, shingles, genital herpes outbreaks,
psoriasis, miscarriage, heavy menstrual bleeding, arthritis. swelling or inflammation
of joints, swollen extremities, black and blue marks, bruise easily, fragile blood
vessels.
<br />
<br />
<b>Nutrient -  Bioflavonoid, Vitamin P</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Acerola, hot red pepper, guava, hot green peppers, sweet red peppers, 
black current, kale, parsley, broccoli, horseradish, watercress, cauliflower, 
lemon with peel, orange with peel, cabbage, spinach, grapefruit, 
strawberry, okra, beet, beet greens
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Super C Natural<br />
Citrus Bioflavonoid Powder<br />
Naturopathic Purification Powder<br />
Cauliflower Juice Powder<br />
Watercress Juice Powder<br />
Cabbage Juice Powder<br />
Beet Juice Powder<br />
Broccoli Juice Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Capillary integrity</td>
<td>2 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Duo C Complex</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Cranberry Juice Complex</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Capsicum</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Green Gorilla</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Hawthorne Berry</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Juniper Berry</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Super Juice Plus 22 Vegetables</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Electrolytes <%--Section 50--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection50Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection50Result" runat="server" Text="Your Test results indicate your Electrolytes Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>electrolytes</b> are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
Bad breath, body odor, blood serum electrolyte imbalance, liver and kidney disorder,
high blood pressure, poor circulation, rapid heartbeat, twitches, nervousness, hypertension,
hyperactivity, anxiety, insomnia, brain fog, depression, attention deficit, sugar
craving, overweight, fatigue, PMS, cramps, weakness after sweating, gas, constipation,
bloating, fluid retention, toxic.
<br />
<br />
<b>Nutrient -  Electrolytes</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Super salt, kelp, sea vegetables, raw vegetable juices 
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Liquid Electrolyte Formula<br />
Sea Vegetable Extract Tonic<br />
Celery Juice Powder<br />
Irish Moss/Kelp<br />
Sea Salt
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Sea Life</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Juice Plus 22 Vegetables</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Celtic Restoration Formula</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Co Enzyme Q10 <%--Section 51--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionASection51Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionASection51Result" runat="server" Text="Your Test results indicate your Co Enzyme Q10 Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with or discovered to be less than optimum, nutritionally
sound or deficient in <b>co enzyme Q10</b> are often predisposed to and/or possibly
experience some of the following symptoms:
<br />
<br />
History of heart disease, stroke, angina, coronary heart disease, history of cancer,
heart rhythm disturbances, high blood pressure, enlarged heart, immune deficiency,
increased susceptibility to infections, muscular weakness, unrelenting fatigue,
chronic lung infection, shortness of breath, slow recovery after exercise, difficulty
losing weight, muscle loss, poor muscle tone, accelerated aging skin, looking older
than years.
<br />
<br />
<b>Nutrient -  Co-Enzyme Q10</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Sliver, heart, mackerel, salmon, sardines, beef, raw peanut butter, spinach
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Spinach Juice Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Co Enzyme Q10 with Omega </td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Alpha Lipoic Acid</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Shiu Chu Root</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Organic Garden 5-Alive</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Green Chlorophyll</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<%--<h4>Division B</h4><br />--%>
<h5>
Thyroid <%--Section 1--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionBSection1Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionBSection1Result" runat="server" Text="Your Test results indicate your Thyroid Levels are "></asp:Literal>
<br />
<br />
Optimum <b>thyroid</b> function requires proper nutritional and bio-identical hormonal
support. Individuals living with or diagnosed with underperforming <b>thyroids</b>
are often predisposed to and/or may be experiencing the following symptoms:
<br />
<br />
Feeling cold, headaches, migraines, slow, rapid or irregular heartbeat, loss of
sensation, excess menstruation, painful menstruation, menstrual problems, infertility,
PMS, cold hands and/or feet, irregular periods, fluid retention, puffiness around
eyes, puffy face, swollen eyelids, adult acne, abnormally profuse sweating, coarse
hair, brittle or dry hair, hair loss, low sex drive, fine thinning hair, easy weight
gain, brain fatigue, dry, rough, scaly skin, muscle soreness or weakness, slow thinking,
can&#39;t get the words out on time, tired in a.m., feels better as the day goes
on, depression, undue fatigue, irritability, anxiety, panic attacks, claustrophobia,
emotional instability, lethargy, decreasing interest in sex, poor memory, brain
fog, inability to concentrate, lack of motivation, ambition or enthusiasm for life,
thick tongue, hoarse voice, nervousness, can&#39;t sweat, joint pain, insomnia,
hives, itchiness, ringing in ears, slow healing, slow reaction, constipation, intolerance
to heat or cold, swollen feet, burning sensation, painful heat area, prone to colds,
flu, infections, respiratory problems, asthma, allergies, breathing difficulties.
<br />
<br />
<b>Nutrient -  Thyroid</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Kelp, dulse, sea vegetables
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Iodine<br />
Irish Moss/Kelp<br />
Thyroid Nutritional Broth<br />
Sea Vegetable Juice Tonic<br />
Ionic Liquid thyroid Formula<br />
Super Salt
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Abunda Thyroid</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Torine</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Nature&#39;s Thyroid (Prescription Only)</td>
<td>1 in a.m.</td>
</tr>
</table>
<br />
<br />
<h5>
Adrenal <%--Section 2--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionBSection2Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionBSection2Result" runat="server" Text="Your Test results indicate your Adrenal Levels are "></asp:Literal>
<br />
<br />
Optimum <b>adrenal</b> function requires proper nutritional and bio-identical hormonal
support. Individuals living with or diagnosed with underperforming <b>adrenals</b>
are often predisposed to and/or may be experiencing the following symptoms:
<br />
<br />
Diagnosed with chronic fatigue syndrome, muscular weakness, wet hands/feet, nervousness,
fainting spells, chronic heartburn, vague indigestion, vague abdominal pain, insomnia,
alternating constipation and diarrhea, allergies, vulnerability to food reactions,
occasional bed wetting, intolerant to cold drinks, low blood pressure, light headed,
migraines, heart palpitations, alcohol intolerance, intolerant to 2nd hand smoke,
sensitive to odors, mood swings, paranoia, confusion, panic attacks, phobias, agoraphobia,
claustrophobia, tendency to cry easily, inability to cope with stress, constant
fatigue, salt craving, hard stools, loss of appetite, infrequent urination, lack
of thirst, clumsiness, jumpy or easily startled, break outs of hives or rashes,
teeth clenching or grinding, PMS symptoms, chronic back pain, noise sensitivity,
back tightness worsens with stress or cold weather, easily frustrated, compulsive
behavior, guilt feelings, depression relieved by eating, difficulty relaxing except
when working, easily distracted, lack of fullness after eating, asthma, breathing
difficulties, taken cortisone or Prednisone in last two years (including cream),
drink coffee, drink alcohol, low cholesterol (below 150).
<br />
<br />
<b>Nutrient -  Adrenal</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Spinach, rose hips, tomatoes, watercress, potato skins, black 
currents, broccoli, cabbage, hot red peppers, avocado&#39;s blue 
cheese, bananas, liver, royal queen bee jelly, propolis, eggs,
cold pressed wheat germ oil, whole grain products, sunflower 
seeds, pumpkin seeds, flax seeds, raw goat milk, raw goat cheese, 
lamb, chicken, pea&#39;s in pod, raw wheat germ, coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Adrenal Formula<br />
Royal Queen Bee Milk<br />
Sea Vegetable Juice Extract Tonic<br />
Royal Pollen Complex<br />
Naturopathic Purification Powder<br />
Super C Natural<br />
Abunda Vim<br />	
Watercress Juice Powder<br />
Super Oil<br />
Spinach & Juice Powder<br />
Pea Pod Powder<br />
Potato Skin Broth
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Adrenal Hormone Restoration Factors</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Royal Queen Bee Jelly</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Stress & Toxin Protector</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Duo C Complex 1000</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Pineal <%--Section 3--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionBSection3Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionBSection3Result" runat="server" Text="Your Test results indicate your Pineal Levels are "></asp:Literal>
<br />
<br />
Optimum <b>pineal</b> function requires proper nutritional and bio-identical hormonal
support. Individuals living with or diagnosed with underperforming <b>pineals</b>
are often predisposed to and/or may be experiencing the following symptoms:
<br />
<br />
Insomnia, sleep problems, tendency to go to bed late, wake up late, easily awaken
at night, can&#39;t remember dreams, anxious thinking at night, bags under eyes,
high blood pressure, hypersensitivity, go to bed after 10:00 p.m., nervous behavior,
slow heartbeat, irregular eating schedule, go to sleep with T.V. on, anxious eyes,
undue fatigue, jet lag symptoms, looks older than years, tense muscles, abdominal
pain, irregular time schedule and life style, intestinal spasms, sleep less than
7 hours a night, looks tired, restless leg syndrome, lack of serenity, lights on
when sleeping, lack of peace of mind, depression, emotionally irritable.
<br />
<br />
<b>Nutrient -  Pineal</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Turkey, raw milk, raw cheese, yogurt, raw goat&#39;s milk, 
coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Coconut Cream Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Pineal Hormone Restoration Factors</td>
<td>1 at bedtime</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Hypericum</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Valerium Root</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Nervine</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Pituitary <%--Section 4--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionBSection4Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionBSection4Result" runat="server" Text="Your Test results indicate your Pituitary Levels are "></asp:Literal>
<br />
<br />
Optimum <b>pituitary</b> function requires proper nutritional and bio-identical
hormonal support. Individuals living with or diagnosed with underperforming <b>pituitaries</b>
are often predisposed to and/or may be experiencing the following symptoms:
<br />
<br />
Low self esteem, lack of self confidence, don&#39;t like your body, don&#39;t like
yourself , chronic anxiety, tendency towards depression, feeling powerless, difficulty
focusing and concentrating, excessive emotional reactions, sharp verbal retorts,
looking older than years, feeling older than years, acting older than years, needs
to sleep more than eight hours, feeling of weakening, body breaking down and not
recuperating, loss of muscle mass, loss of bone, loss of strength, erectile dysfunction,
unable to maintain erection, poor health, body not repairing on time, collapsing
arches, lack of inner peace, great difficulty performing multiple tasks, slow healing,
not readily recuperating after exercise, body getting loose and flabby, poor quality
of life, feels unwell, muscles getting weaker, pre-mature aging, skin thinning,
slow recovery, obese body, droopy eyelids, loose skin under chin, droopy triceps
(back of arms), reduced foot arch, sagging cheeks, shoulders getting smaller, cold
intolerance, fat droopy abdomen, stretch marks on abdomen, thin lips, metacarpal
hands and bones, hunch back, sagging back muscles, drapery folds of fat, lumbar
curve, muscle wasting, memory problems, mushy inner thigh, fatty cushions above
the knees, thin jaw bone, smaller, weaker arm muscles.
<br />
<br />
<b>Nutrient -  Pituitary</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Red meat, salmon, liver, cold pressed wheat germ oil, cod,
flaxseeds, cold pressed flaxseed oil, coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Abunda Vim<br />
Coconut Cream Powder<br />
24 Super Amino Acids<br />
Super Food<br />
Samson&#39;s Meal<br />
Phosphatyal Choline
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>L-Acedyl Carnitine</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>L-Arginine Complex</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>DMEA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>L-Glutimine</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Juice plus 22 Vegetables</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Pregnenolone <%--Section 5--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionBSection5Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionBSection5Result" runat="server" Text="Your Test results indicate your Pregnenolone Levels are "></asp:Literal>
<br />
<br />
Optimum <b>Pregnenolone</b> function requires proper nutritional and bio-identical
hormonal support. Individuals living with or diagnosed with underperforming <b>Pregnenolone</b>
are often predisposed to and/or may be experiencing the following symptoms:
<br />
<br />
Poor memory, low blood pressure, reduced artistic awareness, brain fog, joint pain,
loss of libido, reduced color vision, adrenal exhaustion, small wrinkles around
eyes and/or mouth, unclear/fuzzy thinking, dry skin, (women) small or droopy breasts,
(men) small testicle size, fatigue,. loss of get up and go, loss of motivation,
loss of desire to start new projects, loss of zeal and/or determination, reduced
mobility of joints, sharp wrinkles, low stress tolerance, pale skin, easily angered,
anxiety, muscle pain, cholesterol under 150, DL cholesterol under 50
<br />
<br />
<b>Nutrient -  Pregnenolone</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Cold pressed wheat germ oil, cold pressed oil of evening 
primrose,  raw milk, raw cheese, butter, flaxseed, walnuts, 
pine nuts, avocado&#39;s pears, coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Abunda Vim<br />
Super Oil<br />
Coconut Cream Powder<br />
Avocado Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Oil Of Evening Primrose	</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Lignan</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy</td>
<td>(Prescription Item)</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Juice Plus 22 Vegetables</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Vitamin D-3</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Aldosterone <%--Section 6--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionBSection6Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionBSection6Result" runat="server" Text="Your Test results indicate your Aldosterone Levels are "></asp:Literal>
<br />
<br />
Optimum <b>aldosterone</b> function requires proper nutritional and bio-identical
hormonal support. Individuals living with or diagnosed with underperforming <b>aldosterone</b>
are often predisposed to and/or may be experiencing the following symptoms:
<br />
<br />
Salt and/or salty food craving, easily distracted, drowsiness, absent minded, day
dreaming, trouble focusing eyes, often thirsty, cardiovascular disease, dementia,
Alzheimer&#39;s, rheumatoid diseases, digestive disorders, low blood pressure, hollow
face, sharp wrinkles, eyes deep in orbit, pale face, skin tenting, prolonged stiff
skin fold after pinching the skin on back of hands.
<br />
<br />
<b>Nutrient -  Aldosterone</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Kelp, super salt, sea vegetables, dulse, Irish moss, herring, 
sardines, celery
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Electrolyte Liquid Mineral Formula<br />
Irish Moss/Kelp<br />
Sea Vegetable Juice Extract Tonic<br />
Super Salt<br />
Celery Juice Powder<br />
Queen Bee Milk<br />
Spinach Juice Powder<br />
Blue/Green Algae
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Sea Life</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Adrenal Hormone Restoration factors</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Juice Plus 22 Vegetables</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Estrogen (Women) <%--Section 7--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionBSection7Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionBSection7Result" runat="server" Text="Your Test results indicate your Estrogen Levels are "></asp:Literal>
<br />
<br />
Optimum <b>estrogen</b> function requires proper nutritional and bio-identical hormonal
support. Individuals living with or diagnosed with underperforming <b>estrogen</b>
are often predisposed to and/or may be experiencing the following symptoms:
<br />
<br />
Persistent fatigue, pre-mature aging, pale face, pale skin, small sharp wrinkles
above upper lip and/or corner of the eyes, persistent depression, excess facial
or body hair, hollow face, small breasts, loss of libido, undergone a complete or
partial hysterectomy, dry mucus membranes of eyes, mouth, droopy breasts, memory
problems, forgetfulness, brain fog, cardiovascular disease, Alzheimer&#39;s, hot
flashes, night sweats, breast soreness, osteopenia, osteoporosis, recurring cystitis,
menstrual irregularity, urinary incontinence, urinary tract infection, vaginal dryness,
vaginal itching, vaginal atrophy, taken birth control pills two years or more, dropped
uterus, vaginal prolapse, bladder prolapse, atrophied uterus lining, reduced vaginal
lubrication, dry skin, dehydrated skin, painful intercourse, osteoarthritis, small,
sharp wrinkles.
<br />
<br />
<b>Nutrient -  Estrogen</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Royal queen bee jelly, oil of evening primrose, cold 
pressed wheat germ oil, walnuts, flaxseeds, pine nuts, coconut 
cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Cobalt<br />
Abunda Vim<br />
Super Oil<br />
Coconut Cream Powder<br />
80% Soy Protein
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Oil of Evening Primrose</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Female Hormone Restoration Factor</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Lady Tonic</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Vitamin E Complex</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy</td>
<td>(Prescription Item)</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Royal Queen Bee Jelly</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Vitamin D-3</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Juice Plus 22 Vegetables</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Progesterone (Women) <%--Section 8--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionBSection8Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionBSection8Result" runat="server" Text="Your Test results indicate your Progesterone Levels are "></asp:Literal>
<br />
<br />
Optimum <b>progesterone</b> function requires proper nutritional and bio-identical
hormonal support. Individuals living with or diagnosed with underperforming <b>progesterone</b>
are often predisposed to and/or may be experiencing the following symptoms:
<br />
<br />
Muscle tension, nervous tension, anxiety, anger, history of breast cancer, irritability,
aggressiveness, outbursts of rage, outbursts of panic, PMS symptoms, increased abdominal
fat, increased sensitivity to pain, increased expression of pain, swollen feet,
swollen ankles, insomnia, excessive nervous tension, fibroids, breast tenderness,
swollen breast, excessive menstruation, breast cysts, spontaneous abortion, pain
during intercourse, distended abdomen, painful abdomen endometriosis, infertility,
uterine fibroids, swollen face, reddish face.
<br />
<br />
<b>Nutrient -  Progesterone, (Women)</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Raw wheat germ oil, cold pressed oils, flaxseeds, walnuts, brazil 
nuts, oil of evening primrose, avocado&#39;s, almonds, pine nuts, salmon,
herring, sardines, coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Cobalt<br />
Abunda Vim<br />
Super Oil<br />
Avocado Powder<br />	
Coconut Cream Powder<br />
Samson&#39;s Meal<br />
Super Food<br />
80% Soy Protein
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Lady Tonic</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Oil Of Evening Primrose</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Adrenal Hormone Restoration Factors	</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy </td>
<td>(Prescription Item)</td>
</tr>
<tr>
<td>Vitamin E Complex</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Wheat Germ Oil</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Borage Oil</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Phosphatyal Choline</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Lignan</td>
<td>1 X 3</td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Testosterone (Women) <%--Section 9--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionBSection9Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionBSection9Result" runat="server" Text="Your Test results indicate your Testosterone Levels are "></asp:Literal>
<br />
<br />
Optimum <b>testosterone</b> function requires proper nutritional and bio-identical
hormonal support. Individuals living with or diagnosed with underperforming <b>testosterone</b>
are often predisposed to and/or may be experiencing the following symptoms:
<br />
<br />
High childish voice (during puberty), older looking face, pale skin, many complaints,
smooth, thin, child like face growing up, thinning hair, bruise easily, tires easily,
atherosclerosis, loss of muscle tone, loss of curves to figure, loss of muscle strength,
rheumatoid arthritis, loss of sex drive, dry eyes, forgetfulness, fat accumulating
on breast, abdomen, hips, skin drying up, reduced sexual sensitivity, loss of body
hair, varicose veins, slumped, increasingly difficult to achieve orgasm, poor muscle
tone, loss of muscle strength, joint disorders, becoming more passive, some frigidity,
shrinking clitoris, increasing cellulite, loss of interest in physical activity,
avoids sports, loss of height, flabby belly, increasing abdominal fat, often lacking
initiative, poor concentration, anxiety, loss of self assurance, nervous, irritable,
hesitant, negative mental attitude, submissiveness, lack of authority, lack of assertiveness,
depression.
<br />
<br />
<b>Nutrient -  Testosterone,  (Women)</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Raw wheat germ oil, whole grains, red meat, avocado&#39;s, walnuts, 
raw milk, butter, raw cheese, coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
L-Arginine Spray<br />
Abunda Vim<br />
Super Oil<br />
Ionic Liquid Cobalt<br />
Coconut Cream Powder<br />
Avocado Powder<br />
Abunda Meal
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Vitamin E Complex</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Oil Of Evening Primrose</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy</td>
<td>(Prescription Item)</td>
</tr>
<tr>
<td>L-Arginine Complex</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Lady Tonic</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Vitamin D-3</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Juice Plus 22 Vegetables</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Testosterone (Men) <%--Section 10--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionBSection10Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionBSection10Result" runat="server" Text="Your Test results indicate your Testosterone Levels are "></asp:Literal>
<br />
<br />
Optimum <b>testosterone</b> function requires proper nutritional and bio-identical
hormonal support. Individuals living with or diagnosed with underperforming <b>testosterone</b>
are often predisposed to and/or may be experiencing the following symptoms:
<br />
<br />
Aging face, looking older than years, feeling older than years, acting older than
years, hair recession, ear buzzing, palpitations, cardiovascular disease, memory
loss, fragile. loss of muscle mass, getting weaker, myocardial infarction, slumped,
poor concentration, joint pain, easily sunburned, coronary insufficient, poor muscle
tone, pale look, depressed negative attitude, testicles getting smaller, Peyronie&#39;s
disease, high blood pressure, overweight, male pattern baldness, enlarged prostate,
excessive emotion, withdrawn, less social contact, diabetic, obesity, Alzheimer&#39;s,
crying, osteoporosis, higher, anxious tone, lack of authority, feeling less manly,
loss of confidence, impotency, getting womanly-like breasts, flabby belly, losing
height, and/or bone density, penis getting smaller, can&#39;t hold erection, high
cholesterol, fat accumulating on gut, dry eyes, decreased pubic hair, indecision,
lack of mental firmness, indecisive, hesitant, thrombosis, depression, nervous,
hesitant, slow wound healing, weak heart beat, disturbed sleep, loss of initiative,
sweating spells, complaining, infertility, erectile dysfunction, small wrinkles
at the corner of eyes and/or above the lips, sloppy look, loss of ejaculation fluid.
<br />
<br />
<b>Nutrient -  Testosterone,  (Men)</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Red meat, liver, lamb, hearts, cold pressed wheat germ oil, propolis,
royal queen bee jelly, salmon, tuna, cod, herring, buffalo, raw milk, 
sardines, flaxseed, cold pressed oils, butter, cashews, flaxseeds, 
whole grains, coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Zinc<br />
L-Arginine Squirt<br />
24 Super Amino Acids
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Male Hormone Restoration Factors</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Vitamin E Complex</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Muscle Builder</td>
<td>4 X 3</td>
</tr>
<tr>
<td>L-Arginine Complex</td>
<td>2 X 3</td>
</tr>
<tr>
<td>L-Carnitine</td>
<td>2 X 3</td>
</tr>
<tr>
<td>L-Glutiine</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Wheat Germ Oil</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Co-Enzyme Q 10</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Alpha Lipoic Acid</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy</td>
<td>(Prescription Item)</td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Juice Plus 22 Vegetables</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Progesterone (Men) <%--Section 11--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionBSection11Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionBSection11Result" runat="server" Text="Your Test results indicate your Progesterone Levels are "></asp:Literal>
<br />
<br />
Optimum <b>progesterone</b> function requires proper nutritional and bio-identical
hormonal support. Individuals living with or diagnosed with underperforming <b>progesterone</b>
are often predisposed to and/or may be experiencing the following symptoms:
<br />
<br />
Benign prostate hypertrophy, enlarged prostate, harden prostate, high blood pressure,
tense muscles, excess estrogen, developing women-like small breasts - (gynecomastia),
male pattern baldness, undue fatigue, adrenal exhaustion, excess (DHT) Dihydrotestosterone,
swollen abdomen, cardiovascular disease, lack of inner peace, sleep problems, superficial
sleep, nervous sleep, nervous tension at night, tense and/or nervous behavior, excess
body hair, constipation (less than a BM for each meal you eat), reduced urine flow,
need more time to get the urine out, nerve exhaustion, stress burnout, nervous breakdown,
exhaustion.
<br />
<br />
<b>Nutrient -  Progesterone, (Men)</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Whole grains, cold pressed wheat germ oil, walnuts, chicken, 
cold pressed oils, butter, raw milk products, pine nuts, coconut 
cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Ionic Liquid Zinc<br />
Abunda Vim<br />
Super Oil<br />
Coconut Cream Powder<br />
Super Food
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Vitamin E Complex</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Nature&#39;s Healer</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Male Hormone Restoration Factors</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Wheat Germ Oil</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy</td>
<td>(Prescription Item)</td>
</tr>
<tr>
<td>Vitamin D-3</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Juice Plus 22 Vegetables</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Alfalfa Juice</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<%--<h4>Division C</h4><br />--%>
<h5>
Arginine <%--Section 1--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection1Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection1Result" runat="server" Text="Your Test results indicate your Arginine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with an <b>Arginine</b> deficiency may experience the following
symptoms:
<br />
<br />
Weak immune system, slow wound healing, slow recuperation, underactive pituitary,
arthrosclerosis, loss of muscle, loss of strength, body fat gain, sterility, erectile
dysfunction, low semen ejection, adult onset, human growth hormone deficiency, body
not recovering from work, low T cell count, history of HIV, cirrhosis, fatty liver,
liver sluggishness, kidney&#39;s not clearing toxins efficiently, strong urine odor,
dark urine, skin needs repair, weak connective tissue, history of tumors and/or
cancer, diabetic, insulin resistant, bone loss.
<br />
<br />
<b>Nutrient -  Arginine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Cold pressed wheat germ oil, brown rice, carob, almonds, cashews, 
steel cut oats, raw peanut butter, popcorn, raisins, sesame seeds, 
whole grains, raw wheat germ, coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
L-Arginine Spray<br />
Ionic Liquid Zinc<br />
Abunda Vim<br />
Coconut Cream Powder<br />
Super Food<br />
24 Super Amino Acids<br />
90% Whey Protein
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L- Arginine Complex</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>24 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Juice Plus 22 Vegetables</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Histidine <%--Section 2--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection2Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection2Result" runat="server" Text="Your Test results indicate your Histidine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>histidine</b> deficiency may experience the following
symptoms:
<br />
<br />
Low red and/or white Blood cell count, nerve deafness, heavy metal toxicity. Radiation
exposure, excess stress, anxiety, schizophrenia, sexual dysfunction, indigestion,
hypo chlorhydria, and heavy metal toxicity.
<br />
<br />
<b>Nutrient -  L-Histidine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Beef, turkey, tuna, raw cheese, coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Coconut Cream Powder<br />
24 Super Amino Acids<br />
Super Food
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Isoleucine <%--Section 3--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection3Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection3Result" runat="server" Text="Your Test results indicate your Isoleucine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with an <b>Isoleucine</b> deficiency may experience the following
symptoms:
<br />
<br />
Hypoglycemia, blood sugar fluctuations, mood swings. Muscle weakness, loss of muscle
tone size, strength , lack of energy or endurance, mental confusion.
<br />
<br />
<b>Nutrient -  L-Isoleucine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Raw goat milk, goat cheese, turkey, coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Queen Bee Milk<br />
Turkey Protein Broth<br />
Coconut Cream Powder<br />
Goat Milk Powder<br />
Goat Whey	
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Alfalfa Juice Powder</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Leucine <%--Section 4--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection4Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection4Result" runat="server" Text="Your Test results indicate your Leucine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>Leucine</b> deficiency may experience the following
symptoms:
<br />
<br />
Muscle loss, bone loss, recent surgery.High blood sugar, musles tire easily, body
not repairing in a timely fashion, slow skin healing.
<br />
<br />
<b>Nutrient -  Leucine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Beef, eggs, fish
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Beef Protein Broth<br />
Fish Protein Broth<br />
24 Super Amino Acids<br />
Super Food
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Lysine <%--Section 5--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection5Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection5Result" runat="server" Text="Your Test results indicate your Lysine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>lysine</b> deficiency may experience the following
symptoms:
<br />
<br />
Weak immune system, viral related disease, herpes simplex, virus, cold sores, poor
appetite, weight loss, high triglycerides, anemia, blood shot eyes, enzyme disorders,
hair loss, reproductive disorders. Weak muscles, low hormone production, low antibody
production.
<br />
<br />
<b>Nutrient -  L-Lycine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Eggs, raw milk, lima beans, raw cheese, potatoes, beef,
soy products, nutritional yeast, coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Bean Powder<br />
Potato Skin Broth<br />
Beef Protein Broth<br />
Fish Protein Broth<br />
80% Soy Protein Powder<br />
Nutritional Yeast<br />
Coconut Cream Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Lycine</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Immune Power Formula</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Green Chlorophyll Alkalizing Juice</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Methionine <%--Section 6--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection6Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection6Result" runat="server" Text="Your Test results indicate your Methionine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>methionine</b> deficiency may experience the following
symptoms:
<br />
<br />
Autointoxication, heavy metal toxicity, radiation exposure, alcohol excess, overeating,
liver sluggishness, toxic condition, fatty liver, difficulty digesting fats, chemical
allergies, taking birth control contraceptives, excess estrogen, high histamine,
glutathione deficiency, in need of detoxification, schizophrenic tendencies.
<br />
<br />
<b>Nutrient -  L-Methionine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Beans, eggs, fish, garlic, lentils, beef, lamb, onions, milk, cheese,   
coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Naturopathic Purification Powder<br />
Broccoli Juice Powder<br />
Cauliflower Juice Powder<br />
Cabbage Juice Powder<br />
Super Broth
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Methionine</td>
<td>1 X 3</td>
</tr>
<tr>
<td>L-Cystine</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Alfalfa Juice</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Organic Sulfur</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>M.S.M.</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Phenylalaine <%--Section 7--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection7Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection7Result" runat="server" Text="Your Test results indicate your Phenylalaine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>phenylalanine</b> deficiency may experience the
following symptoms:
<br />
<br />
Behavior changes, cataracts, dopamine deficiency, over eating, obesity, uncontrollable
eating, pain, brain fog, forgetful difficulty learning, arthritis, depression, menstrual
cramps, migraines, PMS symptoms, Parkinson&#39;s disease.
<br />
<br />
<b>Nutrient -  L-Phenylalanine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Cottage cheese, sesame seeds, pumpkin seeds, herring, raw 
peanut butter, coconut cream, goat milk, raw milk cheese, 
bananas, avocado, almonds, lima beans, turkey
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Coconut Cream Powder<br />
Bean Powder<br />
Turkey Protein Broth<br />
Queen Bee Milk<br />
Abunda Meal<br />
Avocado Powder<br />
Samson&#39;s Meal<br />
Magnesium Broth
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Phenylalanine</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Catalyst</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Hypericum</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Pineal Hormone Restoration Factors</td>
<td>1 at bedtime</td>
</tr>
<tr>
<td>Cal/Mag</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Okinawan Longevity Formula</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Vitamin D-3</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Theonine <%--Section 8--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection8Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection8Result" runat="server" Text="Your Test results indicate your Theonine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>theonine</b> deficiency may experience the following
symptoms:
<br />
<br />
Vegetarian, fatty liver. Weak nerves, bones, heart immune system.
<br />
<br />
<b>Nutrient -  Theonine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Lamb, buffalo, liver
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
24 Super Amino Acids<br />
Coconut Cream Powder<br />
Super Food<br />
90% Whey Protein
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Tryptophan <%--Section 9--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection9Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection9Result" runat="server" Text="Your Test results indicate your Tryptophan Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>tryptophan</b> deficiency may experience the following
symptoms:
<br />
<br />
Insomnia, depression, obesity, serotonin deficiency, sleep problems, mood swings,
hyperactivity. Alcohol craving, pain, drug withdrawal, apathy, fluid retention in
connective tissues, skin lesions, weakness, nervousness and lethargy.
<br />
<br />
<b>Nutrient -  Tryptophan</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Turkey, raw milk, raw goat milk, beef, duck, chicken, raw peanut
butter, soy beans, tuna, cottage cheese, barley, brown rice   
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Turkey Protein Broth<br />
Queen Bee Milk<br />
Coconut Cream Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Pineal Hormone Restoration Factors</td>
<td>1 at bedtime</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Nature&#39;s Flush</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Hypericum</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Stress and Toxin Protector</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Valine <%--Section 10--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection10Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection10Result" runat="server" Text="Your Test results indicate your Valine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>Valine</b> deficiency may experience the following
symptoms:
<br />
<br />
Easily upset emotionally, nervousness, sickle cell anemia, muscles not repairing
timely, drug addiction, fatigue. Poor muscle structure,
<br />
<br />
<b>Nutrient -  L-Valine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Salmon, tuna, cod, coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Fish Protein Powder<br />
28 Super Amino Acids
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Proline <%--Section 11--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection11Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection11Result" runat="server" Text="Your Test results indicate your Proline Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>proline</b> deficiency may experience the following
symptoms:
<br />
<br />
Aging skin, persistent soft tissue strains, hyper mobile joints, collagen deficiency,
vitamin C deficiency, slow wound healing, weak joints and/or tendons, weak heart.
<br />
<br />
<b>Nutrient -  L-Proline</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Chicken, duck, coconut cream, goat milk, raw cheese  
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Coconut Cream Powder<br />
Chicken Protein Powder<br />
Queen Bee Milk
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Taurine <%--Section 12--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection12Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection12Result" runat="server" Text="Your Test results indicate your Taurine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>taurine</b> deficiency may experience the following
symptoms:
<br />
<br />
High blood pressure, Candida, high cholesterol, excess estrogen, on synthetic hormones,
adult onset, human growth hormone, deficiency, migraines, high platelet count, impaired
vision, presently dieting, muscular dystrophy, breast cancer, Down&#39;s Syndrome,
epilepsy, hypoglycemia, cardiac arrhythmia, anxiety, hyperactive.
<br />
<br />
<b>Nutrient -  L-Taurine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Organic eggs, fish, beef, milk
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Queen Bee Milk<br />
24 Super Amino Acids<br />
Beef Protein Broth
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Taurine</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Abunda Thyroid</td>
<td>1 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Carnitine <%--Section 13--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection13Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection13Result" runat="server" Text="Your Test results indicate your Carnitine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>carnitine</b> deficiency may experience the following
symptoms:
<br />
<br />
High triglycerides, excess body fat, intermittent claudicating, poor hand and/or
foot circulation, low stamina, muscular dystrophy, obesity, heart disease, gets
tired easily, poor fat digestion, fatty and/or enlarged liver, heart surgery and/or
medications, poor muscle strength, weak heart muscle, nutrition deficiency, anemia,
muscle weakness, heart pain. Chronic fatigue. Excess body fat weight gain, diabetes,
muscle weakness, heart weakness, mental confusion,obesity..
<br />
<br />
<b>Nutrient -  L-Carnitine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Beef, buffalo, organic eggs, raw milk, organic cheese, cottage 
cheese, ricotta, fish, liver, turkey  
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Super Food<br />
90% Whey Protein<br />
24 Super Amino Acids<br />	
Coconut Cream Powder<br />
Beef protein Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Carnitine</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Tyrosine <%--Section 14--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection14Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection14Result" runat="server" Text="Your Test results indicate your Tyrosine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>tyrosine</b> deficiency may experience the following
symptoms:
<br />
<br />
Low body temperature, feeling cold, cold hands and/or feet, low blood pressure,
restless leg syndrome, Parkinsons, depression, excess body fat, stress overrun,
underperforming thyroid, nervous breakdown, on anti-depressants. Hypo thyroid, bad
mood and feeling stressed out, anxiety, depression, allergies. Headache, drug prescription
and or recreational drug withdrawal and long term iodine deficiency.
<br />
<br />
<b>Nutrient -  L-Tyrosine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Salmon, cod, tuna, blue fish
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Fish Protein Broth<br />
Blue/Green Algae	
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Tyrosine</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Glutamine <%--Section 15--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection15Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection15Result" runat="server" Text="Your Test results indicate your Glutamine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>glutamine</b> deficiency may experience the following
symptoms:
<br />
<br />
Autism, brain fog, brain fatigue, hard to think, memory challenges, hypoglycemia,
behavioral problems, depression, peptic ulcer, epilepsy, senility, schizophrenia,
arthritis, metabolic acidosis, underperforming brain, stomach and/or digestive problems,
autoimmune disease, radiation exposure, recovering alcoholic, sugar craving. Muscle
loss , radiation exposure, chronic fatigue, loss of sex drive.
<br />
<br />
<b>Nutrient -  L-Glutamine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Parsley, spinach, blue/green algae, barley green, alfalfa, 
wheat grass  
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Spinach Juice Powder<br />
Barley Green Powder<br />
Alfalfa Juice Powder<br />
Wheat Grass Juice Powder<br />
Blue/Green Algae<br />
Parsley Juice Powder<br />
24 Super Amino Acids
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Glutamine</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
<tr>
<td>L-Arginine complex</td>
<td>1 X 3</td>
</tr>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Cystene / cystine <%--Section 16--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection16Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection16Result" runat="server" Text="Your Test results indicate your Cystene / cystine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>cystene/cystine</b> deficiency may experience the
following symptoms:
<br />
<br />
Rheumatoid arthritis, hardening of the arteries, severe burns, heavy metal toxicity,
bronchitis, emphysema, T.B., respiratory disorders, weak lungs, chemotherapy, radiation,
aging skin, weak nails, toxicity.
<br />
<br />
<b>Nutrient -  Cystene/Cystine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Beef, eggs, milk, cheese, cream of rye, wheat germ, oat bran  
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Queen Bee Milk<br />
24 Super Amino Acids<br />
Super Food<br />
Goat Milk Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Arginine C Complex</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Glycine <%--Section 17--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection17Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection17Result" runat="server" Text="Your Test results indicate your Glycine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>glycine</b> deficiency may experience the following
symptoms:
<br />
<br />
Bi-Polar, weak connective tissue, skin problems. Prostate problems and hyper activity.
<br />
<br />
<b>Nutrient -  L-Glycine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Organic eggs, coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Coconut Cream Powder<br />
24 Super Amino Acids
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Alfalfa Juice Powder</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Alanine <%--Section 18--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection18Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection18Result" runat="server" Text="Your Test results indicate your Alanine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with an <b>alanine</b> deficiency may experience the following
symptoms:
<br />
<br />
Hypoclycemia, diabetes, syndrome X, insulin resistance, mood swings. Chronic fatigue.
<br />
<br />
<b>Nutrient -  L-Alanine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Brazil nuts, organic eggs, coconut cream, chicken
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Chicken Protein Powder<br />
Super Food<br />
Coconut Cream Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Alanine/L-Arginine Comples</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Gama Amino Butyric Acid (GABA) <%--Section 19--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection19Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection19Result" runat="server" Text="Your Test results indicate your Gama Amino Butyric Acid Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>gaba</b> deficiency may experience the following
symptoms:
<br />
<br />
High blood pressure, epilepsy, enlarged prostate, type A personality, depressed
sex drive, unable to relax, attention deficit disorder, uptight most of the time,
anxiety, agitated, lacks peace of mind.
<br />
<br />
<b>Nutrient -  Gama Amino Butric Acid,  (Gaba)</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Salmon, blue fish, cod, blackfish, herring, sardines, blue/green 
algae, barley green, flaxseed oil,. Cod liver oil, heat germ oil,
oil of evening primrose
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Abunda Vim<br />
Super Oil<br />
Abuna Meal<br />
Blue/Green Algae<br />
Fish Protein Powder<br />
Barley Green
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Gaba</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Oil of Evening Primrose</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Hypericum</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Asparagina / Aspartic Acid <%--Section 20--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection20Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection20Result" runat="server" Text="Your Test results indicate your Asparagina / Aspartic Acid Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with an <b>asparagine/aspartic acid</b> deficiency may experience
the following symptoms:
<br />
<br />
Chronic fatigue syndrome, brain disorder, liver sluggishness, immune problems.
<br />
<br />
<b>Nutrient -  Asparagine/Aspartic Acid</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Raw goat&#39;s milk, yogurt, coconut cream, organic eggs
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Queen Bee Milk<br />
Coconut Cream Powder<br />
Goat&#39;s Whey<br />
Live bac Intestional Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Alfalfa Juice Powder</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Glutamine</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Citrulline <%--Section 21--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection21Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection21Result" runat="server" Text="Your Test results indicate your Citrulline Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>citrulline</b> deficiency may experience the following
symptoms:
<br />
<br />
Smelly urine, very dark urine, adult onset, human growth hormone deficiency, undue
fatigue, weak immune system. Toxicity, Poor nails, skin, connective tissue and liver
dysfunction.
<br />
<br />
<b>Nutrient -  L-Citrulline</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Beef, liver, eggs, spirulina
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
South Pacific Spirulina<br />
Beef Protein Broth<br />
Blood Building Broth
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Ornithine <%--Section 22--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection22Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection22Result" runat="server" Text="Your Test results indicate your Ornithine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with an <b>ornithine</b> deficiency may experience the following
symptoms:
<br />
<br />
Sluggish liver, medically named liver condition, weak immune system, prone to bacterial
infections, tumor activity, slow healing, hypo pituitary-ism, loss of muscle, gains
of soft fat, adult onset, human growth hormone deficiency, muscles getting weaker,
looking older than years, weak ligaments, tendons, and/or connective tissue, skin
not repairing. Low growth hormone, excessive body fat.
<br />
<br />
<b>Nutrient -  L-Ornithine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Organic eggs, beef, chicken, spirulina, tuna, goat milk, 
coconut cream
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Queen Bee Milk<br />
Super Food<br />
24 Super Amino Acids<br />
Beef Protein Broth<br />
Coconut Cream Powder<br />
90% Whey Protein<br />
Goat&#39;s Whey
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Ornithine/L-Arginine complex</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Glutathione <%--Section 23--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection23Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection23Result" runat="server" Text="Your Test results indicate your Glutathione Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>glutathione</b> deficiency may experience the following
symptoms:
<br />
<br />
Memory loss, arthritis, autoimmune disease, intestinal disorders, radiation exposure,
epilepsy, impotence, sugar craving, alcohol craving, schizophrenia, senility, undue
fatigue, liver sluggishness, tumor development, cancer history, heave metal toxicity,
environmental disease, severe allergies, chemical exposure, weak immune system,
aging faster than years, toxic conditions, excess alcohol, carbohydrate intolerance,
loss of muscle. Lack of coordination, mental disorders, tremors, difficulty maintaining
balance and premature aging.
<br />
<br />
<b>Nutrient -  L-Glutathione</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Organic beef liver, organic calf&#39;s liver
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Blood Building Broth<br />
Beef Protein Broth<br />
24 Super Amino Acids
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Glutathione</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Organic Sulfur</td>
<td>1 X 3</td>
</tr>
<tr>
<td>L-Cystine</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Organic Sulfur</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Green Chlorophyll Alkalizing Juice</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Liver Detox formula</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Milk Thistle</td>
<td>1 X 3</td>
<tr>
<td>Dandelion Root</td>
<td>1 X 3</td>
</tr>
</tr>
</table>
<br />
<br />
<h5>
Acetyl-L-Carnitine <%--Section 24--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection24Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection24Result" runat="server" Text="Your Test results indicate your Acetyl-L-Carnitine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with an <b>acetyl-L-carnitine</b> deficiency may experience
the following symptoms:
<br />
<br />
Mental confusion, heart pain, obesity, Muscular Dystrophy, muscle weakness, sluggish
metabolism, low HDL cholesterol, diabetes, excess alcohol consumption, hypoglycemia,
weak heart, angina attacks, coronary heart disease, neuromuscular problems, memory
problems, loss of muscle, gain of fat.
<br />
<br />
<b>Nutrient -  Acetyl L-Carnitine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Calf&#39;s liver, organ meats, salmon, herring, sardines, raw milk,
raw cheese
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Blood Building Broth<br />
Goat&#39;s Whey<br />
Goat Milk Powder<br />
Queen Bee Milk<br />
Beef Protein Broth
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Acetyl L-Carnitine	</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella </td>
<td>1 X 3</td>
</tr>
<tr>
<td>L-Carnitine	</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Alpha Lipoic Acid <%--Section 25--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection25Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection25Result" runat="server" Text="Your Test results indicate your Alpha Lipoic Acid Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with an <b>alpha lipoic acid</b> deficiency may experience
the following symptoms:
<br />
<br />
Mercury toxicity from dental fillings, diabetic, insulin resistance, blood sugar
fluctuations, hardening of the arteries, muscle soreness, liver sluggishness, enlarged
liver, named liver condition, stroke, heart disease, low energy.
<br />
<br />
<b>Nutrient -  Alpha Lipoic Acid</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Raw wheat germ oil, Cold pressed oils, sesame seeds, 
coconut cream, broccoli, cabbage
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Super Oil<br />
Abunda Vim<br />
Samson&#39;s Meal<br />
Abunda Meal<br />
Coconut Cream Powder<br />
Broccoli Juice Powder<br />
Cabbage Juice Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Alpha Lipoic Acid</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Co Enzyme Q 10</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Arginine Alpha Ketoglutarate <%--Section 26--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection26Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection26Result" runat="server" Text="Your Test results indicate your Arginine Alpha Ketoglutarate Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with an <b>arginine alpha ketoglutarate</b> deficiency may
experience the following symptoms:
<br />
<br />
Glucose intolerance, insulin problems, impaired fat metabolism, adult onset, human
growth hormone deficiency, looking, feeling, acting older than your year, aging
skin, arthritis, low sperm count, male infertility, weak immune system, slow healing,
poor muscle tone, slow brain, brain fog, body fat weight gain.
<br />
<br />
<b>Nutrient -  Arginine Alpha Ketoglutarate</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Beef, buffalo, lamb, eggs, milk, cheese
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Beef Protein Powder<br />
Goat&#39;s Whey<br />
Queen Bee Milk<br />
Super Food
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Arginine Complex</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Creatine Monohydrate <%--Section 27--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection27Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection27Result" runat="server" Text="Your Test results indicate your Creatine Monohydrate Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>creatine monohydrate</b> deficiency may experience
the following symptoms:
<br />
<br />
Undue fatigue, slow muscle recovery, low stamina, low energy, muscles tire easily,
excess body fat, low HDL cholesterol, high total cholesterol, high triglycerides,
muscle atrophy.
<br />
<br />
<b>Nutrient -  Creative Monohydrate</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Beef, lamb, buffalo, deer
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Power Cell<br />
Beef Protein Broth<br />
Super Food
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Power Cell</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Muscle Builder</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Macho Vita</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy</td>
<td>Bedtime Cream (Prescription Item)</td>
</tr>
</table>
<br />
<br />
<h5>
N-Acetyl-Cystine <%--Section 28--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection28Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection28Result" runat="server" Text="Your Test results indicate your N-Acetyl-Cystine Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>N-acetyl-cystine</b> deficiency may experience the
following symptoms:
<br />
<br />
Dark/thick blood, lung, pulmonary, bronchial mucus, asthma, allergies, history of
blood clots, blood too thick, cancer history, thrombosis, arthrosclerosis, high
homocysterine, fibrinogen and/or C-reactive protein, platelet aggregation, heavy
metal toxicity, radiation exposure, respiratory problems, anemia, sluggish liver,
named liver condition.
<br />
<br />
<b>Nutrient -  N-Acetyl Cystine</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Organic eggs
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Super Food<br />
M.S.M.<br />
Naturopathic Purification Powder<br />
Broccoli Juice Powder<br />
Cabbage Juice Powder<br />
Cauliflower Juice Powder<br />
Sauerkraut
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>N-Acetyl Cystine</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Organic Sulphur</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>M.S.M.</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Ornithine Alpha Ketoglutarate <%--Section 29--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection29Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection29Result" runat="server" Text="Your Test results indicate your Ornithine Alpha Ketoglutarate Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with an <b>ornithine alpha ketoglutarate</b> deficiency may
experience the following symptoms:
<br />
<br />
Ammonia smelling urine, liver damage, human growth hormone deficiency, aging skin,
painful connective tissue.
<br />
<br />
Dark/thick blood, lung, pulmonary, bronchial mucus, asthma, allergies, history of
blood clots, blood too thick, cancer history, thrombosis, arthrosclerosis, high
homocysterine, fibrinogen and/or C-reactive protein, platelet aggregation, heavy
metal toxicity, radiation exposure, respiratory problems, anemia, sluggish liver,
named liver condition.
<br />
<br />
<b>Nutrient -  Ornithine Alpha Ketogluterate</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Beef, lamb, eggs, milk
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Super Food<br />
Queen Bee Milk<br />
Beef Protein Broth
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Ornithine/Arginine Complex</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Muscle Builder</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Adrenal Hormone Restoration Factors</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Male Hormone Restoration Factors</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Female Hormone Restoration Factors</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Macho Vita</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy </td>
<td>Bedtime Cream (Prescription Item)</td>
</tr>
</table>
<br />
<br />
<h5>
S-Adenosyl-L-Methionesame <%--Section 30--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection30Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection30Result" runat="server" Text="Your Test results indicate your S-Adenosyl-L-Methionesame Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>S-adenosyl-L-methione</b> same deficiency may experience
the following symptoms:
<br />
<br />
High blood homocysteine, inflamed joints, osteoarthritis, cartilage problems, joint
problems, dementia, Alzheimer&#39;s, fibromyalgia, depression, negative mental attitude,
mood swings.
<br />
<br />
<b>Nutrient -  S-Adenosyl M Methione</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Organic Eggs
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Super Food<br />
Coconut Cream Powder<br />
Naturopathic Purification Powder<br />
Broccoli Juice Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Methione</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Organic Sulfur</td>
<td>1 X 3</td>
</tr>
<tr>
<td>L-Actyal Cystine</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chlorella</td>
<td>1 X 3</td>
</tr>
<tr>
<td>M.S.M.</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Pyruvate <%--Section 31--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionCSection31Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionCSection31Result" runat="server" Text="Your Test results indicate your Pyruvate Levels are "></asp:Literal>
<br />
<br />
Individuals diagnosed with a <b>pyruvate</b> deficiency may experience the following
symptoms:
<br />
<br />
Weight loss goal, desires to lose fat and gain evenly, desire to strengthen heart,
high blood pressure, high cholesterol, muscle loss, muscle weakness, poor muscle
tone, sagging skin.
<br />
<br />
<b>Nutrient -  Pyruvate</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Beef, eggs, milk, coconut cream, whey
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Power Cell<br />
90% Whey Protein<br />
Super Food<br />
Queen Bee Milk<br />
Goat&#39;s Whey<br />
Beef Protein Powder<br />
Blood Building Broth
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Muscle Builder</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Power Cell</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy</td>
<td>Bedtime Cream (Prescription Item)</td>
</tr>
</table>
<br />
<br />
<h4><%--Division D --%>(Metabolic Evaluation)</h4><br />
<h5>
Pre-mature Aging – Aging/Degenerating faster than chronological years <%--Section 1--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionDSection1Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionDSection1Result" runat="server" Text="Your Test results indicate your Pre-mature Aging Levels are "></asp:Literal>&nbsp;
<br />
<br />
Individuals prematurely aging may be predisposed to and/or experience the following
symptoms:<br />
<br />
Crows feet, bags under eyes, skin thinning, loss of skin elasticity, skin moles
increasing in number; age spots, white spots, loss of skin pigment, wrinkle lines,
from lip to nose; receding gums – excessive wrinkling of face, chest, arms, hands,
noticeable tilting forward of head and neck, spine stiffness; tiny red spots, joint
deformity, decrease in joint mobility, joint pain, reduced lip size, fingernail
ridges; shuffling while walking, varicose veins and/or spider veins increasing,
decline in visual capacity, cold hands/feet; skin easily damaged by sunlight, dry
skin, dry mucus membranes in nose, vagina, sinuses, mouth, one B.M. per day or less;
receding hairline, hair loss, balding, graying of hair, skin tags, floaters in eyes,
muscular degeneration; tremors, dry eyes, irregular heartbeat, reduced ring size,
teeth problems, loss of smell or taste, slow recovery from flu; loss of muscle in
arms, shoulders, legs, two alcohol drinks per week or more; hearing loss; diagnosis
with cancer; feeling more tired, crave sugar foods; increasingly losing strength,
high blood pressure.
<br />
<br />
<b>Nutrient -  Premature Aging</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Spinach, broccoli, tomato, carrot, parsley, zucchini, cabbage, 
celery, blue/green algae, barley green, wheat grass, sprouts, alfalfa
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Spinach Juice Powder<br />
Broccoli Juice Powder<br />
Tomato Juice Powder<br />
Carrot Juice Powder<br />
Zucchini Juice Powder<br />
Alfalfa Juice Powder<br />
Blue/Green Algae
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Pineal Hormone restoration Factors</td>
<td>at bedtime</td>
</tr>
<tr>
<td>Adrenal Hormone Restoration Factors</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Male or Female Hormone Restoration Factors</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Bio Identical Hormone Restoration Therapy</td>
<td>(Prescription)</td>
</tr>
<tr>
<td>Lady Tonic</td>
<td></td>
<tr>
<td>Macho Vita</td>
<td></td>
</tr>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Human Growth Hormone Restoration Therapy</td>
<td>(Prescription)</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Blood Sugar Collapse / Bio Energy Thief <%--Section 2--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionDSection2Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionDSection2Result" runat="server" Text="Your Test results indicate your Blood Sugar Collapse/Bio Energy Thief Levels are "></asp:Literal>&nbsp;
<br />
<br />
<b>Blood Sugar Collapse/Bio Energy Thief</b>
<br />
Individuals suffering from blood sugar collapse and/or a bio energy thief may be
predisposed to, diagnosed with and/or possibly experience the following symptoms:
<br />
<br />
Mood swings, fatigue after eating, waking up after falling asleep, temper tantrums,
easily agitated, crying spells, cantankerous; dizziness, fainting spells, legs get
rubbery and/or weak, episodes of shakiness and/or tremors, clumsiness, memory problems,
nightmares, fast food/junk food habit; headache after missing a meal, easily frustrated,
episodes of cold sweats, disorientation, attention deficit, constant worry, craving
for sweets; episodes of nausea, depression often relieved by eating sleepiness after
eating sweets, junk food or starch, fits of anger, bouts of violent behavior, sensations
of impending doom, accident prone, alcohol consumption one or more drinks a day;
panic attacks, sudden drop in energy, indecisiveness, can&#39;t concentrate, uncontrollable
negative and/or self destructive thoughts, binge eating, episodes of sudden mental
blackouts, salty food cravings.
<br />
<br />
<b>Nutrient -  Blood Sugar Collapse</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Apple, blueberry, raw milk cheese, coconut cream, fish, 
eggs, chicken
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Super Food<br />
24 Super Amino Acids<br />
Coconut Cream Powder<br />
G.T.F. Powder<br />
Tigers Food<br />
Blood Sugar and Energy Powder<br />
Energy Powder<br />
Green Power Formula<br />
Asian Exotic Fruit Extract
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Blood Sugar and Cortisol Control</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Chromium Picolonate</td>
<td>1 X 3</td>
</tr>
<tr>
<td>L-Arginine Squirt</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Blood Sugar and Energy</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Adrenal Hormone Restoration Factors</td>
<td>1 X 3</td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>L-Arginine Complex</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Candida Albacans <%--Section 3--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionDSection3Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionDSection3Result" runat="server" Text="Your Test results indicate your Candida Albacans Levels are "></asp:Literal>&nbsp;
<br />
<br />
<b>Candida Albacans</b>
<br />
Individuals diagnosed with or suffering from Candida albacans may be predisposed
to and/or possibly experience the following symptoms:
<br />
Tagament or Zantac use, taken antibiotics last two years, bloating after eating,
persistent indigestion an/or heartburn, constipation, history of eczema and/or psoriasis,
allergies, sensitive to air borne mold, history of oral, rectal, vaginal thrush;
recurrent urinary tract and/or bladder infections, used cortisone orally, vaginally,
on skin, pill or as an inhalant, history of ulcerative, colitis or Crohn&#39;s Disease;
drink fruit juice on a regular basis, skin and/or scalp itches, ring worm, cold
hands/feet, intolerance to cold weather, can&#39;t stand humidity, painful PMS;
rectal and/or vaginal burning, white vaginal discharge, sensitive to smoke and chemical
odors, brain fog, attention deficit, chronic sore or scratchy throat, toe and/or
fingernail fungus, sensitive to fermentation; burning during and/or after urination,
chronic sinus problems, intolerance to alcohol, dandruff, crave sugary foods, itching
vagina, penis, groin, rectum.
<br />
<br />
<b>Nutrient -  Candida Albacans</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Goat yogurt, raw sauerkraut, keifer, buttermilk
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Liver Intestinal Powder<br />
Goat Whey<br />
Naturopathic Purification Powder<br />
Parasite annihilation Powder<br />
Bentonite<br />
Bowel Tonic<br />
P. M. Bowel Blaster<br />
Maxi Fiber<br />
Bowel Regulator<br />
Bowel Tonic<br />
Livebac Intestinal Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega Dolophus</td>
<td>2 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Maxi Cleanser</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Fiber Max</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Mega B Complex</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Aloe Vera Stems</td>
<td>2 X 3</td>
</tr>
<tr>
<td>Absorption Enhancer</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Chinese Medicinal Garlic Oil Extract</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Oregano Oil Extract</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Intestinal Parasite Syndrome <%--Section 4--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionDSection4Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionDSection4Result" runat="server" Text="Your Test results indicate your Intestinal Parasite Syndrome Levels are "></asp:Literal>&nbsp;
<br />
<br />
<b>Intestinal Parasite Syndrome</b>
<br />
Individuals diagnosed with or suffering from intestinal parasites may be predisposed
to and/or possibly experience the following symptoms:
<br />
Rectal pressure, muscle weight loss, getting wrinkles, digestive distress after
eating fatty foods, ravenous appetite, diarrhea, mucus in stool, night sweats, insomnia,
severe fatigue, nausea and/or vomiting, rectal itching, chronic anemia, eat pork,
sausage, prosciutto, shrimp, lobster, clams, squid, sushi, own a pet that you handle,
pet or kiss.
<br />
<br />
<h5>
Mal-Absorption Syndrome <%--Section 5--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionDSection5Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionDSection5Result" runat="server" Text="Your Test results indicate your Mal-Absorption Syndrome Levels are "></asp:Literal>&nbsp;
<br />
<br />
<b>Mal-Absorption Syndrome</b>
<br />
Individuals diagnosed with or suffering from mal-absorption syndrome may be predisposed
to and/or possibly experience the following symptoms:
<br />
Foul smelling stools, bloating after meals, indigestion unrelieved by anti acids,
constipation, belching, psoriasis, eczema, dermatitis, dandruff, undigested food
in stool, foul smelling intestinal gas, chronic heartburn, blood sugar disturbances,
diabetes, hypoglycemia, undergone, chemotherapy last five years, diagnosed with
a named liver disease, celiac disease, gluten intolerance, taken antibiotics in
last year, history of parasites, take laxatives on regular basis, red tongue.
<br />
<br />
<b>Nutrient -  Mal Absorption Syndrome</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Papaya, pineapple, goat yogurt, crude apple, cider vinegar, 
psyllium husks, psyllium seeds, oat bran, rice bran, wheat bran
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Bio-Ox<br />
Liquid Enzymes<br />
Crude Apple Cider Vinegar Powder<br />
Stomach Rebuilding Powder<br />
Goat&#39;s Whey<br />
Ionic Liquid Stomach and Digestive Formula<br />
Livebac Intestinal Powder<br />
Super Green<br />
Bowel Tonic
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Absorption Enhancer</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Plant Enzyme Therapy</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Digestive Chews</td>
<td>2 X 3</td>
</tr>
<tr>
<td>Bromeline</td>
<td>2 X 3</td>
</tr>
<tr>
<td>Herbal Digestant</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Enzyme Therapy</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Crude Apple Cider Vinegar</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega Dolophus</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Super Juice Plus 22 Vegetables</td>
<td>4 X 3</td>
</tr>
<tr>
<td>L-Glutimine</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Fiber Max</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Maxi Cleanse</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Liver Sluggishness <%--Section 6--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionDSection6Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionDSection6Result" runat="server" Text="Your Test results indicate your Liver Sluggishness Levels are "></asp:Literal>&nbsp;
<br />
<br />
<b>Liver Sluggishness</b>
<br />
Individuals diagnosed with or suffering from liver sluggishness may be predisposed
to and/or possibly experience the following symptoms:
<br />
Tired after eating, sugar intolerance, white of eyes brownish, foul smelling bowel
gas, alcohol intolerance, tendency to over eat, dark urine, very high or low cholesterol
and/or triglycerides, history of hepatitis, cirrhosis, giardia, worms, amoebic dysentery,
diagnosis with a named liver condition, persistent sleepiness, right side abdominal
pain, constipation, bleed excessively, poor blood clotting, gains weight easily,
blood sugar imbalance, taken Tylenol, gall bladder removed, history of gall stones,
taken cholesterol lowering drugs.
<br />
<br />
<b>Nutrient -  Liver Sluggishness</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Beets, beet greens, dandelion, Swiss chard, alfalfa, barley green, 
olive oil, turnip greens, collards, rhubarb, spinach
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Beet Juice Powder<br />
Alfalfa Juice Powder<br />
Barley Green<br />
Spinach Juice Powder<br />
Liver Gall Bladder Cleanse<br />
Ionic Liquid Liver Formula<br />
Bowel Tonic<br />
Naturopathic Purification Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Liver Detox</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Alpha Lipoic Acid</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Organic Sulfur</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Dandelion Root</td>
<td>1 X 3</td>
</tr>
<tr>
<td>L-Actyal Cystine</td>
<td>1 X 3</td>
</tr>
<tr>
<td>L-Glutathion</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Beet Juice</td>
<td>2 X 3</td>
</tr>
<tr>
<td>Mega Dolophus</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Fiber Max</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Maxi Cleanse</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Alfalfa Juice</td>
<td>4 X 3</td>
</tr>
<tr>
<td>M.S.M.</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<h5>
Intestinal Dysbiosis, Fermentation - Yeast Fungus Syndrome <%--Section 7--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionDSection7Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionDSection7Result" runat="server" Text="Your Test results indicate your Intestinal Dysbiosis, Fermentation - Yeast Fungus Syndrome Support
Levels are "></asp:Literal>&nbsp;
<br />
<br />
<b>Intestinal Dysbiosis, Fermentation - Yeast Fungus Syndrome</b>
<br />
Individuals diagnosed with or suffering from intestinal dysbiosis, fermentation
- yeast fungus syndrome may be predisposed to and/or experience the following symptoms:
<br />
<br />
Itching rectum, groin, penis, vagina, low body temperature, craving for sweets,
allergies, do you take anti acids, Zantac, Tagament, cortisone, inhalants; indigestion
or abdominal discomfort after eating fruit, psoriasis, sensitivity to air borne
molds; rectal or vaginal burning, chronic scratchy throat, scalp itches, eczema,
vulnerable to food poisoning or intestinal flu/virus; burning urination, severe
intolerance to cold, bloating after meals, history of Candida, alcohol intolerance;
skin itches, persistent heartburn, indigestion, acid reflux, chronic sore throat,
history of thrush; itching ear canals, belly button, athletes foot, sensitivity
to odors or chemicals, toenail/fingernail fungus, attention deficit, drink tap water;
chronic sinus problem, feel worse on damp, humid days, low white blood count, history
of yeast infection, constipation, bottle fed baby, ulcerated colitis; heavy dandruff,
painful menstruation, ring worm, taken antibiotics in last five years, seborrhea,
diverticulitis, irritable bowel syndrome; brain fog, history of fungal infection,
consume sugar daily, urinary tract infection, avoid yogurt; sensitivity to blue
cheese, aged cheese, vinegar, soy sauce, bakers yeast, foul smelling stools, colon
cancer, mucus in stools.
<br />
<br />
<b>Nutrient -  Intestinal Dysbiosis, Fermentation, Yeast, Fungus Syndrome
</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Goat yogurt, rice bran, sauerkraut, buttermilk
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Live bac Itestinal Powder<br />
Liquid Enzymes<br />
Bowel Tonic<br />
Goat&#39;s Whey<br />
Spinach Juice<br />		
Naturopathic Purification Powder<br />
Bio-Ox<br />
Parasite Annihilation Powder<br />
Ionic Liquid Intestinal Flora Formula
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega Dolophus</td>
<td>2 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Livebac Intestinal Powder</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Goat&#39;s Whey</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Parasite Annihilation Powder</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Chinese Medicinal Garlic Oil Extract</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Oregano Oil Extract</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Bentonite</td>
<td>4 X 3</td>
</tr>
</table>
<br />
<br />
<%--<h4>Division E</h4><br />--%>
<h5>
Body/Mind Psycho Induced/Exacerbated Somatic Significance <%--Section 1--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionESection1Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionESection1Result" runat="server" Text="Your Test results indicate that your Body/Mind Psycho Induced/Exacerbated Somatic Significance Levels are "></asp:Literal>&nbsp;
<br />
<br />
<b>Body/Mind Psycho Induced/Exacerbated Somatic Significance</b>
<br />
The mind controls the body. In addition to nutrition, hormonal and metabolic supplementation,
some individuals living under stressful conditions may require special motivational
support, stress relief and/or brain washing therapy. Individuals whose physical
condition may have been induced and/or exacerbated by the mind and/or emotions may
have been diagnosed with or predisposed to and/or experience the following symptoms:
<br />
<br />
Often feeling like giving up, feeling like the present is intolerable, feeling that
the future will be worse, tendency, can&#39;t take the pressure, talks a lot about
their medical conditions and personal problems, not much joy in life; inner fear
of death, inner fear of ill health, inner fear of the unknown, inner fear of poverty,
inner fear of criticism, inner fear of loss, inner fear of a loss of a loved one,
fear of loss of love, respect and/or dignity; tendency to ignore your own inner
needs, not feeling in control of your life, unfairly strike out at those close to
you, deep rooted pessimism, feeling of not being supported; feeling of a constant
struggle against time, constant fight with self to achieve more, quick to anger
and/or hostility, tendency to place unrealistic demands on self and others, inner
feelings of insecurity and/or inadequacy; keep bottled up inside, difficulty expressing
feelings, can&#39;t get the right words out, tendency to repress my feelings, often
holds back what would like to be said; feeling of loneliness, feeling of being trapped,
feeling hopeless, feeling worthless, feelings of guilt, tendency to avoid rather
than fight, sometimes choose to deny rather than face up, lack of assertiveness,
not too good in dealing with personal problems, unsatisfactory personal relations;
death of spouse, divorce, marital separation pending, jail term, death of close
family member; personal injury or illness, recent marriage or engagement, fired
at work, marital reconciliation, retirement, change in health of a family member;
pregnancy, sexual difficulties, gain of a new family member, business readjustment,
change of financial status, death of a close friend, change to a different line
of work, new mortgage or loan; change in number of arguments with spouse, mortgage
foreclosure, change of responsibilities at work, son or daughter leaving home, trouble
with in-laws, wife begins or quits work, change in living conditions, trouble with
boss, change in residence, change of work hours, change in eating habits, minor
violations with the law.
<br />
<br />
<b>Nutrient -  Psyco Induced Somatic Overun
</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Turkey, salmon, cod, blackfish, coconut cream, beef, eggs, raw milk
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Abunda Life&#39;s Brain Washing Program
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Abunda Life&#39;s Brain Washing Program on MP-3</td>
<td>ipod</td>
</tr>
<tr>
<td>Pineal Hormone Restoration Factors</td>
<td>1 at bedtime</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Adrenal Hormone Restoration Factors</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Hypericum</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy</td>
<td>(Prescription Item)</td>
</tr>
</table>
<br />
<br />
<%--<h4>Division F</h4><br />--%>
<h5>
Cellular Oxygen Deficiency <%--Section 1--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionFSection1Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionFSection1Result" runat="server" Text="Your Test results indicate your Cellular Oxygen Deficiency Levels are "></asp:Literal>
<br />
<br />
<b>Cellular Oxygen Deficiency</b>
<br />
Cellular oxygen is life&#39;s most essential nutrient. Individuals diagnosed with
hypoxia, or are predisposed to cellular oxygen deficiency and/or experiencing the
following symptoms may require supplementation:
<br />
<br />
History of viral infection or bacterial infection, weak immune system, broken bones
(3 yrs.), poor physical condition; skin grafts or burns or surgery (2 yrs.), feeling
like you need fresh air, obesity, live or work in a closed building built after
1974, sick building syndrome, moldy building; loss of feeling of well being, pale
look, slow recuperation, radiation exposure, no get up and go, difficulty getting
words out; inflammatory condition, poor stamina, heart surgery, sluggish metabolism,
weekly alcohol; moldy environment exposure, yeast infections, chronic lung disease,
on prescription medications, immune weakness; short windedness, near drowning experience,
low endurance, feeling older than years, chemotherapy; degenerative diseases developing
as you age, low tolerance for exercise, toxic condition, takes sleeping pills; diabetic
ulcers, diabetic foot wounds, slow would healing, sports injury, feeling cold most
of the time, constipation; feeling wiped out, can&#39;t get started upon awakening,
burning muscles after physical work; sore muscles, weak limbs, slow recovery after
exercise, tires easily; brain fog, dementia, autism, Alzheimer&#39;s, brain injuries,
confusion, emotional disorientation; yawns spontaneously, anemia, carbon monoxide
poisoning, environmental fume exposure, bypass surgery, angioplasty, stents, feel
faint; history of HIV, lymphatic congestion, liver sluggishness, liver diseases;
history of stroke, heart disease, dead brain cells, abnormal slowing of heart beat,
high cholesterol, high triglycerides, high glucose, high insulin; cancer, Candida,
yeast infections, X-rays, joint problems, cold hands and/or feet, peripheral vascular
disease; M.S., Parkinson&#39;s, C.P., birth injuries, streptococcal infections,
low energy; vision loss, alcohol abuse, obesity, excess body fat weight gain, radiation
damage, blocked blood vessels; chronic fatigue syndrome, diabetes, Lyme&#39;s disease,
pain, low grade fevers, herpes virus, hard to think at times, dizziness; learning
disabilities, loss of ability to concentrate, exercise less than 30 minutes daily,
attention deficit; asthma, allergies, erectile dysfunction, exposed to second hand
smoke, ex-smoker, smoker.
<br />
<br />
<b>Nutrient -  Cellular Oxygen Deficiency
</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Green vegetables, raw wheat germ oil, cold pressed safflower oil, 
cold pressed flax seed oil
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Oxidative Therapy
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Ozone Infused Far Infrared Detoxification Therapy</td>
<td></td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Hyperbaric Oxygen</td>
<td></td>
</tr>
<tr>
<td>Direct Ozone I.V.</td>
<td></td>
</tr>
<tr>
<td>Photo Luminescence with I.V. Hydrogen Peroxide</td>
<td></td>
</tr>
<tr>
<td>Ozone Insulflation</td>
<td></td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Oxygen Saturating Therapy</td>
<td></td>
</tr>
<tr>
<td>Exercised Induced oxygen Saturation Therapy</td>
<td></td>
</tr>
</table>
<br />
<br />
<h5>
Dopamine <%--Section 2--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionFSection2Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionFSection2Result" runat="server" Text="Your Test results indicate that your Dopamine Levels are "></asp:Literal>&nbsp;
<br />
<br />
<b>Dopamine</b>
<br />
Individuals diagnosed with a <b>dopamine</b> deficiency may experience the following
symptoms:
<br />
<br />
Feeing mentally down, frustrated, negative, defeated or mentally down more often
than should be; have trouble concentrating or staying focused; need substances to
pick me up like caffeine, chocolate, junk food, diet pills, drugs, smokes, carbohydrates;
struggle to get motivated to exercise or to do constructive things I need to do;
Negative attitude draws my mental and physical energy and desire to do anything,
am a low energy kind of person physically and mentally.
<br />
<br />
<b>Nutrient -  Dopamine
</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Raw milk, raw cheese
<br />
<br />
<%--<b>Naturopathic Food Medicines and Tonics :</b><br />
Oxidative Therapy
<br /><br />--%>
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>L-Tyrosine</td>
<td>1 X 3</td>
</tr>
<tr>
<td>L-Phenylalanine</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Abunda Body</td>
<td>1 in the a.m.</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Folic Acid</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Mega Cobalmin</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Co Enzyme Q 10 with Omega 3</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Borage Oil</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Brain Flush</td>
<td></td>
</tr>
<tr>
<td>Lipotropic Factors</td>
<td></td>
</tr>
<tr>
<td>Lignan</td>
<td></td>
</tr>
<tr>
<td>Wheat Germ Oil</td>
<td></td>
</tr>
<tr>
<td>Vitamin Complex</td>
<td></td>
</tr>
<tr>
<td>Oil of Evening Primrose</td>
<td></td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy</td>
<td>(Prescription Item)</td>
</tr>
</table>
<br />
<br />
<h5>
Serotonin <%--Section 3--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionFSection3Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionFSection3Result" runat="server" Text="Your Test results indicate your Serotonin Levels are "></asp:Literal>&nbsp;
<br />
<br />
<b>Serotonin</b>
<br />
Individuals diagnosed with <b>serotonin</b> deficiency may experience the following
symptoms:
<br />
<br />
See the glass half empty, automatically think negative thoughts, have low self esteem
- low self confidence; get winter blues, seasonal affective disorder, tends to be
irritable, easily angered, impatient, shy, afraid of going out, fear of heights,
crowds, flying or speaking in public, Claustrophobic; feel anxious, have panic attacks,
have PMS, moody, cravings, breast tenderness, bloating before period; have trouble
falling asleep, wake up, trouble going back to sleep, wake up too easily - craves
sweets, starchy carbohydrates, breads, pasta; have muscle aches, Fibromyalgia, TMJ,
been on anti-depressants, feel better after exercise.
<br />
<br />
<b>Nutrient -  Serotonin
</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Turkey
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Cal/Mag/Boron Tonic<br />
Magnesium Broth<br />
Nerve Tonic<br />
Super Green
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Pineal Hormone Restoration Factors</td>
<td>1 at bedtime</td>
</tr>
<tr>
<td>Tryptophan</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Blood Sugar and Cortisol Control</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Catalyst</td>
<td>2 X 3</td>
</tr>
<tr>
<td>Pyridoxine</td>
<td>2 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>RNA/DNA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Cal/Mag</td>
<td>2 X 3</td>
</tr>
<tr>
<td>Okinawan Longevity Formula</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy</td>
<td>(Prescription Item)</td>
</tr>
</table>
<br />
<br />
<h5>
Gaba <%--Section 4--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionFSection4Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionFSection4Result" runat="server" Text="Your Test results indicate your Gaba Levels are "></asp:Literal>&nbsp;
<br />
<br />
<b>Gaba</b><br />
Individuals diagnosed with <b>gaba</b> deficiency may experience the following symptoms:
<br />
<br />
Hard for me to relax, easily stressed out or overwhelmed; common for me to feel
overworked and/or pressured; body gets stiff or uptight, sometimes feel weak and
shaky; sensitive to loud noises, lights, people or too much activity; feel anxious
or stressed if I skip meals, use substances such as sugar, smokes, alcohol, food
or drugs to help me relax.
<br />
<br />
<b>Nutrient -  Gammo Linolenic Acid, (Gaba)
</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Salmon, cod, tuna, mackerel, spirulina, raw goat&#39;s milk, 
oil of evening primrose, cold pressed wheat germ oil
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Cal/Mag Powder<br />
Nerve Tea<br />
Magnesium Broth<br />			
Anxiety Tonic<br />
Cal/Mag/Boron Tonic<br />		
High Phenol Green Tea
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Gaba</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Pineal Hormone Restoration Factors</td>
<td>1 at bedtime</td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Hypericum</td>
<td>4 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Catalyst</td>
<td>1 X 3</td>
</tr>
<tr>
<td>L-Theanine</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Valerian Root</td>
<td>2 X 3</td>
</tr>
<tr>
<td>Passion Flower</td>
<td>2 X 3</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Lipotropic Factors</td>
<td>2 X 3</td>
</tr>
<tr>
<td>Brain Flush</td>
<td>1 X 3</td>
</tr>
<tr>
<td>DMEA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Mega Pyridoxine</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Mega Cobolomine</td>
<td>2 X 3</td>
</tr>
<tr>
<td>Stress and Toxin Protector</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy</td>
<td>(Prescription Item)</td>
</tr>
</table>
<br />
<br />
<h5>
L-Acetylcholine <%--Section 5--%></h5>
<br />
<b>Section Total Score:</b>&nbsp;<asp:Literal ID="LtrDivisionFSection5Score" runat="server"></asp:Literal>
<br />
<br />
<asp:Literal ID="LtrDivisionFSection5Result" runat="server" Text="Your Test results indicate your L-Acetylcholine Levels are "></asp:Literal>&nbsp;
<br />
<br />
<b>L-Acetylcholine</b>
<br />
Individuals diagnosed with <b>L-Acetylcholine</b> deficiency may experience the
following symptoms:
<br />
<br />
Find myself writing things down so I won&#39;t forget them, find it hard to do math
in my head; have a hard time finding words or remembering what I was saying if interrupted
during a conversation; get nervous or anxious when learning something new like software
at work; misplace my keys, wallet or glasses of other things frequently; when reading
a book or watching a movie, find it harder to follow the plot than it used to be;
have trouble focusing during long conversations or meetings, feel my brain is just
not functioning as it used to.
<br />
<br />
<b>Nutrient -  L-Acetylcholine
</b><br />
<br />
<b>Foods :</b>&nbsp;&nbsp;Salmon, tuna, herring, sardines, turkey, eggs
<br />
<br />
<b>Naturopathic Food Medicines and Tonics :</b><br />
Brain Food<br />
Super Food<br />
Brain Invigoration Powder<br />
90% Whey Protein<br />
24 Super Amino Acids<br />		
Tigers Food<br />
Coconut Cream Powder
<br /><br />
<b>Nutritional Supplement Therapy :</b>
<br /><br />
<i><b>Minimum</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Actyal L-Carnitine</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Liptropic Factors</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Lignan</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Stress and Toxin Protector</td>
<td>1 X 3</td>
</tr>
</table><br />
<i><b>Recommended&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega B Complex 1000</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Royal queen Bee Jelly</td>
<td>2 X 3</td>
</tr>
<tr>
<td>Pyridoxine</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Brain Flush</td>
<td>1 X 3</td>
</tr>
<tr>
<td>Abunda Body</td>
<td>1 at bedtime</td>
</tr>
</table><br />
<i><b>Optimum&nbsp;(in addition to the above)</b></i><br />
<table cellpadding="2" cellspacing="0">
<tr>
<td><b>Supplement Name</b></td>
<td><b>Dosage</b></td>
</tr>
<tr>
<td>Mega Pentothenic Acid</td>
<td>1 X 3</td>
</tr>
<tr>
<td>DMEA</td>
<td>4 X 3</td>
</tr>
<tr>
<td>28 Super Amino Acids</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Super Endurance</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Endurall</td>
<td>4 X 3</td>
</tr>
<tr>
<td>Bio-Identical Hormone Restoration Therapy</td>
<td>(Prescription Item)</td>
</tr>
</table>
<br />
<br />
<h4>
Any Additional Information</h4>
<br />
<asp:Literal ID="LtrAdditionInformation" runat="server"></asp:Literal>
</div>
<%--Detailed Report - End--%>
</div>
</div>
</asp:Content>
