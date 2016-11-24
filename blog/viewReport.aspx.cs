using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blog
{
    public partial class viewReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //TextBox1.Text = Calendar1.SelectedDate.ToString();
            DateTime dt1 = this.Calendar1.SelectedDate;
            TextBox1.Text = dt1.ToString();
            Calendar1.Visible = false;

        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dt2 = this.Calendar2.SelectedDate;
            TextBox2.Text = dt2.ToString();
            //TextBox2.Text = Calendar2.SelectedDate.ToString();
            Calendar2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}