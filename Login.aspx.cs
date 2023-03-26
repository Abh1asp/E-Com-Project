using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select count(Reg_Id) from LogTab where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
            string cid = obj.Fn_sc(sel);

            if (cid == "1")
            {
                string sel1 = "select Reg_Id from LogTab where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                string id = obj.Fn_sc(sel1);

                Session["uid"] = id;

                string log = "select Log_Type from LogTab where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                string logtype = obj.Fn_sc(log);

                if (logtype == "User")
                {
                    Response.Redirect("UserHomeChild.aspx");
                }
                else
                {
                    Response.Redirect("AdmHome.aspx");
                }
                
            }
            else
            {
                Label1.Text = "Please Register";
            }
        }
    }
}