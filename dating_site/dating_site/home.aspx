<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="dating_site.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 368px;
        }
        .auto-style3 {
            width: 592px;
        }
    .auto-style5 {
        font-family: "Bradley Hand ITC";
        font-size: medium;
        font-weight: bold;
    }
        .auto-style2 {
        text-align: right;
        width: 592px;
        font-family: "Bradley Hand ITC";
        font-weight: bold;
        font-size: medium;
    }
        .auto-style4 {
        font-family: "Bradley Hand ITC";
        font-size: xx-large;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5"><span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Not a member&nbsp;&nbsp;&nbsp; </span>
                    <asp:ImageButton ID="ImageButton_signup" runat="server" CssClass="auto-style5" Height="35px" ImageUrl="~/images/signUp.png" Width="130px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email:&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="textbox_email" runat="server" BackColor="#E1E1E1" BorderStyle="None" Height="38px" style="margin-right: 104px" TextMode="Email" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="textbox_password" runat="server" BackColor="#E1E1E1" BorderStyle="None" Height="36px" TextMode="Password" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton_login" runat="server" Height="51px" ImageUrl="~/images/login.jpg" Width="130px" OnClick="ImageButton2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4"><strong>&nbsp; Let&#39;s date! </strong></span>
        </p>
    </form>
</body>
</html>
