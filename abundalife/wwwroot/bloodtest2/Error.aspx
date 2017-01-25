<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
CodeBehind="Error.aspx.cs" Inherits="Web.Error" %>

<asp:Content ID="CntP" ContentPlaceHolderID="Cp" runat="server">
<tr>
<td colspan="2" align="center">
<h3>Something went wrong <span frown>:(</h3>
<div>
<p>We apologize for the inconvenience, but we are unable to process your request now.</p>
<p>Our engineers have been notified of this problem and We're working on getting it fixed as soon as we can.</p>
<p>Click <a href="default.aspx">here</a> to continue...</p>
</div>
</td>
</tr>
</asp:Content>
