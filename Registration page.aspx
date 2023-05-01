<%@ Page Title="" Language="C#" MasterPageFile="~/header footer.master" AutoEventWireup="true" CodeFile="Registration page.aspx.cs" Inherits="Registration_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 80%;
            height: 100%;
        }
        .auto-style6 {
            width: 836px;
        }
        .auto-style7 {
            width: 30%;
            height: 55px;
        }
        .auto-style8 {
            width: 836px;
            height: 55px;
        }
        .auto-style9 {
            width: 30%;
            height: 57px;
        }
        .auto-style10 {
            width: 836px;
            height: 57px;
        }
        .auto-style11 {
            width: 30%;
            height: 50px;
        }
        .auto-style12 {
            width: 836px;
            height: 50px;
        }
        .auto-style13 {
            width: 30%;
            height: 53px;
        }
        .auto-style14 {
            width: 836px;
            height: 53px;
        }
        .auto-style15 {
            width: 30%;
            height: 61px;
        }
        .auto-style16 {
            width: 836px;
            height: 61px;
        }
        .auto-style17 {
            height: 45px;
        }
        .auto-style18 {
            width: 30%;
            height: 51px;
        }
        .auto-style19 {
            width: 836px;
            height: 51px;
        }
        .auto-style20 {
            height: 54px;
        }
        .auto-style21 {
            width: 836px;
            height: 54px;
        }
        .auto-style22 {
            height: 52px;
        }
        .auto-style23 {
            width: 836px;
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div style="background-color: #008080; height: 1031px;">
        <table align="center" class="auto-style5" style="width: 70%" border="5">
            <tr>
                <td colspan="2" style="font-weight: bold; font-size: xx-large; color: #FFFF00;">Registration Page</td>
            </tr>
            <tr>
                <td  class="auto-style18" style="font-family: Arial; font-size: large; font-weight: bold; color: #FFFFFF">
                    <asp:Label ID="Label1" runat="server" Text="First Name" Font-Bold="true" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style19" >
                    <asp:TextBox ID="txtfname" runat="server" Height="32px" Width="339px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td  class="auto-style11" style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;">Middle Name</td>
                <td class="auto-style12" >
                    <asp:TextBox ID="txtmname" runat="server" Height="32px" Width="339px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;" >Last Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtlname" runat="server" Height="33px" Width="339px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td  class="auto-style18" style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;">Username</td>
                <td class="auto-style19" >
                    <asp:TextBox ID="txtusername" runat="server" Height="32px" Width="339px" ></asp:TextBox>
                    <asp:Button ID="btnCheck" runat="server" OnClick="btnCheck_Click" Text="Check" />
                    <asp:Label ID="lblCheck" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td  class="auto-style20" style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;">Password</td>
                <td class="auto-style21" >
                    <asp:TextBox ID="txtpassword" runat="server" Height="34px" Width="339px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22" style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;" >Confirm Password</td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtconfirmpassword" runat="server" Height="35px" Width="339px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;">Gender</td>
                <td class="auto-style8">
                    <asp:RadioButton ID="rbtnmale" runat="server" Text="Male" ForeColor="White" />
                    <asp:RadioButton ID="rbtnfemale" runat="server" Text="Female" ForeColor="White" />
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;">Phone no.</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtphone" runat="server" Height="34px" Width="339px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;">Address</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtaddress" runat="server" Height="83px" Width="339px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;">Country</td>
                <td class="auto-style10" >
                    <asp:DropDownList ID="ddlcountry" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged" >
                    </asp:DropDownList>
                    <asp:Button ID="btnCountry" runat="server" OnClick="btnCountry_Click" Text="Button" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;">State</td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddlstate" runat="server" Width="199px" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" >
                    </asp:DropDownList>
                    <asp:Button ID="btnState" runat="server" OnClick="btnState_Click" Text="Button" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13" style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;">City</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="ddlcity" runat="server" Width="199px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;">Date of Birth</td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddlmonth" runat="server" Width="101px">
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddldate" runat="server" Width="104px">
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlyear" runat="server" Width="117px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;">Captcha</td>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Label" BackColor="#CCFFFF" ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;">Enter Captcha</td>
                <td class="auto-style16" >
                    <asp:TextBox ID="txtcaptcha" runat="server" Height="38px" Width="339px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" colspan="2" style="font-weight: bold; color: #FFFFFF; font-family: Arial; font-size: large;" >
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="I agree to the terms and condition" />
                </td>
            </tr>
            <tr>
                <td colspan="2" >
                    <asp:Button ID="btnregister" runat="server" Height="39px" Text="Register" Width="121px" OnClick="btnregister_Click" BackColor="#99FF66" />
                </td>
            </tr>
        </table>
</div>
</asp:Content>


