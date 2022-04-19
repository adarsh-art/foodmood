<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site1.Master" AutoEventWireup="true" CodeBehind="custaccount.aspx.cs" Inherits="WebApplication1.Customer.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Custcss/custhome.css" rel="stylesheet" />

    <div id="card">
		<h1>Welcome <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>		
		<div>	
			<asp:GridView ID="GridView1" class="stat" gridlines="Vertical" runat="server"></asp:GridView>
		</div>		
		<div id="update">		
		
			<asp:Button ID="Button1" CssClass="up" runat="server" Text="ChangePassword" OnClick="Button1_Click" />	
		</div>
	</div>
  </asp:Content>