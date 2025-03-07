using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string id = txtId.Text;
        string pword = txtPassword.Text;
        if (id.Equals("admin") && pword.Equals("admin"))
        {
            //use this simple command if want re-direct to another page.
            Response.Redirect("customer.aspx");
        }
        else
        {
            //use this simple command if want to display the status
            lblStatus.Text = "Login unsuccessful!";
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtId.Text = string.Empty;
        txtPassword.Text = string.Empty;
    }

}