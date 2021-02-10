using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Rent_A_Car
{
    public partial class R3 : System.Web.UI.Page
    {
        DbConnection MyConnection = new DbConnection();
        SqlCommand sqlcom1 = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGet_Click(object sender, EventArgs e)
        {
            Dataretrieve();
        }

        public void Dataretrieve()
        {
            DataTable dt = new DataTable();
            SqlConnection cn = MyConnection.MyDbCon();
            SqlCommand sqlcom1 = new SqlCommand("Rent_A_Car_SP_Report_HiredVehicleBIlls", MyConnection.MyDbCon());
            sqlcom1.Parameters.AddWithValue("@fromDate", dtpFrom.SelectedDate);
            sqlcom1.Parameters.AddWithValue("@Todate", dtpTo.SelectedDate);
            sqlcom1.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(sqlcom1);
            try
            {
                da.Fill(dt);

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (cn.State == ConnectionState.Open)
                    cn.Close();
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //--Send Mail ID to selected ID Page--//
            GridViewRow gr = GridView1.SelectedRow;
            string TID = gr.Cells[2].Text;
            Response.Redirect("BillHiredVehicle.aspx?val=" + TID);
        }

    }
}