<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Person.aspx.cs" Inherits="abundalife1001.Edit_Person" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Abunda Life 1001</title>
<style type="text/css">

#leftMenuColor {
	color: #008000;
}
.style2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bold;
	color: #FF6600;
}

</style>
</head>

<body>
<form id="form1" runat="server">
<asp:HiddenField ID="id" runat="server" />
<asp:HiddenField ID="address_id" runat="server" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="25%">&nbsp;</td>
    <td width="60%" align="center" valign="top"><table width="66%" border="3" cellpadding="0" cellspacing="0" bordercolor="#FF6600">
      <tr>
        <td align="center" valign="top" bgcolor="#CCCC33"><table width="56%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
          <tr>
            <td width="22%" rowspan="2" align="right" valign="top" bgcolor="#CCFF33">&nbsp;</td>
            <td width="64%" align="center" valign="top"><img src="images/Maintop.jpg" width="594" height="120" /></td>
            <td width="14%" rowspan="2" align="left" valign="top" bgcolor="#CCFF33">&nbsp;</td>
          </tr>
          <tr>
            <td align="center" valign="top"><table width="98%" border="0" cellspacing="0" 
                    cellpadding="0" style="height: 209px">
              <tr>
                <td width="19%" align="left" valign="top"><table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600" id="leftMenuColor">
                  <tr>
                    <th valign="top" scope="row"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="11%">&nbsp;</td>
                          <td width="89%"><span class="style2"><a href="Create_User.aspx">Create User</a></span></td>
                        </tr>
                    </table></th>
                  </tr>
                  <tr>
                    <th valign="top" scope="row"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="11%">&nbsp;</td>
                          <td width="89%" class="style2"><a href="View_Users.aspx">View Users</a></td>
                        </tr>
                    </table></th>
                  </tr>
                  <tr>
                    <th valign="top" scope="row"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="11%">&nbsp;</td>
                          <td width="89%" class="style2"><a href="Create_Patient.aspx">Create Patient</a></td>
                        </tr>
                    </table></th>
                  </tr>
                  <tr>
                    <th height="21" valign="top" scope="row"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="11%" height="19">&nbsp;</td>
                          <td width="89%" class="style2"><a href="ViewPatients.aspx">View Patients</a></td>
                        </tr>
                    </table></th>
                  </tr>
                </table></td>
                <td width="81%" align="center" valign="top"><div align="left">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td valign="top"><div align="center"><img src="images/TopMenuMain.gif" width="486" height="97" /></div></td>
                    </tr>
                    <tr>
                      <td valign="top"><div align="left">
                          <br />
                          </div></td>
                    </tr>
                    <tr>
                        <td>
                            <div id="displayCredentials" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <!--- #################################--->
                            <div class="style2">
                             Edit Patient</div>
                           
                            <table>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        First Name</td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Last Name</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Date of Birth</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Email Address</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Address</td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Address 2</td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        City</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        State</td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Zip Code</td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Telephone</td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Fax Number</td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Password</td>
                                    <td>
                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Newsletter</td>
                                    <td>
                                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                            Text="Update Patient" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                            <p style="text-align: center">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </p>
   
                        <!--- #################################  --->
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button id="cmdSignOut" text="Sign Out" runat="server" onClick="SignOut" />
                        </td>
                    </tr>
                  </table>
                  </td>
              </tr>
            </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
    <td width="15%">&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>



