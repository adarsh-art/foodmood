<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Allbills.aspx.cs" Inherits="WebApplication1.Admin.Allbills" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="CSS/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 164px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>USERS BILLS</h2>
        <div>
            <asp:GridView ID="bills" runat="server" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="Script MT Bold" GridLines="Vertical">                       
               
                <Columns>
                    <asp:BoundField DataField="CUST_ID" HeaderText="cust_id" />
                    <asp:BoundField DataField="GROUP_CONCAT(Dish_name,' ')" HeaderText="DISHES"  ItemStyle-Width="900px" />               
                    <asp:BoundField DataField="total_Price" HeaderText="Price" />           
               </Columns>
                <HeaderStyle BackColor="#0099FF" />
            </asp:GridView>
           
        </div>
    </form>
</body>
</html>
