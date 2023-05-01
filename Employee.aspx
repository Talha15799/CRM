<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>

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
            height: 300px;
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
                        <asp:Image ID="Image1" runat="server" Height="138px" ImageUrl="~/image/emp.png" Width="162px" />
                    </td>
                    <td style="text-align: center; font-size: 40pt; font-weight: bold">EMPLOYEE PANEL</td>
                    <td style="width: 15%; text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="138px" ImageUrl="~/image/emp.png" Width="161px" />
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
        WELCOME<asp:Label ID="Label1" runat="server" Text="Label" BackColor="#CCFFFF"></asp:Label>
        <br />
        <div style="height: 300px; background-color: #008080;">

            <table cellpadding="0" cellspacing="0" class="auto-style2">
                <tr>
                    <td style="background-color: #FFDF00; width: 20%; font-family: Arial;">
                        <asp:LinkButton ID="LinkButton1" style="text-decoration:white; font-weight:bold; color:#000000" runat="server" OnClick="LinkButton1_Click">View Complain</asp:LinkButton>
                    </td>
                    <td rowspan="3" style="text-align: center">
                        <asp:Image ID="Image3" runat="server" BorderColor="#FFFF66" BorderStyle="Groove" BorderWidth="5px" Height="279px" ImageUrl="~/image/employee.png" Width="721px" />
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FFDF00; width: 20%; font-family: Arial;">
                        <asp:LinkButton ID="LinkButton2" style="text-decoration:white; font-weight:bold; color:#000000" runat="server" OnClick="LinkButton2_Click">Status Upload</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FFDF00; width: 20%; font-family: Arial;">
                        <asp:LinkButton ID="LinkButton3" style="text-decoration:white; font-weight:bold; color:#000000" runat="server" OnClick="LinkButton3_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
