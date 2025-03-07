<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .contact-container {
            max-width: 650px;
            margin: 0 auto;
            padding: 28px;
            border: 1px solid #ddd;
            border-radius: 60px;
            background-color:  #1a1a1a;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .contact-container h4 {
            font-size: 30px;
            margin-bottom: 5px;
            color: #ffffff;
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 8px;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            width: 100%;
            max-width: 500px;
        }

        .label {
            display: block;
            margin-bottom: 5px;
            color: #ffffff;
            text-align: left;
            width: 100%;
        }

        .form-control {
            flex: 1;
            padding: 7px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            max-width: 500px;
            margin-top: 5px;
        }

        .form-control.textarea {
            height: 250px;
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
            color: #fff;
            border: none;
            margin-top: 10px;
        }

        .form-message {
            display: block;
            margin-top: 5px;
            font-size: 14px;
            text-align: center;
            color: yellow;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contact-container">
        <h2 style="color: #ffffff;">Contact Us</h2><br />

        <div class="form-group">
            <label class="label" for="txtName">Name:</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name" ForeColor="Red" CssClass="validation-error"></asp:RequiredFieldValidator>
        </div>


        <div class="form-group">
            <label class="label" for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter your email" ForeColor="Red" CssClass="validation-error"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label class="label" for="txtPhone">Phone:</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Please enter your phone" ForeColor="Red" CssClass="validation-error"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label class="label" for="txtMessage">Message:</label>
            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="8"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="This field may not be blank" ForeColor="Red" CssClass="validation-error"></asp:RequiredFieldValidator>
        </div>

        <asp:Button ID="btnSubmit" runat="server" CssClass="btn-submit" Text="Submit" OnClick="btnSubmit_Click" />
        <asp:Label ID="lblMessage" runat="server" CssClass="form-message"></asp:Label>
    </div>
</asp:Content>
