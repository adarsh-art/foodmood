<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewproduct.aspx.cs" Inherits="WebApplication1.Admin.Viewproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 279px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>MENU</h2>
        <div style="height: 603px">
            
            &nbsp;&nbsp;
            
            <asp:GridView ID="Menuadmin" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="63px" Width="718px" CssClass="auto-style1" Font-Names="Script MT Bold" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <FooterStyle BackColor="#CCCC99" BorderStyle="None" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            
        </div>
    </form>
</body>
</html>
