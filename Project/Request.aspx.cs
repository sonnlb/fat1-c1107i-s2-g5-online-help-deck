﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
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
            SqlDataAdapter adapter = new SqlDataAdapter("exec viewRequest", conn);
            adapter.Fill(ds, "requestID");
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
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        if (e.CommandName == "set")
        {
            if (GridView1.Rows[1].Cells[3].Text != "")
            {
                int intIndex = int.Parse(e.CommandArgument.ToString());
                String requestID = GridView1.Rows[intIndex].Cells[4].Text;
                ExecuteQuery("exec setEmployee " + requestID + "," + GridView1.Rows[1].Cells[3].Text);

            }
        


        }
        if (e.CommandName == "Close")
        {

            
            int intIndex = int.Parse(e.CommandArgument.ToString());
            String requestID = GridView1.Rows[intIndex].Cells[4].Text;
            ExecuteQuery("exec setStatus " + requestID + ",'Close'");


        }

    }
    private void ExecuteQuery(string sql)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConnectionString"].ConnectionString);
        conn.Open();
        SqlCommand cmd;
        cmd = new SqlCommand(sql, conn);
        cmd.ExecuteNonQuery();
        Page_Load(null, null);
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DropDownList ddlCountries = (e.Row.FindControl("ddTest") as DropDownList);
            ddlCountries.DataSource = GetData("select employeeName from employees");
            ddlCountries.DataTextField = "employeeName";
            ddlCountries.DataValueField = "employeeName";
            ddlCountries.DataBind();
            ddlCountries.Items.Insert(0, new ListItem("Please select"));
            if ((e.Row.FindControl("lblCountry") as Label).Text != "")
            {
                string country = (e.Row.FindControl("lblCountry") as Label).Text;
                country = GetData("exec viewEmpName " + country).Tables[0].Rows[0][0].ToString();
                ddlCountries.Items.FindByValue(country).Selected = true;
            }
        }
    }
    protected void ddTest_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DropDownList dd = (DropDownList)sender;
            {
                empID = GetData("exec viewEmpID" + "'" + dd.SelectedValue + "'").Tables[0].Rows[0][0].ToString();
                GridView1.Rows[1].Cells[3].Text = empID;

            }

        }
        catch {
            GridView1.Rows[1].Cells[3].Text = "";
        }
        
            
        }
}