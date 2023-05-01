using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class UpdateEmployee : System.Web.UI.Page
{
    SqlConnection objcon;
    SqlDataAdapter objad;
    DataTable objdt;
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = @"data source=.;initial catalog=crm;integrated security=SSPI";
        objcon = new SqlConnection(constr);
        if (!IsPostBack)
        {

            objad = new SqlDataAdapter("select EmpId from employee", objcon);
            objdt = new DataTable();
            objad.Fill(objdt);
            ddlemp.Items.Clear();
            foreach (DataRow dr in objdt.Rows)
            {
                ddlemp.Items.Add(dr["EmpId"].ToString());
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
      
      SqlCommand  objcomm = new SqlCommand("update employee set salary='" + txtsalary.Text + "' where EmpId='" + ddlemp.Text + "'", objcon);
        objcon.Open();
        objcomm.ExecuteNonQuery();
        objcon.Close();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin panel.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewcomplain.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewcomplain.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin panel.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("addemployee.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("addemployee.aspx");
  
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
    protected void ddlemp_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        objad = new SqlDataAdapter("select * from employee where EmpId='" + ddlemp.Text + "'", objcon);
        objdt = new DataTable();
        objad.Fill(objdt);

        txtname.Text = objdt.Rows[0]["Name"].ToString();
        txtaddress.Text = objdt.Rows[0]["Address"].ToString();
        txtphoneno.Text = objdt.Rows[0]["PhoneNo"].ToString();
        txtemail.Text = objdt.Rows[0]["Email"].ToString();
        txtdesignation.Text = objdt.Rows[0]["Designation"].ToString();
        txtsalary.Text = objdt.Rows[0]["Salary"].ToString();

        Button1.Visible = false;
    }
}