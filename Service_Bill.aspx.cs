using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.IO;
using System.Configuration;
using CrystalDecisions.CrystalReports.Engine;

namespace Rent_A_Car
{
    public partial class Service_Bill : System.Web.UI.Page
    {
        DbConnection MyConnection = new DbConnection();
        SqlCommand sqlcom1 = new SqlCommand();

        public static float cost, Qty, TotalAmount; public static int Bill_ID;
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCal_Click(object sender, EventArgs e)
        {   
            Qty =  float.Parse(txtQty.Text);
            cost = float.Parse(txtCost.Text);
            

            TotalAmount = cost * Qty;

            txtTotalAmount.Text= TotalAmount.ToString();

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                sqlcom1.CommandType = CommandType.StoredProcedure;
                sqlcom1.CommandText = "Rent_A_Car_SP_SaveBillDetails";

                //Customer Details
                sqlcom1.Parameters.AddWithValue("@CustomerName", txtCustName.Text);
                sqlcom1.Parameters.AddWithValue("@ServiceType", cmbServiceType.SelectedItem.Text);
                sqlcom1.Parameters.AddWithValue("@Qty", txtQty.Text);
                sqlcom1.Parameters.AddWithValue("@Cost", float.Parse(txtCost.Text));
                sqlcom1.Parameters.AddWithValue("@TotalAmount", float.Parse(txtTotalAmount.Text));


                sqlcom1.Connection = MyConnection.MyDbCon();
                sqlcom1.ExecuteNonQuery();
                sqlcom1.Parameters.Clear();

                lblStatus.Visible = true;
                lblStatus.ForeColor = System.Drawing.Color.Green;
                lblStatus.Text = "Bill Saved";
                lblStatus.Font.Bold = true;
                lblStatus.Focus();
            }
            catch (Exception ex)
            {
                lblStatus.Visible = true;
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "System Error in Validating data." + ex;
                lblStatus.Font.Bold = true;
            }
            //GetTID
            sqlcom1.CommandType = CommandType.Text;
            sqlcom1.CommandText = "SELECT MAX([Bill_ID])FROM [RENTCAR].[dbo].[Rent_A_Car_ServiceBillRegister]";
            sqlcom1.Connection = MyConnection.MyDbCon();
            SqlDataReader reader = sqlcom1.ExecuteReader();

            if (reader.Read() == false)
            {

                return;
            }
            else
            {
                Bill_ID = int.Parse(reader.GetValue(0).ToString());
            }
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bill3Service.aspx?val=" + Bill_ID);
        }
    }
}