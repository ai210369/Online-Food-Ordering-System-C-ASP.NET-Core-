using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;
using System.Globalization;
using System.Data;
using System.Drawing;

public partial class ADMIN_sale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
            LoadData1();

            // Calculate the values and assign them to the literals
            DailyViewsLiteral.Text = CalculateDailySales().ToString();
            SalesLiteral.Text = CalculateWeeklySales().ToString();
            CommentsLiteral.Text = CalculateMonthlySales().ToString();
            EarningLiteral.Text = CalculateTotalCustomer().ToString();
        }
    }

    private int CalculateDailySales()
    {
        // Calculate the sum of payments made today
        string connectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT SUM(Amount) FROM PaymentMst WHERE CONVERT(DATE, Edate) = CONVERT(DATE, GETDATE())";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            object result = command.ExecuteScalar();
            if (result != null && result != DBNull.Value)
            {
                int dailySales = Convert.ToInt32(result);
                return dailySales;
            }
            else
            {
                return 0;
            }
        }
    }


    private int CalculateWeeklySales()
    {
        // Calculate the sum of payments made in the last 7 days
        string connectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT SUM(Amount) FROM PaymentMst WHERE CONVERT(DATE, Edate) >= DATEADD(day, -7, CONVERT(DATE, GETDATE()))";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int weeklySales = Convert.ToInt32(command.ExecuteScalar());
            return weeklySales;
        }
    }

    private int CalculateMonthlySales()
    {
        // Calculate the sum of payments made in the current month
        string connectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT SUM(Amount) FROM PaymentMst WHERE YEAR(Edate) = YEAR(GETDATE()) AND MONTH(Edate) = MONTH(GETDATE())";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int monthlySales = Convert.ToInt32(command.ExecuteScalar());
            return monthlySales;
        }
    }

    private int CalculateTotalCustomer()
    {
        // Calculate the count of orders from the OrderMst table
        string connectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False";
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT COUNT(*) FROM UserMst";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int totalCustomer = Convert.ToInt32(command.ExecuteScalar());
            return totalCustomer;
        }
    }

    void LoadData()
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT BankName, SUM(Amount) AS TotAmount FROM PaymentMst GROUP BY BankName", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }

        string[] x = new string[dt.Rows.Count];
        int[] y = new int[dt.Rows.Count];
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            x[i] = dt.Rows[i][0].ToString();
            y[i] = Convert.ToInt32(dt.Rows[i][1]);


        }

        Chart1.Series[0].Points.DataBindXY(x, y);
        Chart1.Series[0].ChartType = SeriesChartType.StackedColumn;
        Chart1.Legends[0].Enabled = true;

    }

    void LoadData1()
    {
        DataTable dt = new DataTable();
        using (SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Type, SUM(Amount) AS TotAmount FROM PaymentMst GROUP BY Type", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }

        string[] x = new string[dt.Rows.Count];
        int[] y = new int[dt.Rows.Count];
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            x[i] = dt.Rows[i][0].ToString();
            y[i] = Convert.ToInt32(dt.Rows[i][1]);
        }

        Chart2.Series[0].Points.DataBindXY(x, y);
        Chart2.Series[0].ChartType = SeriesChartType.Pie;
        Chart2.Legends[0].Enabled = true;
    }



}
