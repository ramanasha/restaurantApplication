using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace blog
{
    public partial class SaleReport : System.Web.UI.Page
    {

        static string connString = ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString;
        // made static to avoid error 
        static SqlConnection con = new SqlConnection(connString);

        protected void Page_Load(object sender, EventArgs e)
        {
            /*   if(!IsPostBack)
               {
                   Calendar1.Visible = false;
               }
               */
        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            // Need to add for date. 
            cmd.CommandText = "INSERT INTO Sale VALUES ('" + this.datepicker.Text + "','" + totalSale.Text + "','" + amountCard.Text + "','" + lunchCard.Text + "','" + billAmount.Text + "','" + customerBillAmount.Text + "','" + amountCash.Text + "','" + cashCollected.Text + "','" + cashCounter.Text + "','" + comments.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script language=javascript>alert('Report was submitted. Thank you!');</script>");

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            datepicker.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}
