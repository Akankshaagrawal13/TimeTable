<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notice.aspx.cs" Inherits="notice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 62px;
        }
        .style3
        {
            height: 72px;
        }
        .style4
        {
            height: 66px;
        }
        .style5
        {
            height: 60px;
        }
        </style>
</head>
<body background="Copy%20of%20image/light_background_for_blog_or_site.jpg">
    <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="LOGOUT" Width="154px" 
        onclick="Button2_Click" />
    
    <div>
    <table style="width: 675px; height: 532px">
    <tr>
    <td>
     <asp:Label ID="Label1" runat="server" Text="NoticeId" Font-Bold="True" 
            Font-Names="Arial"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="TextBox1" Height="29px" Width="200px" 
           style="margin-left: 101px" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td class="style4">
     <asp:Label ID="Label2" runat="server" Text="TeacherName" Font-Bold="True" 
            Font-Names="Arial"></asp:Label>
   </td>
   <td class="style4">
      <asp:DropDownList ID="DropDownList1"  Height="29px" Width="200px" 
           style="margin-left: 101px" runat="server">
        </asp:DropDownList>
  </td> 
  </tr>
  <tr>
  <td class="style1">
   <asp:Label ID="Label3" runat="server" Text="Notice" Font-Bold="True" 
          Font-Names="Arial"></asp:Label>
  </td>
  <td class="style1">
  <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="29px" Width="200px" 
          style="margin-left: 101px"></asp:TextBox>
  </td>
  </tr>
  <tr>
  <td class="style3">
  <asp:Label ID="Label4" runat="server" Text="ClassName" Font-Bold="True" 
          Font-Names="Arial"></asp:Label>
  </td>
  <td class="style3">
   <asp:DropDownList ID="DropDownList2" runat="server" Height="29px" Width="200px" style="margin-left: 101px">
        </asp:DropDownList>
 </td>
 </tr> 
 <tr>
 <td class="style5">
 <asp:Label ID="Label5" runat="server" Text="Heading" Font-Bold="True" 
         Font-Names="Arial"></asp:Label>
</td>
<td class="style5">
<asp:TextBox ID="TextBox5" Height="29px" Width="200px" style="margin-left: 101px" runat="server"></asp:TextBox>
</td> 
 </tr> 
 <tr>
 <td class="style3">
  <asp:Label ID="Label6" runat="server" Text="DepName" Font-Bold="True" 
         Font-Names="Arial"></asp:Label>
 
 </td>
 <td class="style3">
  <asp:DropDownList ID="DropDownList3" runat="server" Height="29px" Width="200px" style="margin-left: 101px">
        </asp:DropDownList>
 
 
 </td>
 </tr>
  
    <tr>
    <td style="margin-left: 40px">
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="109px" 
            Font-Bold="True" Font-Names="Comic Sans MS" onclick="Button1_Click1" />
    
        <br />
        <br />
    <a href="home.aspx">Go To HomePage</a>
    </td>
    
    </tr>   
    </table>
    
       

        
     
       

       
        

        

       

       

     
        
    
    </div>
    </form>
</body>
</html>
