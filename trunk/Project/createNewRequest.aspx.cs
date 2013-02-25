using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class createNewRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }


    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtRemark.Text = "";
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        if (txtRemark.Text != "") {
            ExecuteQuery("exec createNewRequest " + GetData("exec getEndUserID " + Request.QueryString["userName"]).Tables[0].Rows[0][0].ToString() + ",'" + ddlType.SelectedItem.Text + "','" + txtRemark.Text + "'");
            ExecuteQuery("exec createMessage 'tao thanh cong mot yeu cau','ban da tao thanh cong mot yeu cau " + ddlType.SelectedItem.Text + "','" + Request.QueryString["userName"]+"'");
            ExecuteQuery("exec createMessage "+ "'yeu cau moi tao','"+Request.QueryString["userName"] + " da tao thanh con mot yeu cau " + ddlType.SelectedItem.Text + "','admin'");
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