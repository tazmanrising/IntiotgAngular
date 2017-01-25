<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="Create_Patient.aspx.cs" Inherits="abundalife1001.Create_Patient1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <cc1:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true" EnableScriptLocalization="true"
        ID="ScriptManager1">
    </cc1:ToolkitScriptManager>
    <div class="create-user">
        <h1>
            Create Patient
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
            Create New Patient
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
                Date Created:</div>
            <div class="field-conrol">
                <asp:TextBox ID="TextBox14" Width="150" runat="server" CssClass="left" />
                <img alt="date start" id="cal1" src="images/Calendar_scheduleHS.png" style="cursor: pointer;"
                    class="left left-margin10" />
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox14"
                    PopupButtonID="cal1">
                </cc1:CalendarExtender>
            </div>
        </div>
        <div class="field">
            <div class="field-lable">
                &nbsp;
            </div>
            <div class="field-conrol">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create Patient" /></div>
        </div>
        <p style="text-align: center">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </div>
</asp:Content>
