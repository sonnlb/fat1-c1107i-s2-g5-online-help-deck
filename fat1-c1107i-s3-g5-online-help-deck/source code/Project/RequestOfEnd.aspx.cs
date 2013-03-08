using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class RequestOfEnd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = GetData("exec viewRequestOfEnd '" + Request.QueryString["Name"] + "'").Tables[0];
        GridView1.DataBind();
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
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Close")
        {
            
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConnectionString"].ConnectionString);
                conn.Open();
                int intIndex = int.Parse(e.CommandArgument.ToString());
                String requestID = GridView1.Rows[intIndex].Cells[1].Text;
                String sql = "exec setStatus " + requestID + ",'" + "Close'";
                SqlCommand cmd;
                cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                Page_Load(null,null);
            

        }
    }

}