using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_Account : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

            lblfname.Text = "" + Session["fname"].ToString();
            lbllname.Text = "" + Session["lname"].ToString();
            lblemail.Text = "" + Session["email"].ToString();
            lblphone.Text = "" + Session["phone"].ToString();
            lbladdress.Text = "" + Session["address"].ToString();
            lblcity.Text = "" + Session["city"].ToString();
            lblpin.Text = "" + Session["pincode"].ToString();

    }

}