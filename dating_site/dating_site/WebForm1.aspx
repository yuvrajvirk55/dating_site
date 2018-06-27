<%@ Page language="C#" CodeBehind="WebForm1.aspx.cs" AutoEventWireup="true" Inherits="dating_site.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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

      <asp:ListView runat="server" 
        ID="DepartmentsListView"
        DataKeyNames="email" 
        onselectedindexchanging="ListView1_SelectedIndexChanging">
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

      <asp:Label ID="MessageLabel"
        ForeColor="Red"
        runat="server"/>

    </form>
  </body>
</html>