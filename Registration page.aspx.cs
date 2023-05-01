using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Registration_page : System.Web.UI.Page
{
    int i;
    SqlDataAdapter objad;
    DataTable objdt;
    SqlConnection objcon;
    DataTable objdt1;
    string name;
    string gender;
    string username;
    string address;
    string DOB;
    string AccountType;
    protected void Page_Load(object sender, EventArgs e)
    {


        
       

        
        btnregister.Enabled = false;
        string constr = @"data source=.;initial catalog=crm;integrated security=SSPI";
        objcon = new SqlConnection(constr);
        if (!IsPostBack)
        {
            GenerateCaptcha();
        }

        if (!IsPostBack)
        {

            objad = new SqlDataAdapter("select distinct(CountryName) from country", objcon);
            objdt = new DataTable();
            objad.Fill(objdt);
            ddlcountry.Items.Clear();
            foreach (DataRow dr in objdt.Rows)
            {
                ddlcountry.Items.Add(dr["CountryName"].ToString());
            }

        }
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

    
       

        
        




    }
   
    protected void btnState_Click(object sender, EventArgs e)
    {
       

        objad = new SqlDataAdapter("select StateID from State where statename='" + ddlstate.Text + "'", objcon);
        objdt = new DataTable();
        objad.Fill(objdt);
        objad = new SqlDataAdapter("select CityName from City where StateID='" + objdt.Rows[0]["StateID"].ToString() + "'", objcon);

        objdt1 = new DataTable();
        objad.Fill(objdt1);
        foreach (DataRow dr in objdt1.Rows)
        {
            ddlcity.Items.Add(dr["CityName"].ToString());
        }
        btnState.Visible = false;
    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        username = txtusername.Text;
        if (rbtnmale.Checked)
        {
            gender = "male";
        }
        else
        {
            gender = "female";
        }
        address = txtaddress.Text + " " + ddlcountry.Text + " " + ddlstate.Text + " " + ddlcity.Text;
        name= txtfname.Text+" "+txtmname.Text+" "+txtlname.Text;
        DOB = ddldate.Text + "-" + ddlmonth.Text + "-" + ddlyear.Text ;
        SqlCommand objcomm = new SqlCommand("insert into Registration( name,UserName,PhoneNo,Gender,Address,DOB) values('"+name+ "','" + txtusername.Text + "','" + txtphone.Text + "','" + gender + "', '" + address + "','" + DOB + "')", objcon);
        objcon.Open();
        objcomm.ExecuteNonQuery();
        objcon.Close();
        AccountType = "User";
        SqlCommand objcomm1 = new SqlCommand("insert into login(UserName,Password,AccType) values('" + txtusername.Text + "','" + txtpassword.Text + "','" + AccountType + "')", objcon);
        objcon.Open();
        objcomm1.ExecuteNonQuery();
        objcon.Close();
    }

    protected void GenerateCaptcha()
    {
        string captchaCode = GenerateRandomCode();
        Session["CaptchaCode"] = captchaCode;
        Label2.Text = captchaCode;
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
    protected void btnCheck_Click(object sender, EventArgs e)
    {
        objad = new SqlDataAdapter("select * from Login where UserName='" + txtusername.Text + "'", objcon);
        objdt = new DataTable();
        objad.Fill(objdt);
        if (objdt.Rows.Count > 0)
        {
            //MessageBox.Show("Duplicate Entry..");
            //TxtcompanyID.Text = "";
            //TxtcompanyID.Focus();
            lblCheck.Text = "Not Available";
        }
        else
        {
            lblCheck.Text = "Available";
            btnregister.Enabled = true;
        }

    }
    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void btnCountry_Click(object sender, EventArgs e)
    {
        objad = new SqlDataAdapter("select CountryID from country where CountryName='" + ddlcountry.Text + "'", objcon);
        objdt = new DataTable();
        objad.Fill(objdt);
        //message.Text = objdt.Rows[0]["CountryID"].ToString();
        objad = new SqlDataAdapter("select statename from state where CountryID='" + objdt.Rows[0]["CountryID"].ToString() + "'", objcon);

        objdt1 = new DataTable();
        objad.Fill(objdt1);
        foreach (DataRow dr in objdt1.Rows)
        {
            ddlstate.Items.Add(dr["StateName"].ToString());
        }
        btnCountry.Visible = false;
    }
}