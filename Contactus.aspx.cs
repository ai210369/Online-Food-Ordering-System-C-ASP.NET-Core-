using System;
using System.Net.Mail;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;

public partial class Contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True; Pooling = False");
        SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[ContactMst]
           ([name]
           ,[email]
           ,[phone]
           ,[message])
     VALUES
           ('"+txtName.Text+"', '"+txtEmail.Text+"', '"+txtPhone.Text+"', '"+txtMessage.Text+"')",con);
        con.Open();
        cmd.ExecuteNonQuery();
        lblMessage.Text = "Your message has been sent successfully!";
        lblMessage.CssClass = "form-message success-message";
        con.Close();


        // Clear the form fields
        txtName.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        txtMessage.Text = "";
    }
}
