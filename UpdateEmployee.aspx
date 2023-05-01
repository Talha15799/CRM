<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateEmployee.aspx.cs" Inherits="UpdateEmployee" %>

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
            width: 60%;
            height: 100%;
        }
        .auto-style4 {
            width: 30%;
            height: 46px;
        }
        .auto-style5 {
            height: 46px;
        }
        .auto-style6 {
            width: 30%;
            height: 38px;
        }
        .auto-style7 {
            height: 38px;
        }
        .auto-style8 {
            width: 30%;
            height: 33px;
        }
        .auto-style9 {
            height: 33px;
        }
        .auto-style10 {
            width: 30%;
            height: 34px;
        }
        .auto-style11 {
            height: 34px;
        }
        .auto-style12 {
            width: 30%;
            height: 37px;
        }
        .auto-style13 {
            height: 37px;
        }
        .auto-style14 {
            width: 30%;
            height: 40px;
        }
        .auto-style15 {
            height: 40px;
        }
        .auto-style16 {
            height: 61px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
    <div style="height:150px">
    
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td style="text-align: center; width: 15%">
                    <asp:Image ID="Image1" runat="server" Height="135px" ImageUrl="~/image/images (5).jpeg" Width="174px" />
                </td>
                <td style="text-align: center; font-weight: bold; font-size: 40pt">UPDATE EMPLOYEE</td>
                <td style="width: 15%; text-align: center">
                    <asp:Image ID="Image2" runat="server" Height="135px" ImageUrl="~/image/images (5).jpeg" Width="174px" />
                </td>
            </tr>
        </table>
    
    </div>
        
        <div style="height: 400px; background-color: #008080;">

            <table align="center" cellpadding="0" cellspacing="0" style="height:400px" class="auto-style3"border="5">
                <tr>
                    <td style="border: 3px groove #FFFF00; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style4">EmployeeID</td>
                    <td class="auto-style5" style="border: 3px groove #FFFF00">
                        <asp:DropDownList ID="ddlemp" runat="server" Width="163px" AutoPostBack="True" OnSelectedIndexChanged="ddlemp_SelectedIndexChanged">
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
                        </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #FFFF00; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style6">Name</td>
                    <td class="auto-style7" style="border: 3px groove #FFFF00">
                        <asp:TextBox ID="txtname" runat="server" Width="206px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #FFFF00; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style8">Address</td>
                    <td class="auto-style9" style="border: 3px groove #FFFF00">
                        <asp:TextBox ID="txtaddress" runat="server" Width="206px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #FFFF00; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style10">PhoneNo</td>
                    <td class="auto-style11" style="border: 3px groove #FFFF00">
                        <asp:TextBox ID="txtphoneno" runat="server" Width="206px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #FFFF00; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style10">Email</td>
                    <td class="auto-style11" style="border: 3px groove #FFFF00">
                        <asp:TextBox ID="txtemail" runat="server" Width="206px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #FFFF00; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style12">Designation</td>
                    <td class="auto-style13" style="border: 3px groove #FFFF00">
                        <asp:TextBox ID="txtdesignation" runat="server" Width="206px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #FFFF00; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style14">Salary</td>
                    <td class="auto-style15" style="border: 3px groove #FFFF00">
                        <asp:TextBox ID="txtsalary" runat="server" Width="206px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style16" style="border: 3px groove #FFFF00">
                        <asp:Button ID="btnupdate" runat="server" Height="39px" Text="Update" Width="102px" OnClick="btnupdate_Click" BackColor="#66FF33" />
                    </td>
                </tr>
            </table>
                >

        </div>
        <div style="background-color: #008080">

            <asp:Button ID="btnback" runat="server" BackColor="#66FF33" Height="45px" OnClick="btnback_Click" Text="Back" Width="70px" />

        </div>
      
    </form>
</body>
</html>
