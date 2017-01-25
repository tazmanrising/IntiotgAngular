<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create_Patient.aspx.cs" Inherits="abundalife1001.Create_Patient" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
.style26 {font-family: "Agency FB"; font-weight: bold; color: #FFFFFF; font-size: 16px; }
.style27 {font-size: 16px}
</style>
</head>

<body>
<form id="form1" runat="server">
<%--<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>--%>
<cc1:toolkitscriptmanager runat="Server" enablescriptglobalization="true" enablescriptlocalization="true" id="ScriptManager1">
</cc1:toolkitscriptmanager>
 <%--<asp:ScriptManager ID="ScriptMgrCCD" runat="server" EnableScriptGlobalization="true" EnableScriptLocalization="true" ScriptMode="Release"></asp:ScriptManager>
--%>
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
                      <td height="32" valign="top">
                        <div align="center">
                          <table width="407" border="2" bordercolor="#F9A92A" bgcolor="#B400FF">
                            <tr>
                              <td width="41"><div align="center"><span class="style26">BLOOD</span></div></td>
                              <td width="32"><div align="center"><span class="style26">URINE</span></div></td>
                              <td width="125"><div align="center"><span class="style26">IN HOUSE URINE/ SALIVA</span></div></td>
                              <td width="117" class="style26"><div align="center"><span class="style27">EXTRA SPECIAL TESTS</span></div></td>
                              <td width="56" class="style26"><div align="center"><span class="style27">RESULTS</span></div></td>
                            </tr>
                          </table>
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
                             Create New Patient</div>
                           
                            <table>
                                <tr>
                                    <td class="style2">&nbsp;
                                        </td>
                                    <td>&nbsp;
                                        </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        First Name</td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Last Name</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Date of Birth</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Email Address</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Address</td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Address 2</td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        City</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        State</td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Zip Code</td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Telephone</td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Fax Number</td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Password</td>
                                    <td>
                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Newsletter</td>
                                    <td>
                                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                    </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Date Created</td>
                                    <td>
                                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                        </td>
                                    <td>
                                        <img alt="date start" id="cal1" src="images/Calendar_scheduleHS.png" style="cursor:pointer;" />
                                        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox14" PopupButtonID="cal1">
                                        </cc1:CalendarExtender>
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">&nbsp;
                                        </td>
                                    <td>&nbsp;
                                        </td>
                                    <td>&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style2">&nbsp;
                                        </td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                            Text="Create Patient" />
                                    </td>
                                    <td>&nbsp;
                                        </td>
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
