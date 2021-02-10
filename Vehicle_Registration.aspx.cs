using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using Telerik.Web.UI;

namespace Rent_A_Car
{
    public partial class Vehicle_Registration : System.Web.UI.Page
    {
        DbConnection dbConnection = new DbConnection();
        SqlCommand sqlCon = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            //    if (!IsPostBack)
            //    {
            //        DataSet dt = new DataSet();
            //        dt = getV_registerDetails();
            //        GridView1.DataSource = dt.Tables[0];
            //        GridView1.DataBind();
            //    }
            //}
        }
            protected void Button1_Click(object sender, EventArgs e)
            {
                if (TextBox1.Text == "")
                {
                    TextBox1.Text = "Please Select Vehicle Brand";
                    lblMsg.ForeColor = Color.Red;
                    return;
                }

                if (TextBox2.Text == "")
                {
                    TextBox2.Text = "Please Select Vehicle Type";
                    lblMsg.ForeColor = Color.Red;
                    return;
                }
                if (TextBox4.Text == "")
                {
                    TextBox4.Text = "Please Enter Vehicle Number";
                    lblMsg.ForeColor = Color.Red;
                    return;
                }


                try
                {
                    sqlCon.CommandType = CommandType.StoredProcedure;
                    sqlCon.CommandText = "Vehicle_Registration";
                    sqlCon.Connection = dbConnection.MyDbCon();
                    sqlCon.Parameters.AddWithValue("@V_Brand", TextBox1.Text);
                    sqlCon.Parameters.AddWithValue("@V_Type", TextBox2.Text);
                    sqlCon.Parameters.AddWithValue("@V_Number", TextBox4.Text);
                    sqlCon.Parameters.AddWithValue("@Per_Day", TextBox5.Text);
                    sqlCon.Parameters.AddWithValue("@Long_Tern", TextBox6.Text);
                    sqlCon.Parameters.AddWithValue("@Extra_Milage", TextBox7.Text);
                    sqlCon.ExecuteNonQuery();
                    sqlCon.Parameters.Clear();

                    lblMsg.Text = "New Vehicle Registration Successfully";
                    lblMsg.ForeColor = Color.Green;

                    DataSet dt = new DataSet();
                    dt = getV_registerDetails();
                    GridView1.DataSource = dt.Tables[0];
                    GridView1.DataBind();
                }
                catch (Exception)
                {
                    lblMsg.Text = "System Error- Contact the System Administrator";
                    lblMsg.ForeColor = Color.Red;
                }

            }

            public DataSet getV_registerDetails()
            {
                sqlCon.CommandType = CommandType.Text;
                sqlCon.CommandText = "select * from Rent_A_Car_Vehicle_registration";
                sqlCon.Connection = dbConnection.MyDbCon();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = sqlCon;
                DataSet dt = new DataSet();
                sda.Fill(dt);

                return dt;
            }



        }
    }
