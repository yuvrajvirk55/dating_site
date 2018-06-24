<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dating_site.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
                <table>
                    <tr><td><img src="<%#Eval("pic")%>" /></td></tr>
                     <tr><td><%#Eval("pic")%></td></tr>
                     <tr><td><%#Eval("pic")%></td></tr>

                </table>


            </ItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>
