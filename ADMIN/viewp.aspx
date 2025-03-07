<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Test.master" AutoEventWireup="true" CodeFile="viewp.aspx.cs" Inherits="ADMIN_viewp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link href="css/customer.css" rel="stylesheet" type="text/css" />
    <style>
        .table {
          max-height: 800px; /* Adjust the height value according to your needs */
          overflow-y: auto;
        }

        .table__grid .btn-edit {
            font-size :18px;
            color: blue;
            border: none;
        }

        .table__grid .btn-delete {
            font-size :18px;
            color: red;
            border: none;
        }

        .table__grid .btn-edit,
        .table__grid .btn-delete {
            margin-right: 10px;
        }
    </style>
    <main>
        <div class="table">
            <form runat="server">
                <section class="table__header">
                    <asp:Label ID="lblHeader" runat="server" Text="View Menu"></asp:Label>
                    <div class="input-group">
                        <input type="search" placeholder="Search Data..." runat="server" />
                        <ion-icon name="search-outline"></ion-icon>
                    </div>
                </section>
                <section class="table__body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table__grid"
                        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" DataKeyNames="pid">
                        <HeaderStyle CssClass="table__header-row" />
                        <Columns>
                            <asp:BoundField DataField="pid" HeaderText="Id" HeaderStyle-CssClass="table__header-cell"
                                ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="pname" HeaderText="Product Name" HeaderStyle-CssClass="table__header-cell"
                                ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="price" HeaderText="Price" HeaderStyle-CssClass="table__header-cell"
                                ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="detail" HeaderText="Detail" HeaderStyle-CssClass="table__header-cell"
                                ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="cname" HeaderText="Category" HeaderStyle-CssClass="table__header-cell"
                                ItemStyle-CssClass="table__cell" />
                            <asp:TemplateField HeaderText="Actions" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell">
                                <ItemTemplate>
                                    <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn-edit" CommandName="Edit" />
                                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn-delete" CommandName="Delete" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle CssClass="table__row" />
                    </asp:GridView>
                </section>
            </form>
        </div>
    </main>
    <script>
        const search = document.querySelector('.input-group input');
        const table_rows = document.querySelectorAll('.table__body tbody tr:not(.table__header-row)');

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
