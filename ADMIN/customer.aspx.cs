using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class ADMIN_customer : System.Web.UI.Page
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
        // Retrieve user data from the database and bind it to the GridView
        string connectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False";
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand("SELECT [UID], [Fname], [Lname], [Mobile], [Gender], [Address], [City], [Pincode], [Email], [Password], [EDate] FROM [FOODSYSTEM].[dbo].[UserMst]", connection);
        connection.Open();
        SqlDataReader reader = command.ExecuteReader();
        GridView1.DataSource = reader;
        GridView1.DataBind();
        reader.Close();
        connection.Close();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        // Handle the row deletion event
        string uid = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string connectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False";
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand("DELETE FROM [FOODSYSTEM].[dbo].[UserMst] WHERE [UID] = @UID", connection);
        command.Parameters.AddWithValue("@UID", uid);
        connection.Open();
        command.ExecuteNonQuery();
        connection.Close();

        BindGrid();
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        LinkButton btnEdit = (LinkButton)sender;
        GridViewRow row = (GridViewRow)btnEdit.NamingContainer;
        string uid = GridView1.DataKeys[row.RowIndex].Value.ToString();

        Response.Redirect("edituser.aspx?uid=" + uid);
    }




}
