using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        linkUnassigned.Text = GetData("exec viewStatistics '" + Request.QueryString["DateFrom"] + "','" + Request.QueryString["DateTo"]+"'").Tables[0].Rows[0][0].ToString();
        linkAssigned.Text = GetData("exec viewStatistics '" + Request.QueryString["DateFrom"] + "','" + Request.QueryString["DateTo"] + "'").Tables[1].Rows[0][0].ToString();
        linkWorkInProgress.Text = GetData("exec viewStatistics '" + Request.QueryString["DateFrom"] + "','" + Request.QueryString["DateTo"] + "'").Tables[2].Rows[0][0].ToString();
        linkClosed.Text = GetData("exec viewStatistics '" + Request.QueryString["DateFrom"] + "','" + Request.QueryString["DateTo"] + "'").Tables[3].Rows[0][0].ToString();
        linkRejected.Text = GetData("exec viewStatistics '" + Request.QueryString["DateFrom"] + "','" + Request.QueryString["DateTo"] + "'").Tables[4].Rows[0][0].ToString();
        linkTotal.Text = GetData("exec viewStatistics '" + Request.QueryString["DateFrom"] + "','" + Request.QueryString["DateTo"] + "'").Tables[5].Rows[0][0].ToString();
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
    protected void linkUnassigned_Click(object sender, EventArgs e)
    {
        Response.Redirect("ListEachStatus.aspx?Name=" + Request.QueryString["Name"] + "&userName=" + Request.QueryString["userName"] + "&DateFrom=" + Request.QueryString["DateFrom"] + "&DateTo=" + Request.QueryString["DateTo"]+ "&Status=" + lblUnassigned.Text );
    }
    protected void linkAssigned_Click(object sender, EventArgs e)
    {
        Response.Redirect("ListEachStatus.aspx?Name=" + Request.QueryString["Name"] + "&userName=" + Request.QueryString["userName"] + "&DateFrom=" + Request.QueryString["DateFrom"] + "&DateTo=" + Request.QueryString["DateTo"] + "&Status=" + lblAssigned.Text);
 
    }
    protected void linkWorkInProgress_Click(object sender, EventArgs e)
    {
        Response.Redirect("ListEachStatus.aspx?Name=" + Request.QueryString["Name"] + "&userName=" + Request.QueryString["userName"] + "&DateFrom=" + Request.QueryString["DateFrom"] + "&DateTo=" + Request.QueryString["DateTo"] + "&Status=" + lblWorkInProgress.Text);
 
    }
    protected void linkClosed_Click(object sender, EventArgs e)
    {
        Response.Redirect("ListEachStatus.aspx?Name=" + Request.QueryString["Name"] + "&userName=" + Request.QueryString["userName"] + "&DateFrom=" + Request.QueryString["DateFrom"] + "&DateTo=" + Request.QueryString["DateTo"] + "&Status=" + lblClosed.Text);
 
    }
    protected void linkRejected_Click(object sender, EventArgs e)
    {
        Response.Redirect("ListEachStatus.aspx?Name=" + Request.QueryString["Name"] + "&userName=" + Request.QueryString["userName"] + "&DateFrom=" + Request.QueryString["DateFrom"] + "&DateTo=" + Request.QueryString["DateTo"] + "&Status=" + lblRejected.Text);
 
    }
    protected void linkTotal_Click(object sender, EventArgs e)
    {
        Response.Redirect("ListEachStatus.aspx?Name=" + Request.QueryString["Name"] + "&userName=" + Request.QueryString["userName"] + "&DateFrom=" + Request.QueryString["DateFrom"] + "&DateTo=" + Request.QueryString["DateTo"] + "&Status=" + lblTotal.Text);
 
    }
}