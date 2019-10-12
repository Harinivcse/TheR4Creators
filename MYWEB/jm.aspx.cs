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
    public partial class jm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@" Data Source=(local);Initial Catalog=ewaste;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "select * from imgupload";
            cmd.ExecuteNonQuery();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile != null)
            {

                TextBox1.Text = FileUpload1.FileName;
            }

            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            //cmd.CommandText = " insert into register values(@name,@gender,@address)";
            //cmd.Parameters.AddWithValue("@name",TextBox1.Text);
            //cmd.Parameters.AddWithValue("@gender", TextBox2.Text);
            //cmd.Parameters.AddWithValue("@address", TextBox3.Text);

            cmd.CommandText = " insert into imgupload values(@name,@image)";
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@image","img/"+ TextBox1.Text);
            




            cmd.ExecuteNonQuery();

            con.Close();
        }
    }
}