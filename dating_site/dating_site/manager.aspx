<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager.aspx.cs" Inherits="dating_site.manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Usertable:
        <br />
        <br />
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="usertablesql">
            <Columns>
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="usertablesql" runat="server" ConnectionString="<%$ ConnectionStrings:uvuserdataConnectionString %>" SelectCommand="SELECT * FROM [usertable]" ProviderName="<%$ ConnectionStrings:uvuserdataConnectionString.ProviderName %>"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        Userinterests:
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="userinterestsql">
            <Columns>
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="int_sex" HeaderText="int_sex" SortExpression="int_sex" />
                <asp:BoundField DataField="int_nationality" HeaderText="int_nationality" SortExpression="int_nationality" />
                <asp:BoundField DataField="int_agegroup" HeaderText="int_agegroup" SortExpression="int_agegroup" />
                <asp:BoundField DataField="in_hobbies" HeaderText="in_hobbies" SortExpression="in_hobbies" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="userinterestsql" runat="server" ConnectionString="<%$ ConnectionStrings:uvuserdataConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [userinterest]"></asp:SqlDataSource>
        <br />
        <br />
    </form>
</body>
</html>
