﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Profile.aspx.cs" Inherits="abundalife1001.View_Profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Blood Results</title>
    <style type="text/css">
<!--
.red12 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style4 {
	color: #990000;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 24px;
}
.style8 {font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FFFFFF; }
#form1 .style14 #Neutrophils {
}
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
.style29 {
	color: #660066;
	font-weight: bold;
}
.style26 {font-family: "Agency FB"; font-weight: bold; color: #FFFFFF; font-size: 16px; }
.style31 {color: #F9A92A}
-->
    </style>
</head>
<body>
   
    <form id="form2" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="25%">&nbsp;</td>
    <td width="60%" align="center" valign="top"><table width="66%" border="3" cellpadding="0" cellspacing="0" bordercolor="#FF6600">
      <tr>
        <td align="center" valign="top" bgcolor="#CCCC33"><table width="56%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
          <tr>
            <td width="22%" rowspan="2" align="right" valign="top" bgcolor="#CCFF33">&nbsp;</td>
            <td width="64%" align="center" valign="top"><div align="center"><img src="images/Maintop.jpg" width="594" height="120" /></div></td>
            <td width="14%" rowspan="2" align="left" valign="top" bgcolor="#CCFF33">&nbsp;</td>
          </tr>
          <tr>
            <td align="center" valign="top"><table width="98%" border="0" cellspacing="0" 
                    cellpadding="0" style="height: 209px">
              <tr>
                <td width="19%" align="left" valign="top">&nbsp;</td>
                <td width="81%" align="center" valign="top"><div align="left">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <div align="center"></div>
<tr>
                      <td valign="top"><div align="center">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="12%">&nbsp;</td>
                            <td width="80%"><div align="center"><span class="style29"><a href="Default.aspx"></a></span>
                                <img src="images/TopMenuMain.gif" alt="" width="493" height="99" border="0" usemap="#Map" />
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
                                            Text="In House Urine & Saliva" /></td>
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
                                  <asp:HiddenField ID="xid" runat="server" />
                                  <br />
                            </div></td>
                            <td>&nbsp;</td>
                          </tr>
                        </table>
                        </div></td>
                    </tr>
                    <tr>
                      <td valign="top">&nbsp;</td>
                  </tr>
                    <tr>
                        <td>
                            <div id="displayCredentials" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="top"><!---  #################### --->
                        
    <div>
      <table width="610" border="0" cellpadding="0">
        
        <tr>
          <td align="center" valign="top"><div align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/bg2.jpg">
              <tr>
                <td align="center" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td valign="top"><div align="center">
                        <table width="90%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><div align="center">
                                <table width="100%" border="0" cellpadding="0">
                                  <tr>
                                    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td bgcolor="#660066"><p>..<span class="MAINHEAD">LAB TESTS RESULTS</span> </p></td>
                                      </tr>
                                    </table>
                                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td bgcolor="#990000"><blockquote>
                                            <p><span class="style8">BLOOD TESTS </span></p>
                                            </blockquote></td>
                                          </tr>
                                      </table>
                                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td width="79%" valign="bottom"><table width="100" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                                            <tr>
                                              <td><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                <tr>
                                                  <td bgcolor="#006600"><span class="style25"><strong>1. GLUCOSE</strong></span></td>
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
                                      <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                                        <tr>
                                          <td width="7%" valign="bottom"><div align="center">
                                            <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                              <tr>
                                                <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                              </tr>
                                            </table>
                                          </div>
                                            <div align="center"></div>
                                            <div align="center"></div></td>
                                          <td width="40%" valign="bottom"><div align="center">
                                            <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                              <tr>
                                                <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                              </tr>
                                            </table>
                                          </div></td>
                                          <td width="33%" valign="bottom"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                              <tr>
                                                <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                              </tr>
                                          </table></td>
                                          <td width="20%" rowspan="2" valign="middle"><div align="center">
                                            <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                              <tr>
                                                <td align="center" valign="middle"><div align="center">
                                                  <asp:TextBox ID="glucose" class="style4" runat="server" Width="41px"></asp:TextBox>
                                                  <br />
                                                </div></td>
                                              </tr>
                                            </table>
                                          </div></td>
                                        </tr>
                                        <tr>
                                          <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center" class="style28">90</div></td>
                                          <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center"><span class="style28">81.9-98.1</span></div></td>
                                          <td valign="bottom" bgcolor="#FFFFFF"><div align="center"><span class="style28">75-105</span></div></td>
                                          </tr>
                                        <tr>
                                          <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                            <tr>
                                              <td height="68" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                                <tr>
                                                  <td height="68" valign="top" bgcolor="#FFFFFF" class="style27"><span class="style22"><strong>Stand alone indicator:</strong>   Pancreatic efficiency, Even flow of physical/mental energy </span> <br />
                                                    <br />
                                                    High and/or low = fatigue, mood swings, depression,  nerve depletion, brain starvation, runing on empty, skipping meals, junk food habit, &quot;sugarholic&quot;, alchoholic, adrenal exhaustion, excess sugar, junk food nutritional  deficiency.                                                  Low = hypoglycemia, general weakness, psychomotor  disturbances.                                                  <br />
                                                    <br />
                                                    High = metabolic inefficiency, storing fat, loss of  muscle, overeating, liver sluggishness, colon toxicity, oxygen deficiency, vitamin deficiencies, syndrome X,  diabetes</td>
                                                </tr>
                                              </table>
                                                <span class="style22"></span></td>
                                            </tr>
                                          </table></td>
                                          </tr>
                                      </table></td>
                                  </tr>
                                </table>
                            </div></td>
                          </tr>
                          <tr>
                            <td align="center" valign="top"><table width="100%" border="0" cellpadding="0">
                              <tr>
                                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="79%" valign="bottom"><table width="100" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                                      <tr>
                                        <td><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                          <tr>
                                            <td bgcolor="#006600"><span class="style25"><strong>2. BUN</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                                    <tr>
                                      <td width="7%" valign="bottom"><div align="center">
                                        <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td bgcolor="#FFFFFF"><span class="style27">IDEAL</span></td>
                                          </tr>
                                        </table>
                                      </div>
                                        <div align="center"></div>
                                        <div align="center"></div></td>
                                      <td width="40%" valign="bottom"><div align="center">
                                        <table width="95%" border="0" cellspacing="0" cellpadding="4">
                                          <tr>
                                            <td><div align="center"><span class="style27">PREVENTATIVE MEDICINE RANGE</span></div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                      <td width="33%" valign="bottom"><table width="98%" border="0" cellspacing="0" cellpadding="4">
                                        <tr>
                                          <td><div align="center"><span class="style27">ORTHODOX MEDICINE RANGE</span></div></td>
                                        </tr>
                                      </table></td>
                                      <td width="20%" rowspan="2" valign="middle"><div align="center">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FF3300">
                                          <tr>
                                            <td align="center" valign="middle"><div align="center">
                                              <asp:TextBox ID="bun" class="style4" runat="server" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr>
                                      <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center"><span class="style28">12.0</span></div></td>
                                      <td width="40%" valign="bottom" bgcolor="#FFFFFF"><div align="center"><span class="style28">10.5-18.5</span></div></td>
                                      <td valign="bottom" bgcolor="#FFFFFF"><div align="center"><span class="style28">7-25</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td valign="top" bgcolor="#FFFFFF" class="style27"><p class="style27"><strong>Stand alone indicators:</strong>  Kidney efficiency, Protein  utilization, Toxins clearing efficiently from blood, Urea clearance<br />
                                                <br />
                                                Low = mal-absorption    syndrome,  liver  sluggishness,   colon   toxicity,  thyroid  under
                                                  performance, posterior  pituitary   under  performance,  human   growth  hormone
                                                  deficiency, iodine deficiency, hypochlorhydria, enzyme deficiency, not  enough raw
                                                  vegetables, protein and/or amino acid deficiency<br />
                                                  <br />
                                                  High = dehydration, colon toxicity, protein mal  absorption, overeating, autointoxication,
                                                  toxins  building up faster than the kidney clearance, cellular oxygen deficiency</p></td>
                                            </tr>
                                          </table>
                                            <span class="style22"></span></td>
                                        </tr>
                                      </table></td>
                                    </tr>
                                  </table></td>
                              </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td align="center" valign="top"><table width="100%" border="0" cellpadding="0">
                              <tr>
                                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                      <td width="79%" valign="bottom"><table width="100" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                                        <tr>
                                          <td><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tr>
                                              <td bgcolor="#006600"><span class="style25"><strong>3. CREATINE</strong></span></td>
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
                                  <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                              <asp:TextBox ID="creatine" class="style4" runat="server" Width="41px"></asp:TextBox>
                                              <br />
                                            </div></td>
                                          </tr>
                                        </table>
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#FFFFFF">
                                      <td width="7%" valign="bottom"><div align="center"><span class="style28">1.0</span></div></td>
                                      <td width="40%" valign="bottom"><div align="center"><span class="style28">0.9-1.1</span></div></td>
                                      <td valign="bottom"><div align="center"><span class="style28">0.7-1.2</span></div></td>
                                    </tr>
                                    <tr>
                                      <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                                        <tr>
                                          <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                            <tr>
                                              <td valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style27"><strong>Stand alone  indicators:</strong>   Kidney's ability to  efficiently filter creatine
                                                  and other toxins from the  blood.  Kidney clearance<br />
                                                  <br />
                                                  Low = dehydration, excess stress, low energy levels,  lack of vigorous exercise<br />
                                                  <br />
                                                  High = toxicity,poor  blood  flow ,colon toxicity, poor   digestion, under performing
                                                  thyroid inflammation, diabetes, cellular oxygen deficiency, muscular  exhaustion cells breaking down faster than recovery</p></td>
                                            </tr>
                                          </table>
                                            <span class="style22"></span></td>
                                        </tr>
                                      </table></td>
                                    </tr>
                                  </table></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table>
                      </div>                      </td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="173" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="167" height="27"><table width="169" border="0" cellpadding="5" cellspacing="0">
                                <tr>
                                  <td width="159" bgcolor="#006600"><span class="style25"><strong>4. BUN/CREATINE RATIO</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                          <tr>
                            <td width="7%" valign="bottom" bgcolor="#FFFFFF"><div align="center">
                              <table width="63%" border="0" cellspacing="0" cellpadding="4">
                                <tr>
                                  <td><span class="style27">IDEAL</span></td>
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
                                    <asp:TextBox ID="buncreatineratio" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">12.50</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">9.5-17</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">6-25</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="120" valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style27"><strong>Stand alone indicator:</strong>   Efficient protein utilization,
                                      Proper kidney function<br />
                                      <br />
                                      Low = Muscle   loss,   protein/amino   acid   deficiency,   kidney  not   filtering  protein  by-products efficiently, under performing posterior pituitary,  mal-absorption
                                        syndrome, couch potatoism, muscle atrophy, lack of exercise<br />
                                        <br />
                                        High = dehydration,   kidney dysfunction, colon toxicity, toxic fluid retention,  medication
                                        excess  junk  foods,    bad fats,   nitrogen  by-products   building up faster than your
                                        immune  system can process them, toxicity, overloaded with morbific waste
                                        material dumping onto vital organs, drug  toxicity,   colon  impaction,    kidneys  not
                                        filtering  toxins  efficiently,  toxic fluid retention, bloating</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" valign="bottom"><table width="100" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>5. SODIUM</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="sodium" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">140</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">138-142</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">136-144</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style27"><strong>Stand alone  indicators:</strong> Water and electrolyte balance,
                                      Outer cell efficiency,
                                      Transmit electricimpulses throughout  nervous system,
                                      Carries nutrients to and toxins out of  cells<br />
                                      <br />
                                      Low = nerve/adrenal exhaustion, stress, diabetes, hypothyroidism, drugs, diarrhea,
                                        mineral  deficiency<br />
                                        <br />
                                        High = toxic   fluid  retention,   weight gain,   high blood pressure,   dehydration, diabetes
                                        insipidus   high  blood   pressure,   mineral  deficiency,    malnutrition,   junk foods,
                                        overeating toxicity</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" valign="bottom"><table width="100" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>6. POTASSIUM</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="potassium" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">4.4</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">4.0-4.8</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">3.5-5.3</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="120" valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style27"><strong>Stand alone  indicators:</strong>  Inner cell efficiency €“  water balance,
                                        Acid/alkaline pH balance,
                                        Conductor of electric impulses and nerve  fibers, including muscle contraction and steady heart beat<br />
                                        <br />
                                        Low = fluids, electrolyte   deficiency,  dehydration,  heart   beat  irregularities,   toxic   fluid  not
                                        eliminating,   weight  gain, stress, diarrhea, nervousness, anxiety, hypermotion,
                                        adrenal fatigue, drugs, swollen ankles, fingers, bloating, exaggerated  PMS and/or menopause symptoms, partial paralysis of hands or legs, cramps,  lethargy, blood
                                        pressure problems<br />
                                        <br />
                                        High = adrenal    exhaustion,   heart problems,   blood   pressure  problems,   dehydration, metabolic acidosis, sluggish adrenal glands, medications</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="2">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="200" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="194"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>7. SODIUM/POTASSIUM RATIO</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="sodiumpotassiumratio" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">30</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">27.5-32.5</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">25-35</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="25" valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style22"><strong>Stand alone  indicators:   </strong>Electrolyte balance, Inner/outer ionic exchange efficiency</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="130" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="200" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="194"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>8. ANION GAP </strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="aniongap" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">8.0</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">7-9</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">6-10</span></div></td>
                          </tr>
                          <tr>
                            <td height="72" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="51" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="22" valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style27"><strong>Stand alone  indicator:   </strong>Electrolyte reserve  account, Mineral reserve balance<br />
                                      <br />
                                    Low: Too much salt, calcium out of socution, potassium deficiency, liver sluggishness<br />
                                      <br />
                                    High: Metabolic acidosis, cellular oxygen deficiency</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="134" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="200" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="194"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>9. CHLORIDE</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="chloride" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">104</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">102-106</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">98-110</span></div></td>
                          </tr>
                          <tr>
                            <td height="46" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="67" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="71" valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style27"><strong>Stand alone indicator:   </strong>Hydrochloric Acid production, Maintains a state of electrical neutrality<br />
                                      <br />
                                      Low  = adrenal exhaustion, colon impaction, metabolic acidosis, diabetic syndrome,
                                      hypochlorhydria, metabolic alkalosis  or acidosis, cellular oxygen deficiency<br />
                                      <br />
                                      High  = dehydration, tap water, medications, nervous exhaustion, toxins  overwhelming,<strong> </strong>kidneys, metabolic adicosis, dehydration, stress, adrenal defleation</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="134" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>10. CARBON DIOXIDE BICARBONATE</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="carbondioxide" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">26</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">242-28</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">22-32</span></div></td>
                          </tr>
                          <tr>
                            <td height="46" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="87" valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style27"><strong>Stand alone indicator:   </strong>Blood acid/alkaline pH balancer, Lung efficiency, lungs detoxifying blood<br />
                                      <br />
                                      Low  = junk foods, malnutrition, metabolic acidosis, toxicity, kidney toxin  over-run, toxic<strong> </strong>over-run of kidneys, anxiety, over training,  cell breaking down<br />
                                      <br />
                                        High = mal-absorption syndrome, hypochlorhydria, toxicity,  lack of fitness, cellular,
                                        respiratory  problems and/or serious oxygen deficiency</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="134" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>11. CHOLESTEROL</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="cholesterol" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">175</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">165-185</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">150-200</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style27"><strong>Stand alone indicators:   </strong>Essential component for brain repair,
                                      Hormone production,
                                      Cellular function<br />
                                      Antibodies and enzyme production<br />
                                      <br />
                                      Low  = Omega 3 and/or 6 essential fatty acid deficiency, hypothyroid, hormone
                                        deficiency, compromised immune  system, pre-cancer marker, oxidative stress,
                                        cells not regenerating, human growth  hormone deficiency, vitamin D-3 deficiency
                                        heavy metal and/or environmental  toxicity<br />
                                        <br />
                                        High  = inflammation, hypothyroidism, lack of fitness, excess sugar, junk foods,
                                        hydrogenated fats, Omega 6  essential fatty acid deficiency, cellular oxygen
                                        deficiency, liver sluggishness,  colon toxicity, coronary artery disease, storing fat,
                                        nutrition deficiency syndrome</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                      </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="199" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>12. TRIGLYCERIDE</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="triglyceride" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">90</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">70-120</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">60-130</span></div></td>
                          </tr>
                          <tr>
                            <td height="111" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="103" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style27"><strong>Stand alone indicators:   </strong>Blood fat, body fat monitor, body sugar gage<br />
                                      <br />
                                      Low  = deficiency in Omega 6 essential fatty acids, hypoglycemia, protein  deficiency,
                                        mal-absorption, body not repairing,  human growth hormone deficiency,
                                        exhaustion, adrenal fatigue, anxiety<br />
                                        <br />
                                        High  = excess junk food, sugar, alcohol, hydogenated fats, hypothyroid, liver/gall  bladder sluggishness, bowel toxicity, amino  acid deficiency, protein mal-absorption,
                                        cellular oxygen deficiency, lack of  fitness, coronary heart disease risk,
                                        carbohydrate intolerance, over  eating human growth hormone deficiency</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="199" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>13. HDL CHOLESTEROL</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="HDLCholesterol" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">70</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">50-90</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">40-50</span></div></td>
                          </tr>
                          <tr>
                            <td height="111" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="103" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="87" valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style27"><strong>Stand alone indicator:   </strong>Healthy cholesterol<br />
                                      <br />
                                      Low  = lack of fitness, excess sugar, junk foods, bad fats, carbohydrates, human  growth
                                        hormone deficiency, serum and  cellular oxygen deficiency, under performing
                                        thyroid, sex hormone deficiency,  lack of protectors against blocked artery disease,increased risk of heart disease,  bowel toxicity, fat gain, stress, blood pressure <br />
                                        problems<br />
                                        <br />
                                        High  = The higher the better €“ cardio, chemo, immune protective, brain, hormone <br />
                                        optimizer</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>14. LDL CHOLESTEROL</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="LDLCholesterol" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">0-100</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0-130</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style27"><strong>Stand alone indicator:   </strong>Potentially dangerous
                                      artery  plaque depositor<br />
                                      <br />
                                      Low  = The lower the better<br />
                                      <br />
                                      High  = lack of fitness, excess sugar, junk food, over eating, alcohol, cellular  oxygen
                                        deficiency, Omega 3 essential fatty  acid deficiency, adult onset, human growth
                                        hormone deficiency, forgetfulness,  brain fog, attention deficit, under performing thyroid, syndrome X, diabetes,  pre-mature aging</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="170" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>15.VLDL CHOLESTEROL</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="VLDLCholesterol" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">0-30</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0-60</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="74" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style22"><strong>Stand alone indicator:   </strong>Arteries gluing up<br />
                                      <br />
                                      High  -  increased risk of coronary heart  disease, plaque build up, lack of exercise, HGH
                                        Deficiency, excess sugar,  carbohydrates, junk food, alcohol, transfats, fried foods</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="2">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>16. CHOLESTEROL/HDL Ratio</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="CholesterolHDLRatio" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">0-2</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">0-3</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0-4</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Healthy cholesterol<br />
                                      <br />
                                      Low  = lack of fitness, excess sugar, junk foods, bad fats, carbohydrates, human  growth
                                        hormone deficiency, serum and  cellular oxygen deficiency, under performing
                                        thyroid, sex hormone deficiency,  lack of protectors against blocked artery disease, increased risk of heart disease,  bowel toxicity, fat gain, stress, blood pressure
                                        problems<br />
                                        <br />
                                        High  = The higher the better €“ cardio, chemo, immune protective, brain, hormone
                                        optimize</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>17. LDL/HDL Ratio</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="LDLHDLRatio" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">2</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">2.5</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">3</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style22">&nbsp;</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>18.CALCIUM</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="calcium" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">9.3</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">8.9-9.7</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">8.5-10.4</span></div></td>
                          </tr>
                          <tr>
                            <td height="82" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p align="left" class="style22"><strong>Stand alone indicators:   </strong>Electrolyte balance,
Mineral absorption,
Bone  integrity<br />
<br />
Low  = under performing thyroid, parathyroid and/or pituitary, kidney disorder,  vitamin
                                        D-3 deficiency, calcium deficiency,  osteopenia, osteoporosis, mal-absorption,
                                        nervousness, connective tissue pain,  metabolic acidosis, teeth problems.<br />
                                        <br />
                                        High  =  Hyperactive parathyroid, magnesium,  boron, vitamin B complex deficiency,
                                        kidney disorder, metabolic  acidosis, calcium out of solution, diabetes mellitus,
                                        dehydration, bone metastasis,  heavy metal toxicity</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>19.PHOSPHORUS</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="phosphorus" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">3.4</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">2.9-3.9</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">2.2-4.6</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Strong bones, Keeps  calcium in solution, Burns fats and sugars</p>
                                      <p>Low  = Excess soda, sugar, alcohol, junk, foods,hypertension, calcium absorption
                                        problems,hypochlorhydria, liver  problems, nerve burnout, adrenal exhaustion,
                                        elevated insulin, nutritional  eficiencies, electrolyte imbalance<br />
                                        <br />
                                        High  = Diabetes, metabolic acidosis, mal-absorption, dehydrating, medications</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="2">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>20.CALCIUM/PHOSPHORUS RATIO</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="CalciumPhosRatio" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">3.0</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">2..25-3.75</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">1.5-4.5</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:&nbsp;</strong>Calcium/Phosphorous balance, blood acid/alkaline balances, bone metabolism<br />
                                    </p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="2">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>21.ALKALINE PHOSPHATASE</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="AlkalinePhosphatase" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">62</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">47-77</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">32-92</span></div></td>
                          </tr>
                          <tr>
                            <td height="111" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="103" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="87" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Bone, liver, adrenal, intestinal integrity<br />
                                      <br />
                                      Low  = Multiple nutrition deficiencies, nutritional anemia, zinc deficiency,  hypothyroid,
                                        adrenal depletion, arthritis,  pre-mature aging, mal-absorption, amino acid, protein,
                                        vitamin E, A, C, B-12, B-1, folic acid  and enzyme deficiencies<br />
                                        <br />
                                        High  = osteoporosis, zinc deficiency, hypochlorhydria, intestinal inflammation,  liver
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
                  <table width="90%" border="0" cellpadding="2">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>22.SGOT (AST)</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="AST" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">24</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">18-30</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">10-40</span></div></td>
                          </tr>
                          <tr>
                            <td height="111" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Enzyme deficiency,
                                      Autointoxication,
                                      Organ tissue break down
                                      Inflammatory marker<br />
                                      <br />
                                      Low  =  Enzyme deficiency, liver sluggishness,  tissues not repairing, pyridoxyl, <br />
                                        magnesium, bio-flavanoid, vitamin  C deficiency<br />
                                        <br />
                                        High  = Autointoxication, liver sluggishness, colon toxicity, heavy metal and/or
                                        environmental toxicity, llergies,  hormonal deficiencies, deficiencies in alpha
                                        lipoic acid, Vitamin C, Choline,  inositol, taurine, muscle loss, break down of
                                        heart muscle, liver, kidney muscle, brain  tissue faster than it is regenerating due to
                                        autointoxication, inflammation </p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="2">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>23.SGPT (ALT)</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="ALT" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">24</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">18-30</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">10-40</span></div></td>
                          </tr>
                          <tr>
                            <td height="111" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><strong>Stand alone indicators:   </strong>Enzyme, liver, heart, muscle health,
                                        Inflammatory marker<br />
                                        <br />
                                        Low  = multiple nutritional deficiencies,   mal-absorption, amino acid and protein
                                        insufficiency, kidneys overwhelmed  with toxins, junk food addiction,
                                        colon impaction, slow transition  time, excess alcohol, sugar choline, magnesium,
                                        folic acid, vitamin E, B complex, N-Acetyl  cysteine deficiencies<br />
                                        <br />
                                        High  = liver sluggishness, indigestion, pancreas inefficiency, L-methionine,  inositol,
                                        taurine deficiencies, inflammation</td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="2">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>24. GAMMA (GT)</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="GT" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">30</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">25-35</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">20-40</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><strong>Stand Alone Indicators:   </strong>Alcoholism/caffeine addiction,
                                        Liver, gall bladder, pancreas  efficiency,
                                        Inflammatory marker<br />
                                        <br />
                                        Low  =  Sluggish liver, anemia, deficiencies  in enzymes, zinc, B-6, citrus bio-flavanoid,
                                        iron, folic acid, B-12, magnesium,  N-Acetyl cysteine, glutathine, vitamin E<br />
                                        <br />
                                        High  =  alcoholism, caffeine addiction, gall  bladder, liver, pancreas sluggishness, drug
                                        addiction, excess of sugar, bad  fats, junk foods, medications, Tylenol, over
                                        eating, colon impaction, autointoxication,  bile duct blockage, pancreatitis,hepatitis, deficiencies in  enzymes, alpha lipoac acid, conjugated linoleie acid, <br />
                                        choline, insotol, glutathine,  taurine, vitamin E, N-Acetyl cysteine, L-Methionine, Hepititus</td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>25. LACTATE DEHYDROGENASE(LDH)</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="LactateDhydrog" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">150</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">25-175</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">100-200</span></div></td>
                          </tr>
                          <tr>
                            <td height="139" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="126" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="105" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Carbohydrate tolerance<br />
                                      <br />
                                      Low  =  Carbohydrate intolerance,  hypoglycemia, hypotention, fatty liver, deficiences in
                                        enzymes, zinc, vitamin E, N-Acetyl  choline<br />
                                        <br />
                                        High  = Carbohydrate intolerance, heart stress, heart inflammation, magaloblastic  anemia,
                                        vitamin B-12, B-6, folic acid  deficiencies, liver sluggishness, cellular oxygen
                                        deficiency, heart disease seizures,  junk food habit, deficiencies in alpha lipoic
                                        acid, choline, inositol,  L-Carnitine, N-Acetyl cysteine, taurine, vitamin E,
                                        selenium</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>26. BILIRUBIN TOTAL</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="BilirubinTotal" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">0.60</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">0.50-0.70</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0.05-1.0</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Liver function<br />
                                      <br />
                                      Low  =  Liver sluggishness, cellular oxygen  deficiency, enzyme deficiency, caffeine,
                                        asprin, medications, drug use,  deficiencies in Omega 6 essential fatty acids,
                                        choline, inositol, L-Methionine,  organic sulfur, N-Acetyl cysteine, taurine,
                                        vitamin E<br />
                                        <br />
                                        High  =  Liver overwhelm, toxicity, excess  alcohol, caffeine, soda, sugar, fried foods, junk
                                        foods, constipation, medications, drugs,  liver inflammation, liver dysfunction, gall bladder obstruction, liver disease,  deficiencies vitamin C, organic sulfur,
                                        choline, inositol, taurine</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>27. URIC ACID</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="uricacid" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">4.40</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">3.75-6.05</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">2.6-7.2</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Gout related symptoms,
                                      Arthritis, stiffness</p>
                                      <p>Low  =  Mal-absorption, digestive problems,  hypochlorhydria, enzyme deficiency, heavy
                                        metal toxicity, use of antacids,  free radical stress, deficiencies in copper, folic
                                        acid , B-6, B-12, B-complex,  molybdenum, protein utilization</p>
                                      <p>High  =  Connective tissue inflammation, joint  pain, gout, muscle stiffness, arthritis
                                        symptoms, kidney overwhelm drugs,  over use of alcohol, junk foods, desserts,
                                        rich foods, starches, meats, leaky  gut syndrome, heart disorders</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="219" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>28. TOTAL PROTEIN</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="totalprotein" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">7.2</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">6.8-7.6</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">6.0-8.3</span></div></td>
                          </tr>
                          <tr>
                            <td height="138" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="130" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="114" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Efficient transporters of nutrients,
                                      Overall nutritional status, Mal Nutrition, starvation, junk foodism<br />
                                      <br />
                                      Low  =  Protein mal-absorption, amino acid deficiency,  fasting, poor diet, multiple
                                        nutritional deficiencies,  compromised immune system, hypochlorhydria, gastritis,
                                        malnutrition, pancreatic  insufficiency, heavy metal and/or environmental toxicity,
                                        connective tissue breakdown,  deficiencies in digestive enzymes, L-Arginine</p>
                                      <p>High  =  Dehydration, collagen breakdown,  diabetes insipidus, protein and amino acid
                                        deficiency, collagen disease,  rheumatoid arthritis, liver sluggishness,
                                        deficiencies in digestive enzymes,  bio-flavanoids</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>29. ALBUMIN</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="albumin" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">4.2</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">3.9-4.5</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">3.7-5.5</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Cellular repair, degeneration/regeneration<br />
                                      <br />
                                      Low  =  Protein/amino acid deficiency, excess  junk food, sugar, hypochlorhydria, enzyme
                                        deficiency,insufficient raw vegetables,  cellular breakdown, cells not repairing,
                                        kidney toxic over run, toxic fluid  retention, bloating, liver sluggishness, immune system compromise, loss of muscle  tissue, human growth hormone deficiency,
                                        deficiencies in vitamin B-12, folic  acid, vitamin C, vitamin E, beta carotene, <br />
                                        calcium, boron, vitamin D-3,  magnesium, choline, protein amino acids<br />
                                        <br />
                                        High  =  Nerve depletion, burn out, adrenal  exhaustion, reoccurring stress, tension,
                                        anxiety, dehydration,  inflammation, diabetes, G.I. problems, nutritional
                                        deficiencies, deficiencies in  choline, inositol. L-Methionine, taurine, iodine</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>30. CALCIUM/ALBUMIN RATIO</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="CalciumAlbuminRatio" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">2.9</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">2.0-3.70</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">1.2-4.5</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><div align="center">
                              <table width="100%" border="1" cellpadding="5">
                                <tr>
                                  <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                    <tr>
                                      <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Parathyroid function, Calcium binding protien</p>
                                          <p>Low  =  Protein deficiency, loss of muscle  tissue, dehydration, adult onset, human growth
                                            hormone deficiency, vitamin D-3  deficiency, kidney overwhelm due to toxicity
                                            mal-absorption,  hyperparathyroidism, pancreatitis<br />
                                            <br />
                                            High  =  Hypothyroidism, hyperparathyroidism,  liver toxicity, dehydration, enzyme
                                            deficiency</p>                                          </td>
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
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>31. GLOBULIN</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="Globulin" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">3.2</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">3.0-3.4</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">2.2-4.2</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Defense agent,
                                      Cell degenerator/regenerator<br />
                                      <br />
                                      Low  =  Weakened immune system, muscle loss,  mal-absorption, protein/amino acid
                                        deficiency, digestive disorders,  pre-mature aging, aging diseases, cells breaking
                                        down, not regenerating,  hypochlorhydria, heavy metal toxicity, excess alcohol,
                                        sugar, junk foods, deficiencies in  Omega 6 and 3 essential fatty acids, vitamin E,
                                        zinc, L-Arginine, L-glutimine,  enzymes, amino acids, protein<br />
                                        <br />
                                        High  =  toxicity, allergies, bowel impaction,  infection, liver dysfunction, anemia, mal-
                                        absorption syndrome, G.I.  inflammation, nutritional deficiencies, enzymes, zinc,
                                        vitamin A, sulfur</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="203" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="280" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="274"><table width="289" border="0" cellpadding="5" cellspacing="0">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>32. (A/G RATIO) - ALBUMIN / GLOBULIN RATIO</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="AGRatio" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">1.6</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">1.5-1.7</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0.8-2.0</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Blood viscosity</p>
                                      <p>Low  =  Liver sluggishness, bowel toxicity,  protein deficiency, mal-absorption,
                                        deficiencies in digestive enzymes,  choline, zinc, taurine, organic sulfur<br />
                                        <br />
                                        High  =  Triggered immune system, dehydration,  pancreatic insufficiency hypothyroid,
                                        Deficiency in zinc, phosphatydol,  choline</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>33. T3 UPTAKE</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="T3Uptake" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">32.5</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">30-35</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">25-40</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Need for thyroid nutritional support<br />
                                      <br />
                                      Low  =  Iodine/Iodene, tyrosine, protein,  amino acid, vitamin E, D-3, selenium, N-Acetyl
                                        cysteine, vitamin B-5, easy weight  gain, adrenal exhaustion, adult onset, growth
                                        hormone deficiency, male/female  hormone Deficiency, loss of animation for life,
                                        loss of libido, loss of  motivation, memory loss, hair loss, inability to concentrate,
                                        hypothyroidism<br />
                                        <br />
                                        High  =  Nervousness, sleep problems, sudden  weight loss, stress, tension, worry, anxiety,
                                        adrenal Exhaustion, nerve burn  out, pituitary under performance, excess
                                        medications, hyperthyroidism,  deficiencies in N-Acetyl cysteine, selenium,
                                        vitamin D-3, vitamin E</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>34. T4 TOTAL</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="T4Total" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">8.5</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">7.0-10.0</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">4.5-12.5</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Hypothyroidism,
                                      Malnutrition,
                                      Pre-mature Aging<br />
                                      <br />
                                      Low  =  Hypothyroidism, pre-mature aging,  mal-absorption, junk food, sugar, fast food
                                        excess, protein/amino acid  deficiency, deficiencies in iodine/iodene, selenium,
                                        N-acetyl cysteine, vitamin D-3,  vitamin E, vitamin B-5<br />
                                        <br />
                                        High  =  Liver problems, autointoxication,  adrenal exhaustion, stress, birth control pills,
                                        Medications, magnesium, vitamin  D-3, L-Arginine, N-Acetyl cysteine</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="260" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="254"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>35. T4 FREE(Thyroid Free CIRCULATING T4)</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="T4Free" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">1.26</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">1.00-1.52</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0.58-1.64</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Optimum thyroid function<br />
                                      <br />
                                      Low  =  Slow thinking, low mental/physical  energy, sluggish, slow moving, creeping
                                        weight gain, poor sleep, hair loss<br />
                                        <br />
                                        High  = Heart palpitations, hand tremors, increased perspiration, nervousness,  jumpiness,
                                        sudden weight loss</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="311" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="305"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>36. FREE THYROXINE INDEX( Throid Free 4 Index T 7)</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="FreeThyroxneIndex" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">3.15</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">2.65-3.85</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">1.30-5.00</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Memory, anxiety,
                                      Mental tranquanimity</p>
                                      <p>Low  =  Mental confusion, anxiety, depression,  moodiness, worry, memory loss,
                                        unexplained weight gain,  hypothyriodism</p>
                                      <p>High  =  Cold extremities, forgetfulness, jumpy  feelings, nervous, sleep problems,
                                        hypothyroidism</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="265" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="259"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>37. THYROID STIMULATING HORMONE (THS)</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="ThyroidStimHorm" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">1.25</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">1.00-1.50</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0.35-5.00</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Pituitary/Thyroid thermostat</p>
                                      <p>Low  =  Under performing pituitary, adult  onset, human growth hormone deficiency,
                                        large appetite, hungry, coffee,  soda, sugar, drug excess, hyperthyroidism,
                                        deficiencies in boon, calcium,  B-complex, N-Acetyl cysteine, selenium, vitamin
                                        D-3, vitamin E, iodine/iodene<br />
                                        <br />
                                        High  =  Hypothyroidism, no energy, no heat, no  motivation, gradual unexplained weight
                                        gain, hair Brittleness, jumpiness,  anxiety, heart palpitations, hand tremors, sleep
                                        problems, forgetfulness, under performing  pituitary, adult onset, human growth hormone deficiency, deficiencies in iodine/iodene, selenium</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>38. IRON BINDING CAPACITY</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="IronBindCapac" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">255</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">205-305</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">112-400</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>The ability of iron to bind to its receptor site
                                      and get into the  cell<br />
                                      <br />
                                      Low/High  = Blocked receptor site, heavy metal toxicity, highly toxic condition, environmental overload</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>39. IRON</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="iron" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">105</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">90-120</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">60-150</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Tired Blood,
                                      Anemia,
                                      Oxygen<br />
                                      <br />
                                      Low  =  Anemia, menstrual blood loss,  hemorrhoids, Asprin use, junk food diet, pre-mature aging,malnutrition, cells  not repairing, inflammation, kidney disease,
                                        infections, stress anxiety, worry,  rheumatoid arthritis, Vegeterianism<br />
                                        <br />
                                        High  =  Oral contraceptives, lead poisoning,  heavy metal and/or environmental toxicity, liver overload, well water, tap water, excess junk food, hemochromatosis</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="2">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>40. PERCENT SATURATION (Tranferrin)</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="PercentSaturat" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">35</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">30-40</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">15-50</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Too much or too little iron<br />
                                      <br />
                                      Low  =  Iron deficiency, anemia, protein  depletion, junk food habit, deficiencies in folic
                                        acid, B-12, iron<br />
                                        <br />
                                        High  =  High transferrin, deficiencies in  bio-flavanoids, vitamin C</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>41. FERRITIN</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="Ferritin" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">200</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">150-250</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">30-400</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Iron tissue reserve bank<br />
                                      <br />
                                      Low  =  Nutrition deficiency anemia, low iron  storage in cells, stress, protein deficiency, blood loss, copper deficiency,  hypochlorhydria<br />
                                      <br />
                                        High  =  Liver problems, iron over load,  inflammations, excess alcohol, junk foods, auto-Intoxication, heavy metal or  environmental toxicity</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="2">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="212" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="206"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>42. RBC (Red Blood Cell Count)</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="rbc" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">5.50</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">4.90-5.90</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">4.4-6.1</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Oxygen carrying capacity<br />
                                      <br />
                                      Low  =  Anemia, malaise, fatigue, dizziness,  cold extremities, rapid heart beat,
                                        deficiencies in citrus bio-flavanoid,  folic acid, L-Arginine, L-Carnintine,
                                        deficiencies in folic acid, B-12, B  complex, clycine, iron, vitamin B-12, Vit. C<br />
                                        <br />
                                        High  =  Poor blood circulation, high blood  pressure, clotting with blood vessels, stroke,
                                        dehydration, congenital heart  disease, poor color to skin and nails, excess
                                        medications, chemical exposure,  heavy metal toxicity, environmental pollution,  autointoxication, liver problems, deficiency in vitamin E, C, N-Acetyle  Cysteine</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>43. HEMOGLOBIN</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="Hemoglobin" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">15.5</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">14.5-16.5</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">13.5-17.6</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Cellular/Blood oxygen deficiency,
                                      Bone marrow efficiency</p>
                                      <p>Low  =  Cellular oxygen deficiency, iron  deficiency anemia, hypochlorhydria, blood loss,
                                        Toxicity</p>
                                      <p>High  =  Excessive red blood cell production,  excessive bone marrow activity,
                                        Medications, asthma, adrenal  fatigue, deficiencies in vitamin C, vitamin E, citrus  bio-flavanoid</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>44. HEMATOCRIT</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="Hematocrit" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">46</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">43-49</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">40-52</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:  </strong> Determines  the concentration of oxygen carrying
                                      red  blood cells in blood<br />
                                      <br />
                                      Low  =  Nutritional deficiency anemia,  cellular oxygen deficiency, toxicity<br />
                                      <br />
                                      High  =  Colon toxicity, intestine  inflammation, dehydration, over active spleen and  immune system, asthma, respiratory problems</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>45. MCV (Mean Corpuscular Volume</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="mcv" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">90</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">85-95</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">80-100</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:  </strong>Nutritional deficiency syndrome</p>
                                      <p>Low  =  Mal-absorption syndrome resulting in  multiple nutritional deficiencies, heavy
                                        metal and/or nvironmental  toxicity, oxygen deficiency, cellular oxygen
                                        deficiency</p>
High =   Parasitic infections,   mal-nutrition, megaloblastic anemia</td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>46. MCH</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="mch" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">30</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">29-31</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">27-33</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Cellular/Serum oxygen deficiency<br />
                                      Determines the type of anemia and nutritional  deficiency</p>
                                      <p>Low  =  Heavy metal toxicity, cellular/blood  oxygen deficiency, internal bleeding, cells
                                        not regenerating, deficiencies in  iron, vitamin B-6, Vitamin C<br />
                                        <br />
                                        High =   Deficiencies in vitamin B-12, folic acid, parasite infestation</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>47. MCHC</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="mchc" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">33.5</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">32-35</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">30-37</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Cellular/Serum oxygen deficiency anemia</p>
                                      <p>Low  =  Iron deficiency, mal-absorption,  parasite infestation, junk foods, oxygen
                                        deficiency, hypochlorhydria,  deficiencies in iron, folic acid, vitamin C, L-
                                        Glutamine<br />
                                        <br />
                                        High  =  Deficiencies in vitamin B-12, vitamin  C, enzymes, folic acid, citrus bio-flavanoids,  L-Arginine,  L-Glutamine</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>48. RDW</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="rdw" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">13.3</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">11.3-15.3</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">10.1-16.5</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Measures blood cell volume<br />
                                      <br />
                                      Low  =  Inflammation, vitamin C, zinc, enzymes<br />
                                      <br />
                                      High  =  Toxicity, deficiencies in citrus  bio-flavanoid, folic acid, B complex, glycine,  iron, B-12, viatmin C, digestive enzymes</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>49. PLATELET COUNT</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="PlateletCount" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">285</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">235-335</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">130-440</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Blood clotting factor, Vascular integrity,
                                      Vasoconstriction</p>
                                      <p>Low  =  Bone marrow suppression, anemia, heavy  metal and/or environmental exposure,
                                        immune system challenge,  deficiencies in Omega 6 and Omega 3 essential fatty
                                        acid enzymes, Vitamin E<br />
                                        <br />
                                        High  =  Inflammatory disorder, iron  deficiency, vitaminB-12 deficiency, excess alcohol,
                                        junk foods, medications,  infections, bowel impaction, deficiencies in L-
                                        Glutimine, L-Argenine, Omega 6/3  essential fatty acids, citrus vio-flavanoid,
                                        vitamin E, zinc</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>50. MPV</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="mpv" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">8.9</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">8.4-9.4</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">7.4-10.4</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Cardio vascular risk detective</p>
                                      <p>Low  =  Toxicity, chronic bacteria, cellular  oxygen deficiency, heavy metal toxicity,
                                        Chemical exposure, ancreatic  deficiency, slow cell repair, adult onset, human
                                        growth  hormone deficiency, adrenal exhaustion</p>
                                      <p>High  =  Multiple nutritional deficiencies,  bone marrow suppression, immune system over run with toxins</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="383" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="377"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>51. ABSOLUTE NEUTROPHILS (Absolute Segs/Neutrophil/Poly #</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="AbsolNeutrophis" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">4.2</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">3.9-4.5</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">3.2-5.2</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="49" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   I</strong>mmune systems standing army engulfs <br />
                                      bacteria and annihilates them</p>
                                      <p>Low  =  Excess junk food, alcohol,  medications, drugs, early onset, state of infections</p>
                                      <p>High  =  Colon impaction, bacteria infection,  exhaustion, excess medications, metabolic acidosis, autointoxication, fear, stress,  anxiety</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>52. WBC - WHITE BLOOD CELL COUNT</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="wbc" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">7.3</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">6.3-8.3</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">3.8-10.8</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Thymus gland and immune system competency</p>
                                      <p>Low  =  Immune system overwhelmed, toxicity,  bone marrow suppression, enzyme
                                        deficiency, junk foods, radiation,  chemotherapy, excess medications,
                                        malnutrition, pancreatic insufficiency,  environmental exposure, cellular oxygen
                                        deficiency, mal-absorption, bowel impaction,  slow transition time of food,
                                        allergies, adrenal exhaustion, multiple  nutritional deficiencies</p>
                                      <p>High  =  Nerves, stress, anxiety, depression,  worry, negative mental attitude,
                                        inflammatory conditions, viral /bacterial  infections, toxicity, cellular oxygen deficiency, heavy metal toxicity, multiple  nutritional deficiencies</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="2">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="285" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="279"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>53. NEUTROPHILS (Seg/Nutrophil/Pollys  %)</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="Neutrophils" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">57</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">47-67</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">40-74</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Bacteria neutralizer</p>
                                      <p>Low  =  Bateria infection, viral infection,  parasite infestation, colon toxicity, cellular
                                        oxygen deficiency</p>
                                      <p>High =  Generalized  inflammation, viral/bacterial infection, autointoxication</p></td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>54. LYMPHOCYTES</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="Lymphocytes" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">34</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">28-40</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">19-48</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Lymph system competency,
                                      Antibody production<br />
                                      <br />
                                      Low  =  Trapped toxins in lymph system, lymph  system not moving, highly toxic
                                        condition, over eating, bowel toxicity, Hodgkin's  disease, stress, anxiety, fear,
                                        worry, depression, negative mental outlook,  under performing thyroid, couch
                                        potatoism<br />
                                        <br />
                                        High  =  Toxicity, stagnant lymph system, liver  overloaded bowel toxicity, slow
                                        metabolism, slow transition time of food, compromised  immune system due to
                                        toxicity, cold, flu, cough, viral bacterial  overload, cellular oxygen deficiencies,
                                        heavy metal toxicity, environmental/chemical  overload, excess junk foods, sugar alcohol, medications, drugs, antibiotics</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>55. MONOCYTES</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="Monocytes" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">6.2</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">5.7-6.7</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">3.4-9.0</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Immune fighters<br />
                                      <br />
                                      Low  =  Immune system compromised, toxic  overwhelm, viral load, not enough immune
                                        fighters, bone marrow depression, vowel  toxicity, cellular oxygen deficiency,
                                        multiple nutritional deficiencies, morbific  material accumulation, excess
                                        medications, radiation, chemotherapy, junk  foods, alcohol, adult onset, human <br />
                                        growth hormone deficiency<br />
                                        <br />
                                        High  =  Parasite, fungal, bacterial  infections, autointoxication, constipation, slow food
                                        transition, liver sluggishness, enzyme and  multiple nutritional deficiencies,
                                        cellular oxygen deficiency</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>56. EOSINOPHILS</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="Ensinophils" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">1.6</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">0-3.5</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0-7</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Protects the body from allergies,
                                      lung, skin and G.I. tract reactions<br />
                                      <br />
                                      Low  =  Ideal score is zero<br />
                                      <br />
                                      High  =  Above zero €“ food and/or environmental  allergies, hay fever, skin reactions,
                                        bronchial asthma, parasitic infestation,  candida albicanis, colon toxicity, over
                                        medication, antibiotics, sugar, junk foods,  alcohol, slow food transition, cellular oxygen deficiency, over eating</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>57. BASOPHILS</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="Basophisis" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">0-0.03</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0.01-0.07</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Intestinal tract toxicity<br />
                                      <br />
                                      Low  =  Ideal score is zero<br />
                                      <br />
                                      High  =  Above zero €“ colon toxicity, slow  transition time of food, allergies, enzyme
                                        deficiency, inflammation, hypochlorhydria,  intestinal irritations, intestinal virus, liver problems</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>58. ABSOLUTE LYMPHOCYTES</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="AbsoluteLymphocytes" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">0-1.5</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0-2.5</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Immune competency,
                                      Number of lymphocytes in circulation<br />
                                      <br />
                                      Low  =  Toxicity, multiple nutritional  deficiencies, immune system compromised by
                                        toxins, infection, inflammation, excess  medications, junk foods, drugs, sugar,
                                        devitalized food, cellular oxygen deficiency,  viral fungal bacterial load, pre-mature aging, adult onset, growth hormone  deficiency<br />
                                        <br />
                                        High  =  Intestinal parasites, bowel impaction,  toxicity, nerve burn out, hypothryoidism,
                                        allergies, slow food transition, unfitness,  adult onset, hypopituitaryism, multiple nutritional deficiencies</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>59. BANDS</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="Bands" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">0-3.75</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0-5.00</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Immune system's Army Reserve,
                                      Developing immune cells<br />
                                      <br />
                                      Any number above zero is an indication of an  emergency.  The immune system is being  compromised by toxins.  Baby immune cells  are being thrown into battle before they mature.</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>60. ABSOLUTE MONOCYTES</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="AbsoluteMonocytes" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicators:   </strong>Pathogen distroyer,
                                      Immune system's Paratroopers<br />
                                      <br />
                                      Low  =  Immune system overwhelmed with toxins<br />
                                      <br />
                                      High  =  Urinary tract infection, congestion,  prostate hypertrophy, highly toxic condition, parasites, candida</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>61. MIXED CELLS</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="MixedCells" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Immune system quick responder force<br />
                                      <br />
                                      Ideal  number is zero.<br />
                                      <br />
                                      Above zero = immune system is activated due to  toxicity</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>62. ABSOLUTE MIXED CELLS</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="AbsolMixCells" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27">&nbsp;</td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>63. EOSINOPHIL COUNT ABSOLUTE</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="EosinophilCountAbsol" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">0-1.12</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0-1.5</span></div></td>
                          </tr>
                          <tr>
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Allergies/Parasite annihilator<br />
                                      <br />
                                      Low  =  Adrenal over activity, allergies,  hyper sensitivity, infectious process, parasite
                                        infestations, excess medications,  antihistamines. Adult onset, growth hormone
                                        deficiency, enzyme and multiple nutritional  deficiencies<br />
                                        <br />
                                        High  =  Food and/or environmental allergies,  highly toxic condition, bowel toxicity, liver
                                        sluggishness,  over eating, cellular oxygen deficiency, excess medications,
                                        antibiotics,  drugs, junk foods, alcohol, cellular oxygen deficiency, enzyme and
                                        multiple  nutritional deficiencies, mal-absorption syndrome</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>64. BASOPHILS ABSOLUTE COUNT</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="BasophilsAbsoluteCount" class="style4" runat="server" Width="41px"></asp:TextBox>
                                    <br />
                                  </div></td>
                                </tr>
                              </table>
                            </div></td>
                          </tr>
                          <tr bgcolor="#FFFFFF">
                            <td width="7%" valign="bottom"><div align="center"><span class="style28">0</span></div></td>
                            <td width="40%" valign="bottom"><div align="center"><span class="style28">0-1.2</span></div></td>
                            <td valign="bottom"><div align="center"><span class="style28">0-1.5</span></div></td>
                          </tr>
                          <tr>
                            <td colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Inflammation fighter<br />
                                      <br />
                                      Low  =  Allergic reaction, hyperthyroid,  infection, autointoxication, stress, excess alcohol,
                                        tobacco, drugs, medications, radiation,  chemotherapy, cellular oxygen deficiency
                                        nutritional  deiciencies<br />
                                        <br />
                                        High  =  Parasite infestation, trapped lymphic  toxins, bowel toxicity, cellular oxygen <br />
                                        deficiency, nutritional deficiencies</p>                                      </td>
                                  </tr>
                                </table>
                                  <span class="style22"></span></td>
                              </tr>
                            </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <table width="90%" border="0" cellpadding="0">
                    <tr>
                      <td height="210" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="79%" height="38" valign="bottom"><table width="237" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
                            <tr>
                              <td width="231"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                                <tr>
                                  <td bgcolor="#006600"><span class="style25"><strong>65. ATYPICAL LYMPHS</strong></span></td>
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
                        <table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600">
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
                                    <asp:TextBox ID="AtypicalLymphs" class="style4" runat="server" Width="41px"></asp:TextBox>
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
                            <td height="122" colspan="4" valign="top"><table width="100%" border="1" cellpadding="5">
                              <tr>
                                <td height="114" valign="top" class="style27"><table width="100%" border="0" cellpadding="5">
                                  <tr>
                                    <td height="98" valign="top" bgcolor="#FFFFFF" class="style27"><p><strong>Stand alone indicator:   </strong>Lymph node function<br />
                                      <br />
                                      Low  =  Zero is the desired score at all  times.  Anything above indicates that  your lymph
                                        nodes are filled to capacity with toxins and  fatigues<br />
                                        <br />
                                        High  =  Compromised immune system, viral  infection, trapped toxins in lymph system,
                                        liver toxicity, impacted bowel,  autointoxication, severe infection, toxins building
                                        up faster than your immune system can process  them, weak, multiple nutritional deficiencies</p>                                      </td>
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
              <tr>
                <td align="center" valign="top">&nbsp;</td>
              </tr>
            </table>
            <div align="left"></div>
            <div align="left"></div>
</div></td>
        </tr>
        <tr>
          <td align="center" valign="top"><p>&nbsp;</p>
            <div>
              <div> </div>
          </div></td>
        </tr>
      </table>
    </div>
    </form>
<!--- #################################  --->
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
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
</body>
</html>
