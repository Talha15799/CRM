using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee : System.Web.UI.Page
{
    string username;
    protected void Page_Load(object sender, EventArgs e)
    {
        username = Session["UserName"] as string;

        Label1.Text = username;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("view.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Response.Redirect("Statusupload.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}