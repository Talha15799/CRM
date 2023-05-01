<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

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
            width: 100%;
            height: 100%;
            background-color: #008080;
        }
        .auto-style3 {
            width: 70%;
            height: 205px;
        }
        .auto-style4 {
            height: 111px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
   
        Welcome<asp:Label ID="Label1" runat="server" Text="Label" BackColor="#CCFFFF"></asp:Label>
   
        <br />
        <div style="height: 163px">
            <table cellpadding="0" cellspacing="0" class="auto-style1">
                <tr>
                    <td style="vertical-align: middle; text-align: center; width: 15%">
                        <asp:Image ID="Image1" runat="server" Height="155px" ImageUrl="~/image/images (1).jpeg" Width="185px" />
                    </td>
                    <td style="font-size: 44pt; font-weight: bold; vertical-align: middle; text-align: center; font-family: 'Times New Roman', Times, serif;">FEEDBACK</td>
                    <td style="width: 15%; text-align: center; vertical-align: middle">
                        <asp:Image ID="Image2" runat="server" Height="154px" ImageUrl="~/image/images (1).jpeg" Width="180px" />
                    </td>
                </tr>
            </table>
        </div>
        <div style="height: 400px">

            <table cellpadding="0" cellspacing="0" class="auto-style2">
                <tr>
                    <td style="  width: 30%; text-align: center;">
                        
                        &nbsp;<asp:Image ID="Image3" runat="server" Height="237px" ImageUrl="~/image/feed.png" Width="314px" ImageAlign="Middle" style="margin-left: 0px" BorderColor="#CC9900" BorderStyle="Inset" BorderWidth="5px" />
                        
                    </td>
                    <td>
                        <table align="center" cellpadding="0" cellspacing="0" class="auto-style3">
                            <tr>
                                <td style="border-style:groove; border-color: #b6ff00;font-weight:bold;color:white; font-family: Arial;" class="auto-style4">Feedback</td>
                                <td style="border-style: groove; border-color: #b6ff00" class="auto-style4">
                                    <asp:TextBox ID="txtfeedback" runat="server" Height="88px" Width="251px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-style:groove; border-color: #b6ff00;font-weight:bold;color:white; font-family: Arial;">Date of Feedback</td>
                                <td style="border-style: groove; border-color: #b6ff00">
                                    <asp:DropDownList ID="ddlmonth" runat="server" Width="126px">
                                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddldate" runat="server" Width="126px">
                                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlyear" runat="server" Width="132px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="border-style: groove; border-color: #b6ff00">
                                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" BackColor="#66FF33" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </table>

        </div>
        <div style="background-color: #008080">

            <asp:Button ID="btnback" runat="server" Height="43px" OnClick="btnback_Click" Text="Back" Width="104px" BackColor="#66FF33" />

        </div>
        
   
    </form>
</body>
</html>
