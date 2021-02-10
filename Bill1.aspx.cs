﻿using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using CrystalDecisions.CrystalReports.Engine;
using System.Data.SqlClient;

namespace Rent_A_Car
{
    public partial class Bill : System.Web.UI.Page
    {
        DbConnection MyConnection = new DbConnection();
        SqlCommand sqlcom1 = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataBindCR();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        public void DataBindCR()
        {
            SqlCommand sqlcom1 = new SqlCommand("Rent_A_Car_SP_SearchCustomerRegDetails",MyConnection.MyDbCon());
            sqlcom1.CommandType = CommandType.StoredProcedure;
            sqlcom1.Parameters.AddWithValue("@TID", Request.QueryString["val"]);
            SqlDataAdapter da = new SqlDataAdapter(sqlcom1);
            DataSet ds = new DataSet();
            da.Fill(ds, "Rent_A_Car_CustRegister");

            BillPrint rpt = new BillPrint();
            rpt.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = rpt;

        }

    }
}