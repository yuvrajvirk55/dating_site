﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 368px;
        }
        .auto-style2 {
            text-align: right;
            width: 592px;
        }
        .auto-style3 {
            width: 592px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>Not a member&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" Width="130px" ImageUrl="~/images/signUp.png" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email:&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="38px" style="margin-right: 104px" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="36px" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="51px" ImageUrl="~/images/login.jpg" Width="130px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>Let&#39;s date !</td>
            </tr>
        </table>
    </form>
</body>
</html>
