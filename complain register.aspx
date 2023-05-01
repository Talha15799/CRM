<%@ Page Language="C#" AutoEventWireup="true" CodeFile="complain register.aspx.cs" Inherits="complain_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 100%;
            background-color: #88BDBC;
        }
        .auto-style3 {
            width: 100%;
            height: 100%;
            background-color: #008080;
        }
        .auto-style4 {
            width: 70%;
            height: 272px;
        }
        .auto-style5 {
            height: 64px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
   
    
        Welcome<asp:Label ID="Label1" runat="server" Text="Label" BackColor="#CCFFFF"></asp:Label>
    
        <br />
        <div style="height: 149px">
            <table cellpadding="0" cellspacing="0" class="auto-style2">
                <tr>
                    <td style="width: 15%; vertical-align: middle; text-align: center;">
                        <asp:Image ID="Image2" runat="server" Height="133px" ImageAlign="Middle" ImageUrl="~/image/images.jpeg" Width="185px" />
                    </td>
                    <td style="vertical-align: middle; text-align: center; font-weight: bold; font-size: 40pt">COMPLAIN REGISTER</td>
                    <td style="width: 15%; vertical-align: middle; text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="136px" ImageUrl="~/image/images.jpeg" Width="179px" />
                    </td>
                </tr>
            </table>
        </div>
        <div style="height: 400px">

            <table cellpadding="0" cellspacing="0" class="auto-style3">
                <tr>
                    <td style="width: 30%; text-align: center;">
                        
                        <asp:Image ID="Image3" runat="server" BorderStyle="Inset" Height="306px" ImageUrl="~/image/com.jpg" Width="338px" BorderColor="#CC9900" BorderWidth="5px" />
                        
                    </td>
                    <td style="vertical-align: middle">
                        <table align="center" cellpadding="0" cellspacing="0" class="auto-style4">
                            <tr>
                                <td class="auto-style5" style="border: 5px groove #99FF33; font-weight:bold;color:#FFFFFF; font-family: Arial;">Complain Type</td>
                                <td class="auto-style5" style="border: 5px groove #99FF33">
                                    <asp:DropDownList ID="ddlcomplain" runat="server" Height="39px" Width="226px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: 5px groove #99FF33; font-weight:bold;color:#FFFFFF; font-family: Arial;">Problem</td>
                                <td style="border: 5px groove #99FF33">
                                    <asp:TextBox ID="txtproblem" runat="server" Height="55px" Width="221px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: 5px groove #99FF33; font-weight:bold;color:#FFFFFF; font-family: Arial;">Date of Complain</td>
                                <td style="border: 5px groove #99FF33">
                                    <asp:DropDownList ID="ddlmonth" runat="server" Width="115px">
                                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddldate" runat="server" Width="118px">
                                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlyear" runat="server" Width="123px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="border: 5px groove #99FF33">
                                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" BackColor="#66FF33" />
                                    <asp:Label ID="Label2" runat="server" Text="Label" BackColor="#CCFFFF"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </table>

        </div>
        <div style="background-color: #008080">

            <asp:Button ID="btnback" runat="server" BackColor="#66FF33" Height="45px" OnClick="btnback_Click" Text="Back" Width="96px" />

        </div>
       
    
    </form>
    
</body>
</html>
