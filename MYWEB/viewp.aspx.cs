﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MYWEB
{
    public partial class viewp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@" Data Source=(local);Initial Catalog=ewaste;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["plastics"] != null)
            {
                TextBox1.Text = Session["plastics"].ToString();
            }
            if (Session["mail"] != null)
            {
                TextBox2.Text = Session["mail"].ToString();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            
            
            cmd.CommandText = "select * from plastic where category='" + DropDownList1.Text + "' and mc='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
           // if (Session["category"] != null)
            //{
               // Response.Write("<script language ='javascript'>alert('no items available')</script>");
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            //}
            //else
            //{ Response.Write("<script language ='javascript'>alert('no items available')</script>"); }
            //Response.Write("<script language ='javascript'>alert('posting your ad successfully')</script>");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "select * from plastic where  mc='" + TextBox1.Text + "' ";
            cmd.ExecuteNonQuery();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = " insert into register1 values(@category,@subcategory,@email)";
            cmd.Parameters.AddWithValue("@category", TextBox1.Text);
            cmd.Parameters.AddWithValue("@subcategory", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.ExecuteNonQuery();

            con.Close();

            Response.Write("<script language ='javascript'>alert('registering a request successfully')</script>");
        }
    }
}