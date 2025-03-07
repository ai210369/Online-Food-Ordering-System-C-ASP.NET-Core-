using System;
using System.Data;
using System.Data.SqlClient;

public partial class ADMIN_edituser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Retrieve the UID from the query string parameter
            string uid = Request.QueryString["uid"];

            if (!string.IsNullOrEmpty(uid))
            {
                // Retrieve user data from the database and populate the form fields
                string connectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False";
                SqlConnection connection = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand("SELECT [UID], [Fname], [Lname], [Mobile], [Gender], [Address], [City], [Pincode], [Email] FROM [FOODSYSTEM].[dbo].[UserMst] WHERE [UID] = @UID", connection);
                command.Parameters.AddWithValue("@UID", uid);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    editUID.Value = reader["UID"].ToString();
                    editFirstName.Text = reader["Fname"].ToString();
                    editLastName.Text = reader["Lname"].ToString();
                    editMobile.Text = reader["Mobile"].ToString();
                    editGender.Text = reader["Gender"].ToString();
                    editAddress.Text = reader["Address"].ToString();
                    editCity.Text = reader["City"].ToString();
                    editPincode.Text = reader["Pincode"].ToString();
                    editEmail.Text = reader["Email"].ToString();
                }

                reader.Close();
                connection.Close();
            }
        }
    }

    protected void updateUserData_Click(object sender, EventArgs e)
    {
        // Update the user data in the database
        string connectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True;Pooling=False";
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand("UPDATE [FOODSYSTEM].[dbo].[UserMst] SET [Fname] = @Fname, [Lname] = @Lname, [Mobile] = @Mobile, [Gender] = @Gender, [Address] = @Address, [City] = @City, [Pincode] = @Pincode, [Email] = @Email WHERE [UID] = @UID", connection);
        command.Parameters.AddWithValue("@UID", editUID.Value);
        command.Parameters.AddWithValue("@Fname", editFirstName.Text);
        command.Parameters.AddWithValue("@Lname", editLastName.Text);
        command.Parameters.AddWithValue("@Mobile", editMobile.Text);
        command.Parameters.AddWithValue("@Gender", editGender.Text);
        command.Parameters.AddWithValue("@Address", editAddress.Text);
        command.Parameters.AddWithValue("@City", editCity.Text);
        command.Parameters.AddWithValue("@Pincode", editPincode.Text);
        command.Parameters.AddWithValue("@Email", editEmail.Text);
        connection.Open();
        command.ExecuteNonQuery();
        connection.Close();

        // Redirect back to the customer list page
        Response.Redirect("customer.aspx");
    }
}
