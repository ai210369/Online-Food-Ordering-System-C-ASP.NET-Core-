<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="Password.aspx.cs" Inherits="Member_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 434px;
        }
        .auto-style1 {
            width: 804px;
        }
        .auto-style2 {
            width: 902px;
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
        .auto-style3 {
            color: #CC3300;
        }
        .auto-style4 {
            width: 878px;
        }
        .auto-style5 {
            width: 240px;
        }
        .auto-style7 {
            width: 19px;
        }
        .auto-style8 {
            width: 19px;
            text-align: left;
        }
        .auto-style9 {
            width: 240px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style2">
        <tr>
            <td style="color: black; background-color: #8bbaf7; font-weight: bold; font-size: medium" 
                class="auto-style4">
                RESET PASSWORD</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <table align="center" class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td class="auto-style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <strong>Enter New Password</strong></td>
                        <td class="auto-style8">
                            <strong>:</strong></td>
                        <td>
                            <asp:TextBox ID="txtnewpass" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtnewpass" ErrorMessage="Please enter your new password!" ForeColor="Red" 
                                SetFocusOnError="True" CssClass="auto-style3"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <strong>Confirm Password</strong></td>
                        <td class="auto-style8">
                            <strong>:</strong></td>
                        <td>
                            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtcpass" ControlToValidate="txtnewpass" ErrorMessage="Please enter your matching new password again!" 
                                ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td class="auto-style7">
                            <strong></strong></td>
                        <td><br />
                            <asp:Button ID="Button1" runat="server" CssClass="btn" onclick="Button1_Click" 
                                Text="Reset Password" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td class="auto-style7">
                            &nbsp;</td>
                        <td>
                            <br /><asp:Label ID="lbl" runat="server" ForeColor="Green"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

