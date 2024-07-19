using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnNhom4
{
    public partial class Home : System.Web.UI.MasterPage
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q = " select * from ChuDe";
            this.DataList1.DataSource = kn.laydata(q);
            this.DataList1.DataBind();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string masach = ((LinkButton)sender).CommandArgument;
            Response.Redirect("KhoTong.aspx?masach=" + masach);
        }
    }
}