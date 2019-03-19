<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_registration.aspx.cs" Inherits="user_registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">

<meta content="utf-8"/>
<title>jQuery UI Datepicker - Default functionality</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"/>
<script src="//code.jquery.com/jquery-1.9.1.js" type="text/jscript"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js" type="text/jscript"></script>
<link rel="stylesheet" href="/resources/demos/style.css"/>

    <style type="text/css">
        #datepicker
        {
            width: 76px;
        }
        .style1
        {
            width: 498px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="3">
    <tr>
    <td>
    <table width="70%" border="3" cellspacing="25">
    <tr><td><asp:Label ID="Label9" runat="server" Text="category"></asp:Label></td>
    <td class="style1"> 
        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="234px" 
            AutoPostBack="True" onselectedindexchanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem Value="----category---">----category----</asp:ListItem>
            <asp:ListItem Value="01">ADMIN</asp:ListItem>
            <asp:ListItem Value="02">PROGRAMMER</asp:ListItem>
            <asp:ListItem Value="03">TEACHER</asp:ListItem>
        </asp:DropDownList>
        </td>
    </tr>
    <tr><td><asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></td>
    <td class="style1"> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td><asp:Label ID="Label2" runat="server" Text="id"></asp:Label></td>
    <td class="style1">
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
    <td><asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></td>
    <td class="style1"><asp:TextBox ID="TextBox4" runat="server" TextMode="Password" 
            Width="155px"></asp:TextBox>
        <br />
        *at least 8 characters</td>
    </tr>
    <tr>
    <td><asp:Label ID="Label4" runat="server" Text="Conform Password"></asp:Label></td>
    <td class="style1"><asp:TextBox ID="TextBox5" runat="server" TextMode="Password" 
            Width="164px"></asp:TextBox></td>
    </tr>
    <tr>
    <td><asp:Label ID="Label5" runat="server" Text="Birthday"></asp:Label></td>
    <td class="style1"><p>
        <asp:DropDownList ID="DropDownList4" runat="server" 
            Height="16px" Width="106px">
        <asp:ListItem>---Date---</asp:ListItem>
            <asp:ListItem>01</asp:ListItem>
        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList5" runat="server" Height="16px" 
            Width="103px">
            <asp:ListItem>---Month---</asp:ListItem>
            <asp:ListItem>January</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
        <asp:DropDownList ID="DropDownList6" runat="server" Height="17px" 
            Width="77px">
            <asp:ListItem>---Year---</asp:ListItem>
            <asp:ListItem>1990</asp:ListItem>
        </asp:DropDownList>
        </p></td>
    </tr>
    <tr>
    <td><asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label></td>
    <td class="style1"> <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
        </asp:DropDownList></td>
    </tr>
    <tr>
    <td><asp:Label ID="Label7" runat="server" Text="Mobile No."></asp:Label></td>
    <td class="style1"><asp:TextBox ID="TextBox7" runat="server" Width="166px"></asp:TextBox></td>
    </tr>
    <tr>
    <td><asp:Label ID="Label8" runat="server" Text="Nationality"></asp:Label></td>
    <td class="style1">
        <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="143px">
            <asp:ListItem>INDIAN</asp:ListItem>
            <asp:ListItem>NRI</asp:ListItem>
        </asp:DropDownList>
        </td>
    </tr>
    <tr>
    <td><asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /></td>
    
    </tr>
</table>
</td>
<td><%
        user_registration_aspx obj = new user_registration_aspx();
        String[] s11= obj.rem();
        int len = s11.Length;
        
     %>
    <marquee height ="500" width="200" direction="up" behavior="scroll" scroll_amount="10" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);">
   
   <% for (int i = 1; i < len; i++)  %>
   <%{ %>
      <a href="not_display.aspx?name=<%=s11[i] %>"> <h1><%= s11[i] %></h1> </a><% ; %>
      <br />
   <%} %></marquee>
   
</td>
</tr>
</table>
 </div>
 
    </form>
</body>
</html>
