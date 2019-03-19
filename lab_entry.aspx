<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lab_entry.aspx.cs" Inherits="lab_entry" %>



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
        .style15
        {
            width: 498px;
            height: 54px;
            font-family: Rockwell;
            font-size: xx-large;
            font-weight: 300;
            color: #FFFFFF;
        }
        .style16
        {
            width: 621px;
            height: 42px;
        }
        .style17
        {
            height: 36px;
            width: 131px;
        }
        .style23
        {
            height: 36px;
            width: 391px;
        }
        .style27
        {
            height: 36px;
            width: 194px;
        }
        .style34
        {
            height: 36px;
            width: 238px;
        }
        #form1
        {
            height: 638px;
            margin-right: 0px;
            background-color: #FFFF00;
        }
        .style36
        {
            width: 296px;
            height: 54px;
        }
        .style41
        {
            width: 101px;
            height: 54px;
        }
        .style42
        {
            width: 63px;
            height: 54px;
        }
        .style44
        {
            width: 101px;
            height: 56px;
        }
        .style45
        {
            width: 63px;
            height: 56px;
        }
        .style47
        {
            width: 296px;
            height: 56px;
        }
        .style48
        {
            height: 33px;
            width: 194px;
        }
        .style51
        {
            height: 33px;
            width: 619px;
        }
        .style53
        {
            height: 33px;
            width: 131px;
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
            width: 621px;
        }
        .style23
        {
            width: 391px;
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
        .style57
        {
            height: 33px;
            width: 238px;
        }
        .style58
        {
            height: 33px;
            width: 300px;
        }
        .style59
        {
            height: 36px;
            width: 300px;
        }
        .style60
        {
            height: 33px;
            width: 345px;
        }
        .style61
        {
            height: 36px;
            width: 345px;
        }
        .style62
        {
            width: 498px;
            height: 56px;
        }
    </style>
</head>
 <body class="body">
 <font color="white" size="10">Lab Wise Entry</font> 
    <form id="form1" runat="server" class="form" style="margin-left:13px; margin-top:30px;">
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
           <asp:Button ID="Button1" runat="server" Text="LOGOUT" onclick="Button1_Click" />
        </td>
      </tr>
      </table>  
      <br />                          
 
    <table class="tablehead"  BackImageUrl="~/Copy of image/loginhead.jpg" align="center" 
            style="border: medium solid #000000; background-image: url('Copy of image/loginhead.jpg')">
    <tr>
    <td class="style41">
        <asp:Label ID="Label1" runat="server" Text="Course" Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
    </td>
    <td class="style42">
        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="203px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            AutoPostBack="True">
        </asp:DropDownList>
    </td>
    <td class="style15">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Branch" Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
    </td>
    <td class="style36">
        <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="201px" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
            AutoPostBack="True" >
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td class="style44">
        <asp:Label ID="Label3" runat="server" Text="Sem" Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
    </td>
    <td class="style45">
        <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Width="205px" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
        </asp:DropDownList>
    </td>
    <td class="style62">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Batch" Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
    </td>
    <td class="style47">
        <asp:DropDownList ID="DropDownList4" runat="server" Height="25px" 
            style="margin-top: 8px" Width="201px" 
            onselectedindexchanged="DropDownList4_SelectedIndexChanged">
        </asp:DropDownList>
    </td>
    </tr>
    </table>
        <br>
   <br />
   <br />
        <table class="tablehead" 
                
            style="border: medium solid #000000; background-image: url('Copy of image/loginhead.jpg')" 
            align="center">
    <tr>
    <td class="style48" align="center">
        <asp:Label ID="Label5" runat="server" Text="Subject" Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
    </td>
    <td class="style58" align="center">
        <asp:Label ID="Label6" runat="server" Text="Teacher" Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
    </td>
    <td class="style57" align="center">
        <asp:RadioButtonList ID="DAYRBTN" runat="server" AutoPostBack="True" 
            Font-Size="X-Large" ForeColor="White" Height="65px" 
            onselectedindexchanged="DAYRBTN_SelectedIndexChanged" 
            RepeatDirection="Horizontal" Width="185px">
        
            <asp:ListItem Selected="True" Value="01">GDAY</asp:ListItem>
            <asp:ListItem Value="02">DAY</asp:ListItem>
        
        </asp:RadioButtonList>
        </td>
    <td class="style51" align="center">
        <asp:Label ID="TIMERBTN" runat="server" Text="Timing" Font-Size="X-Large" 
            ForeColor="White" style="color: #FFFFFF"></asp:Label>
    </td>
    <td class="style60" align="center">
        <asp:Label ID="Label8" runat="server" Text="Lab No." Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
    </td>
    <td class="style53" align="center">
        <asp:Label ID="Label9" runat="server" Text="Building" Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
    </td>
    </tr>
    <tr style="border-style: double">
    <td class="style27" align="center">
        <asp:DropDownList ID="DropDownList5" runat="server" Height="25px" Width="150px" 
            onselectedindexchanged="DropDownList5_SelectedIndexChanged">
        </asp:DropDownList>
    </td>
    <td class="style59" align="center">
        <asp:DropDownList ID="DropDownList6" runat="server" Height="25px" Width="150px" 
            onselectedindexchanged="DropDownList6_SelectedIndexChanged">
        </asp:DropDownList>
    </td>
    <td class="style34" align="center">
        <asp:DropDownList ID="GDAYLIST" runat="server" 
            Height="26px" Width="150px" 
            onselectedindexchanged="GDAYLIST_SelectedIndexChanged">
            <asp:ListItem>----GROUP DAYS----</asp:ListItem>
            <asp:ListItem Value="01">WED-THU-SUN-MON</asp:ListItem>
            <asp:ListItem Value="02">WED-THU-FRI-SAT</asp:ListItem>
            <asp:ListItem Value="03">FRI-SAT-SUN-MON</asp:ListItem>
            <asp:ListItem Value="04">ALL DAYS</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DAYLIST" runat="server" 
            Height="25px" Width="150px" Visible="False" 
            onselectedindexchanged="DAYLIST_SelectedIndexChanged">
            <asp:ListItem Value="------DAYS------">------DAYS------</asp:ListItem>
            <asp:ListItem Value="0">WED</asp:ListItem>
            <asp:ListItem Value="1">THU</asp:ListItem>
            <asp:ListItem Value="2">FRI</asp:ListItem>
            <asp:ListItem Value="3">SAT</asp:ListItem>
            <asp:ListItem Value="4">SUN</asp:ListItem>
            <asp:ListItem Value="5">MON</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td class="style23" align="center">
        
        <asp:DropDownList ID="TIMELIST" runat="server" AutoPostBack="True" 
            Height="25px" onselectedindexchanged="TIMELIST_SelectedIndexChanged" 
            Width="150px">
            <asp:ListItem>-----TIMING------</asp:ListItem>
            <asp:ListItem Value="2">11:00AM-01:00AM</asp:ListItem>
            <asp:ListItem Value="5">09:00AM-11:00AM</asp:ListItem>
            <asp:ListItem Value="7">03:00AM-05:00AM</asp:ListItem>
            <asp:ListItem Value="9">01:00AM-03:00AM</asp:ListItem>
            <asp:ListItem Value="11">08:00AM-09:00AM</asp:ListItem>
            <asp:ListItem Value="13">05:00AM-07:00AM</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td class="style61" align="center">
        <asp:DropDownList ID="DropDownList9" runat="server" Height="25px" Width="150px" 
            onselectedindexchanged="DropDownList9_SelectedIndexChanged">
        </asp:DropDownList>
    </td>
    <td class="style17" align="center">
        <asp:DropDownList ID="DropDownList10" runat="server" Height="25px" 
            Width="150px" onselectedindexchanged="DropDownList10_SelectedIndexChanged">
        </asp:DropDownList>
       
    </td>
    </tr>
    
    </table>
    <br />
    <br />
    <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="imgbutton" 
                ImageUrl="~/Copy of image/OK.png" Height="44px" Width="106px" 
            onclick="ImageButton1_Click" />
            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="imgbutton" 
                ImageUrl="~/Copy of image/Reset.jpg" Height="45px" Width="113px" 
            onclick="ImageButton2_Click" Visible="False"/>
      
    </div>
    <asp:ListBox ID="ListBox1" runat="server" Height="1px" Visible="False" 
        Width="1px"></asp:ListBox>
    </form>
</body>
</html>
