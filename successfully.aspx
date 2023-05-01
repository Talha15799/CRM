<%@ Page Language="C#" AutoEventWireup="true" CodeFile="successfully.aspx.cs" Inherits="successfully" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 146px">

            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td style="width: 15%; text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="129px" ImageUrl="~/image/conf.png" Width="192px" />
                    </td>
                    <td style="font-weight: bold; font-size: 40pt; font-family: Arial; text-align: center">CONFIRMATION</td>
                    <td style="width: 15%; text-align: center">
                        <asp:Image ID="Image3" runat="server" Height="129px" ImageUrl="~/image/conf.png" Width="192px" />
                    </td>
                </tr>
            </table>

        </div>
        <div style="color: #FFFFFF; background-color: #008080; font-size: xx-large; font-weight: bolder;">

        
        Complain Successfully Register with complain no.<asp:Label ID="Label1" runat="server" Text="Label" BackColor="#CCFFFF" ForeColor="Black"></asp:Label>
            </div>
    </form>
</body>
</html>
