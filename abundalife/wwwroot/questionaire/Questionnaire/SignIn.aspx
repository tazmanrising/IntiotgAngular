﻿<%@ Page Language="C#" MasterPageFile="~/Questionnaire/Master.Master" AutoEventWireup="true"
CodeBehind="SignIn.aspx.cs" Inherits="abundalife1001.Questionnaire.SignIn" %>

<asp:Content ID="CntMain" ContentPlaceHolderID="Cnt" runat="server">
<div id="first" class="grid_12"><h1 class="main">Sign In</h1><hr /><asp:Literal ID="LtrMessage" runat="server"></asp:Literal><p>If you're already registered with Abunda Life, Please sign in using your email and password registered with Abunda Life.</p><br /><div class="clear"></div><div><p><label>Email: <span class="redtext">*</span></label><asp:TextBox ID="TxtEmail" runat="server" MaxLength="50" onkeypress="return notAllowSpecialCharacters(event);">
</asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RqdEmail" runat="server" ControlToValidate="TxtEmail" Display="Dynamic" CssClass="redtext" 
ErrorMessage="Please specify email" SetFocusOnError="true"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegexEmail" 
runat="server" ControlToValidate="TxtEmail" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Invalid email address" CssClass="redtext" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></p><p><label>Password: <span class="redtext">*</span></label><asp:TextBox ID="TxtPassword" runat="server" MaxLength="50" TextMode="Password" onkeypress="return notAllowSpecialCharacters(event);"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RqdPassword" runat="server" ControlToValidate="TxtPassword" Display="Dynamic" ErrorMessage="Please specify password" TextMode="Password" CssClass="redtext" SetFocusOnError="true"></asp:RequiredFieldValidator></p><p><asp:Button ID="BtnSubmit" runat="server" Text="Sign In" 
ToolTip="Please click here to sign in" onclick="BtnSubmit_Click" /></p><p><a href="Registration.aspx" title="Please click here for sign up">Sign Up</a>&nbsp;&nbsp;
<a href="ForgotPassword.aspx" title="Please click here to get your password for sign in">Forgot Password?</a></p></div></div></asp:Content>
