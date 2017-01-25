<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPatients.aspx.cs" Inherits="abundalife1001.View_Patients" %>

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
            <td align="center" valign="top"><table width="98%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="19%" align="left" valign="top"><table width="100%" border="2" cellpadding="0" cellspacing="0" bordercolor="#006600" id="leftMenuColor">
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
                      <td valign="top"><form id="form1" runat="server">
    
     <div>
     <asp:GridView  ID="GridView1"  runat="server"  AutoGenerateColumns="False"  CellPadding="4"

ForeColor="#333333" GridLines="None" >

<FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />

<Columns>
<asp:TemplateField HeaderText="User ID Insert" >
<ItemTemplate>
<asp:LinkButton id="id" OnCommand="lnkButton_Click" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"id") %>' runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"id","Insert") %>'></asp:LinkButton>
                                                                                                                                  
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="first_name" HeaderText="First Name" />
<asp:BoundField DataField="last_name" HeaderText="Last Name" />
<%--<asp:BoundField DataField="dob" HeaderText="Date of Birth" />--%>
<asp:BoundField DataField="email" HeaderText="Email Address" />
<asp:BoundField DataField="telephone" HeaderText="Telephone" />
<asp:BoundField DataField="fax" HeaderText="Fax" />
<asp:TemplateField HeaderText="User ID View" >
<ItemTemplate>
<asp:LinkButton id="idv" OnCommand="lnkButtonview_Click" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"id") %>' runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"id","View") %>'></asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>
</Columns>

<RowStyle BackColor="#E3EAEB" />

<EditRowStyle BackColor="#7C6F57" />

<SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />

<PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />

<HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />

<AlternatingRowStyle BackColor="White" />

</asp:GridView>
    </div>
    
    
    </form></td>
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
</body>
</html>
