using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.Page
{
    string UserName;
    protected void Page_Load(object sender, EventArgs e)
    {
        UserName = Session["UserName"] as string;
        string name = Session["Name"] as string;
        Label1.Text = name;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["UserName"] = UserName;
        Response.Redirect("complain register.aspx");
    }
   
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["UserName"] = UserName;
        Response.Redirect("feedback.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["UserName"] = UserName;
        Response.Redirect("statuscheck.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("changepassword.aspx");
    }
}