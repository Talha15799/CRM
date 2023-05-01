<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StatusUploadedSuccessfully.aspx.cs" Inherits="StatusUploadedSuccessfully" %>

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
        <div style="height: 147px">

            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td style="width: 15%; text-align: center;">
                        <asp:Image ID="Image2" runat="server" Height="131px" ImageUrl="~/image/confirm.png" Width="188px" />
                    </td>
                    <td style="font-size: 40pt; font-weight: bold; font-family: 'Arial Black'; text-align: center;">CONFIRMATION</td>
                    <td style="width: 15%; text-align: center;">
                        <asp:Image ID="Image1" runat="server" Height="131px" ImageUrl="~/image/confirm.png" Width="188px" />
                    </td>
                </tr>
            </table>

        </div>
    <div style="background-color: #008080; color: #FFFFFF; font-weight: bolder; font-size: xx-large;">
    
        Status Uploaded Successfully with EmpID no.<asp:Label ID="Label1" runat="server" Text="Label" BackColor="#CCFFFF" ForeColor="Black"></asp:Label>
    
    </div>
    </form>
</body>
</html>
