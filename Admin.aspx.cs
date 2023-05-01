using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{

    string UserName;
    protected void Page_Load(object sender, EventArgs e)
    {

       UserName = Session["UserName"] as string;

        Label1.Text = UserName;
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewcomplain.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("registeremployee.aspx");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("updateemployee.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("allotment.aspx");
    }
}