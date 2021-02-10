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
    public partial class Login : System.Web.UI.Page
    {
        DbConnection MyConnection = new DbConnection();
        SqlCommand sqlcom1 = new SqlCommand();

        public static string TID; public static bool checkImgUpload=false;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblStatus.Visible = false;



        }

        protected void btnreg_Click1(object sender, EventArgs e)
        {
            try
            {
                if (checkImgUpload == true)
                {
                    sqlcom1.CommandType = CommandType.StoredProcedure;
                    sqlcom1.CommandText = "Rent_A_Car_SP_CustRegister";

                    //Customer Details
                    sqlcom1.Parameters.AddWithValue("@Cust_Name", txtName.Text);
                    // sqlcom1.Parameters.AddWithValue("@Cust_Image", "img");
                    sqlcom1.Parameters.AddWithValue("@Cust_Address", txtAdress.Text);
                    sqlcom1.Parameters.AddWithValue("@Cust_Mobile", txtMobile.Text);
                    sqlcom1.Parameters.AddWithValue("@Cust_HomeTel", txtTele.Text);
                    sqlcom1.Parameters.AddWithValue("@Cust_Email", txtEmail.Text);
                    sqlcom1.Parameters.AddWithValue("@Cust_PurposeForHire", txtPurpose.Text);
                    sqlcom1.Parameters.AddWithValue("@Cust_NIC", txtId.Text);
                    sqlcom1.Parameters.AddWithValue("@Cust_PassportNo", txtPurpose.Text);
                    sqlcom1.Parameters.AddWithValue("@Cust_DLNo", txtDl.Text);
                    sqlcom1.Parameters.AddWithValue("@Guarant_Name", txtGratrantor.Text);
                    sqlcom1.Parameters.AddWithValue("@Guarant_Address", txtGraAdress.Text);
                    sqlcom1.Parameters.AddWithValue("@Guarant_Telephone", txtGraTele.Text);
                    sqlcom1.Parameters.AddWithValue("@Guarant_NIC_PP_DL", txtGraNic_PP.Text);

                    //Card Details
                    sqlcom1.Parameters.AddWithValue("@Card_HolderName", txtCardName.Text);
                    sqlcom1.Parameters.AddWithValue("@Card_Number", txtCardNum.Text);
                    sqlcom1.Parameters.AddWithValue("@Card_ExpDate", txtExDate.Text);
                    sqlcom1.Parameters.AddWithValue("@Card_Bank", txtBank.Text);

                    //Vehicle Details
                    sqlcom1.Parameters.AddWithValue("@Vehicle_Type", txtVehi.Text);
                    sqlcom1.Parameters.AddWithValue("@Vehicle_RegNo", txtVehiReg.Text);
                    sqlcom1.Parameters.AddWithValue("@Vehicle_StartMileage", txtMileage.Text);
                    sqlcom1.Parameters.AddWithValue("@Vehicle_StartFuel", txtStFuel.Text);
                    sqlcom1.Parameters.AddWithValue("@Vehicle_RentalPerDay", txtRenperDay.Text);
                    sqlcom1.Parameters.AddWithValue("@Vehicle_ChargesForExtraKms", txtCharExtra.Text);
                    sqlcom1.Parameters.AddWithValue("@Vehicle__Remarks", txtRemarks.Text);
                    sqlcom1.Parameters.AddWithValue("@Vehicle_AgreementDateTime", dateAggre.SelectedDate);
                    sqlcom1.Parameters.AddWithValue("@Vehicle_ValidationDates", txtValidates.Text);
                    sqlcom1.Parameters.AddWithValue("@Vehicle_FreeKMs", txtfreekm.Text);
                    sqlcom1.Parameters.AddWithValue("@Vehicle_SecurityDeposit", txtDepo.Text);
                    sqlcom1.Parameters.AddWithValue("@Vehicle_LicenseExDate", dateexLice.SelectedDate);
                    sqlcom1.Parameters.AddWithValue("@Vehicle_InsuranceExDate", dateExInsu.SelectedDate);
                    sqlcom1.Parameters.AddWithValue("@CreatedUserID", "Admin");

                    sqlcom1.Connection = MyConnection.MyDbCon();
                    sqlcom1.ExecuteNonQuery();
                    sqlcom1.Parameters.Clear();

                    lblStatus.Visible = true;
                    lblStatus.ForeColor = System.Drawing.Color.Green;
                    lblStatus.Text = "Successfully Registered";
                    lblStatus.Font.Bold = true;
                    lblStatus.Focus();

                    //GetTID
                    sqlcom1.CommandType = CommandType.StoredProcedure;
                    sqlcom1.CommandText = "Rent_A_Car_SP_GetMaxTID";
                    sqlcom1.Connection = MyConnection.MyDbCon();
                    SqlDataReader reader = sqlcom1.ExecuteReader();

                    if (reader.Read() == false)
                    {

                        return;
                    }
                    else
                    {
                        TID = reader.GetValue(0).ToString();
                    }

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Error", "alert('Photo Uploading Error')", true);
                }
            }

            catch (Exception ex)
            {
                lblStatus.Visible = true;
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "System Error in Validating data." + ex;
                lblStatus.Font.Bold = true;
            }
        }

        protected void btnphoto_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('ScanImage.aspx','Graph','height=400,width=500');", true);


        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


                string cs = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("SaveCapturedImages", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter paramName = new SqlParameter()
                    {
                        ParameterName = @"Name",
                        Value = filename
                    };
                    cmd.Parameters.Add(paramName);

                    SqlParameter paramSize = new SqlParameter()
                    {
                        ParameterName = "@Size",
                        Value = fileSize
                    };
                    cmd.Parameters.Add(paramSize);

                    SqlParameter paramImageData = new SqlParameter()
                    {
                        ParameterName = "@ImageData",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paramImageData);

                    SqlParameter paramNewId = new SqlParameter()
                    {
                        ParameterName = "@NewId",
                        Value = -1,
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(paramNewId);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    lblImageStatus.Visible = true;
                    lblImageStatus.ForeColor = System.Drawing.Color.Green;
                    lblImageStatus.Text = "Upload Successful";

                        cmd.Parameters["@NewId"].Value.ToString();
                }
            }
            else
            {
                lblImageStatus.Visible = true;
                lblImageStatus.ForeColor = System.Drawing.Color.Red;
                lblImageStatus.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";

            }
            checkImgUpload = true;
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/Bill.aspx");
            Response.Redirect("Bill1.aspx?val=" + TID);
        }

    }

        }


    
