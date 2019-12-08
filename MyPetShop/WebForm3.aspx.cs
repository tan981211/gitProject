using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPetShop
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinqDataSource1_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            Label1.Text = "第" + (GridView1.PageIndex + 1) + "页" + "共" + GridView1.PageCount + "页";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.PageSize = int.Parse(DropDownList1.SelectedValue);
            GridView1.DataBind();
        }
    }
}