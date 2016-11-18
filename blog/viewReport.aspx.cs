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
            /*   if(!IsPostBack)
             {
                 Calendar1.Visible = false;
             }
             */
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible)
            {
                Calendar2.Visible = false;
            }
            else
            {
                Calendar2.Visible = true;
            }
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar3.Visible)
            {
                Calendar3.Visible = false;
            }
            else
            {
                Calendar3.Visible = true;
            }
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            fromDate.Text = Calendar2.SelectedDate.ToString("yyyy-MM-dd");
            Calendar2.Visible = false;
        }

        protected void Calendar3_SelectionChanged(object sender, EventArgs e)
        {
            toDate.Text = Calendar3.SelectedDate.ToString("yyyy-MM-dd");
            Calendar3.Visible = false;
        }

        protected void recordsButton_Click(object sender, EventArgs e)
        {

        }
    }
}