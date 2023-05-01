<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Statusupload.aspx.cs" Inherits="Statusupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 152px;
            background-color: #88BDBC;
        }
        .auto-style2 {
            width: 60%;
            height: 96%;
            border: 6px solid #808080;
        }
        .auto-style3 {
            width: 30%;
            height: 58px;
        }
        .auto-style4 {
            height: 58px;
        }
        .auto-style5 {
            width: 20%;
            height: 57px;
        }
        .auto-style6 {
            height: 57px;
        }
        .auto-style9 {
            width: 20%;
            height: 52px;
        }
        .auto-style10 {
            height: 52px;
        }
        .auto-style11 {
            width: 20%;
            height: 60px;
        }
        .auto-style12 {
            height: 60px;
        }
        .auto-style15 {
            height: 74px;
        }
        .auto-style16 {
            width: 20%;
            height: 56px;
        }
        .auto-style17 {
            height: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   

   
        Welcome<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
   

   
        <br />
        
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td style="width: 15%; text-align: center">
                    <asp:Image ID="Image2" runat="server" Height="138px" ImageUrl="~/image/stat.png" Width="172px" />
                </td>
                <td style="text-align: center; font-size: 40pt; font-weight: bold">STATUS UPLOAD</td>
                <td style="width: 15%; text-align: center">
                    <asp:Image ID="Image1" runat="server" Height="138px" ImageUrl="~/image/stat.png" Width="173px" />
                </td>
            </tr>
        </table>
        <div style="background-color: #008080; height: 420px;">

            <table align="center" cellpadding="0" cellspacing="0" class="auto-style2"style="height:420px">
                <tr>
                    <td class="auto-style3" style="border: 4px groove #FFFF00; font-family: Arial; font-weight: bold; color: #FFFFFF;">Complain No</td>
                    <td class="auto-style4" style="border: 4px groove #FFFF00" >
                        <asp:DropDownList ID="ddlcomplain" runat="server" Height="45px" Width="202px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="border: 4px groove #FFFF00; font-family: Arial; font-weight: bold; color: #FFFFFF;">Finding</td>
                    <td class="auto-style6" style="border: 4px groove #FFFF00" >
                        <asp:TextBox ID="txtfinding" runat="server" Height="39px" Width="241px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="border: 4px groove #FFFF00; font-family: Arial; font-weight: bold; color: #FFFFFF;">Solution</td>
                    <td class="auto-style12" style="border: 4px groove #FFFF00" >
                        <asp:TextBox ID="txtsolution" runat="server" Height="41px" Width="241px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" style="border: 4px groove #FFFF00; font-family: Arial; font-weight: bold; color: #FFFFFF;">Status</td>
                    <td class="auto-style10" style="border: 4px groove #FFFF00" >
                        <asp:DropDownList ID="ddlstatus" runat="server" Height="39px" Width="202px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" style="border: 4px groove #FFFF00; font-family: Arial; font-weight: bold; color: #FFFFFF;">Date</td>
                    <td class="auto-style17" style="border: 3px groove #FFFF00" >
                        <asp:DropDownList ID="ddlmonth" runat="server" Width="148px">
                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddldate" runat="server" Width="142px">
                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlyear" runat="server" Width="157px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="2" style="border: 4px groove #FFFF00;">
                        <asp:Button ID="btnsubmit" runat="server" BackColor="#66FF33" Text="Submit" OnClick="btnsubmit_Click" />
                    </td>
                </tr>
            </table>

        </div>
        <div style="background-color: #008080">

            <asp:Button ID="btnback" runat="server" BackColor="#66FF33" Height="43px" OnClick="btnback_Click" Text="Back" Width="101px" />

        </div>
            
   
    </form>
</body>
</html>
