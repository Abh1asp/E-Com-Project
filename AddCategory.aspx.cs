using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class Child1 : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = "~/images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(path));

            string adcat = "insert into CategoryTab values('" + TextBox1.Text + "','" + path + "','" + TextBox2.Text + "')";
            int i = obj.Fn_nq(adcat);
            if (i != 0)
            {
                Label5.Text = "Inserted";
            }
        }
    }
}