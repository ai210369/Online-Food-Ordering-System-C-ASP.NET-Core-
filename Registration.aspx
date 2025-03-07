<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            color: white;
        }

        /* Header */
        #food {
            background-color: #333;
            text-align: center;
            padding: 20px;
        }

        #food img {
            max-width: 100%;
            height: auto;
        }

        /* Registration Form */
        #regi {
            max-width: 670px;
            margin: 0px auto;
            background-color: black;
            padding: 20px;
            border-radius: 60px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        h4 {
            font-size: 20px;
            font-weight: bold;
            margin-top: 0;
        }

        .lbl {
            display: inline-block;
            width: 100px;
            padding: 5px;
            font-weight: bold;
            font-size: 14px;
            color: white;
        }

        .txt {
            width: 350px;
            padding: 5px;
            font-size: 14px;
            color: black;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .btn-submit {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            margin-top: 10px;
        }

        .btn-submit:hover {
            background-color: #555;
        }

        .error-message {
            color: red;
            font-size: 12px;
        }

        /* Links */
        .link {
            color: #FFFF66;
            text-decoration: none;
            font-size: 12px;
            color: white;
        }

        .link:hover {
            text-decoration: underline;
        }
        
        /* Additional Styling for First Name and Last Name */
        .auto-style1 {
            display: inline-block;
            width: 148px;
            padding: 5px;
            font-weight: bold;
            font-size: 14px;
            color: white;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="regi">
        <br /><h4 style="color: white;">Registration Form</h4>
        <br /><br />
        <div>
            &emsp;&emsp;&emsp;<span class="auto-style1">First Name:</span>
            <asp:TextBox ID="txtfname" runat="server" CssClass="txt" ontextchanged="txtfname_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname"
                ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            &emsp;&emsp;&emsp;<span class="auto-style1">Last Name:</span>
            <asp:TextBox ID="txtlname" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname"
                ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            &emsp;&emsp;&emsp;<span class="auto-style1">Mobile:</span>
            <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmobile"
                ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            &emsp;&emsp;&emsp;<span class="auto-style1">Gender:</span>
            <asp:RadioButton ID="rdomale" runat="server" ForeColor="White" Text="Male" GroupName="a" Checked="True" />
            <asp:RadioButton ID="rdofemale" runat="server" ForeColor="White" Text="Female" GroupName="a" />
        </div>
        <br />
        <div>
            &emsp;&emsp;&emsp;<span class="auto-style1">Address:</span>
            <asp:TextBox ID="txtadd" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtadd"
                ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            &emsp;&emsp;&emsp;<span class="auto-style1">City:</span>
            <asp:TextBox ID="txtcity" runat="server" CssClass="txt" ontextchanged="TextBox5_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcity"
                ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            &emsp;&emsp;&emsp;<span class="auto-style1">Pincode:</span>
            <asp:TextBox ID="txtpincode" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpincode"
                ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtpincode"
                ErrorMessage="invalid" ForeColor="Red" MaximumValue="99999" MinimumValue="10000"
                SetFocusOnError="True" Type="Double"></asp:RangeValidator>
        </div>
        <br />
        <div>
            &emsp;&emsp;&emsp;<span class="auto-style1">Email:</span>
            <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail"
                ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                ErrorMessage="invalid" ForeColor="Red" SetFocusOnError="True"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div>
            &emsp;&emsp;&emsp;<span class="auto-style1">Password:</span>
            <asp:TextBox ID="txtpass" runat="server" CssClass="txt" ontextchanged="txtconfirmpass_TextChanged"
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpass"
                ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            &emsp;&emsp;&emsp;<span class="auto-style1">Confirm Password:</span>
            <asp:TextBox ID="txtconfirmpass" runat="server" CssClass="txt" ontextchanged="txtconfirmpass_TextChanged"
                TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass"
                ControlToValidate="txtconfirmpass" ErrorMessage="not same" ForeColor="Red"></asp:CompareValidator>
        </div>
        <br />
        <div>
            <asp:Label ID="lblmsg" runat="server" ForeColor="Blue"></asp:Label>
        </div>
        <div>
            &emsp;&emsp;&emsp;<asp:Button ID="btnSubmit" runat="server" CssClass="btn-submit" Height="35px" Text="Register Now"
                Width="150px" onclick="Button1_Click" />
        </div>
        <br />
        <div>
            &emsp;&emsp;&emsp;<span style="color: white;">Already registered? Please login</span>
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Strikeout="False"
                Font-Underline="True" ForeColor="Blue" PostBackUrl="~/Login.aspx">HERE</asp:LinkButton>
        </div><br />
    </div>
</asp:Content>
