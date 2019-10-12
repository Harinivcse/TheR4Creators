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
    public partial class signin_new : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=website;Integrated Security=True ");
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox4.Text = DateTime.Today.ToString("dd-MM-yyyy");   
           // TextBox4.Text = DateTime.Today.ToShortTimeString();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from signup where password='" + TextBox2.Text + "' and email='" + TextBox3.Text + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                //con.Open();
                SqlCommand cm = new SqlCommand();
                cm.Connection = con;
                cm.CommandText = "insert into signin(password,id,email,date) values(@password,@id,@email,@date)";

               // cm.Parameters.AddWithValue("@name", TextBox1.Text);
                cm.Parameters.AddWithValue("@password", TextBox2.Text);
                cm.Parameters.AddWithValue("@id", "");
                cm.Parameters.AddWithValue("@email", TextBox3.Text);
                cm.Parameters.AddWithValue("@date", TextBox4.Text);
                
                cm.ExecuteNonQuery();
                con.Close();


                Response.Write("<script language='javascript'>alert ('login successful');</script>");
                //String a = TextBox1.Text;
                String b = TextBox3.Text;
               // Session["name"] = a;
                Session["mail"] = b;

                Response.Redirect("main.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'>alert ('invalid user');</script>");
                //Response.Redirect("placeorder.aspx");
            }
              //  SqlCommand cmd = new SqlCommand();
              //  cmd.Connection = con;
                //cmd.CommandText = " insert into register values(@name,@gender,@address)";
                //cmd.Parameters.AddWithValue("@name",TextBox1.Text);
                //cmd.Parameters.AddWithValue("@gender", TextBox2.Text);
                //cmd.Parameters.AddWithValue("@address", TextBox3.Text);

             //   cmd.CommandText = " insert into signin values(@name,@password,'',@email)";
             //   cmd.Parameters.AddWithValue("@name", TextBox1.Text);
              //  cmd.Parameters.AddWithValue("@password", TextBox2.Text);
                //cmd.Parameters.AddWithValue("@id", TextBox5.Text);
              //  cmd.Parameters.AddWithValue("@email", TextBox4.Text);




              //  cmd.ExecuteNonQuery();

             //   con.Close();


                //Label3.Text = "signing in";

            //TextBox4.Text = DateTime.Today.ToLongDateString();   
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

       
    }
}