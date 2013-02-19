using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fOfUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnChangePass_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePass.aspx?Name=" + Request.QueryString["Name"] + "&userName=" + Request.QueryString["userName"]);
    }
    protected void btnViewRequest_Click(object sender, EventArgs e)
    {
        Response.Redirect("RequestOfEnd.aspx?Name=" + Request.QueryString["Name"] + "&userName=" + Request.QueryString["userName"]);
    }
}