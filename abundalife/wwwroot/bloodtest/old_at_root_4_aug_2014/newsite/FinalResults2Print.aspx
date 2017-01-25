<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FinalResults2Print.aspx.cs" Inherits="abundalife1001.FinalResults2Print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
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
.style3 {color: #D2232A}
.style4 {color: #FFFFFF}

.style5 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.style8 {	color: #FFFFFF;
	font-weight: bold;
}
.style9 {	font-size: 16px;
	font-weight: bold;
}
.style7 {color: #FFFFFF; font-weight: bold; font-size: 16px; }
.style8 {	font-size: 12px;
	font-style: italic;
}
</style>
</head>

<body>
<form name="form1" id="form1" runat="server" method="post">
<asp:HiddenField ID="xid" runat="server" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="25%">&nbsp;</td>
    <td width="47%" align="center" valign="top"><table width="66%" height="800" border="3" cellpadding="0" cellspacing="0" bordercolor="#FF6600">
      <tr>
        <td height="757" align="center" valign="top" bgcolor="#CCCC33"><table width="56%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
          <tr>
            <td width="22%" rowspan="2" align="right" valign="top" bgcolor="#CCFF33">&nbsp;</td>
            <td width="64%" align="center" valign="top"><img src="images/Maintop.jpg" width="594" height="120" /></td>
            <td width="14%" rowspan="2" align="left" valign="top" bgcolor="#CCFF33">&nbsp;</td>
          </tr>
          <tr>
            <td height="636" align="center" valign="top"><table width="98%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="19%" height="629" align="left" valign="top"><table width="126%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600" id="leftMenuColor">
                  <tr>
                    <th valign="top" scope="row"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="11%">&nbsp;</td>
                          <td width="89%"><span class="style2">Create User</span></td>
                        </tr>
                    </table></th>
                  </tr>
                  <tr>
                    <th valign="top" scope="row"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="11%">&nbsp;</td>
                          <td width="89%" class="style2">View Users</td>
                 