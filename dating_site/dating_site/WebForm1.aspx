<%@ Page language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void DepartmentsListView_SelectedIndexChanged(object sender, EventArgs e)
    {
        MessageLabel.Text = "The key value is " +
          DepartmentsListView.SelectedValue.ToString() + ".";
       }

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
  <head id="Head1" runat="server">
    <title>ListView SelectedValue Example</title>
    <style type="text/css">
      .header
      {
        border: 1px solid #008080;
        background-color: #008080;
        color: White;
      }
      .item td { border: 1px solid #008080; }
      .selection td  
      {
        border: 1px solid #008080; 
        background-color: #7FFF00;
      }
    </style>
  </head>
  <body>
    <form id="form1" runat="server">

      <h3>ListView SelectedValue Example</h3>

      <asp:ListView runat="server" 
        ID="DepartmentsListView"
        DataSourceID="DepartmentDataSource" 
        DataKeyNames="email" 
        OnSelectedIndexChanged="DepartmentsListView_SelectedIndexChanged">
        <LayoutTemplate>
          <b>Department List</b>
          <br />
          <table width="500px" runat="server" id="tblDepartments">
            <tr class="header" runat="server">
              <th runat="server">&nbsp;</th>
              <th runat="server">Department Name</th>
              <th runat="server">Group Name</th>
            </tr>
            <tr runat="server" id="itemPlaceholder" />
          </table>
        </LayoutTemplate>
        <ItemTemplate>
          <tr class="item" runat="server">
            <td>
              <asp:LinkButton runat="server" 
                ID="SelectButton" 
                Text="Add Friend"
                CommandName="Select" />
            </td>
            <td>
              <asp:Label runat="server" ID="NameLabel" Text='<%#Eval("name") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="GroupNameLabel" Text='<%#Eval("gender") %>' />
            </td>
          </tr>
        </ItemTemplate>
        <SelectedItemTemplate>
          <tr class="selection" runat="server">
            <td>&nbsp;</td>
            <td>
              <asp:Label runat="server" ID="NameLabel" Text='<%#Eval("name") %>' />
            </td>
            <td>
              <asp:Label runat="server" ID="GroupNameLabel" Text='<%#Eval("gender") %>' />
            </td>
          </tr>
        </SelectedItemTemplate>
      </asp:ListView>
      <br/>

      <asp:Label ID="MessageLabel" ForeColor="Red"  runat="server"/>

      <asp:SqlDataSource ID="DepartmentDataSource" runat="server" 
        ConnectionString="Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8"
        SelectCommand="SELECT userinterest.email as email,first_name + ' ' + last_name AS name, int_sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email">
      </asp:SqlDataSource>

    </form>
  </body>
</html>