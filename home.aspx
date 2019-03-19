<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    
   
    
    <style type="text/css">
        .style1
        {
            height: 70px;
        }
        .style2
        {
            width: 124px;
        }
        .style3
        {
            height: 215px;
        }
        .style4
        {
            width: 23px;
        }
        .style5
        {
            height: 173px;
        }
        .style6
        {
            width: 135px;
        }
        .style7
        {
            width: 675px;
        }
        .style8
        {
            width: 270px;
        }
    </style>
   
    
   
    
</head>
<body style="background-color:Black;">
    <form id="form1" runat="server">
    <div>
    <table> 
    <tr>
    <td class="style6"></td>
    <td class="style2"></td>
    <td class="style7"></td>
    <td class="style4"></td>
    <td class="style8">
        </td>
    </tr>


    <tr style="height: 95px;">
    <td style="width: 135px;"> <img src="Copy of image/name.jpg"  alt="" /></td>
    <td colspan="4" style="background-image: url('Copy of image/in16.jpg')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="5"><b>ID NO.</b></font> &nbsp;&nbsp;<asp:TextBox 
            ID="TextBox5" runat="server" Height="29px" Width="171px"></asp:TextBox>
        &nbsp;&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" 
            ImageUrl="~/Copy of image/IN161.jpg" onclick="ImageButton4_Click" />
        &nbsp;</td>
    
    </tr>
   
     
    <tr>
      <td colspan="2" 
            style="background-image: url('Copy of image/website-home-page3.jpg');" 
            class="style3">
          <table>
          <tr>
          <td class="style1">
          &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="Button1" 
                  runat="server" Height="59px" 
              style="margin-right: 0px; margin-top: 0px" Text="Button" Width="246px" 
                  ImageUrl="~/Copy of image/website-home-page11.jpg" 
                  onclick="Button1_Click" />
          </td>
          </tr>
          <tr>
          <td>
          &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="Button2" runat="server" Height="59px" 
              style="margin-right: 0px; margin-top: 0px" Text="Button" Width="246px" 
                  
                  ImageUrl="~/Copy of image/website-home-page12.jpg" 
                  onclick="Button2_Click" />
          </td>
          </tr>
          <tr>
          <td>
         &nbsp;&nbsp; 
              <asp:ImageButton ID="Button3" runat="server" Height="59px" 
              style="margin-right: 0px; margin-top: 0px" Text="Button" Width="246px" 
                  ImageUrl="~/Copy of image/website-home-page13.jpg" 
                  onclick="Button3_Click" />
          </td>
          </tr>
          <tr>
          <td>
        &nbsp;&nbsp; 
              <asp:ImageButton ID="Button4" runat="server" Height="59px" 
              style="margin-right: 0px; margin-top: 0px" Text="Button" Width="246px" 
                  ImageUrl="~/Copy of image/website-home-page14.jpg" 
                  onclick="Button4_Click" />
          </td>
          </tr>
          </table> 
         
        </td> 
      <td colspan="2" class="style3">
      <marquee style="background-image: url('Copy%20of%20image/in4.jpg'); height: 286px; margin-right: 0px; width: 801px;" 
              direction="left" behavior="scroll" scroll_amount="10">
      <img src="Copy of image/mar1.jpg" alt="" />
      <img src="Copy of image/mar2.jpeg" alt="" />
      <img src="Copy of image/mar3.jpeg" alt="" />
      <img src="Copy of image/mar4.jpeg" alt="" />
      <img src="Copy of image/mar5.jpg" alt="" />
      </marquee>        
      </td> 
      <td rowspan="2" style="background-image: url('Copy of image/meMxKkM.jpg')">
          <asp:ImageButton ID="ImageButton1" runat="server" Height="43px" Width="269px" 
              ImageUrl="~/Copy of image/LOGIN41.JPG" />
          <br />
          &nbsp;&nbsp;<font color="black"> Name 
          <br />
 </font>
          &nbsp; &nbsp; <asp:TextBox ID="TextBox3" runat="server" 
              Width="243px" Height="37px"></asp:TextBox>
          <br />
  &nbsp;&nbsp;<font color="black"> Password
          <br />
&nbsp;&nbsp;
          <asp:TextBox ID="TextBox2" runat="server" 
              Width="243px" Height="37px" TextMode="Password"></asp:TextBox>
          <br />
          <br />
&nbsp;&nbsp;
          <asp:ImageButton ID="ImageButton2" runat="server" Width="243px" 
              ImageUrl="~/Copy of image/OK.png" onclick="ImageButton2_Click" 
              Height="37px"  />
          <br />
          <br />
  &nbsp;&nbsp;        
          <asp:ImageButton ID="ImageButton3" runat="server" Width="243px" 
              ImageUrl="~/Copy of image/backgroundreg.jpg" Height="37px" 
              onclick="ImageButton3_Click1" />
          <br />
 </font> </td>   
   </tr>

   <tr>
   <td colspan="2" rowspan="2" style="background-image:url('Copy of image/in6.jpg');">
   
   <%
        home obj = new home();
        String[] s11= obj.rem();
        int len = s11.Length;
        
     %>
    <marquee height ="253.2px" width="270px" direction="up" behavior="scroll" scroll_amount="10" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 6, 0);">
   
   <% for (int i = 1; i < len; i++)  %>
   <%{ %>
      <a href="not_display.aspx?name=<%=s11[i] %>"> <font color="#660033" size="4"><h1> <%= s11[i] %></h1></font> </a><% ; %>
     
   <%} %></marquee>
   
   </td>
   <td colspan="2" rowspan="2" style="background-image: url('Copy of image/nNYGC2s.jpg');">
       &nbsp;<font size="4">The constraints include avoiding clashes of time-slots and rooms, assigning appropriate no. of slots and contact hours to the courses etc.<br />
&nbsp;<br />Although most of the college administrative work has been computerized, the lecture timetable scheduling is still mostly done manually due to its technical difficulties. 
              <br />
              <br />The manual scheduling of lecture-timetable requires considerable time and efforts.     
               <br /> Timetables are very important for the university administration. 
             <br />
             <br />  It gives to students and teachers the right time and the right place to be, the availability of the rooms, the time 
                done by the teachers for the pay, the availability of the teachers and the students.</font>
       <br />
       </td>
   </tr>

   <tr style="height: 190px;">
   <td style="background-image: url('Copy of image/meMxKkM.jpg');" class="style5">
   <font size="5"><b>
   Vaibhav Vyas(mentor)<br />
   Shikha Jain<br />
   Sakshi Maheshwari<br />
   Akanksha Agrawal<br />
   Nishu Agrawal</b></font></td>
   </tr>
    </table>
   
    </div>
    </form>
</body>
</html>
