﻿<%@ Page Language="C#" MasterPageFile="~/Questionnaire/Master.Master" AutoEventWireup="true"
CodeBehind="ForgotPassword.aspx.cs" Inherits="abundalife1001.Questionnaire.ForgotPassword" %>

<asp:Content ID="CntMain" ContentPlaceHolderID="Cnt" runat="server">
<div id="first" class="grid_12">
</asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RqdEmail" runat="server" ControlToValidate="TxtEmail" 
Display="Dynamic" ErrorMessage="Please specify email" SetFocusOnError="true" CssClass="redtext"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegexEmail" 
runat="server" ControlToValidate="TxtEmail" Display="Dynamic" SetFocusOnError="true" CssClass="redtext" 
ToolTip="Please click here to get your password for sign in" 
onclick="BtnSubmit_Click" />&nbsp;&nbsp;<input type="button" value="Now, I want to Sign In" title="Please click here to sign in" onclick="javascript:window.location.href = 'SignIn.aspx';" /></p>
</asp:Content>