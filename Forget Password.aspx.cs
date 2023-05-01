using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Forget_Password : System.Web.UI.Page
{

    SqlConnection objcon;
    SqlDataAdapter objad;
    DataTable objdt;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
        string constr = @"data source=.;initial catalog=temp;integrated security=SSPI";
        objcon = new SqlConnection(constr);
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        if (txtnewpassword.Text == txtconfirmnewpassword.Text)
        {
            SqlCommand objcom = new SqlCommand("update login set password='" + txtnewpassword.Text + "' where username='" + txtusername.Text + "'", objcon);
            objcon.Open();
            objcom.ExecuteNonQuery();
            objcon.Close();
            Label4.Visible = true;
            Label4.Text = "password updated";
        }
    }
}