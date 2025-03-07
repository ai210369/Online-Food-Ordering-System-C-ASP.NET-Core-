using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class ADMIN_editfood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Retrieve the product ID from the query string
            if (Request.QueryString["pid"] != null)
            {
                int productId = Convert.ToInt32(Request.QueryString["pid"]);

                // Retrieve and display the details of the selected product
                using (var connection = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False"))
                {
                    using (var command = new SqlCommand("SELECT * FROM PRODUCTMST WHERE pid = @ProductId", connection))
                    {
                        command.Parameters.AddWithValue("@ProductId", productId);
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.HasRows)
                        {
                            reader.Read();
                            txtProductName.Text = reader["pname"].ToString();
                            txtPrice.Text = reader["price"].ToString();
                            txtDetail.Text = reader["detail"].ToString();
                            // Set the category dropdown value based on the retrieved category name
                            ddlCategory.SelectedValue = reader["cname"].ToString();
                        }
                        reader.Close();
                    }
                }
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        // Retrieve the product ID from the query string
        if (Request.QueryString["pid"] != null)
        {
            int productId = Convert.ToInt32(Request.QueryString["pid"]);

            // Update the product details in the database
            using (var connection = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False"))
            {
                using (var command = new SqlCommand("UPDATE PRODUCTMST SET pname = @ProductName, price = @Price, detail = @Detail, cname = @Category WHERE pid = @ProductId", connection))
                {
                    command.Parameters.AddWithValue("@ProductName", txtProductName.Text);
                    command.Parameters.AddWithValue("@Price", Convert.ToDecimal(txtPrice.Text));
                    command.Parameters.AddWithValue("@Detail", txtDetail.Text);
                    command.Parameters.AddWithValue("@Category", ddlCategory.SelectedValue);
                    command.Parameters.AddWithValue("@ProductId", productId);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // Redirect back to the viewp.aspx page
            Response.Redirect("viewp.aspx");
        }
    }
}
