<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Neworder.aspx.cs" Inherits="WebApplication1.Admin.Newproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 149px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <h2>ALL ORDERS</h2>
        <div style="height: 603px">
            
            &nbsp;&nbsp;
            
            <asp:GridView ID="orderlist" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="63px" Width="718px" CssClass="auto-style1" Font-Names="Script MT Bold" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False">
                
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
           
            </asp:GridView>
            
        </div>
    </form>
</body>
</html>
