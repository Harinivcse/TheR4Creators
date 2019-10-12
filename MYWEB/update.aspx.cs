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
    public partial class update : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=website;Integrated Security=True ");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            //cmd.CommandText = " insert into register values(@name,@gender,@address)";
            //cmd.Parameters.AddWithValue("@name",TextBox1.Text);
            //cmd.Parameters.AddWithValue("@gender", TextBox2.Text);
            //cmd.Parameters.AddWithValue("@address", TextBox3.Text);

            cmd.CommandText = " update signin set name=@name , password=@password where email =@email";
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("main.aspx");
            Response.Write("<script language ='javascript'>alert('your account has been updated successfully')</script>");
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            //cmd.CommandText = " insert into register values(@name,@gender,@address)";
            //cmd.Parameters.AddWithValue("@name",TextBox1.Text);
            //cmd.Parameters.AddWithValue("@gender", TextBox2.Text);
            //cmd.Parameters.AddWithValue("@address", TextBox3.Text);

            cmd.CommandText = " delete from signin  where email =@email";
            //cmd.Parameters.AddWithValue("@name", TextBox1.Text);
           // cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.ExecuteNonQuery();

            con.Close();


            Response.Write("<script language ='javascript'>alert('your account has been deleted successfully')</script>");
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}