<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="Member_MyCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
         width: 151px;
        }
        .style4
        {
        }
        .btn {
            display: inline-block;
            padding: 10px 10px;
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            border: none;
            border-radius: 4px;
            background-color: #178059;
            color: #fff;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #40c292;
        }

        .btn:focus {
            outline: none;
        }

        .btn:active {
            background-color: #FF4400;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="tbl">
        <tr>
            <td class="tblhead" colspan="2"  style="color: black; background-color: #8bbaf7; font-weight: bold; font-size: medium">
                            SHOPPING CART LIST -
                            <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                            &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                    ForeColor="black" GridLines="None" AutoGenerateColumns="False" Width="902px" 
                                DataKeyNames="oid" onrowdeleting="GridView1_RowDeleting" 
                                onrowupdating="GridView1_RowUpdating">
                                <AlternatingRowStyle BackColor="#ffd6df" />
                            <Columns>
                            <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                            <asp:Image runat="server" ID="imff" ImageUrl='<%#Eval("image") %>' Height="50px" Width="45px" />
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Name" DataField="pname" />
                            <asp:BoundField HeaderText="Price (RM)" DataField="price" />
                            <asp:TemplateField HeaderText="Amount">
                            <ItemTemplate>
                            <asp:TextBox runat="server" ID="txtq" Text='<%#Eval("qnt") %>' Height="20px" Width="30px"></asp:TextBox>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Total Price (RM)" DataField="totalprice" />
                            <asp:TemplateField HeaderText="Updated Total Price (RM)">
                            <ItemTemplate>
                            <asp:LinkButton runat="server" Text="Update" ID="lnkupd" CommandName="update" ForeColor="Blue" CommandArgument='<%#Eval("oid") %>'></asp:LinkButton>

                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                            <asp:LinkButton runat="server" Text="Delete" ID="lnkrem" CommandName="Delete" ForeColor="Red" CommandArgument='<%#Eval("oid") %>'></asp:LinkButton>

                            </ItemTemplate>
                            </asp:TemplateField>
                            </Columns>
                                <FooterStyle BackColor="#e0345a" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#e0345a" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#faa2b5" ForeColor="black" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style4">
                            &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                            <asp:Button ID="Button1" runat="server" CssClass="btn" PostBackUrl="~/Home.aspx" 
                                Text="Continue Shopping" onclick="Button1_Click" />
&nbsp;<asp:Button ID="btnchckout" runat="server" CssClass="btn" Text="Checkout" onclick="btnchckout_Click" />
            </td>
            <td>
                            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

