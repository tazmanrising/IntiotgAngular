<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Urine.aspx.cs" Inherits="abundalife1001.View_Urine" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Untitled Page</title>
    <style type="text/css">
<!--
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
.style29 {color: #660066;
	font-weight: bold;
}
.style31 {color: #F9A92A}
-->
    </style>
</head>
<body>
 <form name="form1" id="form2" runat="server" action="aa.html">
        <asp:HiddenField ID="xid" runat="server" />
<div align="center"><img src="images/Maintop.jpg" alt="" width="594" height="120" /></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><div align="center">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="12%">&nbsp;</td>
          <td width="80%"><div align="center"><span class="style29"><a href="Default.aspx"></a></span> <img src="images/TopMenuMain.gif" alt="" width="493" height="99" border="0" usemap="#Map" />
                  <map name="Map" id="Map">
                    <area shape="poly" coords="55,72,30,69,1,77,10,92,34,92,56,91,52,71" href="#" />
                    <area shape="poly" coords="489,74,462,69,425,69,419,80,428,92,457,92,483,90,483,75" href="#" />
                    <area shape="poly" coords="270,69,233,68,176,69,113,69,108,80,123,94,177,91,282,92,270,80,269,68,423,72,354,71,276,71,274,80,290,94,357,94,424,91,417,83,419,71,420,71" href="#" />
                    <area shape="poly" coords="109,71,87,71,63,72,55,81,62,94,83,94,116,92,105,81,107,71" href="View_Urine.aspx" />
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
    <td><div align="center">
     
        <div>
          <table width="610" border="0" cellpadding="0">
            <tr>
              <td width="1212" colspan="2" align="center" valign="top"><div align="center">
                  <table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/bg2.jpg">
                    <tr>
                      <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td valign="top"><div align="center">
                                <table width="90%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td valign="top"><div align="center">
                                        <table width="100%" border="0" cellpadding="0">
                                          <tr>
                                            <td height="25" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                  <tr>
                                                    <td bgcolor="#660066"><p>..<span class="MAINHEAD">LAB TESTS RESULTS</span> </p></td>
                                                  </tr>
                                              </table></td>
                                          </tr>
                                        </table>
                                    </div></td>
                                  </tr>
                                </table>
                            </div></td>
                          </tr>
                        </table>
                          <table width="90%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td bgcolor="#996600"><blockquote>
                                  <p><span class="style8">URINE TESTS </span></p>
                              </blockquote></td>
                            </tr>
                          </table>
                        <table width="90%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td valign="top"><table width="100%" border="0" cellpadding="0">
                                  <tr>
                                    <td height="177" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                              <tr>
                                                <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                    <tr>
                                                      <td bgcolor="#CC6600"><span class="style25"><strong>66. ASCOBIC ACID</strong></span></td>
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
                                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                        <asp:TextBox ID="ascorbicacid" class="style4" runat="server" Width="41px"></asp:TextBox>
                                                        <br />
                                                    </div></td>
                                                  </tr>
                                                </table>
                                            </div></td>
                                          </tr>
                                          <tr bgcolor="#FFFFFF">
                                            <td width="7%" valign="bottom"><div align="center"><span class="style28">10</span></div></td>
                                            <td width="40%" valign="bottom"><div align="center"><span class="style28">8-12</span></div></td>
                                            <td valign="bottom"><div align="center"><span class="style28">4-10</span></div></td>
                                          </tr>
                                          <tr>
                                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                                <tr>
                                                  <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                                      <tr>
                                                        <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Vitamin C absorption<br />
                                                                <br />
                                                          Low  -  Poor absorption, stress, immune system  challenge, vitamin C deficiency,
                                                          bio-flavanoid deficiency, smoking,  medications, sugar excess<br />
                                                                                              <br />
                                                          High  -  Liver dysfunction, toxicity, kidney  dysfunction</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>67. SPECIFIC GRAVITY</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="specificGravity" class="style4" runat="server" Width="41px"></asp:TextBox>
                                                          <br />
                                                      </div></td>
                                                    </tr>
                                                  </table>
                                              </div></td>
                                            </tr>
                                            <tr bgcolor="#FFFFFF">
                                              <td width="7%" valign="bottom"><div align="center"><span class="style28">1.10</span></div></td>
                                              <td width="40%" valign="bottom"><div align="center"><span class="style28">1.005-1.015</span></div></td>
                                              <td valign="bottom"><div align="center"><span class="style28">1.004-1.019</span></div></td>
                                            </tr>
                                            <tr>
                                              <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                                  <tr>
                                                    <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                                        <tr>
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><strong>Stand alone indicator:   </strong>Hydration<br />
                                                              <br />
                                                            Low  =  Kidney not clearing, diabetes, kidney dysfunction<br />
                                                            <br />
                                                            High  =  Dehydration, heart congestion, liver  sluggishness, electrolyte depletion</td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>68. PH</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="PHNegative" class="style4" runat="server" Width="41px"></asp:TextBox>
                                                          <br />
                                                      </div></td>
                                                    </tr>
                                                  </table>
                                              </div></td>
                                            </tr>
                                            <tr bgcolor="#FFFFFF">
                                              <td width="7%" valign="bottom"><div align="center"><span class="style28">6.5</span></div></td>
                                              <td width="40%" valign="bottom"><div align="center"><span class="style28">6.4-6.8</span></div></td>
                                              <td valign="bottom"><div align="center"><span class="style28">60-70</span></div></td>
                                            </tr>
                                            <tr>
                                              <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                                  <tr>
                                                    <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                                        <tr>
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Acid/Alkaline balance<br />
                                                                  <br />
                                                            High  Alkalivity = Urinary tract infection, candida, bacteria, floria imbalance<br />
                                                            <br />
                                                            High  Acid = Toxicity, faulty diet</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>69. GLUCOSE</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="UrineGlucose" class="style4" runat="server" Width="41px"></asp:TextBox>
                                                          <br />
                                                      </div></td>
                                                    </tr>
                                                  </table>
                                              </div></td>
                                            </tr>
                                            <tr bgcolor="#FFFFFF">
                                              <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                              <td width="40%" valign="bottom"><div align="center"><span class="style28">0-0.7</span></div></td>
                                              <td valign="bottom"><div align="center"><span class="style28">0-1.0</span></div></td>
                                            </tr>
                                            <tr>
                                              <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                                  <tr>
                                                    <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                                        <tr>
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Blood sugar abnormality<br />
                                                                  <br />
                                                            High  =  Syndrome X, uncontrolled diabetes,  pancreatic problems, severe metabolic
                                                            acidosis</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>70. BILIRUBIN</strong></span></td>
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
                                          <table width="100%" height="106" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="Bilirubin" class="style4" runat="server" Width="41px"></asp:TextBox>
                                                      </div></td>
                                                    </tr>
                                                  </table>
                                              </div></td>
                                            </tr>
                                            <tr bgcolor="#FFFFFF">
                                              <td width="7%" height="14" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                              <td width="40%" valign="bottom"><div align="center"><span class="style28">0-0.7</span></div></td>
                                              <td valign="bottom"><div align="center"><span class="style28">0-1.0</span></div></td>
                                            </tr>
                                            <tr>
                                              <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                                  <tr>
                                                    <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                                        <tr>
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Liver efficiency<br />
                                                                  <br />
                                                            High  =  Liver sluggishness, constipation,  enzyme deficiency, toxicity, gall bladder/liver
                                                            dysfunction</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>71. KEYTONE</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="Keytone" class="style4" runat="server" Width="41px"></asp:TextBox>
                                                          <br />
                                                      </div></td>
                                                    </tr>
                                                  </table>
                                              </div></td>
                                            </tr>
                                            <tr bgcolor="#FFFFFF">
                                              <td width="7%" height="14" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                              <td width="40%" valign="bottom"><div align="center"><span class="style28">0-0.7</span></div></td>
                                              <td valign="bottom"><div align="center"><span class="style28">0-1.0</span></div></td>
                                            </tr>
                                            <tr>
                                              <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                                  <tr>
                                                    <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                                        <tr>
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p>High  =  Acidosis, cells breaking down, severe  psychological stress, fasting, over training,
                                                            fat cells burning fat converting to energy</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>72. BLOOD</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="UrineBlood" class="style4" runat="server" Width="41px"></asp:TextBox>
                                                          <br />
                                                      </div></td>
                                                    </tr>
                                                  </table>
                                              </div></td>
                                            </tr>
                                            <tr bgcolor="#FFFFFF">
                                              <td width="7%" height="14" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                              <td width="40%" valign="bottom"><div align="center"><span class="style28">0-0.7</span></div></td>
                                              <td valign="bottom"><div align="center"><span class="style28">0-1.0</span></div></td>
                                            </tr>
                                            <tr>
                                              <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                                  <tr>
                                                    <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                                        <tr>
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Capillary integrity<br />
                                                                  <br />
                                                            High  =  Kidney dysfunction, ulcer, excess  Aspirin, vitamin C, bio-flavanoid deficiency,
                                                            Menstruation, cellular  degeneration, bladder scratchers, prostate problems, hemroids</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>73. PROTEIN</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="UrineProtein" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Protein utilization<br />
                                                                  <br />
                                                            High  =  Kidney's not clearing protein by-products  and urea</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>74. UROBILINOGEN</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="Urubilinogen" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Liver function<br />
                                                                  <br />
                                                            High  =  Liver disorder, colon impaction,  toxicity</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>75. NITRITE / NITROGEN</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="Nitrite" class="style4" runat="server" Width="41px"></asp:TextBox>
                                                          <br />
                                                      </div></td>
                                                    </tr>
                                                  </table>
                                              </div></td>
                                            </tr>
                                            <tr bgcolor="#FFFFFF">
                                              <td width="7%" valign="bottom"><div align="center"><span class="style28">3</span></div></td>
                                              <td width="40%" valign="bottom"><div align="center"><span class="style28">2-4</span></div></td>
                                              <td valign="bottom"><div align="center"><span class="style28">1-5</span></div></td>
                                            </tr>
                                            <tr>
                                              <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                                  <tr>
                                                    <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                                        <tr>
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Kidney function<br />
                                                                  <br />
                                                            High  =  Kidney not clearing efficiently, toxic  overwhelm, constipation, slow food
                                                            Transition, dirty colon, autointoxication</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>76. LEUKOCYTES</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="Leukocytes" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Urinary tract health<br />
                                                                  <br />
                                                            High =   Urinary tract infectoin, colon toxicity, autointoxication, candida  albacans</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>77. RBC (RED BLOOD COUNT)</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="RB" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:</strong>   Red blood cells breaking down<br />
                                                                  <br />
                                                            High  =  Red blood cells dying off, nutritional  deficiency, loss of fighting force</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>78. EPITHELIAL CELLS</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="EpithelialCells" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:</strong>   Immune<br />
                                                                  <br />
                                                            High  =  Immune system breaking down</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>79. CALCIUM OXALATE</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="CalciumOxalate" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                                              <td colspan="4" valign="top"><div align="center">
                                                  <table width="100%" border="1" cellpadding="5">
                                                    <tr>
                                                      <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                                          <tr>
                                                            <td valign="top" bgcolor="#FFFFFF" class="style27"><p align="left"><strong>Stand alone indicator:   </strong>Stone formation<br />
                                                                    <br />
                                                              High  =  Stone formation, metabolic acidosis,  faulty diet</p></td>
                                                          </tr>
                                                        </table>
                                                          <span class="style22"></span></td>
                                                    </tr>
                                                  </table>
                                              </div></td>
                                            </tr>
                                        </table></td>
                                    </tr>
                                </table>
                                <table width="100%" border="0" cellpadding="0">
                                    <tr>
                                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>80. TRIPLE PHOSPHATE</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="TriplePhosphate" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:  </strong>Mineral imbalance<br />
                                                                  <br />
                                                            High  =  Bone depletion </p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>81. URIC ACID</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="UrineUricAcid" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                                                          <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Bad acid<br />
                                                                  <br />
                                                            High =   Autointoxication, joint discomfort</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>82. AMOPHOUS</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="Amorphous" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                                                          <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p align="left"><strong>Stand alone indicator:</strong>   Flora balance</p>
                                                              <p>High  =  Floral imbalance</p></td>
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
                                            <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
                                                <tr>
                                                  <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                      <tr>
                                                        <td bgcolor="#CC6600"><span class="style25"><strong>83. BACTERIA</strong></span></td>
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
                                          <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#CC6600">
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
                                                          <asp:TextBox ID="Bacteria" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                                                          <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p align="left"><strong>Stand alone indicator:  Toxic overwhelm, bacteria immersed immune system, </strong>Immune competency</p>
                                                              <p>High  =  Autointoxication, candida, bacterial  infection, dirty colon,  immune system
                                                                over run</p></td>
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
                        </table></td>
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
              <td colspan="2" align="center" valign="top"><p>&nbsp;</p>
                  <div>
                    <div> </div>
                  </div></td>
            </tr>
          </table>
        </div>
      </form>
    </div></td>
  </tr>
</table>
<p><br />
</p>
<p>&nbsp;</p>
</body>
</html>
