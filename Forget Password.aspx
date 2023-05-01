<%@ Page Title="" Language="C#" MasterPageFile="~/header footer.master" AutoEventWireup="true" CodeFile="Forget Password.aspx.cs" Inherits="Forget_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 20%;
            height: 41px;
        }
        .auto-style6 {
            height: 41px;
        }
        .auto-style7 {
            width: 20%;
            height: 36px;
        }
        .auto-style8 {
            height: 36px;
        }
        .auto-style9 {
            width: 20%;
            height: 50px;
        }
        .auto-style10 {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div style="height: 184px">
         <table class="auto-style1" border="2" style="background-color: #008080">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="true" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="New Password" Font-Bold="true" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtnewpassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label3" runat="server" Text="Confirm New Password" Font-Bold="true" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtconfirmnewpassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                   
                    <asp:Button ID="btnUpdate" runat="server"  Text="Update" Width="158px" OnClick="btnUpdate_Click" BackColor="#66FF33" />
                   
                </td>
                <td >
                    
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                    
                </td>
            </tr>
        </table>
    </div>
</asp:Content>


