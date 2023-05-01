<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterEmployee.aspx.cs" Inherits="AddEmployee" %>

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
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
            width: 622px;
        }
        .auto-style6 {
            width: 30%;
            height: 31px;
        }
        .auto-style7 {
            height: 31px;
            width: 622px;
        }
        .auto-style8 {
            width: 30%;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
            width: 622px;
        }
        .auto-style10 {
            width: 30%;
            height: 34px;
        }
        .auto-style11 {
            height: 34px;
            width: 622px;
        }
        .auto-style12 {
            width: 30%;
            height: 30px;
        }
        .auto-style13 {
            height: 30px;
            width: 622px;
        }
        .auto-style14 {
            width: 30%;
            height: 36px;
        }
        .auto-style15 {
            height: 36px;
            width: 622px;
        }
        .auto-style16 {
            width: 30%;
            height: 41px;
        }
        .auto-style17 {
            height: 41px;
            width: 622px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
    <div style="height: 150px">
    
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td style="text-align: center; width: 15%">
                    <asp:Image ID="Image1" runat="server" Height="133px" ImageUrl="~/image/images.png" Width="164px" />
                </td>
                <td style="font-size: 40pt; font-weight: bold; text-align: center;">REGISTER EMPLOYEE</td>
                <td style="text-align: center; width: 15%">
                    <asp:Image ID="Image2" runat="server" Height="128px" ImageUrl="~/image/images.png" Width="166px" />
                </td>
            </tr>
            
        </table>
    
    </div>
        
        <div style="height: 450px; background-color: #008080;">

            <table align="center" cellpadding="0" cellspacing="0" class="auto-style3" border="5"style="height:450px">
                <tr>
                    <td style="border: 3px groove #66FF99; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style16">
                        UserName</td>
                    <td class="auto-style17" style="border: 3px groove #66FF99">

                        <asp:TextBox ID="txtusername" runat="server" Width="274px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #66FF99; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style10">
                        Password</td>
                    <td class="auto-style11" style="border: 3px groove #66FF99">

                        <asp:TextBox ID="txtpassword" runat="server" Width="274px" TextMode="Password"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #66FF99; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style14">
                        Confirm Password</td>
                    <td class="auto-style15" style="border: 3px groove #66FF99">

                        <asp:TextBox ID="txtconfirmpassword" runat="server" Width="274px" TextMode="Password"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #66FF99; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style12">
                        EmployeeID
                    </td>
                    <td class="auto-style13" style="border: 3px groove #66FF99">

                        <asp:TextBox ID="txtemployee" runat="server" Width="274px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #66FF99; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style10">Name</td>
                    <td class="auto-style11" style="border: 3px groove #66FF99">
                        <asp:TextBox ID="txtname" runat="server" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #66FF99; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style4">Address</td>
                    <td class="auto-style5" style="border: 3px groove #66FF99">
                        <asp:TextBox ID="txtaddress" runat="server" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #66FF99; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style6">PhoneNo</td>
                    <td class="auto-style7" style="border: 3px groove #66FF99">
                        <asp:TextBox ID="txtphoneno" runat="server" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #66FF99; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style8">Email</td>
                    <td class="auto-style9" style="border: 3px groove #66FF99">
                        <asp:TextBox ID="txtemail" runat="server" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #66FF99; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style6">Designation</td>
                    <td class="auto-style7" style="border: 3px groove #66FF99">
                        <asp:TextBox ID="txtdesignation" runat="server" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border: 3px groove #66FF99; color: #FFFFFF; font-weight:bold; font-family: Arial;" class="auto-style4">Salary</td>
                    <td class="auto-style5" style="border: 3px groove #66FF99">
                        <asp:TextBox ID="txtsalary" runat="server" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="border: 3px groove #66FF99">
                        <asp:Button ID="btnadd" runat="server" Text="Add" Width="81px" OnClick="btnadd_Click" BackColor="Yellow" Height="43px" />
                    </td>
                </tr>
            </table>

        </div>
        <div style="background-color: #008080">

            <asp:Button ID="btnback" runat="server" BackColor="Yellow" Height="42px" OnClick="btnback_Click" Text="Back" Width="75px" />

        </div>
        </form>
</body>
</html>
