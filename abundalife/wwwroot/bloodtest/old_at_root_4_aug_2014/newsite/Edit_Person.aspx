<%@ Page Title="Edit Profile" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="Edit_Person.aspx.cs" Inherits="abundalife1001.Edit_Person1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:HiddenField ID="id" runat="server" />
<asp:HiddenField ID="address_id" runat="server" />
    <div class="create-user">
        <h1>
            Edit Patient
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
        <div class="field">
            <div class="field-lable">
                First Name:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox1" runat="server" Width="150"></asp:TextBox></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Last Name:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox2" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Date of Birth:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox3" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Email Address:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox4" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Address:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox5" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Address 2:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox6" runat="server" Width="150"></asp:TextBox></div>
        </div>
        <div class="field">
            <div class="field-lable">
                City:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox7" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                State:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox8" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Zip Code:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox9" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Telephone:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox10" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Fax Number:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox11" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Password:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox12" Width="150" runat="server" /></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Newsletter:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox13" Width="150" runat="server" /></div>
        </div>
       
        <div class="field">
            <div class="field-lable">
                &nbsp;
            </div>
            <div class="field-conrol">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Patient"  /></div>
        </div>
        <p style="text-align: center">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </div>
</asp:Content>
