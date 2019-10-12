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
    public partial class Form1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(local);Initial Catalog=website;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmdd = new SqlCommand();
            cmdd.Connection = conn;
            cmdd.CommandText = "insert into newregister values(@name,@gender,@address,@password,@phonenumber)";
            cmdd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmdd.Parameters.AddWithValue("@gender", TextBox2.Text);
            cmdd.Parameters.AddWithValue("@address", TextBox3.Text);
            cmdd.Parameters.AddWithValue("@password", TextBox4.Text);
            cmdd.Parameters.AddWithValue("@phonenumber", TextBox5.Text);
            cmdd.ExecuteNonQuery();

            conn.Close();

            Label6.Text = "inserted";
        }
    }
}