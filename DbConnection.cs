using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;



namespace Rent_A_Car
{
    public class DbConnection
    {
        public SqlConnection MyDbCon()
        {
            {
                string Con = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
                SqlConnection Sqlcon = new SqlConnection(Con);

                Sqlcon.Open();
                return Sqlcon;
            }

        }
    }
}
