<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Test.master" AutoEventWireup="true" CodeFile="pay.aspx.cs" Inherits="ADMIN_pay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link href="css/customer.css" rel="stylesheet" type="text/css" />
    <style>
        .table {
          max-height: 800px; /* Adjust the height value according to your needs */
          overflow-y: auto;
        }
    </style>
    <main>
        <div class="table">
            <form runat="server">
                <section class="table__header">
                    <asp:Label ID="lblHeader" runat="server" Text="Payment's List"></asp:Label>
                    <div class="input-group">
                        <input type="search" placeholder="Search Data..." runat="server" />
                        <ion-icon name="search-outline"></ion-icon>
                    </div>
                </section>
                <section class="table__body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table__grid">
                        <HeaderStyle CssClass="table__header-row" />
                        <Columns>
                            <asp:BoundField DataField="PID" HeaderText="PID" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="Type" HeaderText="Type" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="BankName" HeaderText="Bank Name" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="CardNo" HeaderText="Card Number" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="CCV" HeaderText="CCV" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="Edate" HeaderText="Payment Time" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />

                        </Columns>

                    </asp:GridView>
                </section>
            </form>
        </div>
    </main>
    <script>
        const search = document.querySelector('.input-group input'),
            table_rows = document.querySelectorAll('.table__body tbody tr:not(.table__header-row)');

        // Searching for specific data in the HTML table
        search.addEventListener('input', searchTable);

        function searchTable() {
            const searchValue = search.value.toLowerCase();
            table_rows.forEach(row => {
                const rowData = row.textContent.toLowerCase();
                row.style.display = rowData.includes(searchValue) ? 'table-row' : 'none';
            });
        }
    </script>
</asp:Content>

