using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace EJ14
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            while (Session["New"] != null)
            {
                Response.Redirect("LogOut.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from [Table] where UserName ='" + UserName.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

                string checkuser2 = "select count(*) from [tblProvider] where UserName ='" + UserName.Text + "'";
                SqlCommand com2 = new SqlCommand(checkuser2, conn);
                int temp2 = Convert.ToInt32(com2.ExecuteScalar().ToString());

                conn.Close();
                if (temp == 1)
                {
                    conn.Open();
                    string checkPasswordQuery = "select password from [Table] where UserName = '" + UserName.Text + "'";
                    SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
                    string password = passCom.ExecuteScalar().ToString().Replace(" ", "");

                    if (password == Password.Text)
                    {
                        if (password == "gontoracq1991")
                        {
                            Response.Redirect("AdminPanel.aspx");
                        }
                        Session["New"] = UserName.Text;
                        Response.Write("Password is correct");
                        Response.Redirect("Main.aspx");

                    }
                    else 
                        {
                            Response.Write("Password is not correct");
                        }

                }
                if (temp2 == 1)
                {
                    conn.Open();
                    string checkPasswordQuery2 = "select password from [tblProvider] where UserName = '" + UserName.Text + "'";
                    SqlCommand passCom2 = new SqlCommand(checkPasswordQuery2, conn);
                    string password2 = passCom2.ExecuteScalar().ToString().Replace(" ", "");

                    if (password2 == Password.Text)
                    {
                        Session["New"] = UserName.Text;
                        Response.Write("Password is correct");
                        Response.Redirect("Main.aspx");

                    }
                    else
                    {
                        Response.Write("User Name is not correct");
                    }
                    conn.Close();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
    }
}
