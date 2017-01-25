<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Special.aspx.cs" Inherits="abundalife1001.View_Special" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>View In House Urine & Saliva</title>
    <style type="text/css">

.red12 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.style3 {
	font-size: 18px;
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style4 {
	color: #990000;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 24px;
}
.style6 {
	color: #FFFFFF;
	font-weight: bold;
}
.style7 {color: #FFFFFF}
.style8 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FFFFFF; }
.style9 {font-size: 18px; font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FFFFFF; }
.style10 {font-size: 10px}
.style13 {font-size: 10px; font-weight: bold; }
.style14 {color: #FFFFFF; font-weight: bold; font-size: 10px; }
.style17 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	color: #990000;
	font-weight: bold;
}
#form1 .style14 #Neutrophils {
}
.style21 {color: #996600; font-size: 14px; font-weight: bold; }
.style22 {font-size: 10px; font-family: Arial, Helvetica, sans-serif; }
.style25 {font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; color: #FFFFFF; }
.style27 {font-family: Arial, Helvetica, sans-serif; font-size: 9px; font-weight: bold; }
.MAINHEAD {
	font-size: 22px;
	font-weight: bolder;
	color: #FFF;
	text-decoration: underline;
}
.style28 {font-size: 9px}

    .style26 {font-family: "Agency FB"; font-weight: bold; color: #FFFFFF; font-size: 16px; }
.style29 {	color: #660066;
	font-weight: bold;
}
.style31 {color: #F9A92A}
    </style>
</head>
<body>
    
<form name="form1" id="form1" runat="server">
<asp:HiddenField ID="xid" runat="server" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top"><div align="center"><img src="images/Maintop.jpg" alt="" width="594" height="120" /></div></td>
  </tr>
  <tr>
    <td valign="top"><div align="center">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="12%">&nbsp;</td>
          <td width="80%"><div align="center"><span class="style29"><a href="Default.aspx"></a></span> <img src="images/TopMenuMain.gif" alt="" width="493" height="99" border="0" usemap="#Map" />
                  <map name="Map" id="Map">
                    <area shape="poly" coords="55,72,30,69,1,77,10,92,34,92,56,91,52,71" href="#" />
                    <area shape="poly" coords="489,74,462,69,425,69,419,80,428,92,457,92,483,90,483,75" href="#" />
                    <area shape="poly" coords="270,69,233,68,176,69,113,69,108,80,123,94,177,91,282,92,270,80,269,68,423,72,354,71,276,71,274,80,290,94,357,94,424,91,417,83,419,71,420,71" href="#" />
                    <area shape="poly" coords="109,71,87,71,63,72,55,81,62,94,83,94,116,92,105,81,107,71" href="UrineReport.aspx" />
                  </map>
            </div>
              <table width="562" border="1" align="center" bordercolor="#F9A92A" bgcolor="#B400FF">
                <tr>
                  <td width="55"><asp:Button ID="BloodButton" runat="server" onclick="Blood_Click" 
                                            Text="Blood" /></td>
                  <td width="51"><asp:Button ID="UrineButton" runat="server" onclick="Urine_Click" 
                                            Text="Urine" /></td>
                  <td width="167"><asp:Button ID="SalivaButton" runat="server" onclick="Saliva_Click" 
                                            Text="In House Urine &amp; Saliva" /></td>
                  <td width="150" class="style26"><asp:Button ID="SpecialButton" runat="server" onclick="Special_Click" 
                                            Text="Extra Special Tests" /></td>
                  <td width="69" class="style26"><asp:Button ID="ResultButton" runat="server" onclick="Result_Click" 
                                            Text="Results" /></td>
                  <td width="30" class="style26"><a href="Default.aspx" class="style31">HOME</a></td>
                </tr>
              </table>
            <div align="center"></div></td>
          <td width="8%">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="left"> Name:
            <asp:Label ID="name" runat="server" Text="name"></asp:Label>
                  <br />
          </div></td>
          <td>&nbsp;</td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr>
    <td height="19" valign="top">
    

  <div align="center">
      
    </div>
    <div>
      <table width="610" border="0" align="center" cellpadding="0" background="images/bg2.jpg">
        
        <tr>
          <td width="4848" colspan="2" align="center" valign="top"><div align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td valign="top"><div align="center">
                        <table width="90%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td valign="top"><div align="center">
                                <table width="100%" border="0" cellpadding="0">
                                  <tr>
                                    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td bgcolor="#FF0000"><p>..<span class="MAINHEAD">LAB TESTS RESULTS</span> </p></td>
                                      </tr>
                                    </table>                                      </td>
                                  </tr>
                                </table>
                            </div></td>
                          </tr>
                        </table>
                      </div>                      </td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td height="5206" valign="top"><table width="99%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td bgcolor="#AF1D78"><blockquote>
                                <p><span class="style8">EXTRA SPECIAL TESTS </span></p>
                            </blockquote></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>105. FRUCTOSAMINE</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                              <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                       <asp:TextBox class="style4" ID="FRUCTOSAMINE" runat="server" Width="41px"></asp:TextBox>
												
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">230</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">210-250</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">190-270</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>106.TOTAL LIPOPROTEIN B</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="TOTALLIPOPROTEINB" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0-75</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0-109</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>107. FOLIC ACID</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="FOLICACID" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">12</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">9-15</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">4.2-19.9</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>108. VITAMIN B 12</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="VITAMINB12" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">850</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">750-1200</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">211-946</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>109. ZINC</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="ZINC" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">150</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">135-175</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">68-161</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>110. 250 OH VITAMIN D</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="VITAMIND2500" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">60</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">40-60</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">9.5-52</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>111. VITAMIN D1 25 DIHYDROXY (3)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="VITAMIND125DIHYDROXY" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">60</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">50-70</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">25-66</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>112. VITAMIN C</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="VITAMINC" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">40</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">20-60</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">2-20</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>113. THIAMIN FREE VITAMIN B1</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="THIAMINFREEVITAMINB1" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">16</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">12-20</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">2.7-13.1</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>114. VITAMIN B6 PYRIDOXIN</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="VITAMINB6PYRIDOXIN" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">75</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">50-100</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">5-50</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>115. VITAMIN A</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="VITAMINA" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">75</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">60-100</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">30-75</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>116. LEAD BLOOD</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="LEADBLOOD" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0-10</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0-25</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>117. MERCURY BLOOD</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="MERCURYBLOOD" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0-3</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0-5</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>118. ARSENIC BLOOD</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="ARSENICBLOOD" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0-7</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0-11</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>119. VITAMIN B2 (RIBOFLAVIN)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="VITAMINB2RIBOFLAVIN" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">15</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">10-20</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">3-15</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>120. GLUTEN</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="GLUTEN" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">?</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">?</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">?</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>121. T. PYLORI</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="PYLORI" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">-75</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">50-75</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">100+</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>122.CANDIDA</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="CANDIDA" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0-50</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">100+</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>123. LIPO PROTEIN A (LP (A)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="LIPOPROTEINA" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0-15</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0-30</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>124. FIBRINOGEN</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="FIBRINOGEN" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">290</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">250-330</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">150-430</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>125. DHEA SULFATE</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="DHEASULFATE" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">150</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">100-200</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">28-175</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="266" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="260" height="27"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>126. IGF-1 (INSULIN LIKE GROWTH FACTOR</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="IGF1" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" height="14" valign="bottom"><div align="center"><span class="style28">400</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">200-600</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">100-350</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>127. MEN: TESTOSTERONE (TOTAL)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="MENTESTOSTERONETOTAL" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">600</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">300-900</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">28-800</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>128. WOMEN: TESTOSTERONE (TOTAL)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="WOMENTESTOSTERONETOTAL" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">?</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">?</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">?</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>129. MEN: TESTOSTERONE (FREE)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="MENTESTOSTERONEFREE" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">3.0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">2.0-4.0</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">1.6-2.9</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="254" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="248"><table width="103%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>130. PROSTATIC SPECIFIC ANTIGEN (PSA)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="PROSTATICSPECIFICANTIGEN" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0-3.0</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0-4.0</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>131. FREE PSA</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="FREEPSA" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0-12</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0-25</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="258" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="258"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>132. SEX HORMONE BINDING GLOBULIN</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="SEXHORMONEBINDINGGLOBULIN" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" height="14" valign="bottom"><div align="center"><span class="style28">66</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">36-96</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">18.0-114.0</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>133. DIHYDROTESTOSTRONE (DHT)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="DIHYDROTESTOSTRONE" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">300</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">250-350</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">36.0-573</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>134. ESTRADIOL (MEN)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="ESTRADIOLMEN" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">45</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">30-60</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">20-75</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>135.ESTRADIOL (FEMALE)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="ESTRADIOLFEMALE" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">?</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">?</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">?</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>136. MID-FOLLICULAR</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="MIDFOLLICULAR" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">80</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">70-90</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">24-114</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>137. PERI OVULATORY</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="PERIOVULATORY" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">400</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">300-500</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">62-534</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>138. MID-LUTEAL</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="MIDLUTEAL" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">250</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">200-300</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">80-273</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <div align="center" class="style8">
                          <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#669900">
                            <tr>
                              <td><div align="center" class="style8"> SPECIAL BLOOD TESTS: WOMEN</div></td>
                            </tr>
                          </table>
                        </div>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>139. POST MENOPAUSAL</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="POSTMENOPAUSAL" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">250</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">200-300</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">20-88</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>141. PROLACTIN</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="PROLACTIN2" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong><br />
                                                  <br />
                                                High = Inhibits Testosterone production</p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>142. LH</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="LH" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong><br />
                                                        <br />
                                                  High = Increases Testosterone production</p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>143. FSH</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="FSH" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong>FSH stimulates E2 secretion and Spermatagenesis<br />
                                                        <br />
                                                  High = Sign of poor Spermatogenesis</p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>144. ESTRADIOL (E2)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="ESTRADIOLE2" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong><br />
                                                  <br />
                                                  High = High Estrogen may reduct Testosterone levels and effect range</p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>145. Estrone (E2)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="EstroneE2" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong><br />
                                                        <br />
                                                  High = High Estrogen may reduce Testosterone levels and effect range</p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>146. SHBG</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="SHBG" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong><br />
                                                        <br />
                                                  High = Reduces Testosterone effects by binding it in the blood-slowing down Testosterone's uptake by the cells</p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>147. AG</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="AG" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong><br />
                                                        <br />
                                                  High = Indicator of Testosterone efficiency at cell level</p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#669900">
                          <tr>
                            <td><div align="center" class="style8"> SPECIAL BLOOD TESTS: MEN</div></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>148. ESTRADIOL (E2 MEN)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="ESTRADIOLE2MEN" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">10-45</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">20-30</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">25</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>149. TESTOSTERONE (TOTAL)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="TESTOSTERONETOTAL" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">300-800</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">500-1000</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">750</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>150. TESTOSTERONE (FREE)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="TESTOSTERONEFREE" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0.8-1.6</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">1.5-3.0</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">2.25</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>152. DIHYDRO TESTOSTERONE (DHT)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="9%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="38%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="DIHYDROTESTOSTERONEDHT" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="9%" valign="bottom"><div align="center"><span class="style28">300-1000</span></div></td>
                                    <td width="38%" valign="bottom"><div align="center"><span class="style28">600-1200</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">750</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>153. PROLACTIN</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="PROLACTIN" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">0-20</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">6-12</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">10</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>154. LH</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="Glucose10" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">2-12</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0-5</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">3</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>155. FSH</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="Glucose15" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">1-8</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">0-5</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">2</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>156. ESTRONE (E1)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="ESTRONEE1" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">20-60</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">30-75</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">45</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="275" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="290"><table width="271" border="0" cellpadding="5" cellspacing="0">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>157. ANDROSTANEDIOL GLUCURONIDE (AG)</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="ANDROSTANEDIOLGLUCURONIDE" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">11-73</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">15-45</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">25</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                      <tr>
                                        <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#CC0066"><span class="style25"><strong>158.SHBG</strong></span></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                  </table></td>
                                  <td width="21%" valign="bottom"><table width="91%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#FF6600">
                                      <tr>
                                        <td height="38" bgcolor="#FF3300"><div align="center"><span class="style25"><strong>YOUR TEST RESULTS</strong></span></div></td>
                                      </tr>
                                    </table>
                                      <div align="center"></div></td>
                                </tr>
                              </table>
                                <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC0066">
                                  <tr>
                                    <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                    </div>
                                        <div align="center"></div>
                                      <div align="center"></div></td>
                                    <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                    <td width="33%" valign="bottom" bgcolor="#FFFFFF"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                    </table></td>
                                    <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                                <asp:TextBox class="style4" ID="SHBG2" runat="server" Width="41px"></asp:TextBox>
                                                <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                  <tr bgcolor="#FFFFFF">
                                    <td width="7%" valign="bottom"><div align="center"><span class="style28">20-50</span></div></td>
                                    <td width="40%" valign="bottom"><div align="center"><span class="style28">10-30</span></div></td>
                                    <td valign="bottom"><div align="center"><span class="style28">20</span></div></td>
                                  </tr>
                                  <tr>
                                    <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;&nbsp; </strong></p></td>
                                              </tr>
                                            </table>
                                              <span class="style22"></span></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                              </table></td>
                          </tr>
                        </table>
                      <br /></td>
                    </tr>
                  </table>
                  <br /></td>
              </tr>
              <tr>
                <td align="center" valign="top">&nbsp;</td>
              </tr>
            </table>
            <div align="left"></div>
            <div align="left"></div>
</div></td>
        </tr>
        <tr>
          <td colspan="2" align="center" valign="top">&nbsp;</td>
        </tr>
      </table>
    </div>
    </form>
    </td>
  </tr>
</table>

<p>&nbsp;</p>
</body>
</html>

