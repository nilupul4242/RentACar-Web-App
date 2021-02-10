using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Rent_A_Car
{
    public partial class Handed_Over_Dtails : System.Web.UI.Page
    {
        DbConnection MyConnection = new DbConnection();
        SqlCommand sqlcom1 = new SqlCommand();

        public static string VHTID;
        public static string Vehicle_RegNo;
        public static float Vehicle_StartMileage;
        public static float Vehicle_RentalPerDay;
        public static float Vehicle_ChargesForExtraKms;
        public static DateTime Vehicle_AgreementDateTime;
        public static int Vehicle_ValidationDates;
        public static float Vehicle_FreeKMs;
        public static float Vehicle_SecurityDeposit;
        public static string CustomerName;

        public static DateTime Vehicle_ExtraDates;
        public static float Vehicle_ExtraKMs;
        public static float AmountForExtraKm;
        public static float AmountForExtraDates;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
           try
            {
                sqlcom1.CommandType = CommandType.StoredProcedure;
                sqlcom1.CommandText = "Rent_A_Car_SP_SaveHandOverDetails";

                //Customer Details
                sqlcom1.Parameters.AddWithValue("@VHTID", VHTID);
                sqlcom1.Parameters.AddWithValue("@Vehicle_RegNo", Vehicle_RegNo);
                sqlcom1.Parameters.AddWithValue("@Vehicle_ReturnDateTime", dateReturn.SelectedDate);
                sqlcom1.Parameters.AddWithValue("@Vehicle_ExtraDates", txtExraDate.Text);
                sqlcom1.Parameters.AddWithValue("@Vehicle_ReturnMileage", txtRetMileage.Text);
                sqlcom1.Parameters.AddWithValue("@Vehicle_ReturnFuel", txtRetFuel.Text);
                sqlcom1.Parameters.AddWithValue("@Vehicle_ExtraKMs", txtExtrakm.Text);
                sqlcom1.Parameters.AddWithValue("@Vehicle_AmountOfExtras", AmountForExtraKm);
                sqlcom1.Parameters.AddWithValue("@Vehicle_Remarks", "");
                sqlcom1.Parameters.AddWithValue("@Vehicle_TotalAmount",float.Parse(txtTotalAmount.Text));

                sqlcom1.Parameters.AddWithValue("@CreatedUserID", "Admin");
                

                sqlcom1.Connection = MyConnection.MyDbCon();
                sqlcom1.ExecuteNonQuery();
                sqlcom1.Parameters.Clear();

                lblStatus.Visible = true;
                lblStatus.ForeColor = System.Drawing.Color.Green;
                lblStatus.Text = "Successfully Saved";
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
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                sqlcom1.CommandType = CommandType.StoredProcedure;
                sqlcom1.CommandText = "Rent_A_Car_SP_SearchCustomer";
                sqlcom1.Connection = MyConnection.MyDbCon();
                sqlcom1.Parameters.AddWithValue("@TID", txtSearch.Text);
                SqlDataReader reader = sqlcom1.ExecuteReader();

                if (reader.Read() == false)
                {

                    return;
                }
                else
                {
                    VHTID = reader.GetValue(0).ToString();
                    Vehicle_RegNo = reader.GetValue(1).ToString();
                    Vehicle_StartMileage = float.Parse(reader.GetValue(2).ToString());
                    Vehicle_RentalPerDay = float.Parse(reader.GetValue(3).ToString());
                    Vehicle_ChargesForExtraKms = float.Parse(reader.GetValue(4).ToString());
                    Vehicle_AgreementDateTime = DateTime.Parse(reader.GetValue(5).ToString());
                    Vehicle_ValidationDates = int.Parse(reader.GetValue(6).ToString());
                    Vehicle_FreeKMs = float.Parse(reader.GetValue(7).ToString());
                    Vehicle_SecurityDeposit = float.Parse(reader.GetValue(8).ToString());
                    CustomerName = reader.GetValue(9).ToString();

                    lblCustName.Visible = true;
                    lblCustName.Text = CustomerName;

                    MyConnection.MyDbCon().Close();
                }
            }
            catch (Exception ex)
            {
                lblStatus.Visible = true;
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "System Error in Searching.";
                lblStatus.Font.Bold = true;
            }
        }

        protected void dateReturn_SelectedDateChanged(object sender, Telerik.Web.UI.Calendar.SelectedDateChangedEventArgs e)
        {
           
            DateTime d2 = DateTime.Parse(dateReturn.SelectedDate.ToString());
            DateTime d3 = DateTime.Parse(Vehicle_AgreementDateTime.ToShortDateString());

            //validation Select date ranges 
            if ((d2 >= d3))
            {
                string dt4 = (d2 - d3).TotalDays.ToString();
                if (int.Parse(dt4) <= Vehicle_ValidationDates)
                {
                    txtExraDate.Text = "0";
                }
                else
                {
                    txtExraDate.Text = ((int.Parse(dt4))-Vehicle_ValidationDates).ToString();
                }

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Error", "alert('Selected Date Error')", true);
            }
            
        }

        protected void btnCal_Click(object sender, EventArgs e)
        {
            //float ExtraKmCount = float.Parse(txtExtrakm.Text);
            float ExtraKmFee = float.Parse(txtExKmFee.Text);
            float ExtraDateFee = float.Parse(txtExDtFee.Text);
            int ExDates = int.Parse(txtExraDate.Text);

            Vehicle_ExtraKMs =  float.Parse(txtRetMileage.Text)-Vehicle_StartMileage;
            txtExtrakm.Text = (Vehicle_ExtraKMs-100).ToString();

            if (float.Parse(txtExtrakm.Text) > 0)
            {
                AmountForExtraKm = float.Parse(txtExtrakm.Text) * ExtraKmFee;
            }

            if (ExDates > 0)
            {
                AmountForExtraDates = ExDates * ExtraDateFee;
            }

            txtTotalAmount.Text = (AmountForExtraKm + AmountForExtraDates).ToString();
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bill2.aspx?val=" + VHTID);
        }
        
    }
    }