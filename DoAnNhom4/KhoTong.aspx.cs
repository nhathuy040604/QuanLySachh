using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnNhom4
{
    public partial class KhoTong : System.Web.UI.Page
    {
        ketnoi kn = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            string MaSach = Request.QueryString["MaSach"];
            if (string.IsNullOrEmpty(MaSach))
                q = " select *from KhoSach";
            else
            {
                q = "select *from KhoSach where MaSach= '" + MaSach + "'";
            }
            this.DataList1.DataSource = kn.laydata(q);
            this.DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string MaSach = ((Button)sender).CommandArgument;
            Response.Redirect("ChiTietSach.aspx?" + MaSach);

        }
    }
}