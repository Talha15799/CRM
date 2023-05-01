using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class feedback : System.Web.UI.Page
{
    SqlConnection objcon;
    SqlDataAdapter objad;
    DataTable objdt; 
    string username;
    string DOF;
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = @"data source=.;initial catalog=crm;integrated security=SSPI";
        objcon = new SqlConnection(constr);
        string name = Session["Name"] as string;
        Label1.Text = name;
        username = Session["UserName"] as string;
        for (int i = 1; i <= 31; i++)
        {
            ddldate.Items.Add(i.ToString());
        }

        ddlmonth.Items.Add("Jan");
        ddlmonth.Items.Add("Feb");
        ddlmonth.Items.Add("Mar");
        ddlmonth.Items.Add("Apr");
        ddlmonth.Items.Add("May");
        ddlmonth.Items.Add("Jun");
        ddlmonth.Items.Add("Jul");
        ddlmonth.Items.Add("Aug");
        ddlmonth.Items.Add("Sept");
        ddlmonth.Items.Add("Oct");
        ddlmonth.Items.Add("Nov");
        ddlmonth.Items.Add("Dec");

        for (int i = 1975; i <= 2023; i++)
        {
            ddlyear.Items.Add(i.ToString());
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("complain register.aspx");

    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("complain register.aspx");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        DOF = ddldate.Text + "-" + ddlmonth.Text + "-" + ddlyear.Text;
        SqlCommand objcomm = new SqlCommand("insert into feedback(username,feedback,DOF) values('" + username + "','" + txtfeedback.Text + "','" + DOF + "')", objcon);
        objcon.Open();
        objcomm.ExecuteNonQuery();
        objcon.Close();
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("user.aspx");
    }
}