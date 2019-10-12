using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MYWEB
{
    public partial class signup_new : System.Web.UI.Page
    {
       // SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=website;Integrated Security=True ");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=website;Integrated Security=True");
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from signup where email ='" + TextBox3.Text + "'  ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script language='javascript'>alert ('This email is already registered.please try with an new email ');</script>");

                }

                else
                {
                   // con.Open();
                    SqlCommand cm = new SqlCommand("insert into signup values(@name,@surname,@email,@phno,@doorno,@streetname,@landmark,@city,@state,@dob,@password)", con);
                    //cm.Connection = con;
                    //cm.CommandText = "insert into signup12 values(@name,@surname,@email,@phno,@doorno,@streetname,@landmark,@city,@state,@dob,@password)";

                    cm.Parameters.AddWithValue("name", TextBox1.Text);
                    cm.Parameters.AddWithValue("surname", TextBox2.Text);
                    cm.Parameters.AddWithValue("email", TextBox3.Text);
                    cm.Parameters.AddWithValue("phno", TextBox4.Text);
                    cm.Parameters.AddWithValue("doorno", TextBox8.Text);
                    cm.Parameters.AddWithValue("streetname", TextBox9.Text);
                    cm.Parameters.AddWithValue("landmark", TextBox10.Text);
                    cm.Parameters.AddWithValue("city", TextBox13.Text);
                    cm.Parameters.AddWithValue("state", TextBox12.Text);
                    cm.Parameters.AddWithValue("dob", TextBox5.Text);
                    cm.Parameters.AddWithValue("password", TextBox6.Text);
                    //cm.Parameters.AddWithValue("@confirmpassword", TextBox7.Text);
                    cm.ExecuteNonQuery();
                    con.Close();
                    Label11.Text = "signing up successfully";


                    Response.Redirect("main.aspx");

                }



            }

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
           
        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {



















        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}