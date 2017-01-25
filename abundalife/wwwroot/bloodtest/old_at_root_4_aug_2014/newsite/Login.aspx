<%@ Page Title="Login" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="abundalife1001.Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login">
        <div class="field">
            <div class="field-lable">
                Username:</div>
            <div class="field-conrol">
                <asp:TextBox ID="txtUser" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Password:</div>
            <div class="field-conrol">
                <asp:TextBox ID="txtPassword" Width="150" TextMode="Password" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                &nbsp;</div>
            <div class="field-conrol">
                <asp:Button ID="cmdLogin" OnClick="ProcessLogin" Text="Login" runat="server" /></div>
        </div>
        <div class="field">
            <div id="ErrorMessage" runat="server" />
        </div>
    </div>
</asp:Content>
