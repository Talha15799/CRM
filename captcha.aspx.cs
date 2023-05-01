using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class captcha : System.Web.UI.Page
{
    SqlConnection objcon;
    SqlDataAdapter objad;
    DataTable objdt;

    string name;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Session["Name"] = name;

        if (!IsPostBack)
        {
            GenerateCaptcha();
        }
        string constr = @"data source=.;initial catalog=temp;integrated security=SSPI";
        objcon = new SqlConnection(constr);

       
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        objad = new SqlDataAdapter("select * from login where username ='" + txtusername.Text + "'", objcon);
        objdt = new DataTable();
        objad.Fill(objdt);
        if (objdt.Rows.Count > 0)
        {
            if (txtcaptcha.Text == Label5.Text)
            {
                Session["Name"] = objdt.Rows[0]["username"].ToString();
                Response.Redirect("Session.aspx");
            }
        }
    }


    




    protected void GenerateCaptcha()
    {
        string captchaCode = GenerateRandomCode();
        Session["CaptchaCode"] = captchaCode;
        Label5.Text = captchaCode;
    }
    protected string GenerateRandomCode()
    {
        int length = 6;
        string chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrtuvwxyz";
        Random random = new Random();
        string captchaCode = "";
        for (int i = 0; i < length; i++)
        {
            captchaCode += chars[random.Next(chars.Length)];
        }
        return captchaCode;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("session.aspx");
    }
}

