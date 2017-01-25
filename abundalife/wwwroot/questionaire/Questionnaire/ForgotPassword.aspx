<%@ Page Language="C#" MasterPageFile="~/Questionnaire/Master.Master" AutoEventWireup="true"
CodeBehind="ForgotPassword.aspx.cs" Inherits="abundalife1001.Questionnaire.ForgotPassword" %>

<asp:Content ID="CntMain" ContentPlaceHolderID="Cnt" runat="server">
<div id="first" class="grid_12"><h1 class="main">Forgot Password?</h1><hr /><asp:Literal ID="LtrMessage" runat="server"></asp:Literal><div><p><label>Email: <span class="redtext">*</span></label><asp:TextBox ID="TxtEmail" runat="server" MaxLength="50" onkeypress="return notAllowSpecialCharacters(event);">
</asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RqdEmail" runat="server" ControlToValidate="TxtEmail" 
Display="Dynamic" ErrorMessage="Please specify email" SetFocusOnError="true" CssClass="redtext"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegexEmail" 
runat="server" ControlToValidate="TxtEmail" Display="Dynamic" SetFocusOnError="true" CssClass="redtext" ErrorMessage="Invalid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></p><p><asp:Button ID="BtnSubmit" runat="server" Text="Get Password" 
ToolTip="Please click here to get your password for sign in" 
onclick="BtnSubmit_Click" />&nbsp;&nbsp;<input type="button" value="Now, I want to Sign In" title="Please click here to sign in" onclick="javascript:window.location.href = 'SignIn.aspx';" /></p></div></div>
</asp:Content>
