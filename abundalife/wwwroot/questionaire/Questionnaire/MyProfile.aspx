<%@ Page Language="C#" MasterPageFile="~/Questionnaire/Master.Master" AutoEventWireup="true"
CodeBehind="MyProfile.aspx.cs" Inherits="abundalife1001.Questionnaire.MyProfile" %>

<asp:Content ID="CntMain" ContentPlaceHolderID="Cnt" runat="server">
<div id="first" class="grid_12"><h1 class="main">Edit My profile</h1><hr /><asp:Literal ID="LtrMessage" runat="server"></asp:Literal><div><p><label>First Name: <span class="redtext">*</span></label><asp:TextBox ID="TxtFname" runat="server" MaxLength="25" onkeypress="return allowAlphabet(event);"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RqdFname" runat="server" ControlToValidate="TxtFname" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Please specify first name" CssClass="redtext"></asp:RequiredFieldValidator></p><p><label>Last Name: <span class="redtext">*</span></label><asp:TextBox ID="TxtLname" runat="server" MaxLength="25" onkeypress="return allowAlphabet(event);"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RqdLname" runat="server" ControlToValidate="TxtLname" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Please specify last name" CssClass="redtext"></asp:RequiredFieldValidator></p><p><label>Email: <span class="redtext">*</span></label><asp:TextBox ID="TxtEmail" runat="server" MaxLength="50"></asp:TextBox></p><p><label>Mobile: &nbsp;</label><asp:TextBox ID="TxtContactPhone1" runat="server" MaxLength="10" 
onkeypress="return allowNumeric(event);"></asp:TextBox></p>
<p><label>Landline Number: &nbsp;</label><asp:TextBox ID="TxtContactPhone2" runat="server" MaxLength="10" 
onkeypress="return allowNumeric(event);"></asp:TextBox></p>
<p><label>Address: &nbsp;</label><asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine" SkinID="MultiLineBox"
onkeypress="return notAllowSpecialCharacters(event);" Width="195" 
onKeyDown="javascript:return TextCounter(this,'ctl00_Cnt_TxtAddress','ctl00_Cnt_LblAddress','250');"
onKeyUp="javascript:return TextCounter(this,'ctl00_Cnt_TxtAddress','ctl00_Cnt_LblAddress','250');"></asp:TextBox>
<asp:Label ID="LblAddress" runat="server" CssClass="smalltext"></asp:Label></p>
<p><label>City: &nbsp;</label><asp:TextBox ID="TxtCity" runat="server" MaxLength="30" 
onkeypress="return allowAlphabet(event);"></asp:TextBox></p>
<p><label>State: &nbsp;</label><asp:TextBox ID="TxtState" runat="server" MaxLength="30" 
onkeypress="return allowAlphabet(event);"></asp:TextBox></p>
<p><label>Postal Code: &nbsp;</label><asp:TextBox ID="TxtPostalCode" runat="server" MaxLength="6" onkeypress="return allowNumeric(event);"></asp:TextBox></p><p><asp:Button ID="BtnSubmit" runat="server" Text="Submit" 
ToolTip="Please click here to change your personal details" 
onclick="BtnSubmit_Click" /></p></div></div>
</asp:Content>
