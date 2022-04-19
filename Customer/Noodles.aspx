<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site1.Master" AutoEventWireup="true" CodeBehind="Noodles.aspx.cs" Inherits="WebApplication1.Customer.menu.Noodles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
        .auto-style1 {}
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <link href="Custcss/custhome.css" rel="stylesheet" />
        
        <div class="card">	
            <h1>NOODLES</h1>	  
             <div>
                 <asp:Label ID="lbl_Text1" runat="server" Text="Label"></asp:Label>
              </div>
             <div>
               <table class="col">
                  
                   <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="DISHNAME" Font-Names="Algerian" ForeColor="Aqua"  CssClass="Label1"></asp:Label>
                            <asp:Label ID="lbl1" runat="server" Text="" CssClass="Label1"></asp:Label>                                                                                                                               
                        </td>
                   </tr>
                   <tr>
                        <td> 
                            <asp:Label ID="Label6" runat="server" Text="PRICE" Font-Names="Algerian" ForeColor="Aqua"  CssClass="Label1"></asp:Label>
                            <asp:Label ID="lbl2" runat="server" Text="" CssClass="Label1"></asp:Label>                          
                        </td>
                   </tr>
                   <tr>
                        <td> 
                            <asp:Label ID="Label7" runat="server" Text="DISCRIPTION" Font-Names="Algerian" ForeColor="Aqua"  CssClass="Label1"></asp:Label>
                            <asp:Label ID="lbl3" runat="server"  CssClass="Label1" Text=""></asp:Label>                                                
                        </td>
                   </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="BACK" OnClick="Button2_Click1" Width="80px" /> 
                             <asp:Button ID="Button3"  runat="server" Text="NEXT" OnClick="Button3_Click" Width="80px" /> 
                        </td>
                     <tr>
                        <td>
                            <asp:Button ID="Button1" CssClass="up" runat="server" Text="ADD TO CART" OnClick="Button1_Click" /> 
                        </td>
                   </tr>
               </table>               

           </div>
         </div>
          
</asp:Content>
