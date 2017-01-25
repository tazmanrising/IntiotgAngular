<%@ Page Language="C#" MasterPageFile="~/Questionnaire/Master.Master" AutoEventWireup="true"
CodeBehind="ChangePassword.aspx.cs" Inherits="abundalife1001.Questionnaire.ChangePassword" %>

<asp:Content ID="CntMain" ContentPlaceHolderID="Cnt" runat="server">
<div id="first" class="grid_12"><h1 class="main">Change My Password</h1><hr /><asp:Literal ID="LtrMessage" runat="server"></asp:Literal><div><p><label>Old Password: <span class="redtext">*</span></label><asp:TextBox ID="TxtOldPassword" runat="server" 
MaxLength="50" onkeypress="return notAllowSpecialCharacters(event);" TextMode="Password">
</asp:TextBox>&nbsp;<asp:RequiredFieldValidator
ID="RqdOldPassword" runat="server" ControlToValidate="TxtOldPassword" Display="Dynamic" SetFocusOnError="true" ErrorMessage="Please specify old password" CssClass="redtext"></asp:RequiredFieldValidator></p><p><label>New Password: <span class="redtext">*</span></label><asp:TextBox ID="TxtNewPassword" runat="server" 
MaxLength="50" onkeypress="return notAllowSpecialCharacters(event);" TextMode="Password">
</asp:TextBox>&nbsp;<asp:RequiredFieldValidator
ID="RqdNewPassword" runat="server" ControlToValidate="TxtNewPassword" Display="Dynamic" SetFocusOnError="true" CssClass="redtext"
ErrorMessage="Please specify new password"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegexNewPassword" runat="server" SetFocusOnError="true" ControlToValidate="TxtNewPassword" 
Display="Dynamic" ErrorMessage="Minimum password length is 8" CssClass="redtext" 
ValidationExpression=".{8}.*" /></p><p><label>Confirm Password: <span class="redtext">*</span></label><asp:TextBox ID="TxtConfirmPassword" runat="server" 
MaxLength="50" onkeypress="return notAllowSpecialCharacters(event);" TextMode="Password">
</asp:TextBox>&nbsp;<asp:RequiredFieldValidator
ID="RqdConfirmPassword" runat="server" ControlToValidate="TxtConfirmPassword" Display="Dynamic" SetFocusOnError="true"
ErrorMessage="Please specify confirm password" CssClass="redtext"></asp:RequiredFieldValidator><asp:CompareValidator
ID="CmpPassword" runat="server" ControlToValidate="TxtConfirmPassword" ControlToCompare="TxtNewPassword" Display="Dynamic"
ErrorMessage="Both passwords must match exactly" CssClass="redtext"></asp:CompareValidator></p>
<p><asp:Button ID="BtnSubmit" runat="server" Text="Change Password" 
ToolTip="Please click here to change your password" onclick="BtnSubmit_Click" /></p></div></div>
</asp:Content>
