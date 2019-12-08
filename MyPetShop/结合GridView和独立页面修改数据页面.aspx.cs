using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPetShop
{
    public partial class 结合GridView和独立页面修改数据页面 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack && Request.QueryString["cid"]!=null)
            {
                int cid = int.Parse(Request.QueryString["cid"]);
                DataClasses1DataContext pet = new DataClasses1DataContext();
                Category data = pet.Category.Where(p => p.CategoryId == cid).First();
                TextBox1.ReadOnly = true;
                TextBox1.Text = data.CategoryId.ToString();
                TextBox2.Text = data.Name;
                TextBox3.Text = data.Descn;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext pet = new DataClasses1DataContext();
            Category data = pet.Category.Where(p => p.CategoryId == int.Parse(TextBox1.Text)).First();
            data.Name = TextBox2.Text;
            data.Descn = TextBox3.Text;
            pet.SubmitChanges();
            Response.Redirect("WebForm6.asxp");
        }
    }
}