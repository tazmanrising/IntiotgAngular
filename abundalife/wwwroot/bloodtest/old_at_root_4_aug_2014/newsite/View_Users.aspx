<%@ Page Title="View User ID" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="View_Users.aspx.cs" Inherits="abundalife1001.View_Users1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="create-user">
        <h1>
            View User ID's
        </h1>
        <div class="back-menu">
            <asp:Button ID="btnBack" runat="server" Text="Back to Main Menu" CssClass="left"
                OnClick="BackToMainMenu" />
            <asp:Button ID="Button2" runat="server" Text="Sign Out" CssClass="left left-margin10"
                OnClick="SignOut" />
        </div>
        <hr align="left" style="width: 550px; color: #7D7D7D; float: left;">
        <div class="top-margin90 clear">
        </div>
        <div style="width:550px; border-right: 1px solid #CECECE;">
            <asp:GridView CssClass="data" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="0" Width="550px"
               AlternatingRowStyle-CssClass="highlighted" GridLines="None">
                
                <Columns>
                    <asp:BoundField DataField="user_id" HeaderText="User ID" />
                    <asp:BoundField DataField="login" HeaderText="Login" />
                    <asp:BoundField DataField="first_name" HeaderText="First Name" />
                    <asp:BoundField DataField="last_name" HeaderText="Last Name" />
                    <asp:BoundField DataField="email" HeaderText="Email Address" />
                </Columns>
               
            </asp:GridView>
        </div>
    </div>
</asp:Content>
