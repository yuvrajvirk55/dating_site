<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="dating_site.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            position: relative;
            top: 95px;
            left: -10px;
        }
        .auto-style2 {
        text-align: right;
        width: 592px;
        font-family: "Bradley Hand ITC";
        font-weight: bold;
        font-size: medium;
    }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            font-family: "Bradley Hand ITC";
            font-weight: bold;
            font-size: x-large;
            color: #FFFFFF;
            background-color: #FF9933;
        }
        .auto-style5 {
            background-color: #FF9933;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">First Name:&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="textbox_email" runat="server" BackColor="#E1E1E1" BorderStyle="None" Height="38px" style="margin-right: 104px" TextMode="Email" Width="208px" OnTextChanged="textbox_email_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name:&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="textbox_password" runat="server" BackColor="#E1E1E1" BorderStyle="None" Height="36px" TextMode="Password" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Date of birth:&nbsp;&nbsp; </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Password:&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="textbox_password0" runat="server" BackColor="#E1E1E1" BorderStyle="None" Height="36px" TextMode="Password" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Conform password</td>
                <td>
                    <asp:TextBox ID="textbox_email1" runat="server" BackColor="#E1E1E1" BorderStyle="None" Height="38px" style="margin-right: 104px" TextMode="Email" Width="208px" OnTextChanged="textbox_email_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="textbox_password1" runat="server" BackColor="#E1E1E1" BorderStyle="None" Height="36px" TextMode="Password" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server" style="position: relative; top: -338px; left: -15px; margin-top: 0px">
            <div class="auto-style3">
                <span class="auto-style4">Sign Up</span><span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            </div>
        </asp:Panel>
    </form>
</body>
</html>
