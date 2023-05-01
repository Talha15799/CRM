using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class header_footer : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration page.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("aboutus.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("contactus.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration page.aspx");

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("aboutus.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("contactus.aspx");
    }
}
