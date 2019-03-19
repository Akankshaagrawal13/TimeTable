<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="Stylesheet" type="text/css" href="StyleSheet.css" /> 
    <title></title>
    <style type="text/css">
        .menu1
        {}
        #form1
        {
            width: 742px;
            margin-left: 50px;
            height: 411px;
        }
    </style>
</head>
<body background="Copy of image/background-pictures-website-loading-sitezimages.jpg">
    <form id="form1" runat="server">
    <div>
    <table align="center">
    <tr>
    <td>
        
        <asp:Menu ID="Menu1" runat="server" CssClass="menu1" 
            DynamicHorizontalOffset="2" Font-Underline="True" ForeColor="#666666" 
            Height="25px" Orientation="Horizontal" RenderingMode="Table" 
            StaticSubMenuIndent="20px" Width="520px" 
            Font-Size="X-Large">
            <DynamicHoverStyle CssClass="dynamichoverstyle" ForeColor="White" />
            <DynamicMenuItemStyle CssClass="dynamicmenuitemstyle" ForeColor="Black" 
                HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle CssClass="DynamicMenuStyle" />
            <DynamicSelectedStyle CssClass="DynamicSelectedStyle" ForeColor="White" />
            <Items>
                <asp:MenuItem Text="Home" Value="Home" NavigateUrl="home.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Time Table" Value="Report" NavigateUrl="Report.aspx"></asp:MenuItem>
                <asp:MenuItem Text="About Us" Value="About " NavigateUrl="about.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Contact Us" Value="Contact " NavigateUrl="contact.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Feedback" Value="Feedback" NavigateUrl="feedback.aspx">
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle CssClass="StaticHoverStyle" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="20px" ItemSpacing="10px" 
                VerticalPadding="2px" />
            <StaticMenuStyle Height="10px" HorizontalPadding="10px" />
            <StaticSelectedStyle CssClass="StaticSelectedStyle" Font-Underline="False" 
                ForeColor="White" />
        </asp:Menu>
        
        <br />
        
    </td>
    <td>
    <asp:Button ID="Button1" runat="server" Text="LOGOUT" Height="31px" Width="77px" 
            onclick="Button1_Click" />
    </td>
    </tr>
    <br /><br /><br />
    <tr>
    <td align="center">
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Mailing Address:" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="White"></asp:Label>
<p style="color: #FFFFFF; font-size: large;">Vaibhav Vyas</p>
<p style="color: #FFFFFF; font-size: large;">email id-vv4u@gmail.com</p>
<p style="color: #FFFFFF; font-size: large;">phone no-99568742568</p>
    </td>
    </tr>
    </table>
    </div>
    
    </form>
</body>
</html>
