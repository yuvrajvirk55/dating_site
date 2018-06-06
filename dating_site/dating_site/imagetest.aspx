<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imagetest.aspx.cs" Inherits="dating_site.imagetest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    
    </div>
        <asp:Image ID="Image1" runat="server" Height="298px" Width="321px" />
    </form>
</body>
</html>
