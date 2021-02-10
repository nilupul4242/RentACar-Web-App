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
    public partial class User_Login : System.Web.UI.Page
    {

        DbConnection MyConnection = new DbConnection();
        SqlCommand sqlCom = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {

                sqlCom.CommandType = CommandType.Text;
                sqlCom.CommandText = "select * from Rent_A_Car_Login where UserName = '" + txtUserName.Text + "' and Password ='" + txtPassword.Text + "'";
                sqlCom.Connection = MyConnection.MyDbCon();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = sqlCom;
                DataSet dt = new DataSet();
                sda.Fill(dt);

                if (dt.Tables[0].Rows.Count > 0)
                {
                    Response.Redirect("~/Home.aspx", false);
                }
                else
                {
                    //Response.Redirect("~/loginV2.aspx", false);
                    Session["redirect"] = "invalid";
                    lblMsg.Text = "Invalid Username or Password";
                }

            }



            catch (Exception ex)
            {
                lblMsg.Text = "System error, Please contact the system administrator";
                lblMsg.ForeColor = Color.Red;
            }
        }
    }
}