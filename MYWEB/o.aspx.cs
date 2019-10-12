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
    public partial class o : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@" Data Source=(local);Initial Catalog=ewaste;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                TextBox5.Text = Session["name"].ToString();
            }
            if (Session["mail"] != null)
            {
                TextBox8.Text = Session["mail"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile != null)
            {

                TextBox10.Text = FileUpload1.FileName;
            }
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            //cmd.CommandText = " insert into register values(@name,@gender,@address)";
            //cmd.Parameters.AddWithValue("@name",TextBox1.Text);
            //cmd.Parameters.AddWithValue("@gender", TextBox2.Text);
            //cmd.Parameters.AddWithValue("@address", TextBox3.Text);

            cmd.CommandText = " insert into plastic values(@category,@title,@description,@weight,@price,@name,@location,@number,@email,'others',@image)";
            cmd.Parameters.AddWithValue("@category", TextBox9.Text);
            cmd.Parameters.AddWithValue("@title", TextBox1.Text);
            cmd.Parameters.AddWithValue("@description", TextBox2.Text);
            cmd.Parameters.AddWithValue("@weight", TextBox3.Text);
            cmd.Parameters.AddWithValue("@price", TextBox4.Text);
            cmd.Parameters.AddWithValue("@name", TextBox5.Text);
            cmd.Parameters.AddWithValue("@location", TextBox6.Text);
            cmd.Parameters.AddWithValue("@number", TextBox7.Text);
            cmd.Parameters.AddWithValue("@email", TextBox8.Text);
            cmd.Parameters.AddWithValue("@image", "img/" + TextBox10.Text);




            cmd.ExecuteNonQuery();

            con.Close();

            Response.Write("<script language ='javascript'>alert('posting your ad successfully')</script>");
            // Label3.Text = "signing in";

        }
    }
}