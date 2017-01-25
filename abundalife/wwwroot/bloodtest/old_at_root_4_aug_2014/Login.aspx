<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="abundalife1001.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
#leftMenuColor {
	color: #008000;
}
.style2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bold;
	color: #FF6600;
}
-->
</style>
</head>

<body>
<form id="form1" runat="server">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="25%">&nbsp;</td>
    <td width="60%" align="center" valign="top"><table width="66%" border="3" cellpadding="0" cellspacing="0" bordercolor="#FF6600">
      <tr>
        <td height="217" align="center" valign="top" bgcolor="#CCCC33"><table width="56%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
          <tr>
            <td width="22%" rowspan="2" align="right" valign="top" bgcolor="#CCFF33">&nbsp;</td>
            <td width="64%" align="center" valign="top"><img src="images/Maintop.jpg" width="594" height="120" /></td>
            <td width="14%" rowspan="2" align="left" valign="top" bgcolor="#CCFF33">&nbsp;</td>
          </tr>
          <tr>
            <td align="center" valign="top"><table width="98%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="19%" align="left" valign="top">
                <!-- start tom insert -->                <!--end -->                </td>
                <td width="81%" align="center" valign="top"><div align="left">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td valign="top"><div align="center"><img src="images/Header1.jpg" width="486" height="39" /></div></td>
                    </tr>
                    <tr>
                      <td valign="top"><div align="center"> <br />
                        <table border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="80">Username:</td>
                            <td width="10"></td>
                            <td><asp:TextBox Id="txtUser" width="150" runat="server"/></td>
                          </tr>
                          <tr>
                            <td>Password:</td>
                            <td width="10"></td>
                            <td><asp:TextBox Id="txtPassword" width="150" TextMode="Password" runat="server"/></td>
                          </tr>
                          <tr>
                            <td></td>
                            <td width="10"></td>
                            <td><asp:Button Id="cmdLogin" OnClick="ProcessLogin" Text="Login" runat="server" /></td>
                          </tr>
                        </table>
                      </div></td>
                    </tr>
                  </table>
                  <p>&nbsp;</p>
                </div></td>
              </tr>
            </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
    <td width="15%">&nbsp;</td>
  </tr>
</table>
<div id="ErrorMessage" runat="server" />
</form>
</body>
</html>

