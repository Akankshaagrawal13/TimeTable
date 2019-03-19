<%@ Page Language="C#" AutoEventWireup="true" CodeFile="report3.aspx.cs" Inherits="report3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 62px;
        }
        .style2
        {
            width: 103px;
        }
        .style3
        {
            width: 216px;
        }
        .style4
        {
            width: 82px;
        }
        .style5
        {
            margin-left: 0px;
        }
    </style>
    <script type="text/javascript">
        function printing()
         {
            window.print();


        }
    </script>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div style="width: 1020px">
    <table>
    <tr>
    <td>
     <asp:Label ID="Label1" runat="server" Text="select course" Font-Bold="True" 
            Font-Names="Rockwell Extra Bold"></asp:Label>
    </td>
    <td class="style3">
       <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" 
            style="margin-left: 28px" Width="132px">
        </asp:DropDownList>
    </td>
    <td class="style2">
      <asp:Label ID="Label75" runat="server" Text="semester" Font-Bold="True" 
            Font-Names="Arial Black"></asp:Label>
   </td>
   <td class="style5">
     <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 24px">
        </asp:DropDownList>
   </td>
   <td class="style4">
    <asp:Label ID="Label76" runat="server" Text="batch" Font-Bold="True" 
            Font-Names="Arial Black"></asp:Label>
   
   </td>
    <td>
     <asp:DropDownList ID="DropDownList3" runat="server">
        </asp:DropDownList>
   </td>
   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    
    <td>
        <asp:Button ID="Button1" runat="server" Text="DISPLAY" 
            onclick="Button1_Click1" />
        </td>
        <td>
        <asp:Button ID="printButton" runat="server" Text="Print" 
            OnClientClick="javascript:window.print();" onclick="printButton_Click" 
                Width="101px" />
            <asp:Button ID="Button2" runat="server" Text="LOGOUT" onclick="Button2_Click" />
        </td>
        </tr>
    
    
    </table>
    
       

       
       
       
      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        
        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Height="22px" 
            Text="         Apaji Institute of Mathematics &amp; Applied Computer Technology" 
            Width="679px" BackColor="#CCFFFF" CssClass="style5" Font-Bold="True"></asp:Label>
    
    </div>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" Height="17px" Width="230px"></asp:Label>
        <br />
    </p>
    <table border="2" width="100%">
    <tr>
    <td>
     <asp:Label ID="Label4" runat="server" Height="30px" Width="50px">DAYS</asp:Label>
    </td>
    <td>
     <asp:Label ID="Label5" runat="server" Height="30px" Width="89px">09:00-10:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label6" runat="server" Height="30px" Width="89px">10:00-11:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label7" runat="server" Height="30px" Width="82px">11:00-12:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label8" runat="server" Height="30px" Width="80px">12:00-01:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label9" runat="server" Height="30px" Width="79px">01:00-02:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label10" runat="server" Height="30px" Width="84px">02:00-03:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label11" runat="server" Height="30px" Width="79px">03:00-04:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label12" runat="server" Height="30px" Width="77px">04:00-05:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label13" runat="server" Height="30px" Width="78px">05:00-06:00</asp:Label>
    </td>
    </tr>
    <tr>
    <td>
     <asp:Label ID="Label69" runat="server" Height="57px" Width="50px">WED</asp:Label>
    </td>
    <td>
     <asp:Label ID="Label15" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label16" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label17" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label18" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label19" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label20" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label21" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label22" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label23" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
    </tr>
    
    <tr>
    <td>
     <asp:Label ID="Label70" runat="server" Height="48px" Width="87px">THU</asp:Label>
    </td>
    <td>
     <asp:Label ID="Label24" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label25" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label26" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label27" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label28" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label29" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label30" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label31" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label32" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
    </tr>
    
    <tr>
    <td>
     <asp:Label ID="Label71" runat="server" Height="72px" Width="87px">FRI</asp:Label>
    </td>
    <td>
     <asp:Label ID="Label33" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label34" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label35" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label36" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label37" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label38" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label39" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label40" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label41" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
    </tr>
    
    <tr>
    <td>
     <asp:Label ID="Label72" runat="server" Height="72px" Width="87px">SAT</asp:Label>
    </td>
    <td>
     <asp:Label ID="Label42" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label43" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label44" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label45" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label46" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label47" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label48" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label49" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label50" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
    </tr>
    
    <tr>
    <td>
     <asp:Label ID="Label73" runat="server" Height="72px" Width="87px">SUN</asp:Label>
    </td>
    <td>
     <asp:Label ID="Label51" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label52" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label53" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label54" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label55" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label56" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label57" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label58" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td>
     <asp:Label ID="Label59" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
    </tr>
    
    <tr>
    <td class="style1">
     <asp:Label ID="Label74" runat="server" Height="72px" Width="87px">MON</asp:Label>
    </td>
    <td class="style1">
     <asp:Label ID="Label60" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td class="style1">
     <asp:Label ID="Label61" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td class="style1">
     <asp:Label ID="Label62" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td class="style1">
     <asp:Label ID="Label63" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td class="style1">
     <asp:Label ID="Label64" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td class="style1">
     <asp:Label ID="Label65" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td class="style1">
     <asp:Label ID="Label66" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td class="style1">
     <asp:Label ID="Label67" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
     <td class="style1">
     <asp:Label ID="Label68" runat="server" Height="72px" Width="87px"></asp:Label>
    </td>
    </tr>
    
    
    
    </table>
    
   
   
    </form>
</body>
</html>
