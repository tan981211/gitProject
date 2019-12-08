using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPetShop
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                DataClasses1DataContext Pet = new DataClasses1DataContext();
                var data = Pet.Category.Select(p => p);
                RadioButtonList1.DataTextField = "Name";
                RadioButtonList1.DataValueField = "CategoryId";
                RadioButtonList1.DataSource = data;
                RadioButtonList1.DataBind();
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataClasses1DataContext Pet = new DataClasses1DataContext();
            var data = Pet.Product.Where(p => p.CategoryId == int.Parse(RadioButtonList1.SelectedValue));
            ListBox1.DataTextField = "Name";
            ListBox1.DataValueField = "ProductId";
            ListBox1.DataSource = data;
            ListBox1.DataBind();
        }
    }
}