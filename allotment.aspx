<%@ Page Language="C#" AutoEventWireup="true" CodeFile="allotment.aspx.cs" Inherits="allotment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 150px;
            background-color: #88BDBC;
        }
        .auto-style2 {
            width: 60%;
            height: 100%;
            border-style: solid;
            border-width: 5px;
        }
        .auto-style3 {
            width: 45%;
            height: 62px;
        }
        .auto-style4 {
            height: 62px;
        }
        .auto-style5 {
            width: 45%;
            height: 67px;
        }
        .auto-style6 {
            height: 67px;
        }
        .auto-style7 {
            width: 45%;
            height: 64px;
        }
        .auto-style8 {
            height: 64px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div style="height: 150px">
            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td style="width: 15%; text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="134px" ImageUrl="~/image/download (1).jpg" Width="162px" />
                    </td>
                    <td style="text-align: center; font-size: 40pt; font-weight: bold">ALLOTMENT</td>
                    <td style="width: 15%; text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="134px" ImageUrl="~/image/download (1).jpg" Width="163px" />
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
        <div style="height: 452px; background-color: #008080;">

        <CENTER>   <table cellpadding="0" cellspacing="0" class="auto-style2">
                <tr>
                    <td style="border: 5px groove #FFFF00; color: #FFFFFF; text-align: justify; font-weight:bold; font-family: Arial; font-size: large;" class="auto-style3">Complain Number</td>
                    <td style="border: 5px groove #FFFF00; text-align: justify;" class="auto-style4">
                        <asp:DropDownList ID="ddlcomplain" runat="server" Height="22px" Width="141px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="border: 5px groove #FFFF00; color: #FFFFFF; text-align: justify; font-weight:bold; font-family: Arial; font-size: large;" class="auto-style3">Employee ID</td>
                    <td style="border: 5px groove #FFFF00; text-align: justify;" class="auto-style4">
                        <asp:DropDownList ID="ddlemployee" runat="server" Height="22px" Width="141px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="border: 5px groove #FFFF00; color: #FFFFFF; text-align: justify; font-weight:bold; font-family: Arial; font-size: large;" class="auto-style5">Date of Allotment</td>
                    <td style="border: 5px groove #FFFF00; text-align: justify;" class="auto-style6">
                        <asp:DropDownList ID="ddldate" runat="server" Height="22px" Width="125px">
                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlmonth" runat="server" Height="22px" Width="122px">
                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlyear" runat="server" Height="22px" Width="126px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="border: 5px groove #FFFF00; color: #FFFFFF; text-align: justify; font-weight:bold; font-family: Arial; font-size: large;" class="auto-style7">Expected date of Resolution</td>
                    <td style="border: 5px groove #FFFF00; text-align: justify;" class="auto-style8">
                        <asp:DropDownList ID="ddldate1" runat="server" Height="22px" Width="125px">
                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlmonth1" runat="server" Height="22px" Width="121px">
                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlyear1" runat="server" Height="22px" Width="124px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="border: 5px groove #FFFF00; color: #FFFFFF; text-align: justify; font-weight:bold; font-family: Arial; font-size: large;">Comment</td>
                    <td style="border: 5px groove #FFFF00; text-align: justify;">
                        <asp:TextBox ID="txtc" runat="server" Height="75px" Width="244px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="border: 5px groove #FFFF00; text-align: justify;">
                        <asp:Button ID="Button1" runat="server" BackColor="#66FF33" Height="35px" Text="Submit" Width="101px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            </CENTER> 

        </div>
        <div style="background-color: #008080">

            <asp:Button ID="btnback" runat="server" BackColor="#66FF33" Height="47px" OnClick="btnback_Click" Text="Back" Width="110px" />

        </div>
    </form>
</body>
</html>
