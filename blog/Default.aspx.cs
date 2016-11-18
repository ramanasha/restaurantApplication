using System;
using System.Data.SqlClient;
using System.Configuration;



namespace blog
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static string connString = ConfigurationManager.ConnectionStrings["NetShopConnectionString"].ConnectionString;
   // made static to avoid error 
      static  SqlConnection con = new SqlConnection(connString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM UserTable WHERE UserName = '" + username.Text + "' AND Password = '" + password.Text + "'";
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                Session["UserName"] = username.Text;
                Response.Redirect("menu.aspx");
            }
            else
            {
                Response.Write("Please enter valid username and password");
            }

            con.Close();

        }
      
}
}
