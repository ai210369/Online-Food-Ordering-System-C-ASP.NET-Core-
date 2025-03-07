<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Member_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 
    <style type="text/css">
        .style3
        {
        }
        .style4
        {
        }
        .style5
        {
           width: 200px;
        }
       .style7
        {
           width: 175px;
        }
        .style8
        {
           width: 348px;
        }
        .style9
        {
           width: 331px;
        }
        .style10
        {
           width: 221px;
        }
        
        .auto-style2 {
            width: 1079px;
        }
        .auto-style4 {
            width: 183px;
        }
        .auto-style5 {
            width: 414px;
        }
        .auto-style1 {
            margin: 20px auto;
            border-collapse: collapse;
            width: 100%;
            max-width: 500px;
        }

        .style9 {
            width: 100%;
            text-align: left;
        }

        .lbl {
            font-weight: bold;
            padding-right: 10px;
        }

        .txt {
            padding: 8px;
            width: 100%;
            border: 1px solid #ccc;
            border-radius: 4px;
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

        .style10 {
            width: 100%;
            text-align: center;
            padding: 20px;
            background-color: #4edede;
            color: #fff;
            border-radius: 20px;
        }

        .style10 td {
            padding: 10px;
        }

        
        .auto-style7 {
            width: 7px;
        }
        .auto-style11 {
            width: 740px;
        }
        .auto-style12 {
            width: 78%;
            text-align: left;
        }
        .auto-style13 {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .auto-style14 {
            font-weight: bold;
            padding-right: 10px;
            width: 7px;
        }
        .auto-style15 {
            font-weight: bold;
            padding-right: 10px;
            width: 255px;
        }
        .auto-style16 {
            width: 255px;
        }

        .auto-style17 {
            text-align: left;
            color: mediumblue;
            font-size: 20px;
            height: 35px;
            width: 183px;
        }
        .auto-style18 {
            text-align: left;
            color: black;
            font-size: 20px;
            height: 35px;
            width: 18px;
        }
        .auto-style19 {
            width: 208px;
        }

        .auto-style20 {
            width: 901px;
        }

        .auto-style21 {
            width: 18px;
        }
        
        .auto-style22 {
            font-size: larger;
        }
        .error-message{
            color: red;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style20">
        <tr>
            <td class="tblhead" colspan="2"  style="color: black; background-color: #8bbaf7; font-weight: bold; font-size: medium">
                            PAYMENT CHECKOUT</td>
        </tr>
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="auto-style2">
                            &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <table align="center" class="auto-style5">
                    <tr>
                        <td class="auto-style17">
                            <b>Total Price </b>
                        </td>
                        <td class="auto-style18">
                            <b>:</b></td>
                        <td align="left" class="auto-style19">
                            <a><span class="auto-style22">RM</span></a>
                            <asp:Label ID="lblamt" runat="server" ForeColor="black" Font-Size="Larger"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <b>Payment Type </b>
                        </td>
                        <td class="auto-style18">
                            <strong>:</strong></td>
                        <td align="left" class="auto-style19"><br />
                            <asp:RadioButton ID="rdoonine" runat="server" AutoPostBack="True" 
                                ForeColor="black" GroupName="a" oncheckedchanged="rdoonine_CheckedChanged" 
                                Text="Debit/Credit Card" /><br />
                            <asp:RadioButton ID="rdooffline" runat="server" AutoPostBack="True" 
                                ForeColor="black" GroupName="a" oncheckedchanged="rdooffline_CheckedChanged" 
                                Text="COD" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style21">
                            <strong></strong></td>
                        <td class="auto-style19">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="auto-style2">
                            <table align="center" class="auto-style1">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:MultiView ID="MultiView1" runat="server">
                                            <asp:View ID="View1" runat="server">
                                                <table align="center" class="auto-style12">
                                                    <tr>
                                                        <td class="auto-style15">
                                                            Bank Name
                                                        </td>
                                                        <td class="auto-style14">:</td>
                                                        <td align="left" class="auto-style11">
                                                            <asp:DropDownList ID="drpbankname" runat="server" CssClass="txt">
                                                                <asp:ListItem>SELECT BANK</asp:ListItem>
                                                                <asp:ListItem>Maybank</asp:ListItem>
                                                                <asp:ListItem>Public Bank</asp:ListItem>
                                                                <asp:ListItem>RHB Bank</asp:ListItem>
                                                                <asp:ListItem>OCBC Bank</asp:ListItem>
                                                                <asp:ListItem>CIMB Bank</asp:ListItem>
                                                                <asp:ListItem>Hong Leong Bank</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">
                                                            Card No
                                                        </td>
                                                        <td class="auto-style14">:</td>
                                                        <td align="left" class="auto-style11">
                                                            <asp:TextBox ID="txtcard" runat="server" CssClass="txt" MaxLength="16"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvCard" runat="server" ControlToValidate="txtcard"
                                                                    ErrorMessage="Card No is required" CssClass="error-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="revCard" runat="server" ControlToValidate="txtcard"
                                                                    ErrorMessage="Card No must be 16 digits" CssClass="error-message" Display="Dynamic"
                                                                    ValidationExpression="^\d{16}$"></asp:RegularExpressionValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style15">
                                                            CCV
                                                        </td>
                                                        <td class="auto-style14">:</td>
                                                        <td align="left" class="auto-style11">
                                                            <asp:TextBox ID="txtcvv" runat="server" CssClass="auto-style13" MaxLength="3" Width="79px"></asp:TextBox>                                                           
                                                            <br />
                                                            <asp:RequiredFieldValidator ID="rfvCcv" runat="server" ControlToValidate="txtcvv"
                                                            ErrorMessage="CCV is required" CssClass="error-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="revCcv" runat="server" ControlToValidate="txtcvv"
                                                             ErrorMessage="CCV must be 3 digits" CssClass="error-message" Display="Dynamic"
                                                             ValidationExpression="^\d{3}$"></asp:RegularExpressionValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style16">
                                                            &nbsp;</td>
                                                        <td class="auto-style7">&nbsp;</td>
                                                        <td align="left" class="auto-style11">
                                                            <asp:Button ID="btnpayonline" runat="server" CssClass="btn" 
                                                                onclick="btnpayonline_Click" Text="Pay Now" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:View>
                                            <asp:View ID="View2" runat="server">
                                                <table class="style10">
                                                    <tr>
                                                        <td style="color: black; font-weight: 700;">
                                                            CASH ON DELIVERY</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="color: black">
                                                            Total Amount : RM
                                                            <asp:Label ID="lblamtt" runat="server"></asp:Label>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="btnpayoffline" runat="server" CssClass="btn" 
                                                                onclick="btnpayoffline_Click" Text="Pay" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:View>
                                        </asp:MultiView>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
            </td>
        </tr>
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

