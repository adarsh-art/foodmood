<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site1.Master" AutoEventWireup="true" CodeBehind="changepass.aspx.cs" Inherits="WebApplication1.Customer.changepass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Custcss/custhome.css" rel="stylesheet" />
    <div class="passbox">
        <asp:Label ID="lbl1" CssClass="lbl" runat="server" Text="OLD PASSWORD" Font-Italic="True" Font-Names="Segoe Script" ForeColor="#CCFF66"></asp:Label>
        <asp:TextBox ID="txtu1" CssClass="pass" runat="server" ForeColor="#666666" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="lbl2" CssClass="lbl" runat="server" Text="NEW PASSWORD" Font-Italic="True" Font-Names="Segoe Print" ForeColor="#CCFF33"></asp:Label>
        <asp:TextBox ID="txtp1" runat="server" CssClass="pass" ForeColor="#999999" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" CssClass="up" runat="server" Text="Submit" OnClick="Button1_Click" />
        <asp:Label ID="Label1" CssClass="passchange" runat="server"></asp:Label>
    </div>
</asp:Content>
