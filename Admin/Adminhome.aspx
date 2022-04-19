<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminhome.aspx.cs" Inherits="WebApplication1.Admin.Adminhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
         
    </style>
</head>
<body>
    <form id="form1" runat="server" align="center">
         <table class="style1">
                    <tr>
                        
                        <td>
                            <asp:Button ID="Button2" runat="server" CssClass="btnn" Text="ADD PRODUCT" 
                                PostBackUrl="~/Admin/Adminhome.aspx" />
                        </td>
                        <td>
                            <asp:Button ID="Button3" runat="server" CssClass="btnn" Text="VIEW PRODUCT" 
                                PostBackUrl="~/Admin/Viewproduct.aspx" />
                        </td>
                        <td>
                            <asp:Button ID="Button4" runat="server" CssClass="btnn" Text="NEW ORDER" 
                                PostBackUrl="~/ADMIN/NewOrder.aspx" />
                        </td>
                       <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btnn" Text="USER PROFILE" 
                                Width="177px" PostBackUrl="~/Admin/Users.aspx" />
                        </td>
                        <td>
                            <asp:Button ID="Button7" runat="server" CssClass="btnn" Text="BILLS" 
                               PostBackUrl="~/Admin/Allbills.aspx" />
                        </td>
                        <td>
                            <asp:Button ID="Button6" runat="server" CssClass="btnn" Text="LOG OUT" OnClick="Button6_Click" 
                                  />
                        </td>
                    </tr>
                </table>
        <table align="center" class="tbl">
            <tr>
                <h2>ADD NEW PRODUCT</h2>
            </tr>
            <tr>
                <td class="lbl">
                 Category :&nbsp;
                 </td>
                <td>
                    <asp:DropDownList ID="drpcate" runat="server" CssClass="txt"  ForeColor="#006600">
                        <asp:ListItem>SELECT FOOD</asp:ListItem>
                        <asp:ListItem>PASTA</asp:ListItem>
                        <asp:ListItem>NOODLES</asp:ListItem>
                        <asp:ListItem>SANDWICH</asp:ListItem>
                        <asp:ListItem>SOUP</asp:ListItem>
                        <asp:ListItem>FRANKIE</asp:ListItem>
                        <asp:ListItem>MOMO</asp:ListItem>
                    </asp:DropDownList>
              </td>
            </tr>
             <tr>
                 <td class="lbl">
                     Name :&nbsp;&nbsp;
                 </td>
                 <td>
                    <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr> 
              <td class="lbl">
                    Price :&nbsp;&nbsp;
               </td>
               <td>
                    <asp:TextBox ID="txtprice" runat="server" CssClass="txt"></asp:TextBox>
               </td>
            </tr>
            <tr>
                <td class="lbl">
                    Detail :&nbsp; 

                </td>
                <td>
                    <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" Height="45px" TextMode="MultiLine" Width="200px"></asp:TextBox>

                </td>
            </tr>
             <tr>
                 <td>
                     <asp:Button ID="Submit" CssClass="btn" runat="server" Text="ADD PRODUCT" OnClick="Button5_Click"/>

                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="lblmsg" CssClass="lab" runat="server" ForeColor="Yellow"></asp:Label>

                 </td>
             </tr>
        </table>

    </form>
</body>
</html>
