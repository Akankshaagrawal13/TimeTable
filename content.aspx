<%@ Page Language="C#" AutoEventWireup="true" CodeFile="content.aspx.cs" Inherits="content" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
    <title>Untitled Page</title>
    <style type="text/css">
        .style9
        {
            width: 257px;
            height: 66px;
        }
        .style10
        {
            width: 101px;
            height: 66px;
        }
        .style12
        {
            width: 101px;
            height: 59px;
        }
        .style13
        {
            width: 257px;
            height: 59px;
        }
        .style16
        {
            width: 621px;
            height: 42px;
        }
        #form1
        {
            height: 638px;
            margin-right: 0px;
            background-color: #FFFF00;
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
        .td
        {
        	background-image: url('Copy of image/loginpanel.jpg')
        }
        .menu1
        {
            margin-left: 0px;
        }
        .style16
        {
            width: 621px;
        }
        .style55
        {
            width: 570px;
            height: 42px;
            font-family: Rockwell;
            font-size: xx-large;
            font-weight: 300;
            color: #FFFFFF;
        }
        .style56
        {
            margin-left: 67px;
            margin-top: 8px;
            height: 42px;
        }
        </style>
</head>
 <body class="body">
    <form id="form1" runat="server" class="form">
    <br />
    <div>
 <table class="tablehead">
    <tr>
    <td class="style55">Time Table Management System&nbsp;</td>
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
       <td align="center" valign="top" class="style56">
           &nbsp; &nbsp; &nbsp; 
           <br />
           &nbsp; &nbsp; &nbsp; &nbsp;
           <asp:Button ID="Button1" runat="server" Text="LOGOUT" onclick="Button1_Click" /></td>
      </tr>
      </table>  
      <br /> 
        
      </div>
      </form> 
      </body>
  
      </html>
                              
