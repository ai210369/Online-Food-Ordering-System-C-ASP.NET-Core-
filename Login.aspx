<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .container {
            width: 300px;
            margin: 0 auto;
            font-family: Arial, sans-serif;
            background-color: black;
            padding: 80px;
            border-radius: 60px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }
        
        .btn-green {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        
        .label {
            color: white;
            font-weight: bold;
            display: inline-block;
            width: 30%;
            text-align: right;
            margin-bottom: 5px;
            vertical-align: middle;
        }
        
        .text {
            padding: 10px;
            width: 58%;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
            margin: 0 auto;
            display: block;
        }
        
        .link {
            color: white;
            font-weight: bold;
            text-decoration: underline;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-actions {
            text-align: center;
            margin-top: 20px;
        }

        .container h2 {
            color: white;
        }
    </style>
    <script type="text/javascript">
        function handlePasswordChange() {
            var password = document.getElementById('<%= txtpassword.ClientID %>').value;
            var loginButton = document.getElementById('<%= btnlogin.ClientID %>');

            if (password.length > 0) {
                loginButton.classList.add('btn-green');
            } else {
                loginButton.classList.remove('btn-green');
            }
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <h2>Login</h2>
        <div class="form-group">
            <label class="label" for="txtusername">Username:</label>
            <asp:TextBox ID="txtusername" runat="server" CssClass="text"></asp:TextBox>
            <div class="center">
                <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="txtusername" ErrorMessage="Username is required" ForeColor="Red"
                SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="label" for="txtpassword">Password:</label>
            <asp:TextBox ID="txtpassword" runat="server" CssClass="text" TextMode="Password"></asp:TextBox>
            <div class="center">
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="txtpassword" ErrorMessage="Password is required" ForeColor="Red"
                SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-actions">
            <asp:Button ID="btnlogin" runat="server" CssClass="btn-green" Text="Login" onclick="btnlogin_Click" />
            <br /><br />
            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="link" PostBackUrl="~/Registration.aspx">New User?</asp:LinkButton>
        </div>
        <div class="form-actions">
            <asp:Label ID="lblmsg" runat="server" CssClass="error-message"></asp:Label>
        </div>
        <div class="form-actions">
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link" PostBackUrl="~/Fpassword.aspx" CausesValidation="False">Forgot Password?</asp:LinkButton>
        </div>
    </div>

    <script type="text/javascript">
        document.getElementById('<%= txtpassword.ClientID %>').addEventListener('input', function () {
            handlePasswordChange();
        });
    </script>
</asp:Content>
