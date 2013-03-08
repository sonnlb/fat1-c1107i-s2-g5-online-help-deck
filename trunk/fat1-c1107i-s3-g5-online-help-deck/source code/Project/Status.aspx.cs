using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Status1 : System.Web.UI.Page
{
    SqlConnection conn = null;
    String empID;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConnectionString"].ConnectionString);
            conn.Open();
            if (!Page.IsPostBack)
                LoadData();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    private void LoadData()
    {
       
        try
        {

            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter("exec viewStatus '"+Request.QueryString["Name"]+"'", conn);
            adapter.Fill(ds, "requestType");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
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
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DropDownList ddlCountries = (e.Row.FindControl("ddTest") as DropDownList);
            ddlCountries.DataSource = GetData("select DISTINCT requeststatus from requests");
            ddlCountries.DataTextField = "requeststatus";
            ddlCountries.DataValueField = "requeststatus";
            ddlCountries.DataBind();
            ddlCountries.Items.Insert(0, new ListItem("Please select"));
            if ((e.Row.FindControl("lblstatus") as Label).Text != "")
            {
                string country = (e.Row.FindControl("lblstatus") as Label).Text;
                country = GetData("exec viewRStatus " + country).Tables[0].Rows[0][0].ToString();
               ddlCountries.Items.FindByValue(country).Selected = true;
            }
        }
    }
    protected void ddTest_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList dd = (DropDownList)sender;
        empID = dd.SelectedValue;
        GridView1.Rows[0].Cells[2].Text = empID;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "set")
        {

            if (GridView1.Rows[0].Cells[2].Text != "" && GridView1.Rows[0].Cells[2].Text != "Please select")
            {
                int intIndex = int.Parse(e.CommandArgument.ToString());
                String requestID = GridView1.Rows[intIndex].Cells[3].Text;
                String sql = "exec setStatus " + requestID + ",'" + GridView1.Rows[0].Cells[2].Text + "'";
                execQuery(sql);
                execQuery("exec createMessage 'yeu cau da duoc thay doi trang thai','trang thai yeu cau cua ban da duoc doi thanh " + GridView1.Rows[0].Cells[2].Text + "','" + Request.QueryString["userName"] + "'");
                execQuery("exec createMessage " + "'yeu cau vua duoc thay doi','" + " yeu cau duoc giao cho " + Request.QueryString["userName"] + "da duoc thay doi trang thai sang " + GridView1.Rows[0].Cells[2].Text + "','admin'");
            }

        }
    }
    private void execQuery(String sql) {
        SqlCommand cmd;
        cmd = new SqlCommand(sql, conn);
        cmd.ExecuteNonQuery();
        LoadData();
    }
}