<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewComplain.aspx.cs" Inherits="ViewComplain" %>

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
            height: 67px;
        }
        .auto-style4 {
            height: 67px;
            }
        .auto-style5 {
        }
        .auto-style6 {
            height: 49px;
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
                        <asp:Image ID="Image1" runat="server" Height="138px" ImageUrl="~/image/download.png" Width="163px" />
                    </td>
                    <td style="text-align: center; font-weight: bold; font-size: 40pt">VIEW COMPLAIN</td>
                    <td style="width: 15%; text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="132px" ImageUrl="~/image/download.png" Width="162px" />
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
        <div style="height: 321px; background-color: #008080;">

            <table align="center" cellpadding="0" cellspacing="0" class="auto-style2">
                <tr>
                    <td class="auto-style4" style="border: 5px outset #FFFF00; text-align: center; font-family: Arial; font-weight: bold; color: #FFFFFF;">
                        <asp:RadioButton ID="rbtnnotcomplete" runat="server" Text="NotCompleted" ForeColor="White" />
&nbsp;<asp:RadioButton ID="rbtncomplete" runat="server" Text="Complete" ForeColor="White" />
&nbsp;<asp:RadioButton ID="rbtnall" runat="server" Text="All" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="border: 5px outset #FFFF00; text-align: center">
                        <asp:Button ID="btnshow" runat="server" Text="Show" OnClick="btnshow_Click" BackColor="#66FF33" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="border: 5px outset #FFFF00;">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
            </table>

        </div>
        <div style="background-color: #008080">

            <asp:Button ID="btnback" runat="server" OnClick="btnback_Click" Text="Back" BackColor="#66FF33" Height="44px" Width="69px" />

        </div>
    </form>
</body>
</html>
