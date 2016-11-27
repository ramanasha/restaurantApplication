using System;
using System.Data.SqlClient;
using System.Configuration;



namespace blog
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static string connString = ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString;
   // made static to avoid error 
      static  SqlConnection con = new SqlConnection(connString);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con != null && con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
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
                Response.Write("<script language=javascript>alert('Username and password do not match');</script>");
               
            }

            con.Close();

        }
      
}
}
