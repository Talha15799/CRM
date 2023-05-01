<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="view" %>

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
        .auto-style3 {
            height: 43px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 150px">
    
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td style="width: 15%; text-align: center">
                    <asp:Image ID="Image4" runat="server" Height="129px" ImageUrl="~/image/download.png" Width="189px" />
                </td>
                <td style="text-align: center; font-size: 40pt; font-weight: bold">VIEW COMPLAIN</td>
                <td style="width: 15%; text-align: center">
                    <asp:Image ID="Image5" runat="server" Height="129px" ImageUrl="~/image/download.png" Width="189px" />
                </td>
            </tr>
        </table>
    
    </div>
        <div style="background-color: #008080; height: 303px;">

            <table align="center" cellpadding="0" cellspacing="0" class="auto-style2">
                <tr>
                    <td class="auto-style3" style="border-style: inset; border-color: #FF9933; text-align: center; font-family: Arial; font-weight: bold; color: #FFFFFF;">
                        <asp:RadioButton ID="rbtnnotcompleted" runat="server" Text="NotCompleted" />
                        <asp:RadioButton ID="rbtncomplete" runat="server" Text="Complete" />
                        <asp:RadioButton ID="rbtnall" runat="server" Text="All" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="border-style: inset; border-color: #FF9933; text-align: center;">
                        <asp:Button ID="btnshow" runat="server" BackColor="#66FF33" OnClick="btnshow_Click" Text="Show" />
                    </td>
                </tr>
                <tr>
                    <td style="border-style: inset; border-color: #FF9933">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
            </table>

        </div>
        <div style="background-color: #008080">

            <asp:Button ID="btnback" runat="server" BackColor="#66FF33" Height="41px" OnClick="btnback_Click" Text="Back" Width="91px" />

        </div>
    </form>
</body>
</html>
