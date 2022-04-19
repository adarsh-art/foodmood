<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site1.Master" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="WebApplication1.Customer.bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 331px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="text-align:center">
            <asp:Label ID="Label1" runat="server" Text="Order"></asp:Label>
        </div>
        <div>
            <table>
                <tr>
                    <td>
                        <h3>CUSTOMER ID: </h3>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
               <tr>
                    <td>
                        <h3>DATE: </h3>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
       
        <div>
            <table>
                <tr>
                    <asp:GridView ID="billview" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="15" CssClass="auto-style1" ForeColor="Black" Height="244px" Width="535px" CaptionAlign="Right" CellSpacing="4">
                        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                   
                </tr>
                <tr> <td><asp:Label ID="Label4" runat="server" Text=""></asp:Label></td></tr>
                <tr>
                     <asp:Button ID="Button1" runat="server" Text="Download" OnClick="Button1_Click" />
                </tr>
            </table>
        </div>
       
    </div>
</asp:Content>
