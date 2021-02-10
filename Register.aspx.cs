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
    public partial class Register : System.Web.UI.Page
    {
        DbConnection dbConnection = new DbConnection();
        SqlCommand sqlCon = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
       {
            if (txtUserName.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Add", "username();", true);
                return;
            }
            if (txtPassword.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Add", "password();", true);
                return;
            }
            if (txtConfirm.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Add", "confirm();", true);
                return;
            }
            if (DropDownList1.SelectedValue.ToString() == "3")
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Add", "userroll();", true);
                return;
            }

            if (txtPassword.Text != txtConfirm.Text)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Add", "confirmpassword();", true);
                return;
            }

            //if (!checkDublicate())
            //{

                sqlCon.CommandType = CommandType.StoredProcedure;
                sqlCon.CommandText = "AddUserAccount";
                sqlCon.Connection = dbConnection.MyDbCon();

                //sqlCom.Parameters.AddWithValue("@Name", txtName.Text);
                sqlCon.Parameters.AddWithValue("@UserName", txtUserName.Text);
                sqlCon.Parameters.AddWithValue("@Password", txtPassword.Text);
                sqlCon.Parameters.AddWithValue("@Roll", DropDownList1.SelectedValue.ToString());
                sqlCon.Parameters.AddWithValue("@CreatedUser", "Admin");
                sqlCon.Parameters.AddWithValue("@IsActive", 1);
                sqlCon.ExecuteNonQuery();
                sqlCon.Parameters.Clear();

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Add", "UserCreate();", true);
            }
            //else
            //{
            //    ScriptManager.RegisterStartupScript(this, typeof(Page), "Add", "UserAlready();", true);
            //}
        }

        //private bool checkDublicate()
        //{
        //    sqlCon.CommandType = CommandType.Text;
        //    sqlCon.CommandText = "select * from Rent_A_Car_Login= '" + txtUserName.Text + "'";
        //    sqlCon.Connection = dbConnection.MyDbCon();
        //    SqlDataAdapter sda = new SqlDataAdapter();
        //    sda.SelectCommand = sqlCon;
        //    DataSet dt = new DataSet();
        //    sda.Fill(dt);

        //    if (dt.Tables[0].Rows.Count > 0)
        //    {
        //        return true;
        //    }
        //    else
        //        return false;
        //}
    }
