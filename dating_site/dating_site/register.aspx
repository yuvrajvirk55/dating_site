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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">firstname</td>
                <td>
                    <asp:TextBox ID="register_fname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">lastname</td>
                <td>
                    <asp:TextBox ID="register_lname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Date of Birth</td>
                <td>
                    <asp:TextBox ID="register_dob" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">password</td>
                <td>
                    <asp:TextBox ID="register_password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">conform paddword</td>
                <td>
                    <asp:TextBox ID="register_cpassword" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="register_password" ErrorMessage="Passwords doesn't match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">gender</td>
                <td>
                    <asp:RadioButtonList ID="register_gender" runat="server" Height="16px" Width="222px">
                        <asp:ListItem>male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">email</td>
                <td>
                    <asp:TextBox ID="register_email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="register_email" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <asp:Button ID="register_register" runat="server" Text="register" />
    </form>
</body>
</html>
