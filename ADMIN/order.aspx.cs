using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class ADMIN_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    protected void BindGrid()
    {
        // Retrieve order data from the database and bind it to the GridView
        string connectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False";
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand("SELECT TOP (1000) [OID], [Email], [PName], [Price], [Qnt], [TotalPrice], [Image], [Status], [Edate] FROM [FOODSYSTEM].[dbo].[OrderMst]", connection);
        connection.Open();
        SqlDataReader reader = command.ExecuteReader();

        // Create a DataTable to hold the data
        DataTable dataTable = new DataTable();
        dataTable.Load(reader);

        // Bind the DataTable to the GridView
        GridView1.DataSource = dataTable;
        GridView1.DataBind();

        reader.Close();
        connection.Close();

    }

    protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList ddlStatus = (DropDownList)sender;
        GridViewRow row = (GridViewRow)ddlStatus.NamingContainer;
        int oid = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);

        // Update the status in the database using the oid
        string connectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand("UPDATE [FOODSYSTEM].[dbo].[OrderMst] SET [Status] = @Status WHERE [OID] = @OID", connection);
            command.Parameters.AddWithValue("@Status", ddlStatus.SelectedValue);
            command.Parameters.AddWithValue("@OID", oid);
            connection.Open();
            command.ExecuteNonQuery();
        }

        // Rebind the GridView to reflect the updated status
        BindGrid();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        DropDownList ddlStatus = (DropDownList)row.FindControl("ddlStatus");
        int oid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        // Update the status in the database using the oid
        string connectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand("UPDATE [FOODSYSTEM].[dbo].[OrderMst] SET [Status] = @Status WHERE [OID] = @OID", connection);
            command.Parameters.AddWithValue("@Status", ddlStatus.SelectedValue);
            command.Parameters.AddWithValue("@OID", oid);
            connection.Open();
            command.ExecuteNonQuery();
        }

        GridView1.EditIndex = -1;
        BindGrid();
    }


}