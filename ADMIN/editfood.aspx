<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Test.master" AutoEventWireup="true" CodeFile="editfood.aspx.cs" Inherits="ADMIN_editfood" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link href="css/customer.css" rel="stylesheet" type="text/css" />
    <style>
        .form {
            width: 400px;
            margin: 50px auto;
        }

        .form h2 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 10px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 14px;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            text-align: center;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn-primary {
            background-color: #007bff;
        }
    </style>
    <main>
        <div class="form">
            <h2>Edit Food</h2>
            <form runat="server">
                <div class="form-group">
                    <label for="txtProductName">Product Name</label>
                    <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtPrice">Price</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtDetail">Detail</label>
                    <asp:TextBox ID="txtDetail" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="ddlCategory">Category</label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control">
                        <asp:ListItem Value="Food">Food</asp:ListItem>
                        <asp:ListItem Value="Snack">Snack</asp:ListItem>
                        <asp:ListItem Value="Desserts">Desserts</asp:ListItem>
                        <asp:ListItem Value="Beverages">Beverages</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="btn btn-primary" />
                </div>
            </form>
        </div>
    </main>
</asp:Content>
