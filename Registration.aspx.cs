using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    DS_USER.USERMST_SELECTDataTable UDT = new DS_USER.USERMST_SELECTDataTable();
    DS_USERTableAdapters.USERMST_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USERMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Session["fname"] = txtfname.Text;
        Session["lname"] = txtlname.Text;
        Session["phone"] = txtmobile.Text;
        Session["address"] = txtadd.Text;
        Session["city"] = txtcity.Text;
        Session["pincode"] = txtpincode.Text;
        Session["email"] = txtemail.Text;

        HttpCookie sessionCookie = new HttpCookie("ASP.NET_SessionId", Session.SessionID);
        sessionCookie.Expires = DateTime.Now.AddDays(30);
        Response.Cookies.Add(sessionCookie);

        UDT = UAdapter.select_email(txtemail.Text);
        if (UDT.Rows.Count > 0)
        {
            lblmsg.Text = "&emsp;&emsp;&emsp;Email alredy exist";
        }
        else
        {

            string gnd = "";
            if (rdofemale.Checked == true)
            {
                gnd = "Male";
            }
            else
            {
                gnd = "Female";
            }
            UAdapter.Insert(txtfname.Text, txtlname.Text, txtmobile.Text, gnd, txtadd.Text, txtcity.Text, txtpincode.Text, txtemail.Text, txtpass.Text);
            lblmsg.Text = "&emsp;&emsp;&emsp;Registration Successfully";
            if (lblmsg.Text == "Registration Successfully")
            {
                txtfname.Text = "";
                txtlname.Text = "";
                txtmobile.Text = "";
                txtadd.Text = "";
                txtcity.Text = "";
                txtpincode.Text = "";
                txtemail.Text = "";
                txtpass.Text = "";
                txtconfirmpass.Text = "";



            }
        }
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtconfirmpass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtfname_TextChanged(object sender, EventArgs e)
    {

    }
}