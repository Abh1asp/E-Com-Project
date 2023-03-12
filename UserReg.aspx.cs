using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class UserReg : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string maxid = "select max(Reg_Id) from LogTab";
            string reg_id = obj.Fn_sc(maxid);

            int regid = 0;
            if (reg_id == "")
            {
                regid = 1;
            }
            else
            {
                int newrid = Convert.ToInt32(reg_id);
                regid = newrid + 1;
            }

            string ins = "insert into UserTab values(" + regid + ",'" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "')";
            int i = obj.Fn_nq(ins);
            string ins1 = "insert into LogTab values(" + regid + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','User','Active')";
            int j = obj.Fn_nq(ins1);
        }
    }
}