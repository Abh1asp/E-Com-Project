using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project1
{
    public partial class ViewDetails : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Grid_Bind();
                Grid_Bind2();
            }
        }

        public void Grid_Bind()
        {
            string sel = "select * from CategoryTab";
            DataSet ds = obj.Fn_ds(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        public void Grid_Bind2()
        {
            string sel = "select Pro_Id,Name,Price,Image,Description,Stock from ProductTab";
            DataSet ds = obj.Fn_ds(sel);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int usrid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from CategoryTab where Cat_Id=" + usrid + "";
            int a = obj.Fn_nq(del);

            Grid_Bind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Grid_Bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Grid_Bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int usrid = Convert.ToInt32(GridView1.DataKeys[i].Value);

            TextBox txtname = (TextBox)GridView1.Rows[i].Cells[1].Controls[0];
            TextBox txtaddr = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];

            string up = "update CategoryTab set Name='" + txtname.Text + "',Description='" + txtaddr.Text + "' where Cat_Id=" + usrid + "";
            int b = obj.Fn_nq(up);

            GridView1.EditIndex = -1;
            Grid_Bind();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int usrid = Convert.ToInt32(GridView2.DataKeys[i].Value);
            string del = "delete from ProductTab where Pro_Id=" + usrid + "";
            int a = obj.Fn_nq(del);

            Grid_Bind2();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            Grid_Bind2();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            Grid_Bind2();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int usrid = Convert.ToInt32(GridView2.DataKeys[i].Value);

            TextBox txtname = (TextBox)GridView2.Rows[i].Cells[1].Controls[0];
            TextBox txtprice = (TextBox)GridView2.Rows[i].Cells[2].Controls[0];
            TextBox txtdesc = (TextBox)GridView2.Rows[i].Cells[4].Controls[0];
            TextBox txtstock = (TextBox)GridView2.Rows[i].Cells[5].Controls[0];

            string up = "update ProductTab set Name='" + txtname.Text + "',Price=" + txtprice.Text + ",Description='" + txtdesc.Text + "',Stock=" + txtstock.Text + " where Pro_Id=" + usrid + "";
            int b = obj.Fn_nq(up);

            GridView2.EditIndex = -1;
            Grid_Bind2();
        }
    }
}