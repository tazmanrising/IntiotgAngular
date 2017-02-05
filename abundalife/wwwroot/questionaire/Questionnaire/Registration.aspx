﻿<%@ Page Language="C#" MasterPageFile="~/Questionnaire/Master.Master" AutoEventWireup="true"
CodeBehind="Registration.aspx.cs" Inherits="abundalife1001.Questionnaire.Registration" %>

<asp:Content ID="CntMain" ContentPlaceHolderID="Cnt" runat="server">
<div id="first" class="grid_12">
</asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RqdEmail" runat="server" ControlToValidate="TxtEmail" Display="Dynamic" CssClass="redtext" 
ErrorMessage="Please specify email" SetFocusOnError="true"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegexEmail" 
runat="server" ControlToValidate="TxtEmail" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Invalid email address" CssClass="redtext" 
</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegexNewPassword" runat="server" SetFocusOnError="true"
ControlToValidate="TxtPassword" Display="Dynamic" ErrorMessage="Minimum password length is 8" CssClass="redtext" 
ValidationExpression=".{8}.*" /></p>
TextMode="Password" onkeypress="return notAllowSpecialCharacters(event);">
</asp:TextBox>&nbsp;<asp:RequiredFieldValidator
ID="RqdConfirmPassword" runat="server" ControlToValidate="TxtConfirmPassword" Display="Dynamic" SetFocusOnError="true" CssClass="redtext" 
ErrorMessage="Please specify confirm password"></asp:RequiredFieldValidator><asp:CompareValidator
ID="CmpPassword" runat="server" ControlToValidate="TxtConfirmPassword" ControlToCompare="TxtPassword" Display="Dynamic" CssClass="redtext" 
ErrorMessage="Both passwords must match exactly"></asp:CompareValidator></p>
<p><asp:Button ID="BtnSubmit" runat="server" Text="Sign Up" 
ToolTip="Please click here to sign up" onclick="BtnSubmit_Click" />&nbsp;&nbsp;<input type="button" value="Now, I want to Sign In" title="Please click here to sign in" onclick="javascript:window.location.href = 'SignIn.aspx';" /></p></p>
</asp:Content>