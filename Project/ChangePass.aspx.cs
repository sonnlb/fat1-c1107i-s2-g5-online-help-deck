using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangePass : System.Web.UI.Page
{
    Boolean change = true;
    SqlConnection conn = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.UrlReferrer != null)
            {

                Session["url"] = Request.UrlReferrer.ToString();
            }
        }
        lblChange.Visible = false;
    }
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
        if(txtNewPass.Text!=txtcfPass.Text){
            lblChange.Visible = true;
            lblChange.Text = "The passwords you have entered do not match !!!";
            change = false;
        }
        if(txtNewPass.Text==""){
            lblChange.Visible = true;
            lblChange.Text = "Please input new passwords!!!";
            change = false;
        }
        if (GetData("exec Userlogin " + Request.QueryString["userName"] + "," + txtOldPass.Text).Tables[0].Rows.Count.ToString() == "0")
        {
            lblChange.Visible = true;
            lblChange.Text = "The old password you have entered do not match!!!";
            change = false;
        }
        if(change==true){
            try
            {
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConnectionString"].ConnectionString);
                conn.Open();
                String sql = "exec changePass '" + Request.QueryString["userName"] + "','" + txtOldPass.Text + "','" + txtNewPass.Text + "'";
                SqlCommand cmd;
                cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                lblChange.Visible = false;
            }
            catch {
                
            }
            
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtcfPass.Text = "";
        txtNewPass.Text = "";
        txtOldPass.Text = "";
        Response.Redirect(Session["url"].ToString()); 
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