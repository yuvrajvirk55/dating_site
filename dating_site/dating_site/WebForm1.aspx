<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dating_site.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>usertable</asp:ListItem>
            <asp:ListItem>userinterest</asp:ListItem>
        </asp:RadioButtonList>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="280px">
            <asp:ListItem>email</asp:ListItem>
            <asp:ListItem>password</asp:ListItem>
            <asp:ListItem>first_name</asp:ListItem>
            <asp:ListItem>last_name</asp:ListItem>
            <asp:ListItem>sex</asp:ListItem>
            <asp:ListItem>dob</asp:ListItem>
        </asp:CheckBoxList>
    
    </div>
        <asp:CheckBoxList ID="CheckBoxList2" runat="server" style="position: relative">
            <asp:ListItem>email</asp:ListItem>
            <asp:ListItem>int_sex</asp:ListItem>
            <asp:ListItem>int_nationality</asp:ListItem>
            <asp:ListItem>int_agegroup</asp:ListItem>
            <asp:ListItem>in_hobbies</asp:ListItem>
        </asp:CheckBoxList>
        
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="167px"></asp:TextBox>
&nbsp; where
            <asp:TextBox ID="TextBox2" runat="server" Height="39px" Width="215px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Height="50px" OnClick="Button1_Click" style="position: relative" Text="Button" Width="141px" />
        </p>
    </form>
</body>
</html>
