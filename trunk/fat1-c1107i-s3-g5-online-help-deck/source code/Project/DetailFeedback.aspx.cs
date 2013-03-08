using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.UrlReferrer != null)
            {

                Session["url"] = Request.UrlReferrer.ToString();
            }
        }
            lblName1.Text = GetData("exec viewDetailFeedBack '" + Request.QueryString["feedBackID"] + "'").Tables[0].Rows[0][0].ToString();
            lblEmail1.Text = GetData("exec viewDetailFeedBack '" + Request.QueryString["feedBackID"] + "'").Tables[0].Rows[0][1].ToString();
            lblContent1.Text = GetData("exec viewDetailFeedBack '" + Request.QueryString["feedBackID"] + "'").Tables[0].Rows[0][2].ToString();
            lblDate1.Text = GetData("exec viewDetailFeedBack '" + Request.QueryString["feedBackID"] + "'").Tables[0].Rows[0][3].ToString();
        
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
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        ExecuteQuery("exec deleteFeedback '" + Request.QueryString["feedBackID"] + "'");
        Response.Redirect(Session["url"].ToString()); 
        
    }
    private void ExecuteQuery(string sql)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd;
        cmd = new SqlCommand(sql, conn);
        cmd.ExecuteNonQuery();
    }
}