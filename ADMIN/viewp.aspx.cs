using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using DS_PRODUCTTableAdapters;

public partial class ADMIN_viewp : System.Web.UI.Page
{
    private DS_PRODUCT.PRODUCTMST_SELECTDataTable PDT = new DS_PRODUCT.PRODUCTMST_SELECTDataTable();
    private PRODUCTMST_SELECTTableAdapter PAdapter = new PRODUCTMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            PDT = PAdapter.SELECT();
            GridView1.DataSource = PDT;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int productId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        using (var connection = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False"))
        {
            using (var command = new SqlCommand("DELETE FROM PRODUCTMST WHERE pid = @ProductId", connection))
            {
                command.Parameters.AddWithValue("@ProductId", productId);
                connection.Open();
                command.ExecuteNonQuery();
            }
        }

        PDT = PAdapter.SELECT();
        GridView1.DataSource = PDT;
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;

        PDT = PAdapter.SELECT();
        GridView1.DataSource = PDT;
        GridView1.DataBind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        // Get the selected product ID
        int productId = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex].Value);

        // Redirect to the editfood.aspx page with the selected product ID as a query parameter
        Response.Redirect("editfood.aspx?pid=" + productId);
    }
}
