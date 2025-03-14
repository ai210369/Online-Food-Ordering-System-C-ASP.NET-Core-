﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_Products : System.Web.UI.Page
{ DS_PRODUCT.PRODUCTMST_SELECTDataTable PDT = new DS_PRODUCT.PRODUCTMST_SELECTDataTable();
    DS_PRODUCTTableAdapters.PRODUCTMST_SELECTTableAdapter PAdapter = new DS_PRODUCTTableAdapters.PRODUCTMST_SELECTTableAdapter();
   
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Page.IsPostBack == false)
        {
            string idd = Request.QueryString["id"].ToString();
            if (idd == "1")
            {
                PDT = PAdapter.SELECT_BY_CNAME("FOOD");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            }
            else if (idd == "2")
            {
                PDT = PAdapter.SELECT_BY_CNAME("SNACK");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            
            }
            else if (idd == "3")
            {
                PDT = PAdapter.SELECT_BY_CNAME("DESSERTS");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            }
            else if (idd == "4")
            {
                PDT = PAdapter.SELECT_BY_CNAME("BEVERAGES");
                DataList1.DataSource = PDT;
                DataList1.DataBind();
            }
           
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        Session["vid"] = e.CommandArgument.ToString();
        Response.Redirect("View.aspx");
    }
}