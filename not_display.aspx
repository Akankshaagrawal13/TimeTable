<%@ Page Language="C#" AutoEventWireup="true" CodeFile="not_display.aspx.cs" Inherits="not_display" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Copy%20of%20image/light_background_for_blog_or_site.jpg">
    <form id="form1" runat="server">
    <div>
   
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">GO TO HOME PAGE</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" Text="LOGOUT" Width="202px" 
            onclick="Button1_Click" />
        <br />
        <br />
        <br />
   
        <asp:Label ID="Label2" height="518px" runat="server" Width="715px"></asp:Label>
    
    <table style="width: 646px">
   
   
    
  
    
    
    </table>
    

    </div>
   
    </form>
</body>
</html>
