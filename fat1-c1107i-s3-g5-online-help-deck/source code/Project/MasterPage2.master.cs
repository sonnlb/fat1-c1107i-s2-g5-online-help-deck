using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblName.Text = "Hi "+Request.QueryString["Name"];
        lblNewMessage.Text = "0";
        if (GetData("exec countNewMessage " + Request.QueryString["userName"]).Tables[0].Rows[0][0].ToString() != "")
        {
            lblNewMessage.Text = GetData("exec countNewMessage " + Request.QueryString["userName"]).Tables[0].Rows[0][0].ToString();
        }
    }
    private DataSet GetData(string query)
    {
        string conString = ConfigurationManager.ConnectionStrings["OHDConnectionString"].ConnectionString;
        SqlCommand cmd = new SqlCommand(query);
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataSet ds = new DataSet())
                {
                    sda.Fill(ds);
                    return ds;
                }
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePass.aspx?Name=" + Request.QueryString["Name"] + "&userName=" + Request.QueryString["userName"]);
       
    }

    protected void imgButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Message.aspx?Name=" + Request.QueryString["Name"] + "&userName=" + Request.QueryString["userName"]);
    }
}
