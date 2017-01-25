<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FinalResultsPrint.aspx.cs" Inherits="abundalife1001.FinalResultsPrint" %>

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

.style5 {	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.style9 {font-size: 16px;
	font-weight: bold;
}
.style8 {color: #FFFFFF;
	font-weight: bold;
}
.style8 {font-size: 12px;
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
                        </tr>
                    </table></th>
                  </tr>
                  <tr>
                    <th valign="top" scope="row"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="11%">&nbsp;</td>
                          <td width="89%" class="style2">Create Patient</td>
                        </tr>
                    </table></th>
                  </tr>
                  <tr>
                    <th height="21" valign="top" scope="row"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="11%" height="19">&nbsp;</td>
                          <td width="89%" class="style2">View Patients</td>
                        </tr>
                    </table></th>
                  </tr>
                </table></td>
                <td width="81%" align="center" valign="top"><div align="left">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td valign="top"><div align="center"><img src="images/TopMenuMain.gif" width="486" height="97" border="0" usemap="#Map" />
                          <map name="Map" id="Map">
                            <area shape="poly" coords="124,70,110,71,107,82,116,92,136,95,179,93,228,94,274,91,268,82,279,71,215,71,126,73,419,72" href="#" />
                          <area shape="poly" coords="415,74,375,73,313,72,278,73,270,82,275,92,333,93,379,93,421,92,414,82,414,74" href="#" />
                          <area shape="poly" coords="483,73,451,71,417,72,415,86,420,95,477,92,472,147,486,84,477,73" href="#" />
                          <area shape="poly" coords="109,71,91,71,70,71,57,82,65,94,85,94,114,93,105,80,108,70" href="#" />
                          <area shape="poly" coords="2,94,4,72,21,70,44,71,71,71,56,85,63,94,29,97,3,90" href="#" />
                          <area shape="rect" coords="3,43,69,67" href="#" /></map>
                      </div></td>
                    </tr>
                    <tr>
                      <td height="533" valign="top"><div align="left">
                        <table width="100%" height="547" border="2" cellpadding="0" cellspacing="0" bordercolor="#D2232A">
                          <tr>
                            <td height="34" colspan="2" valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="3">
                              <tr>
                                <td bgcolor="#D2232A"><span class="style4"><span class="style9">CLINICAL CONDITIONS RESULTS</span></span><span class="style8"><br />
                                </span></td>
                              </tr>
                            </table>
                              <table width="100%" border="0" cellspacing="5" cellpadding="5">
                              <tr>
                                <td><div align="justify"><strong>Recomendation Part 3:1<br />  
                                        <span class="style5">The enclosed report of finding was scientifically determined by a number of definitive physiological factors, including individual Bio-Chemistry, Genetic Presdisposition, Medical History and Personal Symptomotology. Said perametors have been analyzed, compaired aginst extensive data based on cross corrulated with the help of 21st Century Technology.</span></strong></div></td>
                              </tr>
                            </table></td>
                            </tr>
                          <tr>
                            <td width="6%" height="34" bgcolor="#D2232A"><span class="style3">.<span class="style4">1.</span></span></td>
                            <td width="94%"><blockquote>
                              <asp:TextBox ID="test1" runat="server" Width="300px"></asp:TextBox>

                              </blockquote></td>
                          </tr>
                          <tr>
                            <td height="24" bgcolor="#D2232A"><span class="style3">.<span class="style4">2.</span></span></td>
                            <td><blockquote>
                              <asp:TextBox ID="test2" runat="server" Width="300px"></asp:TextBox>

                            </blockquote></td>
                          </tr>
                          <tr