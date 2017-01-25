<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
CodeBehind="404.aspx.cs" Inherits="Web._404" %>

<asp:Content ID="CntP" ContentPlaceHolderID="Cp" runat="server">
<tr>
<td colspan="2" align="center">
<h3>Page Not found <span frown>:(</h3>
<div>
<p>Sorry, but the page you were trying to view does not exist on this website.</p>
<p>It looks like this was the result of either:</p>
<ul style="list-style-type:none;">
<li>1.) <b>a mistyped address</b></li>
<li>2.) <b>an out-of-date link</b></li>
</ul>
<p>Click <a href="default.aspx">here</a> to continue...</p>
</div>
</td>
</tr>
</asp:Content>
