using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyPetShop
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext Pet = new DataClasses1DataContext();
            var data = Pet.Category.Select(p => p);
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "CategoryId";
            DropDownList1.DataSource = data;
            DropDownList1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedItem.Text;
        }
    }
}