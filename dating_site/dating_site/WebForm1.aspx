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
    
    </div>
        <asp:GridView ID="GridView1" runat="server" style="position: relative; top: 0px; left: 0px; height: 209px; width: 352px">
        </asp:GridView>
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
