<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher.aspx.cs" Inherits="teacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" type="text/css" href="StyleSheet.css" />
    <title></title>
    <style type="text/css">
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
        .style15
        {
            font-family : Rockwell;
            font-size: xx-large;
            font-weight: 300;
            color: #FFFFFF;
            width: 570px;
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
            width: 642px;
        }
        .style20
        {
            background-image: url('Copy%20of%20image/loginpanel.jpg');
            width: 309px;
        }
        .style21
        {
            background-image: url('Copy%20of%20image/loginpanel.jpg');
            height: 42px;
        }
        .style23
        {
            width: 391px;
        }
    </style>
</head>
<body class="body">
    <form id="form1" runat="server" class="form">  
     <table class="tablehead">
    <tr>
    <td class="style15">Time Table Management System&nbsp;</td>
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
        &nbsp; &nbsp; &nbsp; 
           <br />
           &nbsp; &nbsp; &nbsp; &nbsp;
           <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="LOGOUT" />
        </td>
      </tr>
      </table>
      <br />
   
   
    <table align="left" Cssclass ="Panel1" BackImageUrl="~/Copy of image/loginhead.jpg" 
        
        style="border: medium solid #000000; height: 317px; width: 434px; margin-left: 374px; margin-top: 0px;">
    <tr>
    <td class="style21">
    <asp:Label ID="Label1" runat="server" Text="Name"  ForeColor="White" 
            CssClass="lbl"></asp:Label>
    </td>
    <td class="style20" >
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox" 
            Width="228px" Height="33px" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td class="td" >
     <asp:Label ID="Label2" runat="server" Text="Teacher ID"  ForeColor="White" 
            CssClass="lbl"></asp:Label>
   </td>
    <td class="style20">
        <asp:Label ID="Label25" runat="server" CssClass="textbox" Width="228px" 
            BackColor="White" Height="25px"></asp:Label>
    </td>
    </tr>
     <tr>
    <td class="td">
     <asp:Label ID="Label3" runat="server" Text="Address" ForeColor="White" 
            CssClass="lbl"></asp:Label>
    </td>
    <td class="style20">
     <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Height="33px"></asp:TextBox>
    </td>
    </tr>
     <tr>
    <td class="td">
      <asp:Label ID="Label4" runat="server" Text="Department"  ForeColor="White" 
            CssClass="lbl"></asp:Label>
   </td>
    <td class="style20">
     <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" ></asp:TextBox>
    </td>
    </tr>
     <tr>
    <td class="td">
     <asp:Label ID="Label5" runat="server" Text="Qualification" ForeColor="White" 
            CssClass="lbl"></asp:Label>
   </td>
    <td class="style20">
     <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox" ></asp:TextBox>
    </td>
    </tr>
     <tr>
    <td class="td">
    <asp:Label ID="Label6" runat="server" Text="Contact No."  ForeColor="White" 
            CssClass="lbl"></asp:Label>
   </td>
    <td class="style20">
     <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox"></asp:TextBox>
   </td>
    </tr>
     <tr>
    <td class="td">
     <asp:Label ID="Label7" runat="server" Text="Remark" ForeColor="White" 
            CssClass="lbl" ></asp:Label>
    </td>
    <td class="style20">
    <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" CssClass="textbox" 
            Height="34px" Width="227px"></asp:TextBox>
    </td>
    </tr>
  </table>
  <br />
    <table style="height: 65px; width: 433px; margin-left: 376px; margin-right: 0px; margin-bottom: 35px; margin-top: 353px;">
    <tr>
     <td class="style23" align="center">
         <asp:ImageButton ID="ImageButton3" runat="server" Height="44px" 
             ImageUrl="~/Copy of image/submit.jpg"  
             Width="103px" onclick="ImageButton3_Click" />
    </td>
    </tr>
    </table>
    </form>
</body>
</html>
