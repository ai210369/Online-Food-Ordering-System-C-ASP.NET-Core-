﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_product : System.Web.UI.Page
{
    DS_PRODUCT.PRODUCTMST_SELECTDataTable PDT = new DS_PRODUCT.PRODUCTMST_SELECTDataTable();
    DS_PRODUCTTableAdapters.PRODUCTMST_SELECTTableAdapter PAdapter = new DS_PRODUCTTableAdapters.PRODUCTMST_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/product/food/") + FileUpload1.FileName);

        PAdapter.Insert(txtname.Text, txtdetail.Text, Convert.ToDouble(txtprice.Text), "~/product/food/" + FileUpload1.FileName.ToString(), drpcate.SelectedItem.Text, 0);
        lblmsg.Text = "Product Inserted";
        txtprice.Text = "";
        txtname.Text = "";
        txtdetail.Text = "";
        drpcate.SelectedIndex = 0;
    }



}