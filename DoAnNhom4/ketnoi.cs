using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace DoAnNhom4
{
    public class ketnoi
    {
        SqlConnection con;
        private void layketnoi()
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\nguye\source\repos\DoAnNhom4\DoAnNhom4\App_Data\DatabaseTeam.mdf;Integrated Security=True");
            con.Open();
        }
        private void dongketnoi()
        {
            if (con.State == ConnectionState.Open) ;
            con.Close();
        }
        public DataTable laydata(string sql)
        {
            DataTable dt = new DataTable();
            {
                try
                {
                    layketnoi();
                    SqlDataAdapter adap = new SqlDataAdapter(sql, con);
                    adap.Fill(dt);
                }
                catch
                {
                    dt = null;
                }
                finally
                {
                    dongketnoi();
                }
                return dt;
            }
        }

    }
}
   