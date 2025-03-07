<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="Member_MyOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 400px;
        }
        .style2
        {
            width: 149px;
        }
        .auto-style1 {
            width: 851px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="tblhead" 
                style="color: black; background-color: #8bbaf7; font-weight: bold; font-size: medium">
                ORDER LIST -
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="#faa2b5" BorderColor="#e0345a" BorderWidth="1px" 
                                CellPadding="2" ForeColor="Black" GridLines="None" DataKeyNames="oid" 
                                 Width="900px" >
                              
                                
                <AlternatingRowStyle BackColor="#ffd6df" />
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="imgg" runat="server" ImageUrl='<%#Eval("Image") %>' Height="40px" Width="40px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="pname" HeaderText="Name" 
                                        SortExpression="pname" >
                    <ItemStyle Width="180px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="Price (RM)" SortExpression="price" />
                    <asp:BoundField DataField="Qnt" HeaderText="Amount" 
                                        SortExpression="cname" />
                    <asp:BoundField DataField="TotalPrice" HeaderText="Total Price (RM)" 
                                        SortExpression="cname" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" 
                                        SortExpression="email" >
                    <ItemStyle Width="250px" />
                    </asp:BoundField>

                </Columns>
                <FooterStyle BackColor="#e0345a"/>
                <HeaderStyle BackColor="#e0345a" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

