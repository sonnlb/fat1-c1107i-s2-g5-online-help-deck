using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class DetailMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        lblFrom2.Text = GetData("exec viewMessageDetails " + Request.QueryString["MessageID"]).Tables[0].Rows[0][0].ToString();
        lblTitle2.Text = GetData("exec viewMessageDetails " + Request.QueryString["MessageID"]).Tables[0].Rows[0][1].ToString();
        lblContent2.Text = GetData("exec viewMessageDetails " + Request.QueryString["MessageID"]).Tables[0].Rows[0][2].ToString();
        lblDate2.Text = GetData("exec viewMessageDetails " + Request.QueryString["MessageID"]).Tables[0].Rows[0][3].ToString();

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
}