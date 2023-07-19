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
    public partial class Login_page : System.Web.UI.Page
    {
        string css = @"Data Source=DESKTOP-6E62KA4;Initial Catalog=db_account;Integrated Security=True";
        SqlConnection con;
        PassHash sh = new PassHash();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(css);
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
                    SqlDataAdapter sda = new SqlDataAdapter("select count (*) from tb_user where Username = @user and Password= @pass", con);
                    sda.SelectCommand.Parameters.AddWithValue("@user", txtUsername.Text);
                    sda.SelectCommand.Parameters.AddWithValue("@pass", sh.Hashme(txtPassword.Text));
            con.Open();
            try
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows[0][0].ToString() == "1")
                {
                    lblStatus.CssClass = "text-success";
                    lblStatus.Text = "Login Succesful";
                    Response.Redirect("dashboard.aspx");
                }
                else
                {
                    lblStatus.CssClass = "text-danger";
                    lblStatus.Text = "Invaild Username or Password";
                }
            }catch(Exception ex)
            {
                lblStatus.CssClass = "text-danger";
                lblStatus.Text = "Error";
            }
            finally
            {
                con.Close();
            }


          
        }
    }
}