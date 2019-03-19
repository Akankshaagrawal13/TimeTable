<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report2.aspx.cs" Inherits="Report2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 62px;
        }
        </style>
    <script type="text/javascript">
        function printing() {
            window.print();
           
        }
        
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
      
    <div style="height: 75px">
    <table>
    <tr>
    <td>
    <asp:Label ID="Label1" runat="server" Text="select teacher name"></asp:Label>
    </td>
    <td>
    
    <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 98px">
        </asp:DropDownList>
    </td>
    <td>
     <asp:Button ID="Button1" runat="server" Text="Display" 
            Height="27px" Width="171px" style="margin-left: 106px" 
            onclick="Button1_Click1" />
       
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="printButton" runat="server" Text="Print" 
            OnClientClick="javascript:window.print();" onclick="printButton_Click" 
            Width="101px" />
       
        <asp:Button ID="Button2" runat="server" Text="LOGOUT" Width="102px" 
            onclick="Button2_Click" />
       
    </td>
   
   
        
   
    </tr>
    
    
    
    </table>
    
        

       

       
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label 
            ID="Label3" runat="server" Height="22px" 
            Text="         Apaji Institute of Mathematics &amp; Applied Computer Technology" 
            Width="712px" style="margin-left: 0px; margin-bottom: 0px"></asp:Label>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    <p style="height: 13px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Height="25px" Width="151px"></asp:Label>
        <br />
    </p>
    <table border="2" width="100%">
    <tr>
    <td>
     <asp:Label ID="Label4" runat="server" Height="30px" Width="87px" Font-Bold="True">DAYS</asp:Label>
    </td>
    <td>
     <asp:Label ID="Label5" runat="server" Height="30px" Width="89px" Font-Bold="True">09:00-10:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label6" runat="server" Height="30px" Width="89px" Font-Bold="True">10:00-11:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label7" runat="server" Height="30px" Width="82px" Font-Bold="True">11:00-12:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label8" runat="server" Height="30px" Width="80px" Font-Bold="True">12:00-01:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label9" runat="server" Height="30px" Width="79px" Font-Bold="True">01:00-02:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label10" runat="server" Height="30px" Width="84px" Font-Bold="True">02:00-03:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label11" runat="server" Height="30px" Width="79px" Font-Bold="True">03:00-04:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label12" runat="server" Height="30px" Width="92px" Font-Bold="True">04:00-05:00</asp:Label>
    </td>
     <td>
     <asp:Label ID="Label13" runat="server" Height="30px" Width="86px" Font-Bold="True">05:00-06:00</asp:Label>
    </td>
    </tr>
    <tr>
    <td>
     <asp:Label ID="Label69" runat="server" Height="72px" Width="87px" Font-Bold="True">WED</asp:Label>
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
     <asp:Label ID="Label70" runat="server" Height="72px" Width="87px" Font-Bold="True">THU</asp:Label>
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
     <asp:Label ID="Label71" runat="server" Height="72px" Width="87px" Font-Bold="True">FRI</asp:Label>
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
     <asp:Label ID="Label72" runat="server" Height="72px" Width="87px" Font-Bold="True">SAT</asp:Label>
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
     <asp:Label ID="Label73" runat="server" Height="72px" Width="87px" Font-Bold="True">SUN</asp:Label>
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
     <asp:Label ID="Label74" runat="server" Height="72px" Width="87px" Font-Bold="True">MON</asp:Label>
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
    
    <p>
        &nbsp;</p>
    
    
    </form>
</body>
</html>
