<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main page.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Main.css" rel="stylesheet" />
   
</head>
<body style="height: 610px">
    <form id="form2" runat="server">
        <div class="wrapper">
  <div class="Container">
    <div class="box">
    <div id="explanation">
      <div id="heading">
         <h1>WELCOME TO FOODMOOD</h1>
      </div>
         <p>To enter admin login page click on admin </p>
        <p>To enter customer login page click on customer </p>
    </div>
    <div id="flex">
      <div id="bt1">
          <a href="Admin/Adminlogin.aspx">Admin</a>
      </div>
    <div id="bt2">
        <a href="Customer/Customerlogin.aspx">Customer</a>
    </div>
        
  </div>
  </div>
 </div>
        </div>

    </form>
</body>
</html>
