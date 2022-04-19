<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebApplication1.Customer.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Custcss/custhome.css" rel="stylesheet" />
 
        <h2>MY CART<asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    </h2>                   
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
        AutoGenerateSelectButton="True" BackColor="White" BorderColor="#ff8080" BorderStyle="Solid"
        BorderWidth="2px" CellPadding="10" CellSpacing="10" Font-Bold="True" ForeColor="red" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
        <Columns>
            <asp:BoundField DataField="Sr_no" HeaderText="Cart no" />
            <asp:BoundField DataField="Dish_name" HeaderText="Dish name" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Price" />           
        </Columns>
        <SelectedRowStyle BackColor="red" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Comic Sans MS"
        Font-Size="Large" Text="Enter Quantity :"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <strong><span style="font-family: Comic Sans MS">(0 for Delete item from Cart)</span></strong><br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS"
        Font-Size="Large" ForeColor="#FF6666" Text="Add to Cart" OnClick="Button1_Click1" /><br />
    <asp:Button ID="Button2" runat="server" BackColor="White" Font-Bold="True" Font-Names="Comic Sans MS"
        Font-Size="Large" ForeColor="#FF6666" Text="Order" OnClick="Button2_Click1" />
</asp:Content>


