using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblReson.Visible = false;
        txtReson.Text = "";
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtReson.Text = "";

    }  
    protected void btnOK_Click(object sender, EventArgs e)
    {
        if (txtReson.Text == "") {
            lblReson.Visible = true;
        }
    
    }
}