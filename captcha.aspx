<%@ Page Language="C#" AutoEventWireup="true" CodeFile="captcha.aspx.cs" Inherits="captcha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            background-color: #C0C0C0;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 220px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Captcha"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Label" BackColor="Lime" ForeColor="#006600"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Enter captcha"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcaptcha" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
