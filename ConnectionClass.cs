using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Project1
{
    public class ConnectionClass
    {
        SqlConnection con;
        SqlCommand cmd;
        public ConnectionClass()
        {
            con = new SqlConnection(@"server=DESKTOP-IFK5AR1\SQLEXPRESS;database=Project;integrated security=true");
        }
        public int Fn_nq(string query)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            cmd = new SqlCommand(query, con);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();
            return a;
        }
        public string Fn_sc(string query)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            cmd = new SqlCommand(query, con);
            con.Open();
            string s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;
        }
        public SqlDataReader Fn_dr(string query)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet Fn_ds(string query)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}