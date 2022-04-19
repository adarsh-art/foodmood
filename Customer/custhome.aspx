<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site1.Master" AutoEventWireup="true" CodeBehind="custhome.aspx.cs" Inherits="WebApplication1.Customer.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
        margin-right: 29px;
            margin-left: 17px;
        }
    .auto-style3 {
        margin-left: 12px;
        margin-right: 51px;
    }
    .auto-style6 {
        margin-left: 38px;
        margin-right: 48px;
            margin-bottom: 17px;
        }
    .auto-style8 {
        margin-left: 55px;
    }
        .auto-style5 {
            margin-left: 11px;
            margin-bottom: 31px;
        }
        .auto-style7 {
            margin-right: 0px;
            margin-bottom: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Custcss/custhome.css" rel="stylesheet" />
        <h2>MENU</h2>
        <p>
            <asp:Label ID="Label1"  runat="server" CssClass="auto-style8" Text="PASTA" Width="50px" Font-Bold="True" Font-Italic="True" Font-Names="Segoe Script" ForeColor="#FFFF99"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="NOODLES" Font-Bold="True" Font-Italic="True" Font-Names="Segoe Script" ForeColor="#FFFF99"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="SANDWICH" Font-Bold="True" Font-Italic="True" Font-Names="Segoe Script" ForeColor="#FFFF99"></asp:Label>
        </p>
        <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style2" Height="199px" Width="292px" ImageUrl="~/Image/pasta.jpeg" PostBackUrl="~/Customer/Pasta.aspx" OnClick="ImageButton1_Click" />        
        <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style3" Height="198px" Width="287px" ImageUrl="~/Image/Noodles.jpeg" PostBackUrl="~/Customer/Noodles.aspx" />
        <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style4" Height="197px" Width="303px" ImageUrl="~/Image/sandwichm.jpeg" PostBackUrl="~/Customer/Sandwich.aspx"/>
        <br />
        <br />
        <br />
        <p>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text="SOUP" Width="50px" Font-Bold="True" Font-Italic="True" Font-Names="Segoe Script" ForeColor="#FFFF99"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="FRANKIE" Font-Bold="True" Font-Italic="True" Font-Names="Segoe Script" ForeColor="#FFFF99"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="MOMO" Font-Bold="True" Font-Italic="True" Font-Names="Segoe Script" ForeColor="#FFFF99"></asp:Label>
        </p>
        <br />
        <asp:ImageButton ID="ImageButton4" runat="server" CssClass="auto-style5" Height="171px" Width="294px" ImageUrl="~/Image/soup.jpeg" PostBackUrl="~/Customer/Soup.aspx" />
        <asp:ImageButton ID="ImageButton5" runat="server" CssClass="auto-style6" Height="185px" ImageUrl="~/Image/frankie.jpeg" Width="305px" PostBackUrl="~/Customer/Frankie.aspx" />
        <asp:ImageButton ID="ImageButton6" runat="server" CssClass="auto-style7" Height="182px" ImageUrl="~/Image/momos.jpeg" Width="296px" PostBackUrl="~/Customer/Momo.aspx" />
        <br />
</asp:Content>
