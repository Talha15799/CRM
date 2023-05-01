using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ViewComplain : System.Web.UI.Page
{
    SqlConnection objcon;
    SqlDataAdapter objad;
    DataTable objdt;
    protected void Page_Load(object sender, EventArgs e)
    {

        string constr = @"data source=.;initial catalog=crm;integrated security=SSPI";
        objcon = new SqlConnection(constr);
      /*  objad = new SqlDataAdapter("select * from complain", objcon);
        objdt = new DataTable();
        objad.Fill(objdt);*/


    }


    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
    protected void btnshow_Click(object sender, EventArgs e)
    {
        if (rbtncomplete.Checked == true)
        {
            objad = new SqlDataAdapter("select * from complain where status='" + rbtncomplete.Text + "'", objcon);
            rbtncomplete.Checked = false;

        }
        else
        {
            if (rbtnnotcomplete.Checked == true)
            {
                objad = new SqlDataAdapter("select * from complain where status='" + rbtnnotcomplete.Text + "'", objcon);

            }
            else
            {
                if (rbtnall.Checked == true)
                {
                    objad = new SqlDataAdapter("select * from complain", objcon);

                }
            }
        }
        objdt = new DataTable();
        objad.Fill(objdt);


        GridView1.DataSource = objdt;
        GridView1.DataBind();

    }
}