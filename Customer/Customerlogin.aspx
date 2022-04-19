<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customerlogin.aspx.cs" Inherits="WebApplication1.Customerlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="Custcss/custlogin.css" rel="stylesheet" />
    <style type="text/css">
        #form2 {
            height: 263px;
        }
    </style>
</head>
<body>
  <div  class="custlogin">         
    <h2>Customer login</h2>         
    <form id="form2" runat="server">    
        <asp:Label Text="Username" CssClass="lbusname" runat="server"></asp:Label>
        <asp:TextBox runat="server" CssClass="txtusname" placeholder="Enter The Username" ID="txt1"/>
        <asp:Label Text="Password" CssClass="lbpass" runat="server"></asp:Label>
        <asp:TextBox runat="server" CssClass="txtpass" placeholder="*******" ID="txt2" TextMode="Password" />
        <asp:Button Text="Log In" CssClass="btn" runat="server" ID="LogIn" OnClick="Unnamed5_Click"/> 
         <h3>For new Customer</h3>
        <asp:Button Text="Sign Up" CssClass="btn" runat="server" OnClick="Unnamed3_Click"/>   
        
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        
    </form>
  </div>
</body>
</html>
