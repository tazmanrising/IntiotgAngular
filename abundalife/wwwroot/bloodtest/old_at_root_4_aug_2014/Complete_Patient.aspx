<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Complete_Patient.aspx.cs" Inherits="abundalife1001.Complete_Patient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Complete Patient Profile</title>
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

    .style3
    {
        width: 101px;
    }
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
</head>

<body>

<form name="form1" id="form1" runat="server">

<asp:HiddenField ID="xid" runat="server" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="25%">&nbsp;</td>
    <td width="60%" align="center" valign="top"><table width="66%" border="3" cellpadding="0" cellspacing="0" bordercolor="#FF6600">
      <tr>
        <td height="678" align="center" valign="top" bgcolor="#CCCC33"><table width="56%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
          <tr>
            <td width="22%" rowspan="2" align="right" valign="top" bgcolor="#CCFF33">&nbsp;</td>
            <td width="64%" align="center" valign="top"><img src="images/Maintop.jpg" width="594" height="120" /></td>
            <td width="14%" rowspan="2" align="left" valign="top" bgcolor="#CCFF33">&nbsp;</td>
          </tr>
          <tr>
            <td align="center" valign="top"><table width="98%" border="0" cellspacing="0" cellpadding="0">
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
                      <td valign="top"><div align="left">
                        <table width="100%" border="5" cellpadding="5" cellspacing="0" bordercolor="#CCCC33">
                          <tr>
                            <td valign="top"><table width="100%" border="2" cellpadding="5" cellspacing="0" bordercolor="#F36D1B">
                              <tr>
                                <td class="style3">Last Name:</td>
                                <td>&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                                </td>
                              </tr>
                              <tr>
                                <td class="style3">First Name:</td>
                                <td>&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
                                </td>
                              </tr>
                              <tr>
                                <td class="style3">Phone Number:</td>
                                <td>&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
                                </td>
                              </tr>
                              <tr>
                                <td class="style3">Email Address: </td>
                                <td>&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
                                </td>
                              </tr>
                              
                            </table>
                              
                              <p align="center"><br />
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
                                          <li><a href="javascript:Delegator('ECAT');">Enter Clinical Alternative Therapy</a>                                          </li>
                                          <li><a href="javascript:Delegator('VPCAT');">View/Print Clinical Alternative Therapy</a></li>
                                      </ul>
                                </li>
                                <li><a href="#goto1001">Abunda1001</a></li>
                              </ul>
                              <p align="center"><br />
                                  <br />
                                  <br />
                                  <br clear="all" />
                                <br />
                              </p>
                              <p align="center">&nbsp;</p>                              </td></tr>
                        </table>
                      </div></td>
                    </tr>
                  </table>
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
</form>
<script type="text/javascript">
<!--
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});

function Delegator(xthis){
	if(xthis == 'EBU'){
		//document.getElementById("xid").value = 
		//document.form1.submit;
		window.location = 'Insert_Profile.aspx?ID='+ document.form1.xid.value;
	}else if(xthis == 'VPB') {
	    window.location = 'View_Profile.aspx?ID='+ document.form1.xid.value;
	}else if(xthis == 'VPU') {
	    window.location = 'View_Urine.aspx?ID='+ document.form1.xid.value;
	}else if(xthis == 'VPUS') {
	    window.location = 'View_Saliva.aspx?ID='+ document.form1.xid.value;
	}else if(xthis == 'VPS') {
	    window.location = 'View_Special.aspx?ID='+ document.form1.xid.value;
	}else if(xthis == 'CPA') {
	    window.location = 'Edit_Person.aspx?ID='+ document.form1.xid.value;
	}else if(xthis == 'ECC') {
	    window.location = 'FinalResultsKey.aspx?ID='+ document.form1.xid.value;
	}else if(xthis == 'VPCC') {
	    window.location = 'FinalResultsPrint.aspx?ID='+ document.form1.xid.value;
	}else if(xthis == 'ECAT') {
	    window.location = 'FinalResults2Key.aspx?ID='+ document.form1.xid.value;
	}else if(xthis == 'VPCAT') {
	    window.location = 'FinalResults2Print.aspx?ID='+ document.form1.xid.value;
	}

}


//-->
</script>
</body>
</html>



