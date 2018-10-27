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
    public partial class WebForm6 : System.Web.UI.Page
    {
       
        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from [Table] where UserName ='"+UserName.Text+"'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

                string checkuser2 = "select count(*) from [tblProvider] where UserName ='" + UserName.Text + "'";
                SqlCommand com2 = new SqlCommand(checkuser2, conn);
                int temp2 = Convert.ToInt32(com2.ExecuteScalar().ToString());

                if (temp == 1 || temp2 ==1)
                {
                   Response.Write("User already exist");
                }
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                if (RadioButton1.Checked)
                {
                    Guid newGUID = Guid.NewGuid();

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    conn.Open();
                    string insertQuery = "insert into [Table] (CustomerId,UserName,Password,Email,Country) values (@CustomerId, @Uname, @password, @email, @country)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);

                    com.Parameters.AddWithValue("@CustomerId", newGUID.ToString());
                    com.Parameters.AddWithValue("@Uname", UserName.Text);
                    com.Parameters.AddWithValue("@password", Password.Text);
                    com.Parameters.AddWithValue("@email", Email.Text);
                    com.Parameters.AddWithValue("@country", Country.SelectedItem.ToString());

                    com.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                    Response.Write("Registration is successful");
                    conn.Close();
                }

                else
                {
                    Guid newGUID = Guid.NewGuid();

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    conn.Open();
                    string insertQuery = "insert into [tblProvider] (ProviderId,UserName,Password,Email,Country) values (@ProviderId, @Uname, @password, @email, @country)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);

                    com.Parameters.AddWithValue("@ProviderId", newGUID.ToString());
                    com.Parameters.AddWithValue("@Uname", UserName.Text);
                    com.Parameters.AddWithValue("@password", Password.Text);
                    com.Parameters.AddWithValue("@email", Email.Text);
                    com.Parameters.AddWithValue("@country", Country.SelectedItem.ToString());

                    com.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                    Response.Write("Registration is successful");
                    conn.Close();
                }

               
            }
            catch(Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
            
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
        }

    }
}
