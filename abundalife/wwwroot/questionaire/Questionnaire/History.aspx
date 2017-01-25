<%@ Page Language="C#" MasterPageFile="~/Questionnaire/Master.Master" AutoEventWireup="true"
CodeBehind="History.aspx.cs" Inherits="abundalife1001.Questionnaire.History" %>
<asp:Content ID="CntMain" ContentPlaceHolderID="Cnt" runat="server">
<div id="first" class="grid_12"><h1 class="main noPrint">Questionnaire History</h1><hr /><asp:Literal ID="LtrMessage" runat="server"></asp:Literal><%--<p class="noPrint">List of Reports of Questionnaires...</p>--%><div class="clear"></div><br /><div class="demo"><asp:ListView ID="LstView" runat="server" OnItemCommand="LstView_ItemCommand" 
onitemdatabound="LstView_ItemDataBound" OnPagePropertiesChanged="LstView_PagePropertiesChanged">
<LayoutTemplate>
<div class="float_left" style="width:15px; padding-left:7px;"><b>Sr#</b></div>
<div class="float_left" style="width:260px; padding-left:27px;"><b>Questionnaire given on</b></div>
<div class="float_left" style="width:380px; padding-left:16px;"><b>Patient Name & Email</b></div>
<div class="float_left" style="padding-left:16px;"><b>Action</b></div>
<div class="clear">&nbsp;</div>
<div id="itemPlaceholder" runat="server"></div>
</LayoutTemplate>
<ItemTemplate>
<div class="float_left pl15" style="width:20px;"><h6><%#Container.DataItemIndex + 1 %>.&nbsp;</h6></div>
<div class="float_left pl15" style="width:260px;"><h3 class="noPrint"><asp:HyperLink ID="Anchr" runat="server" 
Target="_blank" style="font-size:12px;" ToolTip="Please click here to view the report"><%# Convert.ToDateTime(Eval("ReportDateTime")).ToLongDateString() %>- 
<%# Convert.ToDateTime(Eval("ReportDateTime")).ToShortTimeString()%></asp:HyperLink></h3></div>
<div class="float_left pl15" style="width:380px;"><h6><%#Eval("FirstName") %>&nbsp;<%#Eval("LastName") %>&nbsp;/&nbsp;<a style="font-size:12px;" 
title="Please click here to send email to this patient" href='mailto:<%#Eval("Email") %>'><%#Eval("Email") %></a></h6></div>
<div class="float_left pl15" id="DivC" runat="server" style="width:200px;"><h6><asp:LinkButton ID="LnkApprove" runat="server" 
CausesValidation="false" ToolTip="Please click here to approve the report" Text="Not Approved" CommandName="approve" 
CommandArgument='<%#Eval("QuestionnaireId") %>'></asp:LinkButton>&nbsp;/&nbsp;<asp:LinkButton ID="LnkCanPatientView" runat="server" 
CausesValidation="false" ToolTip="Please click here to approve the patient to view the report" Text="Not Viewable" CommandName="view"
CommandArgument='<%#Eval("QuestionnaireId") %>'></asp:LinkButton><asp:HiddenField id="HdnStatus" runat="server" 
Value='<%#Eval("Status") %>' /><asp:HiddenField id="HdnCanPatientView" runat="server" 
Value='<%#Eval("CanPatientView") %>' /><asp:HiddenField id="HdnQuesionnaireId" runat="server" 
Value='<%#Eval("QuestionnaireId") %>' /></h6></div>
<div class="clear">&nbsp;</div>
</ItemTemplate>
<EmptyDataTemplate>
<div>No Questionnaire reports yet.</div>
</EmptyDataTemplate>
</asp:ListView><div class="clear"></div><br /><div class="pagination">
<asp:DataPager runat="server" ID="ItemDataPager" PageSize="15" PagedControlID="LstView">
<Fields>
<asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="pagination" ShowFirstPageButton="true"
ShowPreviousPageButton="true" ShowLastPageButton="true" ShowNextPageButton="true" />
</Fields>
</asp:DataPager>
<span class="fpx"><asp:Literal ID="LtrNumberOfRecords" runat="server"></asp:Literal></span>
</div></div></div>
</asp:Content>
