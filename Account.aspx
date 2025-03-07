<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Member_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    .styled-table {
        border-collapse: collapse;
        margin: 30px 0;
        font-size: 0.9em;
        font-family: sans-serif;
        min-width: 600px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    }

    .styled-table thead tr {
        background-color: #009879;
        color: #ffffff;
        text-align: left;
    }

    .styled-table th,
    .styled-table td {
        padding: 12px 15px;
    }

    .styled-table tr {
        border-bottom: 1px solid #dddddd;
    }

    .styled-table tr:nth-of-type(even) {
        background-color: #f3f3f3;
    }

    .styled-table tr:last-of-type {
        border-bottom: 2px solid #009879;
    }

    .styled-table tr.active-row {
        /*font-weight: bold;*/
        color: black;
        background-color:#bce0d4;
    }
    .auto-style1 {
        width: 126px;
    }
    .auto-style2 {
        width: 909px;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td class="auto-style2" 
                style="color: black; background-color: #8bbaf7; font-weight: bold; font-size: medium">
                PROFILE
            </td>
        </tr>
    </table>
<center>
    <table class="styled-table">
       <thead>
        <tr>
            <th class="auto-style1">Profile</th>
            <th>&nbsp;</th>
            <th>Details</th>
        </tr>
       </thead>
       <tr >
            <td class="auto-style1">
                <b>First Name</b>
            </td>
            <td>
                <b>:</b></td>
            <td>
                <asp:Label Text="" runat="server" ID="lblfname"></asp:Label>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style1">
                <b>Last Name </b> 
            </td>
            <td>
                <b>:</b></td>
            <td>
                <asp:Label Text="" runat="server" ID="lbllname"></asp:Label>
            </td>
        </tr>
        <tr >
            <td class="auto-style1">
                <b>Email</b>
            </td>
            <td>
                <b>:</b></td>
            <td>
                <asp:Label Text="" runat="server" ID="lblemail"></asp:Label>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style1">
                <b>Mobile</b>
            </td>
            <td>
                <b>:</b></td>
            <td>
                <asp:Label Text="" runat="server" ID="lblphone"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <b>Address</b> 
            </td>
            <td>
                <b>:</b></td>
            <td>
                <asp:Label Text="" runat="server" ID="lbladdress"></asp:Label>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style1">
                <b>City</b>
            </td>
            <td>
                <b>:</b></td>
            <td>
                <asp:Label Text="" runat="server" ID="lblcity"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <b>Pincode</b>
            </td>
            <td>
                <b>:</b></td>
            <td>
                <asp:Label Text="" runat="server" ID="lblpin"></asp:Label>
            </td>
        </tr>
    </table>
</center>

&nbsp;<br />
</asp:Content>

