using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace MYWEB
{
    public partial class regg : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=website;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            //    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-5TFOCL92\SQLexpress;Initial Catalog=market;Integrated Security=True");
            con.Open();
            SqlCommand cm = new SqlCommand("select * from register where Email ='" + Email.Text + "'  ", con);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script language='javascript'>alert ('This email is already registered.please try with an new email ');</script>");

            }


            else
            {

                //  con.Open();
                SqlCommand cmd = new SqlCommand("insert into register values (@FirstName, @LastName, @Email, @MobileNumber, @Password)", con);
                cmd.Parameters.AddWithValue("FirstName", FnameTxt.Text);
                cmd.Parameters.AddWithValue("LastName", LnameTxt.Text);
                cmd.Parameters.AddWithValue("Email", Email.Text);
                cmd.Parameters.AddWithValue("MobileNumber", MobileNumber.Text);
                cmd.Parameters.AddWithValue("Password", Password.Text);
                cmd.ExecuteNonQuery();
                Label7.Visible = true;
                Label7.Text = "User registered successfully";

                FnameTxt.Text = "";
                LnameTxt.Text = "";
                Email.Text = "";
                MobileNumber.Text = "";
                Password.Text = "";
                FnameTxt.Focus();

                Response.Redirect("main.aspx");

            }
        }
    }
}
