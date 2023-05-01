<%@ Page Title="" Language="C#" MasterPageFile="~/header footer.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
            height: 100%;
            background-color: #307D7E;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            height: 60px;
        }
        .auto-style8 {
            height: 52px;
        }
        .auto-style9 {
            width: 33%;
            height: 363px;
        }
        .auto-style10 {
            width: 34%;
            height: 363px;
        }
        .auto-style11 {
            width: 100%;
            height: 149px;
        }
    .auto-style12 {
        height: 42px;
    }
    .auto-style13 {
        height: 17px;
    }
    .auto-style14 {
        height: 27px;
    }
    .auto-style16 {
        width: 137px;
        height: 36px;
    }
    .auto-style17 {
        height: 36px;
    }
        .auto-style18 {
            height: 363px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div style="height: 513px">
        
        <table class="auto-style5" style="height:513px;border:ridge;border-color:black" >
            <tr>
                <td style="vertical-align: top;border:solid; class="auto-style9" class="auto-style18" >
                    <table class="auto-style6">
                        <tr>
                            <td class="auto-style7" style="font-weight: bold; font-size: xx-large; font-style: normal; color: #FFFF00; font-family: Calibri;">Our Mission</td>
                        </tr>
                        <tr>
                            <td style="color: #FFFFFF; font-weight: bold;">Happy customers are loyal customers and they also offer good word of mouth advertising, which can be invaluable.So our mission is to improve customer satisfaction, improves the efficiency of your business,expand your customer base,enhance your sales and support teams.</td>
                        </tr>
                        <tr>
                            <td class="auto-style8" style="font-weight: bold; font-size: xx-large; color: #FFFF00; font-family: Calibri;">Our Story</td>
                        </tr>
                        <tr>
                            <td style="color: #FFFFFF; font-weight: bold;">At Slazio, we believe that strong customer relationships are the foundation of any successful business.That&#39;s why we&#39;ve dedicated ourselves to helping businesses of all sizes build, maintain and strengthen those relationships through our cutting-edge CRM software.</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style9" style="border:solid;">
                    <table cellpadding="0" cellspacing="0" class="auto-style11">
                        <tr>
                            <td style="vertical-align: middle; text-align: center; height: 33%;">
                                <asp:Image ID="Image1" runat="server" Height="160px" ImageUrl="~/image/crm1.png" Width="296px" ImageAlign="Left" BorderStyle="Groove" BorderColor="#FFFF66" BorderWidth="5px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 33.33%; vertical-align: middle; text-align: center;">
                                <asp:Image ID="Image2" runat="server" Height="160px" ImageUrl="~/image/crm2.jpg" Width="296px" ImageAlign="Right" BorderStyle="Groove" BorderColor="#FF9900" BorderWidth="5px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle; text-align: center">
                                <asp:Image ID="Image3" runat="server" Height="155px" ImageAlign="Left" ImageUrl="~/image/crm3.jpg" Width="301px" BorderStyle="Groove" BorderColor="#99FF33" BorderWidth="5px" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style10"  style="border:solid; vertical-align: top;">
                    <table cellpadding="0" cellspacing="0" class="auto-style11" style="border: thin solid #000000">
                        <tr>
                            <td style="vertical-align: middle; text-align: center; height: 50%;">
                                <asp:Image ID="Image4" runat="server" Height="230px" ImageUrl="~/image/sign in.jpg" Width="363px" BorderColor="#CCCC00" BorderStyle="Groove" BorderWidth="5px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top">
                                <table cellpadding="0" cellspacing="0" class="auto-style11" style="border-style: solid; border-width: thin; width: 100%; height: 100%">
                                    <tr>
                                        <td class="auto-style12" colspan="2" style="border-style: groove; border-color: #99FF33; font-size: x-large; font-weight: bold; font-family: 'Arial Black'; color: #FFFFFF;">Login</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16" style="border-style: groove; border-color: #99FF33; font-family: 'Arial Black';">
                                            <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="true" ForeColor="White"></asp:Label>
                                        </td>
                                        <td class="auto-style17" style="border-style: groove; border-color: #99FF33">
                                            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16" style="border-style: groove; border-color: #99FF33; font-weight: bold; font-family: 'Arial Black';">
                                            <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="true" ForeColor="White"></asp:Label>
                                        </td>
                                        <td class="auto-style17" style="border-style: groove; border-color: #99FF33">
                                            <asp:TextBox ID="txtpassword" runat="server"  TextMode="Password"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13" colspan="2" style="border-style: groove; border-color: #99FF33">
                                            <asp:Button ID="btngo" runat="server"  Text="GO" BackColor="#66FF33" Height="43px" Width="66px" OnClick="btngo_Click" />
                                        </td>
                                    </tr>
                                
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>


