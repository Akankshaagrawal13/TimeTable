<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editform.aspx.cs" Inherits="editform" Theme="Theme1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Untitled Page</title>
    <style type="text/css">
        .style3
        {
            width: 167px;
            height: 66px;
        }
        .style9
        {
            width: 248px;
            height: 66px;
        }
        .style10
        {
            width: 171px;
            height: 66px;
        }
        .style12
        {
            width: 171px;
            height: 59px;
        }
        .style13
        {
            width: 248px;
            height: 59px;
        }
        .style15
        {
            width: 167px;
            height: 59px;
        }
        #form1
        {
            height: 605px;
            margin-right: 2px;
            background-color: #FFFF00;
        }
        .style36
        {
            width: 282px;
            height: 59px;
        }
        .style37
        {
            width: 282px;
            height: 66px;
        }
        .style38
        {
            width: 171px;
            height: 3px;
        }
        .style39
        {
            width: 248px;
            height: 3px;
        }
        .style40
        {
            width: 167px;
            height: 3px;
        }
        .style41
        {
            width: 282px;
            height: 3px;
        }
        .style45
        {
            width: 33px;
            height: 39px;
        }
        .style46
        {
            height: 72px;
            width: 529px;
        }
        .style48
        {
            width: 158px;
            height: 39px;
        }
        .style49
        {
            width: 1272px;
        }
        .style50
        {
            width: 391px;
            height: 56px;
        }
        .style51
        {
            width: 550px;
            height: 56px;
        }
        .style54
        {
            width: 583px;
            height: 56px;
        }
        .style55
        {
            width: 744px;
            height: 56px;
        }
        .style56
        {
            width: 686px;
            height: 56px;
        }
        </style>
</head>
<body bgcolor="#000066" 
    
    
    
    style="font-size: large; font-family: 'Times New Roman', Times, serif; font-weight: 700; ">
    <form id="form1" runat="server" 
    
    
    
    
    
    style="background-image: url('Copy%20of%20image/White.jpg'); background-repeat: repeat; height: 845px; margin-left: 76px; background-color: #0000FF; width: 1287px;">
     <table align="center">
    <tr>
    <td class="style49">
    <asp:Image ID="Image1" runat="server" Height="82px" 
            ImageUrl="~/Copy of image/headerimg.gif" Width="1272px" />
    </td>
    </tr>
    </table>
    <asp:Panel ID="Panel4" runat="server" style="margin-top: 0px" Width="1275px" 
        Height="68px">
    
    <table>
    <tr>
    <td class="style50" align="center" 
            style="background-image: url('Copy of image/img03.gif')">
        &nbsp;<asp:HyperLink ID="HyperLink6" runat="server" 
            NavigateUrl="~/user_registration.aspx">User Registration</asp:HyperLink>
     </td>
     <td class="style51" align="center" 
            style="background-image: url('Copy of image/img04.gif')">
         <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/trans5.aspx">Entry Form</asp:HyperLink>
     </td>
     <td class="style56" align="center" 
            style="background-image: url('Copy of image/img05.gif')">
         <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/teacher.aspx">Teacher Entry</asp:HyperLink>
     </td>
     <td class="style55" align="center" 
            style="background-image: url('Copy of image/img06.gif')">
         <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/editform.aspx">Edit Form</asp:HyperLink>
     </td>
     <td class="style54" align="center" 
            style="background-image: url('Copy of image/img07.gif')">
         <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/title.aspx">Title</asp:HyperLink>
     </td>
    </tr>
    </table>
    </asp:Panel>
     <asp:Panel ID="Panel1" runat="server" Height="163px" Width="1278px" 
            style="margin-top: 37px" BorderColor="#000066">
    <table style="border: medium solid #000000; height: 169px; width: 1280px; background-color: #333399; font-size: large; line-height: normal;" 
             border="solid">
            
    <tr>
    <td class="style12">
        <asp:Label ID="Label1" runat="server" Text="Course" Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
    </td>
    <td class="style13">
        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="203px">
        </asp:DropDownList>
    </td>
    <td class="style15">
    <asp:Label ID="Label2" runat="server" Text="Branch" Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
    </td>
    <td class="style36">
        <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="201px">
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td class="style10">
        <asp:Label ID="Label3" runat="server" Text="Sem" Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
    </td>
    <td class="style9">
        <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Width="205px">
        </asp:DropDownList>
    </td>
    <td class="style3">
        <asp:Label ID="Label4" runat="server" Text="Batch" Font-Size="X-Large" 
            ForeColor="White" style="color: #FFFFFF"></asp:Label>
    </td>
    <td class="style37">
        <asp:DropDownList ID="DropDownList4" runat="server" Height="25px" 
            style="margin-top: 8px" Width="203px">
        </asp:DropDownList>
    </td>
    </tr>
    </table>
    </asp:Panel>
  
  <asp:Panel ID="Panel2" runat="server" Height="100px" Width="1278px" 
            style="margin-top: 37px" BorderColor="Blue">
    <table style="border: medium solid #000000; height: 75px; width: 1278px; background-color: #333399; font-size: large; line-height: normal;" 
             border="solid">
            
    <tr>
    <td class="style38">
          <asp:Label ID="Label5" runat="server" Text="Subject" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="White"></asp:Label>
          </td>
    <td class="style39">
      <asp:DropDownList ID="DropDownList5" runat="server" Height="68px" 
                onselectedindexchanged="DropDownList5_SelectedIndexChanged" 
                style="margin-left: 3px" Width="205px">
            </asp:DropDownList>
            </td>
    <td class="style40">
     <asp:Label ID="Label6" runat="server" Text="Teacher" Font-Size="X-Large" 
            ForeColor="White"></asp:Label> 
</td>
    <td class="style41">
           <asp:DropDownList ID="DropDownList6" runat="server" Height="29px" 
                style="margin-left: 0px" Width="205px">
            </asp:DropDownList>
            </td>
    </tr>

    </table>
    </asp:Panel>


   
     
           
         <table align="center" 
         style="width: 752px; height: 193px; margin-left: 259px">
        <tr>
        <td align="left">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="True" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" GridLines="Vertical" style="margin-left: 0px" Width="600px">
             <AlternatingRowStyle BackColor="#DCDCDC" />
             <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
             <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
             <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#0000A9" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </td>
        </tr>
        </table>
        <asp:Panel ID="Panel3" runat="server" Height="70px" Width="1211px" 
            style="margin-top: 56px" BorderColor="Blue">
    <table style="border: medium solid #000000; background-color: #333399; font-size: large; line-height: normal;" 
             border="solid" align="center" class="style46">
             <tr>
    <td class="style45" align="center">
     <asp:Button ID="Button3" runat="server" Text="select" onclick="Button1_Click1" 
                BackColor="#000066" ForeColor="White" Width="218px" 
            Font-Names="Rockwell" Font-Size="X-Large" Height="40px" 
            style="margin-bottom: 0px"/>
    </td>
            <td class="style48" align="center">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="update" 
                    BackColor="#000066" ForeColor="White" Width="218px" 
            Font-Names="Rockwell" Font-Size="X-Large" Height="40px" 
            style="margin-bottom: 0px; margin-left: 24px;" BorderStyle="Groove" />
            </td>
        </tr>
    </table>
    </asp:Panel>
    </form>
</body>
</html>
