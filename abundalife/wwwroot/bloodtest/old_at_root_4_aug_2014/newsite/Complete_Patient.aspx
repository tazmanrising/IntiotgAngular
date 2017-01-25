<%@ Page Title="Patient Information" Language="C#" MasterPageFile="~/Master.Master"
    AutoEventWireup="true" CodeBehind="Complete_Patient.aspx.cs" Inherits="abundalife1001.Complete_Patient1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>

    <link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="xid" runat="server" />
    <div class="create-user">
        <h1>
            Patient Information
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
                Last Name:</div>
            <div class="field-conrol">
                <asp:Label ID="Label1" runat="server"></asp:Label></div>
        </div>
        <div class="field">
            <div class="field-lable">
                First Name:</div>
            <div class="field-conrol">
                <asp:Label ID="Label2" runat="server"></asp:Label></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Phone Number:</div>
            <div class="field-conrol">
                <asp:Label ID="Label3" runat="server"></asp:Label></div>
        </div>
        <div class="field">
            <div class="field-lable">
                Email Address:</div>
            <div class="field-conrol">
                <asp:Label ID="Label4" runat="server"></asp:Label></div>
        </div>
        <div class="field">
            <p align="center">
                <br />
            </p>
            <ul id="MenuBar1" class="MenuBarVertical">
                <li><a href="javascript:Delegator('CPA');">Change Patient Address etc...</a></li>
                <li><a class="MenuBarItemSubmenu" href="#">BloodWork</a>
                    <ul>
                        <li><a href="javascript:Delegator('EBU');">Enter Blood &amp; Urine</a></li>
                        <li><a href="javascript:Delegator('VPB');">View/Print Blood</a></li>
                        <li><a href="javascript:Delegator('VPU');">View/Print Urine</a></li>
                        <li><a href="javascript:Delegator('VPUS');">View/Print In house Urine &amp; Saliva</a></li>
                        <li><a href="javascript:Delegator('VPS');">View/Print Extra Special Test</a></li>
                    </ul>
                </li>
                <li><a href="#" class="MenuBarItemSubmenu MenuBarItemSubmenu">Clinical Conditions Checklist</a>
                    <ul>
                        <li><a href="javascript:Delegator('ECC');">Enter Clinical Conditions</a></li>
                        <li><a href="javascript:Delegator('VPCC');">View/Print Clinical Conditions</a></li>
                    </ul>
                </li>
                <li><a class="MenuBarItemSubmenu" href="#">Clinical Alternative Therapy Checklist</a>
                    <ul>
                        <li><a href="javascript:Delegator('ECAT');">Enter Clinical Alternative Therapy</a></li>
                        <li><a href="javascript:Delegator('VPCAT');">View/Print Clinical Alternative Therapy</a>
                        </li>
                    </ul>
                </li>
                <li><a href="#goto1001">Abunda1001</a></li>
            </ul>
        </div>
    </div>

    <script type="text/javascript">
<!--
        var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", { imgRight: "SpryAssets/SpryMenuBarRightHover.gif" });


        function Delegator(xthis) {

            var xIdValue = document.getElementById('<%=xid.ClientID %>').value;


            if (xthis == 'EBU') {
                //document.getElementById("xid").value = 
                //document.form1.submit;
                window.location = 'InsertProfile.aspx?ID=' + xIdValue;
            } else if (xthis == 'VPB') {
                window.location = 'BloodReports.aspx?ID=' + xIdValue;
            } else if (xthis == 'VPU') {
                window.location = 'UrineReport.aspx?ID=' + xIdValue;
            } else if (xthis == 'VPUS') {
                window.location = 'SalivaReport.aspx?ID=' + xIdValue;
            } else if (xthis == 'VPS') {
                window.location = 'View_Special.aspx?ID=' + xIdValue;
            } else if (xthis == 'CPA') {
                window.location = 'Edit_Person.aspx?ID=' + xIdValue;
            } else if (xthis == 'ECC') {
                window.location = 'Final-Result-Key.aspx?ID=' + xIdValue;
            } else if (xthis == 'VPCC') {
                window.location = 'FinalResultsPrint.aspx?ID=' + xIdValue;
            } else if (xthis == 'ECAT') {
                window.location = 'Final-Result-Key2.aspx?ID=' + xIdValue;
            } else if (xthis == 'VPCAT') {
                window.location = 'FinalResults2Print.aspx?ID=' + xIdValue;
            }
        }
//-->
    </script>

</asp:Content>
