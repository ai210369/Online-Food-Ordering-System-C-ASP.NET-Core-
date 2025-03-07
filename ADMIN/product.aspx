<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Test.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="ADMIN_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
  <link href="css/customer.css" rel="stylesheet" type="text/css" />
  <style>
    .tbl {
      width: 100%;
      border-collapse: collapse;
    }

    .tbl th,
    .tbl td {
      padding: 10px;
      text-align: left;
    }

    .tbl th {
      background-color: #f2f2f2;
      font-size: 18px;
      font-weight: bold;
    }

    .tbl td {
      font-size: 16px;
      background: #f5f5f5;
      border-radius: 0.5rem;
    }

    .tbl .lbl {
      vertical-align: middle;
    }

    .tbl .txt {
      width: 100%;
      padding: 5px;
    }

    .image-column {
      display: block;
      height: 182px;
      width: 245px;
      margin-bottom: 10px;
    }

    .auto-style1,
    .auto-style2 {
      width: 300px;
    }

    .style3 {
      padding-top: 10px;
    }

    .style4 {
      height: 10px;
    }

    .input-group {
      position: relative;
    }

    .input-group input {
      width: 100%;
      padding: 10px;
      font-size: 18px;
    }

    .btn {
      display: inline-block;
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      text-align: center;
      font-size: 16px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    .btn:hover {
      background-color: #45a049;
    }

    .btn:active {
      background-color: #3e8e41;
    }

    .btn:focus {
      outline: none;
    }

  </style>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript">
      function previewImage(input) {
          if (input.files && input.files[0]) {
              var reader = new FileReader();

              reader.onload = function (e) {
                  $('#imgPreview')
                      .attr('src', e.target.result)
                      .show();
              };

              reader.readAsDataURL(input.files[0]);
          }
      }
  </script>

  <main>
    <div class="table">
      <form runat="server">
        <section class="table__header">
          <asp:Label ID="lblHeader" runat="server" Text="Add Menu"></asp:Label>
        </section>

        <table class="tbl">
          <tr>
            <td>
              <table align="center" class="style2">
                <tr>
                  <td class="auto-style1"></td>
                  <td class="auto-style2"></td>
                  <td class="auto-style2"></td>
                </tr>
                <tr>
                  <td rowspan="5">
                    <img class="image-column" id="imgPreview" rowspan="6" src="#" alt="Selected Image" style="display:none; height:182px; width:245px;" />
                  </td>
                  <td class="lbl">
                    Category:&nbsp;
                  </td>
                  <td>
                      <asp:DropDownList ID="drpcate" runat="server" CssClass="txt" ForeColor="black" AutoPostBack="True">

                        <asp:ListItem>SELECT A CATEGORY</asp:ListItem>
                        <asp:ListItem>Food</asp:ListItem>
                        <asp:ListItem>Snack</asp:ListItem>
                        <asp:ListItem>Desserts</asp:ListItem>
                        <asp:ListItem>Beverages</asp:ListItem>
                    </asp:DropDownList>
                  </td>
                </tr>
                <tr>
                  <td class="lbl">
                    Name:&nbsp;&nbsp;
                  </td>
                  <td>
                    <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                  </td>
                </tr>
                <tr>
                  <td class="lbl">
                    Price:&nbsp;&nbsp;
                  </td>
                  <td>
                    <asp:TextBox ID="txtprice" runat="server" CssClass="txt"></asp:TextBox>
                  </td>
                </tr>
                <tr>
                  <td class="lbl">
                    Image:&nbsp;&nbsp;
                  </td>
                  <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" onchange="previewImage(this);" />
                  </td>
                </tr>
                <tr>
                  <td class="lbl">
                    Detail:&nbsp;
                  </td>
                  <td>
                    <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" Height="45px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                  </td>
                </tr>
                <tr>
                  <td class="style4">
                    &nbsp;
                  </td>
                  <td class="lbl">
                    &nbsp;
                  </td>
                  <td>
                    &nbsp;
                  </td>
                </tr>
                <tr>
                  <td class="style3">
                    &nbsp;
                  </td>
                  <td>
                    &nbsp;
                  </td>
                  <td>
                    <asp:Button ID="Button7" runat="server" CssClass="btn" Text="ADD PRODUCT" 
                                onclick="Button7_Click" />
                  </td>
                </tr>
                <tr>
                  <td class="style3">
                    &nbsp;
                  </td>
                  <td>
                    &nbsp;
                  </td>
                  <td>
                    <asp:Label ID="lblmsg" runat="server" ForeColor="red"></asp:Label>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
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
