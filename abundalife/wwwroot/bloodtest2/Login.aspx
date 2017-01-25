<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web.Login" %>
<asp:Content ID="CntP" runat="server" ContentPlaceHolderID="Cp">
<tr>
<td colspan="2" align="center">
<table border="0" cellpadding="3" cellspacing="3">
<tr><td colspan="2"><asp:Literal ID="LtrMessage" runat="server"></asp:Literal></td></tr>
<tr>
<th align="right">Email :</th>
<td><input type="text" maxlength="60" runat="server" id="TxtEmail" value="" /></td>
</tr>
<tr>
<th align="right">Password :</th>
<td><input type="password" runat="server" id="TxtPassword" autocomplete="off" /></td>
</tr>
<tr>
<th></th>
<td><asp:Button ID="BtnLogin" runat="server" CausesValidation="false" Text="Log in" onclick="BtnLogin_Click" /></td>
</tr>
</table>
</td>
</tr>
</asp:Content>
<asp:Content ID="CntH" runat="server" ContentPlaceHolderID="Ch">
</asp:Content>
