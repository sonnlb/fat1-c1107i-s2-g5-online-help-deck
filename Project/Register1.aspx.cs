using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ddldepart.Visible = false;
        lblDepart.Visible = false;
        lblErorAddress.Visible = false;
        lblErorAge.Visible = false;
        lblErorConPassword.Visible = false;
        lblErorName.Visible = false;
        lblErorPassword.Visible = false;
        lblErorUserName.Visible = false;
        
    }
    
    protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlType.SelectedItem.Text == "Employee")
        {
            lblDepart.Visible = true;
            ddldepart.Visible = true;
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtAddress.Text = "";
        txtAge.Text = "";
        txtConPassWord.Text = "";
        txtName.Text = "";
        txtUserName.Text = "";
        txtPassword.Text = "";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Boolean checkRegis = true;
        if(txtUserName.Text==""){
            lblErorUserName.Text = "Please enter username!!!";
            lblErorUserName.Visible = true;
            checkRegis = false;
        }
        if (txtPassword.Text == "")
        {
            lblErorPassword.Text = "Please enter Password!!!";
            lblErorPassword.Visible = true;
            checkRegis = false;
        }
        if (txtConPassWord.Text == "")
        {
            lblErorConPassword.Text = "Please enter Confirm PassWord!!!";
            lblErorConPassword.Visible = true;
            checkRegis = false;
        }
        if (txtName.Text == "")
        {
            lblErorName.Text = "Please enter Name!!!";
            lblErorName.Visible = true;
            checkRegis = false;
        }
        if (txtAge.Text == "")
        {
            lblErorAge.Text = "Please enter Age!!!";
            lblErorAge.Visible = true;
            checkRegis = false;
        }
        if (txtAddress.Text == "")
        {
            lblErorAddress.Text = "Please enter Address!!!";
            lblErorAddress.Visible = true;
            checkRegis = false;
        }
        if (txtPassword.Text != txtConPassWord.Text)
        {
            lblErorConPassword.Text = "Password does not match!!!";
            lblErorConPassword.Visible = true;
            checkRegis = false;
        }
        int age=0;
        try
        {
            age = Convert.ToInt32(txtAge.Text);
            if (age < 0 || age > 197)
            {
                lblErorAge.Text = "Invalid Age!!!";
                lblErorAge.Visible = true;
                checkRegis = false;
            }
            
        }
        catch
        {
            lblErorAge.Text = "Invalid Age!!!";
            lblErorAge.Visible = true;
            checkRegis = false;
        }
        if (GetData("exec checkUserName '" + txtUserName.Text + "'").Tables[0].Rows.Count.ToString() != "0")
        {
            lblErorUserName.Visible = true;
            lblErorUserName.Text = "Username already exists!!!";
            checkRegis = false;
        }
        if (checkRegis == true)
            {
            String userType = "";
            String department = "";
            if (ddlType.SelectedItem.Text == "Employee")
            {
                userType = "2";
                if (ddldepart.SelectedItem.Text == "Bao ve")
                {
                    department = "1";
                }
                else
                {
                    department = "2";
                }
            }
            if (ddlType.SelectedItem.Text == "End-user")
            {
                userType = "3";
            }
            String regisUserQuery = "exec regisNewUser '" + txtUserName.Text + "','" + txtPassword.Text + "'," + userType;
            String regisEmployeeQuery = "exec regisEmployee '" + txtUserName.Text + "'," + department + ",'" + txtName.Text + "'," + txtAge.Text + ",'" + txtAddress.Text + "'";
            String regisEndUserQuery = "exec regisEndUser '" + txtUserName.Text + "','" + txtName.Text + "'," + txtAge.Text + ",'" + txtAddress.Text + "'";
            if (userType == "2")
            {
                ExecuteQuery(regisEmployeeQuery);
            }
            if (userType == "3")
            {
                ExecuteQuery(regisEndUserQuery);
            }

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