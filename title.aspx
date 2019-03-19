<%@ Page Language="C#" AutoEventWireup="true" CodeFile="title.aspx.cs" Inherits="title" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 886px;
            height: 40px;
        }
        .style3
        {
            width: 889px;
        }
        .style8
        {
            height: 62px;
            width: 253px;
        }
        .style9
        {
            height: 62px;
            width: 300px;
        }
        .style10
        {
            height: 62px;
            width: 218px;
        }
        .style11
        {
            height: 62px;
            width: 267px;
        }
        .menu1
        {
            margin-left: 7px;
        }
        .menu1
        {
            margin-left: 5px;
        }
        .style16
        {
            width: 621px;
        }
        .style19
        {
            font-family : Rockwell;
            font-size: xx-large;
            font-weight: 300;
            color: #FFFFFF;
            width: 319px;
            height: 26px;
        }
        .style24
        {
            width: 319px;
        }
        .style26
        {
            width: 319px;
            height: 40px;
        }
        .style28
        {
            width: 886px;
            height: 26px;
        }
        .style29
        {
            width: 886px;
        }
        </style>
</head>
<body class="body">
    <form id="form1" runat="server"  class="form">

   <table class="tablehead">
    <tr>
    <td class="tdtimetableheading" style="font-size: x-large">Time Table Management 
        System</td>
    <td class="style16">
   <asp:Menu ID="Menu1" runat="server"  
         DynamicHorizontalOffset="2" 
         ForeColor="#666666" Orientation="Horizontal" 
         StaticSubMenuIndent="20px" 
         Font-Underline="True" RenderingMode="Table" CssClass="menu1" Height="16px" 
            Width="520px">
         <DynamicHoverStyle CssClass="dynamichoverstyle" ForeColor="White"  />
         <DynamicMenuItemStyle  CssClass="dynamicmenuitemstyle" HorizontalPadding="5px" VerticalPadding="2px" ForeColor="Black" />
         <DynamicMenuStyle CssClass="DynamicMenuStyle" />
         <DynamicSelectedStyle CssClass="DynamicSelectedStyle" ForeColor="White" />
         <Items>
                <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/home.aspx">
                </asp:MenuItem>
                <asp:MenuItem Text="Entry" Value="Forms">
                    <asp:MenuItem Text="Notice" Value="notice" NavigateUrl="~/notice.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Teacher " Value="teacher" NavigateUrl="~/teacher.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Title" Value="title" NavigateUrl="~/title.aspx"></asp:MenuItem>
                 </asp:MenuItem>
                <asp:MenuItem Text="View" Value="Report">
                <asp:MenuItem Text="View Time Table" Value="report" NavigateUrl="~/Report.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Give Feedback " Value="feedback" NavigateUrl="~/feedback.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Time Table Entry" Value="Report">
                <asp:MenuItem Text="Class wise Entry" Value="report" NavigateUrl="trans5.aspx"> </asp:MenuItem>
                <asp:MenuItem Text="Lab wise Entry " Value="feedback" NavigateUrl="lab_entry.aspx"> </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="About" Value="About " NavigateUrl="about.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Contact " Value="Contact " NavigateUrl="contact.aspx"></asp:MenuItem>
         </Items>
         <StaticHoverStyle CssClass="StaticHoverStyle"  ForeColor="White" />
         <StaticMenuItemStyle HorizontalPadding="20px" VerticalPadding="2px" ItemSpacing="10px" />
         <StaticMenuStyle Height="10px" HorizontalPadding="10px" />
         <StaticSelectedStyle  CssClass="StaticSelectedStyle" ForeColor="White" Font-Underline="False" />
      </asp:Menu>
      </td>
       <td align="center" valign="top" class="imgbutton">
           <asp:Button ID="Button1" runat="server" Text="LOGOUT" 
               onclick="Button1_Click1" />
</td>
      </tr>
      </table>
 

    
    <table style="border: medium solid #000000; height: 350px; width: 683px; margin-top: 7px; background-image: url('Copy%20of%20image/loginhead.jpg'); 
       margin-right: 0px; margin-left: 251px;" 
             border="solid" align="center" class="panel2">
     <tr>
    <td class="style28" align="left" valign="middle">
     <asp:Label ID="Label8" runat="server" Text="Plz Choose Category" ForeColor="White"></asp:Label>
    </td>
    <td class="style19" align="center">
    <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            AutoPostBack="True" Height="25px" Width="188px">
            <asp:ListItem>-----select-------</asp:ListItem>
            <asp:ListItem>Teacher</asp:ListItem>
            <asp:ListItem>Course</asp:ListItem>
            <asp:ListItem>Semester</asp:ListItem>
            <asp:ListItem>Branch</asp:ListItem>
            <asp:ListItem>Timing</asp:ListItem>
            <asp:ListItem>Period No.</asp:ListItem>
            <asp:ListItem>Day</asp:ListItem>
            <asp:ListItem>Room</asp:ListItem>
            <asp:ListItem>Subject</asp:ListItem>
            <asp:ListItem>Building</asp:ListItem>
            <asp:ListItem>Batch</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td class="style29">
     <asp:Label ID="Label1" runat="server" Text="ID"  ForeColor="White"></asp:Label>
    </td>
    <td class="style24">
     <asp:Label ID="Label9" runat="server" CssClass="textbox" Width="287px" ForeColor="Black" 
            Height="31px" BackColor="White" style="margin-left: 23px"></asp:Label>
   </td>
    </tr>
    <tr>
    <td class="style29">
    <asp:Label ID="Label2" runat="server" Text="Name" ForeColor="White"></asp:Label>
    </td>
    <td class="style24">
     <asp:Label ID="Label10" runat="server" CssClass="textbox" Height="31px" 
            Width="287px" ForeColor="Black" BackColor="White"></asp:Label>
   </td>
   </tr>
    <tr>
    <td class="style29">
      <asp:Label ID="Label3" runat="server" Text="Fname" ForeColor="White"></asp:Label>
    </td>
    <td class="style24">
    <asp:TextBox ID="TextBox3" runat="server"  CssClass="textbox" Height="36px" 
            Width="286px"></asp:TextBox>
   </td>
   </tr>
   <tr>
    <td class="style29">
    <asp:Label ID="Label4" runat="server" Text="Sname" ForeColor="White"></asp:Label>
    </td>
    <td class="style24">
      <asp:TextBox ID="TextBox4" runat="server"  CssClass="textbox" Height="34px" 
            Width="283px"></asp:TextBox>
   </td>
   </tr>
   <tr>
    <td class="style29">
       <asp:Label ID="Label5" runat="server" Text="Ssname" ForeColor="White"></asp:Label>
   </td>
    <td class="style24">
    <asp:TextBox ID="TextBox5" runat="server"  CssClass="textbox" Height="33px" 
            Width="282px"></asp:TextBox>
   </td>
   </tr>
   <tr>
    <td class="style29">
     <asp:Label ID="Label6" runat="server" Text="Remark" ForeColor="White"></asp:Label>
    </td>
    <td class="style24">
      <asp:TextBox ID="TextBox6" runat="server"  CssClass="textbox" Height="34px" 
            Width="281px"></asp:TextBox>
   </td>
   </tr>
  <tr>
    <td class="style1">
      <asp:Label ID="Label7" runat="server" Text="Availability"  ForeColor="White"></asp:Label>
    </td>
    <td class="style26">
       <asp:TextBox ID="TextBox7" runat="server"  CssClass="textbox" Height="38px" 
            Width="282px"></asp:TextBox>
    
    </td>
</tr>
    </table>
  <br />
  <br />
  <br />
  
   <table style="height: 36px; width: 704px; margin-left: 232px; margin-right: 0px; margin-bottom: 35px;">
    <tr>
     <td class="style3" align="center">
         <asp:ImageButton ID="ImageButton3" runat="server" Height="44px" 
             ImageUrl="~/Copy of image/submit.jpg" onclick="ImageButton3_Click" 
             Width="103px" />
    
    </td>
    </tr>
    </table>
    
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [title_tab]"></asp:SqlDataSource>
</form>
</body>
</html>
