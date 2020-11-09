using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GamerTime.AngularData
{
    public class sqlConnection
    {
        static string ServerName = ConfigurationManager.AppSettings["_Server_Name"];
        static string DBName = ConfigurationManager.AppSettings["_DB_Name"];

        public static bool updateDB(String Query)
        {
            string strconnection = @"Data Source=" + ServerName + ";Initial Catalog=" + DBName + ";Integrated Security=True";
            SqlConnection con = new SqlConnection(strconnection);
            bool res = false;
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand(Query, con);
                res = (com.ExecuteNonQuery() > 0) ? true : false;
            }
            catch { }
            finally { con.Close(); }
            return res;
        }
        public static DataSet getFromDB(String Query)
        {
            string strconnection = @"Data Source=" + ServerName + ";Initial Catalog=" + DBName + ";Integrated Security=True";
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(strconnection))
            {
                using (var cmd = new SqlCommand(Query, con))
                {
                    try
                    {
                        con.Open();
                        da = new SqlDataAdapter(cmd);
                        da.Fill(ds, "tbl");
                    }
                    catch  {}
                }
            }
            return ds;
        }
    }
}