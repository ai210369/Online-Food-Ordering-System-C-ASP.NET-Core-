<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="Thanks.aspx.cs" Inherits="Member_Thanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 154px;
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
    <table class="style1">
        <tr>
            <td style="color: #3a7824; font-weight: bold; font-size: xx-large">
                <br />
                Thank you for your purchase! <br />Welcome to visit us again!<br />^_^</td><br />
        </tr>
        <tr>
            <td>
                <br /><br /><br />
                <asp:Button ID="Button1" runat="server" CssClass="btn" 
                    PostBackUrl="~/Home.aspx" Text="Continue Shopping" />
            </td>
        </tr>
    </table>
</asp:Content>

