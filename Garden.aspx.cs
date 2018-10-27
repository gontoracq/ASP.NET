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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkprod = "select count(*) from [tblGarden] where Name ='" + txtName.Text + "'";
                SqlCommand com = new SqlCommand(checkprod, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("There is a product with the same name");
                }
                conn.Close();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            try
            {

                //Compruebo si el usuario esta en Proveedores

                Guid newGUID = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

                conn.Open();

                string checkuser2 = "select count(*) from [tblProvider] where UserName ='" + UserName.Text + "'";
                SqlCommand com2 = new SqlCommand(checkuser2, conn);
                int temp2 = Convert.ToInt32(com2.ExecuteScalar().ToString());

                conn.Close();

                if (temp2 == 1)
                {
                    conn.Open();
                    string checkPasswordQuery2 = "select password from [tblProvider] where UserName = '" + UserName.Text + "'";
                    SqlCommand passCom2 = new SqlCommand(checkPasswordQuery2, conn);
                    string password2 = passCom2.ExecuteScalar().ToString().Replace(" ", "");

                    //Si la password coincide hago el insert

                    if (password2 == Password.Text)
                    {
                        Session["New"] = UserName.Text;
                        Response.Write("Password is correct");

                        //Hacemos el select y el insert del UserName del Proveedor que ha registrado el servicio

                        string providerQuery = "select UserName from [tblProvider] where UserName = '" + UserName.Text + "'";
                        SqlCommand prvQcomm = new SqlCommand(providerQuery, conn);
                        string providerUN = prvQcomm.ExecuteScalar().ToString().Replace(" ", "");

                        string insertQuery = "insert into [tblGarden] (ProductId, Name, Description, Provider) values (@ProductId, @Name, @Description, @provider)";
                        SqlCommand com = new SqlCommand(insertQuery, conn);

                        com.Parameters.AddWithValue("@ProductId", newGUID.ToString());
                        com.Parameters.AddWithValue("@Name", txtName.Text);
                        com.Parameters.AddWithValue("@Description", txtDescription.Text);
                        com.Parameters.AddWithValue("@provider", providerUN);

                        com.ExecuteNonQuery();

                        //Hacemos el select y el insert del UserName del Proveedor que ha registrado el servicio

                    }
                    else
                    {
                        Response.Write("Password is not correct");
                    }
                    conn.Close();
                }

                Response.Redirect("Garden.aspx");
                Response.Write("Registration have been successful");

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void RowCommand(object source, GridViewCommandEventArgs e)
        {
                if (e.CommandName == "SolicitarBhv" /*&& Session["user"]!=null*/)
                {
                    Response.Redirect("CustomerPanel.aspx");
                }
        }
    }
}