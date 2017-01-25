<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="abundalife1001.Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="default">
        <h1>
            Welcome to Abunda Life
        </h1>
        <div class="back-menu">
            <asp:Button ID="Button2" runat="server" Text="Sign Out" CssClass="right" OnClick="SignOut" />
        </div>
        <hr align="left" style="width: 550px; color: #7D7D7D; float: left; margin-top: -10px;">
        <div class="top-margin90 clear">
        </div>
        <div class="navigation">
            <div class="border">
                <ul>
                    <li><a href="Create_User.aspx" title="Create User ID">Create User ID</a></li>
                    <li><a href="View_Users.aspx" title="View User ID">View User ID</a></li>
                    <li><a href="Create_Patient.aspx" title="Create Patient">Create Patient</a></li>
                    <li><a href="ViewPatients.aspx" title="View Patient">View Patient</a></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
