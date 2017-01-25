    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Saliva.aspx.cs" Inherits="abundalife1001.View_Saliva" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>View In House Urine & Saliva</title>
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
.style29 {	color: #660066;
	font-weight: bold;
}
.style31 {color: #F9A92A}
-->
    </style>
</head>



<body>
 <form name="form1" id="form1" runat="server" >
    <asp:HiddenField ID="xid" runat="server" />
   
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top"><div align="center"></div></td>
  </tr>
  <tr>
    <td valign="top"><div align="center"></div></td>
  </tr>
  <tr>
    <td valign="top"><div align="center">
   
   
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><div align="center"><img src="images/Maintop.jpg" alt="" width="594" height="120" /></div></td>
  </tr>
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
                  <asp:HiddenField ID="xid2" runat="server" />
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
      <div align="center">
        <table width="610" border="0" cellpadding="0">
          
          <tr>
            <td width="9696" colspan="2" align="center" valign="top"><div align="center">
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
                                  <td valign="top"><br />
                                    <br />
                                    <br />
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
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
                        <td valign="top"><table width="99%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td bgcolor="#660066"><blockquote>
                              <p><span class="style8">IN HOUSE URINE/ SALIVA TESTS</span></p>
                              </blockquote></td>
                            </tr>
                          </table>
                          <table width="100%" border="0" cellpadding="0">
                            <tr>
                              <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>84. SUGAR REFRACTOMETER TEST</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="sugarrefractometer" Width="41px"></asp:TextBox>
                                              
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">2.5</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">1.5-3.5</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">1.0-4.5</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><div align="center">
                                        <table width="100%" border="1" cellpadding="5">
                                          <tr>
                                            <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Blood sugar and bio-energy</p>
                                                    <p>Low  =  Hypoclycemia, mood swings</p>
                                                    <p>High  =  faulty diet, excess junk food, sugar,  alcohol, stress, lack of exercise, syndrome X</p>                                                  </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>85. CONDUCTIVITY</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="conductivity" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">6</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">4-11</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">3-15</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p align="left"><strong>Stand alone indicator:   </strong>Toxicity,
                                                Minerals,
                                                Hydration</p>
                                                  <p>High  =  Mineral deficiency, electrolyte  imbalance, toxicity, dirty colon, dehydration</p>                                                  </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>86. NITRATE NITROGEN</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="nitratenitrogen" Width="41px"></asp:TextBox>
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
                                      <td colspan="4" valign="top"><div align="center">
                                        <table width="100%" border="1" cellpadding="5">
                                          <tr>
                                            <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                              <tr>
                                                <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Protein utilization</p>
                                                    <p>High  =  Highly toxic condition,  mal-absorption, hypochlorhydria, dirty colon</p>                                                  </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>87. AMMONICAL NITROGEN</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="ammonicalnitrogen" Width="41px"></asp:TextBox>
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
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Amino acid digestion</p>
                                                  <p>High  =  Poor protein to amino acid conversion, autointoxication, dirty colon</p>                                                  </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>88. INDICAN</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="indican" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">350</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">300-400</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">200-600</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Colon health</p>
                                                  <p>High  =  Colon toxicity, fermentation, slow  transition time, autointoxication, dirty colon,
                                                    putrification backing up affecting  other systems and organs</p>                                                  </td>
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
                              <td height="148" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>89. C-REACTIVE PROTIEN</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="creativeprotein" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">0-1.5</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">0-3</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="66" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td height="72" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:  Inflammatory marker, degenerative process<br />
                                                <br />
                                                Low = May be a good indication that therapy is working<br />
                                                <br />
                                                High = Fever, catabolic process, loss of muscle, carioVascular disease, bacterial infection, highly toxic, constipation, coronary artery disease, diabetes mellitus</strong>, pancretitis, obstructive jaundice, pregnancy, fungal infection</p>                                                </td>
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
                              <td height="148" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>90. HOMOCYSTEIN</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="homocystein" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">9</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">6-12</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">4.0-15.4</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="67" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td height="59" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator: CarioVascular Risk, Stroke<br />
                                                <br />
                                                High:  CardioVascular Disease, diabetes, autoimmune conditions, M.S., Lupus- Precurser to 50 + different diseases and deficiencies in Folic Acid, B12, B6, B1, Vitamin E, Vitamin C, CoEnzyme Q10
                                                </strong></p>                                                </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>91. LACTIC ACID</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server"  class="style4" ID="lacticacid" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">1.38</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">1.18-1.58</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">0.50-2.22</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator: Cellular Oxygen<br />
                                                <br />
                                                Low = Excellent cellular oxygen<br />
                                                <br />
                                                High =:  Cellular oxygen deficiency-The precurser to 100% of all Cancers, Fungal Infection, Candida, 
                                                Chronic Fatigue</strong></p>                                                </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>92. CORTISOL</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="cortisol" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">15</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">12.4-17.4</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">1.9-19.9</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Low Cortisol, Hypoglycemia, Low blood pressure, chronic pain, inlammation, anxiety, tachycardia, allergies, chronic fatigue, inability to handle stress, memory problems, mental, emotional and physical stress<br />
                                                <br />
                                                Low = <br />
                                                <br />
                                                High = Trama, surgery, stress, obesity, adrenal exaustion, dpression, fear, overexhaustion, reserve wipe out</p>                                                    </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>93. CORTISOL/ DHEA RATIO</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="cortisoldhea" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">300</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">188-433.4</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">65.9-555.9</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Stress, Anxiety, weight gain, exaustion, fatigue, low libido<br />
                                                <br />
                                                Low = Anxiety<br />
                                                <br />
                                                High = Wiped out</p>                                                </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>94. INSULIN</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="insulin" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">16</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">10-22</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">7-26</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Pancreatic function, blood sugar and energy regulation<br />
                                                <br />
                                                Low = Diabetes, hypopituitarism, adult onset of human growth horman deficiency<br />
                                                <br />
                                                High = Hypoglycemia, obesity</p>                                                </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>95. ESTROGEN</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="estrogen" Width="41px"></asp:TextBox>
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
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p>                                                </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>96. PSA</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="psa" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">0-3</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">0-4</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p>                                                </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>97. TESTOSTERONE</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="testosterone" Width="41px"></asp:TextBox>
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
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p>                                                </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>98. MEN: PROGESTERONE</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="menprogesterone" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">0.42</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">0.32-0.52</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">0.10-0.84</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p>                                                </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>99. WOMEN: PROGESTERONE</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="womenprogesterone" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">12.00</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">8.00-16.00</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">5.16-18.56</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p>                                                </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>100. FIBBINOGEN</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="fibbinogen" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">300</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">220-360</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">150-430</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:  </strong></p>                                                </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>101. CA-125</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="ca125" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">0-15</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">0-21</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td height="43" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong></p>                                                </td>
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
                                  <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
                                    <tr>
                                      <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                        <tr>
                                          <td bgcolor="#6633FF"><span class="style25"><strong>101. CA-125</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#6633FF">
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
                                              <asp:TextBox runat="server" class="style4" ID="Glucose2" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">0-15</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">0-21</span></div></td>
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
                          </table>                          </td>
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
            <td colspan="2" align="center" valign="top"><p>&nbsp;</p>          </td>
          </tr>
        </table>
      </div>
    </div>
</form>
    </div></td>
  </tr>
</table>

</body>
</html>


    
      
   
