using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Interface_login
{
    public partial class Register_page : System.Web.UI.Page
    {
        string css = @"Data Source=DESKTOP-6E62KA4;Initial Catalog=db_account;Integrated Security=True";
        PassHash sh = new PassHash();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(css))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tb_user (Name, Username, Password, Email) values (@fullname, @user, @pass, @email) ", con);
                cmd.Parameters.AddWithValue("@fullname", txtFullname.Text);
                cmd.Parameters.AddWithValue("@user", txtUsername.Text);
                cmd.Parameters.AddWithValue("@pass", sh.Hashme(txtPassword.Text));
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);

                int x = cmd.ExecuteNonQuery();
                if (x > 0)
                {
                    lblStatus.CssClass = "text-success";
                    lblStatus.Text = "Account Created Successfully";
                    Response.Redirect("Login_page.aspx");
                }
                else
                {
                    lblStatus.CssClass = "text-danger";
                    lblStatus.Text = "Please all the fields";
                }
                con.Close();
            }
        }
    }
}