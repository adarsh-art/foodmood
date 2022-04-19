<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="WebApplication1.Customer.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><link href="Custcss/Signin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {}
        .auto-style2 {
            background-color: cornflowerblue;
            position: relative;
            width: 350px;
            height: 550px;
            border-radius: 20px;
            padding: 40px;
            box-sizing: border-box;
            background: #ecf0f3;
            box-shadow: 14px 14px 20px #cbced1, -14px -14px 20px white;
            left: 458px;
            top: 40px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">      
        <div class="auto-style2">         
          <div class="title">CUSTOMER REGISTRATION</div>
           <div class="inputs">            
               <asp:Label ID="Label1" Class="lbl" runat="server" Text="FIRSTNNAME"></asp:Label>
                <asp:TextBox ID="TextBox1" Class="inputs" runat="server" placeholder= "Firstname" ></asp:TextBox>               
                <asp:Label ID="Label2" runat="server" Class="lbl" Text="LASTNAME"></asp:Label>   
                <asp:TextBox ID="TextBox2" Class="inputs" runat="server" placeholder="Lastname"></asp:TextBox>                
                <asp:Label ID="Label3" runat="server" Class="lbl" Text="USERNAME"></asp:Label>   
                <asp:TextBox ID="TextBox3" Class="inputs" runat="server" placeholder="Username"></asp:TextBox>    
                <asp:Label ID="Label4" runat="server" Class="lbl" Text="PASSWORD"></asp:Label>   
                <asp:TextBox ID="TextBox4" Class="inputs" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox> 
                <asp:Label ID="Label5" runat="server"  Class="lbl" Text="EMAIL"></asp:Label>   
                <asp:TextBox ID="TextBox5" Class="inputs" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" Class="lbl" Text="ADDRESS"></asp:Label>   
                <asp:TextBox runat="server" ID="TextBox6" Class="inputs" TextMode="MultiLine" CssClass="auto-style1"  />    
                <br />
                <asp:Label ID="Label7" runat="server"  Class="lbl" Text="PHONE NO"></asp:Label>   
                <asp:TextBox ID="TextBox7" Class="inputs"  runat="server" placeholder="Phoneno" ></asp:TextBox> 
               <br />
               <asp:Button ID="Button1" Class="btn" runat="server" Text="Button" OnClick="Button1_Click" /> 
               <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
          </div>
         
        </div>
    </form>
</body>
</html>
