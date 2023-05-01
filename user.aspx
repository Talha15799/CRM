<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

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
            width: 100%;
            height: 350px;
            background-color: #008080;
        }
        .auto-style3 {
            height: 17%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
        <div style="height: 150px">
            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td style="width: 15%; text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="137px" ImageUrl="~/image/user.png" Width="166px" />
                    </td>
                    <td style="font-size: 40pt; font-weight: bold; text-align: center;">USER PANEL</td>
                    <td style="width: 15%; text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="134px" ImageUrl="~/image/user.png" Width="168px" />
                    </td>
                </tr>
            </table>
        </div>
        WELCOME<asp:Label ID="Label1" runat="server" Text="Label" BackColor="#CCFFFF"></asp:Label>
        <br />
        <div style="height: 380px">

            <table cellpadding="0" cellspacing="0" class="auto-style2"style="height:380px">
                <tr>
                    <td style="background-color: #FFFF00;">
                        <asp:LinkButton ID="LinkButton1" style="text-decoration:white; font-weight:bold; color:#000000" runat="server" OnClick="LinkButton1_Click">Complain Register</asp:LinkButton>
                    </td>
                    <td rowspan="5" style="text-align: center">
                        <asp:Image ID="Image3" runat="server" BorderColor="#99FFCC" BorderStyle="Solid" BorderWidth="8px" Height="322px" ImageUrl="~/image/cust.jpeg" Width="677px" />
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FFFF00;">
                        <asp:LinkButton ID="LinkButton2" style="text-decoration:white; font-weight:bold; color:#000000" runat="server" OnClick="LinkButton2_Click">Status Check</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FFFF00;">
                        <asp:LinkButton ID="LinkButton3" style="text-decoration:white; font-weight:bold; color:#000000" runat="server" OnClick="LinkButton3_Click">Feedback</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="background-color: #FFFF00; font-weight: bold;">

                        <asp:LinkButton ID="LinkButton5" style="text-decoration:white; font-weight:bold; color:#000000" runat="server" OnClick="LinkButton5_Click">Change Password</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FFFF00;">
                        <asp:LinkButton ID="LinkButton4" style="text-decoration:white; font-weight:bold; color:#000000" runat="server" OnClick="LinkButton4_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table>

        </div>
    
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
