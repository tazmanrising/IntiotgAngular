﻿<%@ Page Language="C#" MasterPageFile="~/Questionnaire/Master.Master" AutoEventWireup="true"
CodeBehind="MyProfile.aspx.cs" Inherits="abundalife1001.Questionnaire.MyProfile" %>

<asp:Content ID="CntMain" ContentPlaceHolderID="Cnt" runat="server">
<div id="first" class="grid_12">
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
<p><label>Postal Code: &nbsp;</label><asp:TextBox ID="TxtPostalCode" runat="server" MaxLength="6" 
ToolTip="Please click here to change your personal details" 
onclick="BtnSubmit_Click" /></p>
</asp:Content>