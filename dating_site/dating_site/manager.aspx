<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager.aspx.cs" Inherits="dating_site.manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSourceuserdata" runat="server" ConnectionString="<%$ ConnectionStrings:userdataConnectionString %>" OnSelecting="SqlDataSourceuserdata_Selecting" SelectCommand="SELECT * FROM [Table]" SelectQuery="<%$ ConnectionStrings:userdataConnectionString %>"></asp:SqlDataSource>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSourceuserdata" Height="241px" Width="818px">
            <Columns>
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
