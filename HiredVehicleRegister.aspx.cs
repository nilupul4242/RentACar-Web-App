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
    public partial class HiredVehicleRegister : System.Web.UI.Page
    {
        DbConnection MyConnection = new DbConnection();
        SqlCommand sqlcom1 = new SqlCommand();

        public static float rental, refundDeposit, deliveryCharges, discount, Subtotal, totalAmount; public static int HVBID;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalSubTotal_Click(object sender, EventArgs e)
        {
            rental = float.Parse(txtExtendRental.Text);
            refundDeposit = float.Parse(txtRefundDeposit.Text);
            deliveryCharges = float.Parse(txtDeliveryCharge.Text);

            Subtotal= (rental + refundDeposit + deliveryCharges);
            txtSubtotal.Text = Subtotal.ToString();
        }

        protected void btnCal_Click1(object sender, EventArgs e)
        {
            discount = float.Parse(txtDiscount.Text);

            totalAmount = (Subtotal - ((discount / 100) * Subtotal));

            txtTotalAmount.Text = totalAmount.ToString();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            try
            {
                sqlcom1.CommandType = CommandType.StoredProcedure;
                sqlcom1.CommandText = "Rent_A_Car_SP_SaveHiredVehicleBillDetails";

                //Customer Details
                sqlcom1.Parameters.AddWithValue("@Vehicle_No", txtVehicleNo.Text);
                sqlcom1.Parameters.AddWithValue("@Customer_Name", txtCustName.Text);
                sqlcom1.Parameters.AddWithValue("@Customer_Address", txtAddress.Text);
                sqlcom1.Parameters.AddWithValue("@Meter_Reading", txtMeterRead.Text);
                sqlcom1.Parameters.AddWithValue("@ExRentalFromDate", dtpFrom.SelectedDate );
                sqlcom1.Parameters.AddWithValue("@ExRentalToDate", dtpTo.SelectedDate);
                sqlcom1.Parameters.AddWithValue("@RentalAmount", float.Parse(txtExtendRental.Text));
                sqlcom1.Parameters.AddWithValue("@RefundableDeposit", float.Parse(txtRefundDeposit.Text));
                sqlcom1.Parameters.AddWithValue("@DeliveryCharge", float.Parse(txtDeliveryCharge.Text));
                sqlcom1.Parameters.AddWithValue("@SubTotal", float.Parse(txtSubtotal.Text));
                sqlcom1.Parameters.AddWithValue("@Discount", float.Parse(txtDiscount.Text));
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
            sqlcom1.CommandText = "SELECT MAX([HVBID]) FROM [RENTCAR].[dbo].[Rent_A_Car_HiredVehicleRegister]";
            sqlcom1.Connection = MyConnection.MyDbCon();
            SqlDataReader reader = sqlcom1.ExecuteReader();

            if (reader.Read() == false)
            {

                return;
            }
            else
            {
                HVBID = int.Parse(reader.GetValue(0).ToString());
            }
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            Response.Redirect("BillHiredVehicle.aspx?val=" + HVBID);
        }
    }
}