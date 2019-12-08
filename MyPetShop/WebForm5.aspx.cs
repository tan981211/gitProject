using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPetShop
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox ckbHeader = (CheckBox)sender;
            foreach(GridViewRow r in GridView1.Rows)
            {
                CheckBox ckbItem = (CheckBox)r.FindControl("CheckBoxItem");
                ckbItem.Checked = ckbHeader.Checked;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Text = "所选IDW为：";
            foreach(GridViewRow r in GridView1.Rows)
            {
                CheckBox ckbItem = (CheckBox)r.FindControl("CheckBoxItem");
                if (ckbItem.Checked)
                    Label2.Text += r.Cells[2].Text + ",";

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}