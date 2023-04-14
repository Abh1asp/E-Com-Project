using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Project1
{
    public partial class addProd : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select Cat_Id,Name from CategoryTab";
                DataSet ds = obj.Fn_ds(s);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Name";
                DropDownList1.DataValueField = "Cat_Id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "-Select-");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = "~/images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(path));

            string adprd = "insert into ProductTab values('" + DropDownList1.SelectedItem.Value + "','" + TextBox1.Text + "'," + TextBox2.Text + ",'" + path + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'Available')";
            int a = obj.Fn_nq(adprd);
            if (a != 0)
            {
                Label8.Text = "Inserted";
            }
        }
    }
}