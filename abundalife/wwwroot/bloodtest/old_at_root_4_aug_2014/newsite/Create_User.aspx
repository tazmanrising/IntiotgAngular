<%@ Page Title="Create User" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="Create_User.aspx.cs" Inherits="abundalife1001.Create_User1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="create-user">
        <h1>
            Create User ID
        </h1>
        <div class="back-menu">
            <asp:Button ID="btnBack" runat="server" Text="Back to Main Menu" CssClass="left" OnClick="BackToMainMenu" />
             <asp:Button ID="Button2" runat="server" Text="Sign Out" CssClass="left left-margin10" onClick="SignOut" />
        </div>
        <hr align="left" style="width: 550px; color: #7D7D7D; float: left;">
        <div class="top-margin90 clear">
        </div>
        <div class="field">
            Create New Login User
        </div>
        <div class="field">
            <div class="field-lable">
                Login:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox1" runat="server" Width="150" ></asp:TextBox></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Password:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox2" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Email:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox3" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                First Name:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox4" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Last Name:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox5" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                &nbsp;
            </div>
            <div class="field-conrol">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create User" /></div>
        </div>
        <p style="text-align: center">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </div>
</asp:Content>
