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
    public partial class prodHome : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string dl = "select * from ProductTab where Cat_Id=" + Session["catid"] + "";
            DataSet ds = obj.Fn_ds(dl);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}