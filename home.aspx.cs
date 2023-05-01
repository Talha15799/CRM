using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class home : System.Web.UI.Page
{
    SqlConnection objcon;
    SqlDataAdapter objad;
    DataTable objdt,objdt1,objdt2;
    string name, name1;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = @"data source=.;initial catalog=crm;integrated security=SSPI";
        objcon = new SqlConnection(constr);
       
    }


    protected void Button1_Click(object sender, EventArgs e)
    {


    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forget Password.aspx");
    }

    protected void btngo_Click(object sender, EventArgs e)
    {

        objad = new SqlDataAdapter("select * from login where username ='" + txtusername.Text + "'", objcon);
        objdt = new DataTable();
        objad.Fill(objdt);

        if (objdt.Rows.Count > 0)
        {
            if (txtpassword.Text == objdt.Rows[0]["password"].ToString())
            {
                if (objdt.Rows[0]["AccType"].ToString() == "User")
                {
                    objad = new SqlDataAdapter("select *from registration where username='" + txtusername.Text + "'", objcon);
                    objdt1 = new DataTable();
                    objad.Fill(objdt1);

                    Session["Name"] = objdt1.Rows[0]["name"].ToString();
                    Session["UserName"] = txtusername.Text;
                    Response.Redirect("User.aspx");
                }
                else if (objdt.Rows[0]["AccType"].ToString() == "Admin")
                {

                    objad = new SqlDataAdapter("select * from login where username ='" + txtusername.Text + "'", objcon);
                    objdt = new DataTable();
                    objad.Fill(objdt);



                    Session["UserName"] = txtusername.Text;
                    Response.Redirect("admin.aspx");
                }
                else if (objdt.Rows[0]["AccType"].ToString() == "Employee")
                {
                    objad = new SqlDataAdapter("select * from login where username='" + txtusername.Text + "'", objcon);
                    objdt = new DataTable();
                    objad.Fill(objdt);
                    Session["UserName"] = txtusername.Text;
                    objad = new SqlDataAdapter("select * from employee  where username='" + txtusername.Text + "'", objcon);
                    objdt2 = new DataTable();
                    objad.Fill(objdt2);
                    Session["EmpId"] = objdt2.Rows[0]["EmpId"].ToString();
                    Response.Redirect("employee.aspx");
                }


            }
        }
    }
}