using System;

namespace blog
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            
            Response.Redirect("Default.aspx");
        }
    }
}