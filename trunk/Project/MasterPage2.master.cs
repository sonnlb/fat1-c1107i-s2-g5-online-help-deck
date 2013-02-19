using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblName.Text = "Hi "+Request.QueryString["Name"];
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePass.aspx?Name=" + Request.QueryString["Name"] + "&userName=" + Request.QueryString["userName"]);
       
    }
}
