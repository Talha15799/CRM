using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class complain_register : System.Web.UI.Page
{
    SqlConnection objcon;
    SqlDataAdapter objad;
    DataTable objdt;
    string DateofComplain;
    string status;
    string ComplainNo;
    string UserName;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string constr = @"data source=.;initial catalog=crm;integrated security=SSPI";
        objcon = new SqlConnection(constr);
        UserName = Session["UserName"] as string;
        ddlcomplain.Items.Add("Slow Phone");
        ddlcomplain.Items.Add("Bad battery life");
        ddlcomplain.Items.Add("Overheating");
       

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



        string name = Session["Name"] as string;
        Label1.Text = name;
        Label2.Text = UserName;

       
    }
    
   
    
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedback.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedback.aspx");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Label2.Text = UserName;
        DateofComplain = ddldate.Text + "-" + ddlmonth.Text + "-" + ddlyear.Text;
        status = "Not Completed";
        ComplainNo="121";
        Session["complainNo"] = ComplainNo;

        SqlCommand objcomm=new SqlCommand("insert into complain(ComplainNo,DateofComplain,UserName,ComplainType,Problem,Status) values('"+ComplainNo.ToString()+"','" +DateofComplain.ToString()+"','"+UserName.ToString() +"','"+ddlcomplain.Text+"','"+txtproblem.Text+"','"+status.ToString()+"')",objcon);
        objcon.Open();
        objcomm.ExecuteNonQuery();
        objcon.Close();
        Response.Redirect("successfully.aspx");
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("user.aspx");
    }
}