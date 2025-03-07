<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Member_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 388px;
            height: 255px;
        }
        .style4
        {
            width: 280px;
        }
        .style6
        {
            width: 5px;
        }
        .style10
        {
            width: 70px;
        }
        .style14
        {
            width: 291px;
            height: 55px;
        }
        .style15
        {
            width: 75px;
        }
        .style16
        {
            width: 180px;
        }
        .btn {
            display: inline-block;
            padding: 0px 0px;
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
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
                    RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <table class="style2">
                            <tr>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style4">
                                    <asp:Image ID="Image1" runat="server" Height="231px" 
                                        ImageUrl='<%#Eval("Image") %>' Width="300px" />
                                </td>
                                <td class="style6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="color: black" class="style10">
                                    &nbsp;</td>
                                <td class="style4" style="color: black">
                                    <table class="style14">
                                        <tr>
                                            <td class="style16">
                                                <br /><b>Name :</b>
                                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("pname") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style16">
                                                <b>Price :  </b> RM<asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style16"><br />
                                                <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("pid") %>' CssClass="btn" Height="30px" Text="READ MORE" Width="100px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="style6" style="color: black">
                                    &nbsp;</td>
                            </tr>
                            <caption>
                                <br />
                                <br />
                            </caption>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

