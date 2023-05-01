<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

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
        .auto-style2 {
            width: 60%;
            height: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 144px">
    
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td style="width: 15%; text-align: center">
                    <asp:Image ID="Image2" runat="server" Height="125px" ImageUrl="~/image/cp.png" Width="188px" />
                </td>
                <td style="font-size: 40pt; font-weight: bold; text-align: center">CHANGE PASSWORD</td>
                <td style="width: 15%; text-align: center">
                    <asp:Image ID="Image1" runat="server" Height="125px" ImageUrl="~/image/cp.png" Width="188px" />
                </td>
            </tr>
        </table>
    
    </div>
        <div style="height: 221px; background-color: #008080;">

            <table align="center" cellpadding="0" cellspacing="0" class="auto-style2">
                <tr>
                    <td style="border: 2px groove #FFFF00; width: 30%; font-size: large; font-weight: bold; font-family: Arial; color: #FFFFFF;">Username</td>
                    <td style="border: 2px groove #FFFF00">
                        <asp:TextBox ID="txtuser" runat="server" Width="197px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 2px groove #FFFF00; width: 30%; font-size: large; font-weight: bold; font-family: Arial; color: #FFFFFF;">New Password</td>
                    <td style="border: 2px groove #FFFF00">
                        <asp:TextBox ID="txtpass" runat="server" Width="197px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 2px groove #FFFF00; width: 30%; font-size: large; font-weight: bold; font-family: Arial; color: #FFFFFF;">Confirm New Password</td>
                    <td style="border: 2px groove #FFFF00">
                        <asp:TextBox ID="txtconfpass" runat="server" Width="197px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 2px groove #FFFF00; width: 30%; font-size: large; font-weight: bold; font-family: Arial; color: #FFFFFF;">
                        <asp:Button ID="Button1" runat="server" BackColor="#66FF66" Height="38px" Text="Update" Width="104px" OnClick="Button1_Click" />
                    </td>
                    <td style="border: 2px groove #FFFF00">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
        <div style=" background-color: #008080">

            <asp:Button ID="Button2" runat="server" BackColor="#66FF66" Height="43px" OnClick="Button2_Click" Text="Back" Width="97px" />

        </div>
    </form>
</body>
</html>
