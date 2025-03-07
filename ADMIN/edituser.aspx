<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Test.master" AutoEventWireup="true" CodeFile="edituser.aspx.cs" Inherits="ADMIN_edituser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <style>
        .edit-form {
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
        }

        .edit-form h2 {
            margin-bottom: 10px;
        }

        .edit-form label {
            display: inline-block;
            width: 100px;
        }

        .edit-form input[type="text"] {
            width: 200px;
            padding: 5px;
            margin-bottom: 10px;
        }

        .edit-form input[type="submit"] {
            padding: 5px 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        .edit-form input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
    <div class="edit-form">
        <h2>Edit User</h2>
        <form id="form1" runat="server">
            <asp:ScriptManager ID="scriptManager" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="updatePanel" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:HiddenField ID="editUID" runat="server" />
                    <div>
                        <label for="editFirstName">First Name:</label>
                        <asp:TextBox ID="editFirstName" runat="server" required></asp:TextBox>
                    </div>
                    <div>
                        <label for="editLastName">Last Name:</label>
                        <asp:TextBox ID="editLastName" runat="server" required></asp:TextBox>
                    </div>
                    <div>
                        <label for="editMobile">Mobile:</label>
                        <asp:TextBox ID="editMobile" runat="server" required></asp:TextBox>
                    </div>
                    <div>
                        <label for="editGender">Gender:</label>
                        <asp:TextBox ID="editGender" runat="server" required></asp:TextBox>
                    </div>
                    <div>
                        <label for="editAddress">Address:</label>
                        <asp:TextBox ID="editAddress" runat="server" required></asp:TextBox>
                    </div>
                    <div>
                        <label for="editCity">City:</label>
                        <asp:TextBox ID="editCity" runat="server" required></asp:TextBox>
                    </div>
                    <div>
                        <label for="editPincode">Pincode:</label>
                        <asp:TextBox ID="editPincode" runat="server" required></asp:TextBox>
                    </div>
                    <div>
                        <label for="editEmail">Email:</label>
                        <asp:TextBox ID="editEmail" runat="server" required></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="updateButton" runat="server" Text="Update" OnClick="updateUserData_Click" />
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </form>
    </div>
</asp:Content>
