<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Web.Dashboard" %>
<%@ Import Namespace="STZ.Library" %>
<asp:Content ID="CntP" runat="server" ContentPlaceHolderID="Cp">
<tr>
<td colspan="2" align="center">
<h1><u>Dashboard : Listing of Test Reports</u></h1>
<asp:ListView ID="LstView" runat="server" OnPagePropertiesChanged="LstView_PagePropertiesChanged">
<LayoutTemplate>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
<thead>
<tr>
<td>Sr#</td>
<td>Patient Name</td>
<td>Date</td>
<td>View Report</td>
</tr>
</thead>
<tbody>
<div id="itemPlaceholder" runat="server"></div>
</tbody>
</table>
</LayoutTemplate>
<ItemTemplate>
<tr>
<td valign="top"><%# Container.DataItemIndex + 1 %>.</td>
<td valign="top"><%#Eval("PatientName")%></td>
<td valign="top"><%#CF.FormatDate(Eval("TestDate"))%></td>
<td valign="top"><a target="_blank" href='Test-Report.aspx?q=<%#Eval("Guid")%>' title="On Screen">On Screen</a>&nbsp;&nbsp;<a 
target="_blank" href='Test-Report.aspx?q=<%#Eval("Guid")%>&mode=word' title="In Word">In Word</a></td>
</tr>
</ItemTemplate>
<EmptyDataTemplate><div class="warning_box">No records found !</div></EmptyDataTemplate>
</asp:ListView>
<br /><br />
<asp:DataPager runat="server" ID="PgrTopLeft" PageSize="12" PagedControlID="LstView">
<Fields>
<asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="false" ShowLastPageButton="false" 
ShowPreviousPageButton="true" ShowNextPageButton="false" PreviousPageText="&laquo;" />
<asp:NumericPagerField ButtonType="Button" ButtonCount="3" />
<asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="false" ShowLastPageButton="false" 
ShowPreviousPageButton="false" ShowNextPageButton="true" NextPageText="&raquo;" />
<asp:TemplatePagerField>
<PagerTemplate>
<span class="style17">Items <asp:Literal ID="LtrFrom" runat="server" Text='<%# Container.StartRowIndex + 1 %>'></asp:Literal> to <asp:Literal ID="LtrTo" 
runat="server" Text='<%# Container.TotalRowCount < Container.PageSize ? Container.TotalRowCount : (Container.StartRowIndex + Container.PageSize) %>'></asp:Literal> of <asp:Literal ID="LtrTotal" 
runat="server" Text='<%# Container.TotalRowCount %>'></asp:Literal> total</span>
</PagerTemplate>
</asp:TemplatePagerField>
</Fields>
</asp:DataPager>
</td>
</tr>






</asp:Content>
<asp:Content ID="CntH" runat="server" ContentPlaceHolderID="Ch">
</asp:Content>
