using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class session : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Session["Name"] as string;
        Label1.Text = name;
    }
}