﻿<%@ Page Language="C#" MasterPageFile="~/Questionnaire/Master.Master" AutoEventWireup="true"
CodeBehind="SignIn.aspx.cs" Inherits="abundalife1001.Questionnaire.SignIn" %>

<asp:Content ID="CntMain" ContentPlaceHolderID="Cnt" runat="server">
<div id="first" class="grid_12">
</asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RqdEmail" runat="server" ControlToValidate="TxtEmail" Display="Dynamic" CssClass="redtext" 
ErrorMessage="Please specify email" SetFocusOnError="true"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegexEmail" 
runat="server" ControlToValidate="TxtEmail" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Invalid email address" CssClass="redtext" 
ToolTip="Please click here to sign in" onclick="BtnSubmit_Click" /></p>
<a href="ForgotPassword.aspx" title="Please click here to get your password for sign in">Forgot Password?</a></p>