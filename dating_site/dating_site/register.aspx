<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="dating_site.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 401px;
        }
        .auto-style3 {
            width: 266px;
        }
        .auto-style4 {
            width: 401px;
            height: 26px;
        }
        .auto-style5 {
            width: 266px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">firstname</td>
                <td class="auto-style3">
                    <asp:TextBox ID="register_fname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">lastname</td>
                <td class="auto-style3">
                    <asp:TextBox ID="register_lname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="register_email" runat="server" OnTextChanged="email_check" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="register_email" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Date of Birth</td>
                <td class="auto-style5">
                    <asp:TextBox ID="register_dob" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="register_password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="register_password" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">conform paddword</td>
                <td class="auto-style3">
                    <asp:TextBox ID="register_cpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="register_password" ControlToValidate="register_cpassword" ErrorMessage="Passwords doesn't match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">gender</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="register_gender" runat="server" Height="16px" Width="222px">
                        <asp:ListItem>male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="register_register" runat="server" Text="register" />
    </form>
</body>
</html>
