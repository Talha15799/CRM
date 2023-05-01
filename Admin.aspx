<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 100%;
            background-color: #88BDBC;
        }
        .auto-style3 {
            width: 100%;
            height: 100%;
            background-color: #008080;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div style="height: 150px">
            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td style="text-align: center; width: 15%">
                        <asp:Image ID="Image1" runat="server" Height="132px" ImageUrl="~/image/admin.png" Width="166px" />
                    </td>
                    <td style="font-size: 40pt; font-weight: bold; text-align: center;">ADMIN PANEL</td>
                    <td style="width: 15%; text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="135px" ImageUrl="~/image/admin.png" Width="169px" />
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
        WELCOME<asp:Label ID="Label1" runat="server" Text="Label" BackColor="#CCFFFF"></asp:Label>
        <br />
        
        <div style="height: 357px">

            <table class="auto-style3">
                <tr>
                    <td style="background-color: #FFFF00; font-family: Arial; color: #000000;">
                        <asp:LinkButton ID="LinkButton6" style="text-decoration:white; font-weight:bold; color:#000000" runat="server" OnClick="LinkButton6_Click">View Complain</asp:LinkButton>
                    </td>
                    <td rowspan="5" style="text-align: center">
                        <asp:Image ID="Image3" runat="server" BorderColor="#99FF33" BorderStyle="Inset" Height="318px" ImageUrl="~/image/images (6).jpeg" Width="670px" BorderWidth="5px" />
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FFFF00; font-family: Arial; color: #000000;">
                        <asp:LinkButton ID="LinkButton7" style="text-decoration:white; font-weight:bold; color:#000000" runat="server" OnClick="LinkButton7_Click">Allotment</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FFFF00; font-family: Arial; color: #000000;">
                        <asp:LinkButton ID="LinkButton8" style="text-decoration:white; font-weight:bold; color:#000000" runat="server" OnClick="LinkButton8_Click">Register Employee</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FFFF00; font-family: Arial; color: #000000;">
                        <asp:LinkButton ID="LinkButton9" style="text-decoration:white; font-weight:bold; color:#000000" runat="server" OnClick="LinkButton9_Click">Update Employee</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FFFF00; font-family: Arial; color: #000000;">
                        <asp:LinkButton ID="LinkButton10" style="text-decoration:white; font-weight:bold; color:#000000"  runat="server" OnClick="LinkButton10_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
