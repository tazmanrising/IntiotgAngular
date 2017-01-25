<%@ Page Title="View Patient" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="ViewPatients.aspx.cs" Inherits="abundalife1001.ViewPatients1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="create-user">
        <h1>
            View Patient
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
                 GridLines="None" AlternatingRowStyle-CssClass="highlighted">
                
                <Columns>
                    <asp:TemplateField HeaderText="Visit">
                        <ItemTemplate>
                            <asp:LinkButton ID="id" OnCommand="lnkButton_Click" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"id") %>'
                                runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"id","Visit") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="first_name" HeaderText="First Name" />
                    <asp:BoundField DataField="last_name" HeaderText="Last Name" />
                    <asp:BoundField DataField="telephone" HeaderText="Telephone" />
                </Columns>
                
                
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                
                
            </asp:GridView>
        </div>
    </div>
</asp:Content>
