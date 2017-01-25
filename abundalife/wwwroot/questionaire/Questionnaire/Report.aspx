<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="abundalife1001.Questionnaire.Report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Abunda Life - Questionnaire | Asbury Park NJ</title>
<meta name="keywords" content="Vitamins,supplements,naturopathic,naturopathic medice,alternative medicine,cancer,diabetes,toddglassberg" />
<meta name="description" content="" />
<meta name="generator" content="seotoaster" />
<link href="Styles/concat.css" rel="stylesheet" type="text/css" media="screen" />
<link href="Styles/Styles.css" rel="stylesheet" type="text/css" media="screen" />
<link href="Styles/Print.css" rel="stylesheet" media="print" type="text/css" />
<%--<link href="Styles/css" rel="stylesheet" type="text/css" />
<link href="Styles/css(1)" rel="stylesheet" type="text/css" />--%>
<!--[if IE]>
<script src="Scripts/html5.js" type="text/javascript"></script>
<![endif]-->
<script type="text/javascript" src="Scripts/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="Scripts/Questionnaire.js"></script>
<%--For Graph - S--%>
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
<%--For Graph - E--%>
</head>
<body>
<form id="Frm" runat="server">
<div style="padding-top:45px; padding-left:18px;"><div class="float_left"><asp:ImageButton ID="ImgBtnWordBill" runat="server" ImageUrl="Images/word.gif"
ToolTip="Please click here to get report in word file" BorderStyle="None" OnClick="ImgBtnWordBill_Click" /></div><div 
class="float_left" style="padding-left:10px;"><img src="Images/print_page.gif" class="hand noPrint" onclick="window.print();return false;" 
alt="Print Report" title="Please click here to print report" border="0" /></div></div>
<div id="DivResult" runat="server" class="yesPrint" style="text-align: justify; padding:20px; padding-top:50px;"></div>
<asp:HiddenField ID="HdnQuestionnaireId" runat="server" Value="" />
</form>
</body>
</html>