<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="WebApplication1.Admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/adminlog.css" rel="stylesheet" />
</head>
<body>
   <div class= "adminlog">
       <h2> Admin login</h2>
       <form id="form2" runat="server">    
            <asp:Label Text="Username" CssClass="lbusname" runat="server"></asp:Label>
            <asp:TextBox runat="server" CssClass="txtusname" placeholder="Enter The Username" ID="txt1"/>
            <asp:Label Text="Password" CssClass="lbpass" runat="server"></asp:Label>
            <asp:TextBox runat="server" CssClass="txtpass" placeholder="*******" ID="txt2" TextMode="Password" />
            <asp:Button Text="Log In" CssClass="btn" runat="server" ID="LogIn" OnClick="LogIn_Click"/>         
            <asp:Label ID="Label1" runat="server"></asp:Label>       
        </form>
   </div>
</body>
</html>
