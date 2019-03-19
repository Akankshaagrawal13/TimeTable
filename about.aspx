<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            margin-left: 50px;
        }
        .style1
        {
            width: 1080px;
        }
        .MsoNormal
        {
            width: 600px;
            margin-left: 30px;
        }
    </style>
</head>
<body 
    style="height: 1954px" bgcolor="#ffffff">
    <form id="form1" runat="server" 
    style="color: #FFFFFF; height: 1945px; margin-right: 268px;">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">GO TO HOME PAGE</asp:HyperLink>
   &nbsp;
        <asp:Button ID="Button1" runat="server" Text="LOGOUT" Width="114px" 
            onclick="Button1_Click" />
   <asp:Panel ID="Panel1" runat="server" 
           
        BackImageUrl="Copy of image/background-pictures-website-loading-sitezimages.jpg" BorderColor="#000066" 
           BorderStyle="Inset" BorderWidth="3px" 
        style="margin-left: 0px; margin-right: 10px; margin-top: 76px;" 
        Height="887px" Width="1200px">
         
     
        <h1 style="font-weight: bold; font-size: larger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ABOUT US</h1>
        <table style="margin-left: 10px;">
        <tr>
        <td class="style1">
        <h2>WHAT TIMETABLE MANAGEMENT SYSTEM IS</h2>

        <p class="MsoNormal">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“TIMETABLE MANAGEMENT SYSTEM” is the software which manages   timetable on the basis of available information.
        </p>
        <p class="MsoNormal">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;     The goal of “TIMETABLE MANAGEMENT SYSTEM”       
        Involves the Following:-<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:BulletedList ID="BulletedList3" runat="server">
                <asp:ListItem Value="0">System will help the administrator to manage the “TIMETABLE” from given set of programmers, courses, and subject, room and lab preferences.</asp:ListItem>
                <asp:ListItem Value="1">Timetable will be generated without any of the clashes among teachers, day, time and room.</asp:ListItem>
                <asp:ListItem Value="2">Administrator need not to spend hours together in managing and optimizing manpower and resources.</asp:ListItem>
                <asp:ListItem Value="3">Administrator manages only teacher wise timetable then class wise timetable and room wise timetable generated automatically.</asp:ListItem>
                <asp:ListItem Value="4">Various reports are provided by the system to solve the queries of administrator.</asp:ListItem>
            </asp:BulletedList>
            <p>
                “TIMETABLE MANAGEMENT SYSTEM” will be useful and applicable by the administrator 
                to manage the timetable. Timetable can be in any form:
            </p>
            <asp:BulletedList ID="BulletedList4" runat="server">
                <asp:ListItem Value="0">TEACHER WISE</asp:ListItem>
                <asp:ListItem Value="1">CLASS WISE</asp:ListItem>
                <asp:ListItem Value="2">ROOM WISE</asp:ListItem>
            </asp:BulletedList>
            <p>
                By this software time management of teacher’s and for particular subject will 
                get easy and administrator can manages timetable in few minutes.
            </p>
             <h2>
                Why It&#39;s Important</h2>
            <p class="MsoNormal">
               The constraints include avoiding clashes of time-slots and rooms, assigning appropriate no. of slots and contact hours to the courses etc.
              <br />Although most of the college administrative work has been computerized, the lecture timetable scheduling is still mostly done manually due to its technical difficulties. 
              <br />The manual scheduling of lecture-timetable requires considerable time and efforts.     
               <br /> Timetables are very important for the university administration. 
             <br />  It gives to students and teachers the right time and the right place to be, the availability of the rooms, the time 
                done by the teachers for the pay, the availability of the teachers and the students.
            </p>
            <p class="MsoNormal">
                 In this different permission has been alloted to different user and according to their permission that has been alloted they will get the benefit of it....</p>
          </td> 
        </tr>
          
          
            <caption>
                &nbsp;</caption>
        
        </table>
         </asp:Panel>
    </form>
</body>
</html>
