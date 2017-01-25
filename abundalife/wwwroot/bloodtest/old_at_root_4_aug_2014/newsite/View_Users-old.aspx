<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Users-old.aspx.cs"
    Inherits="abundalife1001.View_Users" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Abunda Life 1001</title>
    <style type="text/css">
        #leftMenuColor
        {
            color: #008000;
        }
        .style2
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            font-weight: bold;
            color: #FF6600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="25%">
                &nbsp;
            </td>
            <td width="60%" align="center" valign="top">
                <table width="66%" border="3" cellpadding="0" cellspacing="0" bordercolor="#FF6600">
                    <tr>
                        <td align="center" valign="top" bgcolor="#CCCC33">
                            <table width="56%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                                <tr>
                                    <td width="22%" rowspan="2" align="right" valign="top" bgcolor="#CCFF33">
                                        &nbsp;
                                    </td>
                                    <td width="64%" align="center" valign="top">
                                        <img src="images/Maintop.jpg" width="594" height="120" />
                                    </td>
                                    <td width="14%" rowspan="2" align="left" valign="top" bgcolor="#CCFF33">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" valign="top">
                                        <table width="98%" border="0" cellspacing="0" cellpadding="0" style="height: 209px">
                                            <tr>
                                                <td width="19%" align="left" valign="top">
                                                    <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600"
                                                        id="leftMenuColor">
                                                        <tr>
                                                            <th valign="top" scope="row">
                                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td width="11%">
                                                                            &nbsp;
                                                                        </td>
                                                                        <td width="89%">
                                                                            <span class="style2"><a href="Create_User.aspx">Create User</a></span>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </th>
                                                        </tr>
                                                        <tr>
                                                            <th valign="top" scope="row">
                                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td width="11%">
                                                                            &nbsp;
                                                                        </td>
                                                                        <td width="89%" class="style2">
                                                                            <a href="View_Users.aspx">View Users</a>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </th>
                                                        </tr>
                                                        <tr>
                                                            <th valign="top" scope="row">
                                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td width="11%">
                                                                            &nbsp;
                                                                        </td>
                                                                        <td width="89%" class="style2">
                                                                            <a href="Create_Patient.aspx">Create Patient</a>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </th>
                                                        </tr>
                                                        <tr>
                                                            <th height="21" valign="top" scope="row">
                                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td width="11%" height="19">
                                                                            &nbsp;
                                                                        </td>
                                                                        <td width="89%" class="style2">
                                                                            <a href="ViewPatients.aspx">View Patients</a>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </th>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="81%" align="center" valign="top">
                                                    <div align="left">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td valign="top">
                                                                    <div align="center">
                                                                        <img src="images/TopMenuMain.gif" width="486" height="97" /></div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top">
                                                                    <div align="left">
                                                                        <br />
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div id="displayCredentials" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <!--- #################################--->
                                                                    <div>
                                                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                                            ForeColor="#333333" GridLines="None">
                                                                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                            <Columns>
                                                                                <asp:BoundField DataField="user_id" HeaderText="User ID" />
                                                                                <asp:BoundField DataField="login" HeaderText="Login" />
                                                                                <asp:BoundField DataField="first_name" HeaderText="First Name" />
                                                                                <asp:BoundField DataField="last_name" HeaderText="Last Name" />
                                                                                <asp:BoundField DataField="email" HeaderText="Email Address" />
                                                                            </Columns>
                                                                            <RowStyle BackColor="#E3EAEB" />
                                                                            <EditRowStyle BackColor="#7C6F57" />
                                                                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                            <AlternatingRowStyle BackColor="White" />
                                                                        </asp:GridView>
                                                                    </div>
                                                                    <!--- #################################  --->
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="cmdSignOut" Text="Sign Out" runat="server" OnClick="SignOut" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="15%">
                &nbsp;
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
