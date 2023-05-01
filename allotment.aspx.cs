using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class allotment : System.Web.UI.Page
{
    SqlConnection objcon;
    SqlDataAdapter objad;
    DataTable objdt;
    string doa, dor;
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = @"data source=.;initial catalog=crm;integrated security=SSPI";
        objcon = new SqlConnection(constr);

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

        for (int i = 1; i <= 31; i++)
        {
            ddldate1.Items.Add(i.ToString());
        }

        ddlmonth1.Items.Add("Jan");
        ddlmonth1.Items.Add("Feb");
        ddlmonth1.Items.Add("Mar");
        ddlmonth1.Items.Add("Apr");
        ddlmonth1.Items.Add("May");
        ddlmonth1.Items.Add("Jun");
        ddlmonth1.Items.Add("Jul");
        ddlmonth1.Items.Add("Aug");
        ddlmonth1.Items.Add("Sept");
        ddlmonth1.Items.Add("Oct");
        ddlmonth1.Items.Add("Nov");
        ddlmonth1.Items.Add("Dec");

        for (int i = 1975; i <= 2023; i++)
        {
            ddlyear1.Items.Add(i.ToString());
        }

        if (!IsPostBack)
        {

            objad = new SqlDataAdapter("select distinct(ComplainNo) from complain", objcon);
            objdt = new DataTable();
            objad.Fill(objdt);
            ddlcomplain.Items.Clear();
            foreach (DataRow dr in objdt.Rows)
            {
                ddlcomplain.Items.Add(dr["ComplainNo"].ToString());
            }

        }

        if (!IsPostBack)
        {

            objad = new SqlDataAdapter("select distinct(EmpId) from employee", objcon);
            objdt = new DataTable();
            objad.Fill(objdt);
            ddlemployee.Items.Clear();
            foreach (DataRow dr in objdt.Rows)
            {
                ddlemployee.Items.Add(dr["EmpId"].ToString());
            }

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        doa = ddldate.Text + "-" + ddlmonth.Text + "-" + ddlyear.Text;
        dor = ddldate1.Text + "-" + ddlmonth1.Text + "-" + ddlyear1.Text;
        SqlCommand objcomm = new SqlCommand("insert into allotment(ComplainNo,EmployeeId,DOA,DOR,Comment) values('" + ddlcomplain.Text + "','" + ddlemployee.Text + "','" + doa + "','" +dor + "','" + txtc.Text+ "')", objcon);
        objcon.Open();
        objcomm.ExecuteNonQuery();
        objcon.Close();
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
}