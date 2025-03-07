<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="ADMIN_AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link rel="icon" href="image/logo.png" type="image/png" sizes="55x55">
    <link href="css/AdminStyle.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        body{
                overflow: hidden;
        }
        .box{
            padding-top: 10px;
        }
        .auto-style1 {
            width: 107px;
        }
        .auto-style2 {
            width: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <center><div class="box">
                <h1><em>WELCOME ADMIN</em></h1>
                <!--<asp:Label ID="lblTitlePage" runat="server" Text="LOGIN" Font-Bold="True" Font-Size="Large"></asp:Label>-->
                <br /><asp:Image ID="imgLogin" runat="server" src="image/loginIcon.png" Height="80px" Width="80px" />
                <br /><br /><asp:Label ID="lblMessage" runat="server" Text="Enter your Name and Password" Font-Strikeout="False" Height="30px" Font-Size="Small"></asp:Label><br /><br />

                <table class="tablestyle">
                    <tr>
                        <td class="auto-style2"><asp:Label ID="lblId" runat="server" Text="Admin Name:" Font-Bold="True" Font-Size="Small"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="rfvId" runat="server" ErrorMessage="Please enter your Id!" ControlToValidate="txtId" ForeColor="#CC0000" Height="10px"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style2"><asp:Label ID="lblPassword" runat="server" Text="Password:" Font-Bold="True" Font-Size="Small"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please enter your password!" ControlToValidate="txtPassword" ForeColor="#CC0000" Height="10px"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>

                <asp:Label ID="lblStatus" runat="server" Font-Size="Small" ForeColor="Red"></asp:Label><br /><br />

                <div style="display: flex; align-items: center; justify-content: center;">
                    <asp:Button ID="btnSubmit" runat="server" Text="Sign In" style="width: 80px; height: 38px; margin-right: 40px; background-color: #4CAF50; color: white; border-radius: 4px; border: none;" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" style="width: 80px; height: 38px; margin-right: 40px; background-color: #f44336; color: white; border-radius: 4px; border: none;" OnClick="btnCancel_Click" />
                    <div style="display: flex; align-items: center;">
                        <asp:HyperLink ID="btnReturn" runat="server" NavigateUrl="~/Default.aspx" Text="Return" CssClass="return-button" style="width: 80px; height: 38px; display: flex; align-items: center; justify-content: center; border: 1px solid #ccc; border-radius: 4px; text-decoration: none; background-color: #337ab7; color: #fff;" />
                    </div>
                </div>


                 
            </div>
            </center>
        </div>
    </form>
</body>
</html>
