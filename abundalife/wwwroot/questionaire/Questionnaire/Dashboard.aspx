﻿<%@ Page Language="C#" MasterPageFile="~/Questionnaire/Master.Master" AutoEventWireup="true"
CodeBehind="Dashboard.aspx.cs" Inherits="abundalife1001.Questionnaire.Dashboard" %>

<asp:Content ID="Cnt" ContentPlaceHolderID="Cnt" runat="server">
<div id="first" class="grid_12">
    Take A New Questionnaire</a><br />
</div>
<div>
    <br /><a id="AnchrHistory" runat="server" href="History.aspx" title="See your earlier Questionnaire results and reports">
    Your Questionnaire Reports</a><br /><br />
</div>
<div id="DivE" runat="server">
    <a href="MyProfile.aspx" title="Change your personal details like your address, phone etc.">
    Edit My Profile</a><br /><br />
</div>
<div>
    <a href="ChangePassword.aspx" title="Change your existing password.">
    Change My Password</a><br /><br />
</div>
</div>
</asp:Content>