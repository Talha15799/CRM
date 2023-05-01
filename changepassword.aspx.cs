using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class changepassword : System.Web.UI.Page
{
    SqlConnection objcon;
    SqlDataAdapter objad;
    DataTable objdt;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        string constr = @"data source=.;initial catalog=crm;integrated security=SSPI";
        objcon = new SqlConnection(constr);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtpass.Text == txtconfpass.Text)
        {
            SqlCommand objcom = new SqlCommand("update login set password='" + txtpass.Text + "' where username='" + txtuser.Text + "'", objcon);
            objcon.Open();
            objcom.ExecuteNonQuery();
            objcon.Close();
            Label1.Visible = true;
            Label1.Text = "password updated";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("user.aspx");
    }
}