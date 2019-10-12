using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MYWEB
{
    public partial class viewc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String a = "e-waste";
            Session["ewaste"] = a;
             Response.Redirect("viewewaste.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String a = "plastics";
            Session["plastics"] = a;
            Response.Redirect("viewp.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String a = "metals";
            Session["metal"] = a;
            Response.Redirect("viewm.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String a = "glasses";
            Session["glass"] = a;
            Response.Redirect("viewg.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String a = "construction products";
            Session["constructionproduct"] = a;
            Response.Redirect("viewco.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            String a = "others";
            Session["others"] = a;
            Response.Redirect("viewo.aspx");
        }
    }
}