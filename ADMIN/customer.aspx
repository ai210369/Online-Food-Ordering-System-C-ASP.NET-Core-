<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Test.master" AutoEventWireup="true" CodeFile="customer.aspx.cs" Inherits="ADMIN_customer" %>

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
                    <asp:Label ID="lblHeader" runat="server" Text="Customer's List"></asp:Label>
                    <div class="input-group">
                        <input type="search" placeholder="Search Data..." runat="server" />
                        <ion-icon name="search-outline"></ion-icon>
                    </div>
                </section>
                <section class="table__body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table__grid"
                        OnRowDeleting="GridView1_RowDeleting" DataKeyNames="UID">
                        <HeaderStyle CssClass="table__header-row" />
                        <Columns>
                            <asp:BoundField DataField="UID" HeaderText="Id" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:TemplateField HeaderText="Customer Name" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell">
                                <ItemTemplate>
                                    <%# Eval("Fname") + " " + Eval("Lname") %>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtFirstName" runat="server" Text='<%# Bind("Fname") %>'></asp:TextBox>
                                    <asp:TextBox ID="txtLastName" runat="server" Text='<%# Bind("Lname") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mobile" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell">
                                <ItemTemplate>
                                    <%# Eval("Mobile") %>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtMobile" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell">
                                <ItemTemplate>
                                    <%# Eval("Gender") %>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtGender" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell">
                                <ItemTemplate>
                                    <%# Eval("Address") + ", " + Eval("City") + ", " + Eval("Pincode") %>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtAddress" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                                    <asp:TextBox ID="txtCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                    <asp:TextBox ID="txtPincode" runat="server" Text='<%# Bind("Pincode") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="Password" HeaderText="Password" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:BoundField DataField="EDate" HeaderText="Registration Date" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell" />
                            <asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="table__header-cell" ItemStyle-CssClass="table__cell">
                                <ItemTemplate>
                                    <div class="action-buttons">
                                        <asp:LinkButton runat="server" ID="btnEdit" CommandName="Edit" CssClass="edit-button" OnClick="btnEdit_Click">
                                            <ion-icon name="create-outline" class="icon"></ion-icon>
                                        </asp:LinkButton>

                                        <asp:LinkButton runat="server" ID="btnRemove" CommandName="Delete" ForeColor="Red" CommandArgument='<%# Eval("UID") %>' OnClientClick="return confirm('Are you sure you want to delete this item?');">
                                            <ion-icon name="trash-outline" class="icon"></ion-icon>
                                        </asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>


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
