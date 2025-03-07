<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Fpassword.aspx.cs" Inherits="Fpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            color: black;
        }

        #regi {
            background-color: #000000;
            max-width: 600px;
            margin: 0px auto;
            padding: 20px;
            border-radius: 60px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .tbl {
            width: 100%;
            border-collapse: collapse;
        }

        .tblhead {
            background-color: #ffffff;
            text-align: center;
            padding: 10px;
            font-weight: bold;
            font-size: 18px;
            color: black;
        }

        .style1 {
            width: 100%;
            margin-top: 20px;
        }

        .style2 {
            width: 10%;
        }

        .style3 {
            height: 20px;
        }

        .lbl {
            width: 20%;
            font-weight: bold;
            font-size: 14px;
            color: white;
        }

        .txt {
            width: 80%;
            padding: 5px;
            font-size: 14px;
            color: black;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .underline {
        text-decoration: underline;
        }

        .btn {
            padding: 5px 20px;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            cursor: pointer;
            background-color: #4CAF50;
            color: #fff;
            border: none;
        }

        .btn:hover {
            background-color: #555;
        }

        .tbl td {
            padding: 15px;
        }

        .tbl td:first-child {
            text-align: right;
        }

        .tbl td:last-child {
            text-align: left;
        }

        .tbl tr:last-child td {
            padding-top: 20px;
        }

        .tbl tr:last-child td:first-child {
            text-align: center;
        }

        .tbl tr:last-child td:last-child {
            text-align: right;
        }

        .tbl tr:last-child td span {
            font-size: 12px;
            color: yellow;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="regi">
        <table class="tbl"><br /><br />
            <h4 style="color: white;">FORGOT PASSWORD</h4> <!-- Set the color of the h2 element to white using the style attribute -->
            <tr>
                <td>
                    <table align="center" class="style1">
                        <tr>
                            <td class="style2"></td>
                            <td class="lbl">
                                UserName :
                            </td>
                            <td>
                                <asp:TextBox ID="txtusername" runat="server" CssClass="txt"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="txtusername" ErrorMessage="*" ForeColor="Red"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style2"></td>
                            <td class="lbl">
                                Mobile No :
                            </td>
                            <td>
                                <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="txtmobile" ErrorMessage="*" ForeColor="Red"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style3"></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3"></td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="btnlogin" runat="server" CssClass="btn" Height="35px" ForeColor="White" Text="Get Password" Width="170px" onclick="btnlogin_Click" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3"></td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="lblmsg" runat="server" ForeColor="Yellow"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3"></td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CssClass="underline" ForeColor="White" PostBackUrl="~/Login.aspx">Login Now</asp:LinkButton>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
     

</asp:Content>
