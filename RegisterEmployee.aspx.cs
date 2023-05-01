using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddEmployee : System.Web.UI.Page
{
    SqlConnection objcon;
    SqlDataAdapter objad;
    DataTable objdt, objdt1;
    int id=10;
    string type;
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = @"data source=.;initial catalog=crm;integrated security=SSPI";
        objcon = new SqlConnection(constr);

        txtemployee.Enabled = false;
        objad = new SqlDataAdapter("select max(EmpId) from employee", objcon);
        objdt = new DataTable();
        objad.Fill(objdt);
       // Label1.Text = objdt.Rows[0][0].ToString();
       
        if (objdt.Rows.Count >0)
        {
        
            int i;
            i=Convert.ToInt32(objdt.Rows[0][0].ToString());
            txtemployee.Text = Convert.ToString(i + 1);

            
          
        }
        else
        {
            txtemployee.Text = "100";                 
        }

    }
   

    protected void btnadd_Click(object sender, EventArgs e)
    {
        type="Employee";
        SqlCommand objcomm = new SqlCommand("insert into login(UserName,Password,AccType) values('" + txtusername.Text + "','" + txtpassword.Text + "','" + type + "')", objcon);
        objcon.Open();
        objcomm.ExecuteNonQuery();
        objcon.Close();

        SqlCommand objcomm1= new SqlCommand("insert into employee(EmpId,UserName,Name,Address,PhoneNo,Email,Designation,Salary) values('" + txtemployee.Text + "','"+txtusername.Text+"','" + txtname.Text + "','" + txtaddress.Text + "','" + txtphoneno.Text + "','" + txtemail.Text + "','" + txtdesignation.Text + "','" + txtsalary.Text + "')", objcon);
        objcon.Open();
        objcomm1.ExecuteNonQuery();
        objcon.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewComplain.aspx");
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}