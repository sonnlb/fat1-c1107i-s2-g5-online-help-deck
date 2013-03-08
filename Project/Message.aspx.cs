using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        GridView1.DataSource = GetData("exec viewMessageList '" + Request.QueryString["userName"] + "'").Tables[0];
        GridView1.DataBind();
        if (GridView1.DataSource == null) {
            Label1.Text = "no message!!!";
            Label1.Visible=true;
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
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Details")
        {
            int intIndex = int.Parse(e.CommandArgument.ToString());
            String MessageID = GridView1.Rows[intIndex].Cells[4].Text;
            Response.Redirect("DetailMessage.aspx?MessageID=" + MessageID + "&userName=" + Request.QueryString["userName"]);
        }
    }
}