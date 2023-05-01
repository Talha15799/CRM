using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Statusupload : System.Web.UI.Page
{
    SqlConnection objcon;
    SqlDataAdapter objad;
    DataTable objdt;
    string EmpId;
    string date;
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = @"data source=.;initial catalog=crm;integrated security=SSPI";
        objcon = new SqlConnection(constr);

        EmpId = Session["EmpId"] as string;

        Label1.Text = EmpId;

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
        ddlstatus.Items.Add("NotCompleted");
        ddlstatus.Items.Add("Completed");

        objad = new SqlDataAdapter("select distinct(ComplainNo) from allotment", objcon);
        objdt = new DataTable();
        objad.Fill(objdt);
        ddlcomplain.Items.Clear();
        foreach (DataRow dr in objdt.Rows)
        {
            ddlcomplain.Items.Add(dr["ComplainNo"].ToString());
        }

    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("employee.aspx");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        date = ddldate.Text + "-" + ddlmonth.Text + "-" + ddlyear.Text;
        Label1.Text = EmpId;
        SqlCommand objcomm = new SqlCommand("insert into complaintrack(EmpId,ComplainNo,Finding,Solution,Date,status1) values('" + EmpId + "','" + ddlcomplain.Text + "','" + txtfinding.Text + "','" + txtsolution.Text + "','" + date.ToString() + "','" + ddlstatus.Text + "')", objcon);
        objcon.Open();
        objcomm.ExecuteNonQuery();
        objcon.Close();
        Response.Redirect("StatusUploadedSuccessfully.aspx");
    }
}