using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class AdmReg : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mid = "select max(Reg_Id) from LogTab";
            string reg_id = obj.Fn_sc(mid);

            int regid = 0;
            if (reg_id == "")
            {
                regid = 1;
            }
            else
            {
                int newreg_id = Convert.ToInt32(reg_id);
                regid = newreg_id + 1;
            }

            string ins = "insert into AdminTab values(" + regid + ",'" + TextBox5.Text + "','" + TextBox6.Text + "')";
            int i = obj.Fn_nq(ins);
            string ins1 = "insert into LogTab values(" + regid + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','admin','active')";
            int j = obj.Fn_nq(ins1);

            if (j != 0)
            {
                Label1.Text = "Successfully Registered";
            }
        }
    }
}