<%@ Page Language="C#" MasterPageFile="~/Questionnaire/Master.Master" AutoEventWireup="true"
CodeBehind="Registration.aspx.cs" Inherits="abundalife1001.Questionnaire.Registration" %>

<asp:Content ID="CntMain" ContentPlaceHolderID="Cnt" runat="server">
<div id="first" class="grid_12"><h1 class="main">Sign Up</h1><hr /><asp:Literal ID="LtrMessage" runat="server"></asp:Literal><div><p><label>First Name: <span class="redtext">*</span></label><asp:TextBox ID="TxtFname" runat="server" MaxLength="25" onkeypress="return allowAlphabet(event);"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RqdFname" runat="server" ControlToValidate="TxtFname" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Please specify first name" CssClass="redtext"></asp:RequiredFieldValidator></p><p><label>Last Name: <span class="redtext">*</span></label><asp:TextBox ID="TxtLname" runat="server" MaxLength="25" onkeypress="return allowAlphabet(event);"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RqdLname" runat="server" ControlToValidate="TxtLname" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Please specify last name" CssClass="redtext"></asp:RequiredFieldValidator></p><p><label>Email: <span class="redtext">*</span></label><asp:TextBox ID="TxtEmail" runat="server" MaxLength="50" onkeypress="return notAllowSpecialCharacters(event);">
</asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RqdEmail" runat="server" ControlToValidate="TxtEmail" Display="Dynamic" CssClass="redtext" 
ErrorMessage="Please specify email" SetFocusOnError="true"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegexEmail" 
runat="server" ControlToValidate="TxtEmail" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Invalid email address" CssClass="redtext" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></p><p><label>Password: <span class="redtext">*</span></label><asp:TextBox ID="TxtPassword" runat="server" MaxLength="50" TextMode="Password" onkeypress="return notAllowSpecialCharacters(event);"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RqdPassword" runat="server" ControlToValidate="TxtPassword" Display="Dynamic" ErrorMessage="Please specify password" SetFocusOnError="true" CssClass="redtext">
</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegexNewPassword" runat="server" SetFocusOnError="true"
ControlToValidate="TxtPassword" Display="Dynamic" ErrorMessage="Minimum password length is 8" CssClass="redtext" 
ValidationExpression=".{8}.*" /></p><p><label>Confirm Password: <span class="redtext">*</span></label><asp:TextBox ID="TxtConfirmPassword" runat="server" MaxLength="50" 
TextMode="Password" onkeypress="return notAllowSpecialCharacters(event);">
</asp:TextBox>&nbsp;<asp:RequiredFieldValidator
ID="RqdConfirmPassword" runat="server" ControlToValidate="TxtConfirmPassword" Display="Dynamic" SetFocusOnError="true" CssClass="redtext" 
ErrorMessage="Please specify confirm password"></asp:RequiredFieldValidator><asp:CompareValidator
ID="CmpPassword" runat="server" ControlToValidate="TxtConfirmPassword" ControlToCompare="TxtPassword" Display="Dynamic" CssClass="redtext" 
ErrorMessage="Both passwords must match exactly"></asp:CompareValidator></p>
<p><asp:Button ID="BtnSubmit" runat="server" Text="Sign Up" 
ToolTip="Please click here to sign up" onclick="BtnSubmit_Click" />&nbsp;&nbsp;<input type="button" value="Now, I want to Sign In" title="Please click here to sign in" onclick="javascript:window.location.href = 'SignIn.aspx';" /></p></p></div></div>
</asp:Content>
