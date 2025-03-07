<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="Member_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 1048px;
        }
        .style3
        {
            width:8px;
        }
        .style4
        {
            width: 80px;
        }
        .style5
        {
            width: 530px;
            border-radius: 10px;
            text-align: center;
            
        }
        .style6
        {
            height: 31px;
        }
        .style7
        {
            height: 30px;
            width: 285px;
        }
        .style8
        {
            width: 110px;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
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
     .auto-style1 {
         width: 322px;
     }
        .auto-style4 {
            width: 289px;
        }
        .auto-style6 {
            width: 2791px;
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
                <table align="center" class="style2">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:Image ID="Image1" runat="server" Height="368px" Width="408px" />
                        </td>
                        <td class="auto-style1">
                            <table align="center" class="style5" style="border: thin solid black">
                                <tr>
                                    <td bgcolor="#8bbaf7" class="style6" style="color: black; font-weight: bolder;" colspan="3">
                                        DETAILS</td>
                                </tr>
                                <tr>
                                    <td style="color: black" class="auto-style1">
                                        &nbsp;</td>
                                    <td style="color: black" class="auto-style6">
                                        &nbsp;</td>
                                    <td style="color: black" class="auto-style4">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="color: black; " class="auto-style1">
                                        <b>Category:</b>
                                        </td>
                                    <td style="color: black; text-align: left" class="auto-style6">
                                        <asp:Label ID="lblcate" runat="server"></asp:Label>
                                    </td>
                                    <td style="color: black; text-align: left" class="auto-style4">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="color: black" class="auto-style1">
                                        &nbsp;</td>
                                    <td style="color: black" class="auto-style6">
                                        &nbsp;</td>
                                    <td style="color: black" class="auto-style4">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="color: black; " class="auto-style1">
                                        <b>Name:</b>
                                        </td>
                                    <td style="color: black;text-align: left" class="auto-style6">
                                        <asp:Label ID="lblname" runat="server"></asp:Label>
                                    </td>
                                    <td style="color: black;text-align: left" class="auto-style4">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="color: black" class="auto-style1">
                                        &nbsp;</td>
                                    <td style="color: black" class="auto-style6">
                                        &nbsp;</td>
                                    <td style="color: black" class="auto-style4">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="color: black; margin-left: 0px" class="auto-style1">
                                        <b>Price:</b>&nbsp;
                                        </td>
                                    <td style="color: black; text-align: left" class="auto-style6">
                                        RM
                                        <asp:Label ID="lblprice" runat="server"></asp:Label>
                                    </td>
                                    <td style="color: black; text-align: left" class="auto-style4">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="color: black" class="auto-style1">
                                        &nbsp;</td>
                                    <td style="color: black" class="auto-style6">
                                        &nbsp;</td>
                                    <td style="color: black" class="auto-style4">
                                        &nbsp;</td>
                                </tr>
                                
                                <tr>
                                    <td style="color: black; " class="auto-style1">
&nbsp;<b>Description:</b>
                                        </td>
                                    <td style="color: black; text-align:justify;" class="auto-style6">
                                        <asp:Label ID="lbldetail" runat="server"></asp:Label>
                                    &nbsp;
                                    </td>

                                    <td style="color: black; text-align:justify;" class="auto-style4">
                                        &nbsp;</td>

                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <br /><br />
                                                    <asp:Button ID="Button1" runat="server" CssClass="btn" Font-Bold="True" 
                                                        Font-Size="12pt" Height="40px" Width="150px" Text="ADD TO CART" 
                                                        onclick="Button1_Click" />
                                                <br />
                                                <br />
                                        <br />
                                    </td>
                                </tr>
                                </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

