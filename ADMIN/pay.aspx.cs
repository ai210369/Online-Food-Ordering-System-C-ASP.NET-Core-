using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class ADMIN_pay : System.Web.UI.Page
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
        // Retrieve payment data from the database and bind it to the GridView
        string connectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False";
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand("SELECT TOP (1000) [PID], [Email], [Type], [BankName], [CardNo], [CCV], [Amount], [Edate] FROM [FOODSYSTEM].[dbo].[PaymentMst]", connection);
        connection.Open();
        SqlDataReader reader = command.ExecuteReader();
        GridView1.DataSource = reader;
        GridView1.DataBind();
        reader.Close();
        connection.Close();
    }

}