<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Test.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="ADMIN_order" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link href="css/customer.css" rel="stylesheet" type="text/css" />
    <style>
    .dropdownlist-status {
    width: 150px;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 14px;
}
     .table {
          max-height: 800px; /* Adjust the height value according to your needs */
          overflow-y: auto;
     }

</style>
    <main>
        <div class="table">
            <form runat="server">
                <section class="table__header">
                    <asp:Label ID="lblHeader" runat="server" Text="Order List"></asp:Label>
                    <div class="input-group">
                        <input type="search" placeholder="Search Data..." runat="server" />
                        <ion-icon name="search-outline"></ion-icon>
                    </div>
                </section>
                <section class="table__body">
                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="OID" AutoGenerateColumns="False" OnRowUpdating="GridView1_RowUpdating">

                        <HeaderStyle CssClass="table__header-row" />
                        <Columns>
                            <asp:BoundField DataField="OID" HeaderText="OID" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" ItemStyle-Width="200px" />
                            <asp:BoundField DataField="PName" HeaderText="Food Name" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" ItemStyle-Width="300px" />
                            <asp:BoundField DataField="Price" HeaderText="Price" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" ItemStyle-Width="100px" />
                            <asp:BoundField DataField="Qnt" HeaderText="Quantity" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="TotalPrice" HeaderText="Total Price" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:TemplateField HeaderText="Food Image" ItemStyle-Width="200px"  ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Image ID="imgg" runat="server" ImageUrl='<%#Eval("Image") %>' Height="80px" Width="120px" />
                                </ItemTemplate>
                            </asp:TemplateField>
             

                            <asp:BoundField DataField="Edate" HeaderText="Order Date" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
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


