<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StatusCheck.aspx.cs" Inherits="StatusCheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 167px;
            background-color: #88BDBC;
        }
        .auto-style2 {
            width: 100%;
            height: 100%;
            background-color: #008080;
        }
        .auto-style3 {
            width: 100%;
            height: 283px;
        }
        .auto-style4 {
        }
        .auto-style5 {
        }
        .auto-style6 {
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        Welcome<br />
    <div style="height:150px">
    
        <table cellpadding="0" cellspacing="0" class="auto-style1" style="height:150px">
            <tr>
                <td style="width: 15%; text-align: center;">
                    <asp:Image ID="Image1" runat="server" Height="129px" ImageUrl="~/image/images (4).jpeg" Width="185px" />
                </td>
                <td style="text-align: center; font-size: 40pt; font-weight: bold">STATUS CHECK</td>
                <td style="width: 15%; text-align: center;">
                    <asp:Image ID="Image2" runat="server" Height="129px" ImageUrl="~/image/images (4).jpeg" Width="177px" />
                </td>
            </tr>
        </table>
    
    </div>
        <div style="height: 317px">

            <table cellpadding="0" cellspacing="0" class="auto-style2">
                <tr>
                   
                    <td rowspan="4" style="text-align: center; vertical-align: middle">
                        <table align="center" cellpadding="0" cellspacing="0" class="auto-style3" style="width:60%">
                            <tr>
                                <td class="auto-style5" style="border: thick ridge #FFFF66; font-weight:bold;color:#FFFFFF">
                                    <asp:RadioButton ID="rbtnnotcompleted" runat="server" Text="NotCompleted" />
                                    <asp:RadioButton ID="rbtncomplete" runat="server" Text="Complete" />
                                    <asp:RadioButton ID="rbtnall" runat="server" Text="All" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6" style="border: thick ridge #FFFF66">
                                    <asp:Button ID="BtnShow" runat="server" OnClick="BtnShow_Click" Text="Show" BackColor="#66FF33" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4" style="border: thick ridge #FFFF66">
                                    <asp:GridView ID="GridView1" runat="server">
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                
            </table>
   

        </div>
        <div style="background-color: #008080">

            <asp:Button ID="btnback" runat="server" OnClick="btnback_Click" Text="Back" BackColor="#66FF33" Height="43px" Width="77px" />

        </div>
        
    </form>
</body>
</html>
