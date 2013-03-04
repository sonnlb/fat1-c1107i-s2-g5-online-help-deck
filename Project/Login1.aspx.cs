﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login1 : System.Web.UI.Page
{
    SqlConnection conn = null;
    String empID;
    Boolean login = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblLogin.Visible = false;
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

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
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtUserName.Text == "")
        {
            lblLogin.Text = "* Username";
            lblLogin.Visible = true;
            login = false;
        }
        if (txtPass.Text == "")
        {
            lblLogin.Text = "* Password";
            lblLogin.Visible = true;
            login = false;
        }
        if (txtPass.Text == "" && txtUserName.Text == "")
        {
            lblLogin.Text = "* Username and Password";
            lblLogin.Visible = true;
            login = false;
        }
        if (txtPass.Text.Length > 12 && txtPass.Text.Length < 8)
        {
            lblLogin.Text = "ivalid password!!!";
            lblLogin.Visible = true;
            login = false;
        }
        if (txtUserName.Text.Length > 12 && txtUserName.Text.Length < 8)
        {
            lblLogin.Text = "ivalid username!!!";
            lblLogin.Visible = true;
            login = false;
        }
        if (txtUserName.Text.Length > 12 && txtUserName.Text.Length < 8 && txtPass.Text.Length > 12 && txtPass.Text.Length < 8)
        {
            lblLogin.Text = "ivalid username and password!!!";
            lblLogin.Visible = true;
            login = false;
        }
        if (login == true)
        {

            if (GetData("exec Userlogin " + txtUserName.Text + "," + txtPass.Text).Tables[0].Rows.Count.ToString() == "0")
            {
                lblLogin.Visible = true;
                lblLogin.Text = "Ivalid UserName or Password!!!";
            }
            else {
                if (GetData("exec Userlogin " + txtUserName.Text + "," + txtPass.Text).Tables[0].Rows[0][0].ToString() == "1")
                {
                    Response.Redirect("fOfAdmin.aspx?Name=" + "admin" + "&userName=" + txtUserName.Text);
                }
            if (GetData("exec Userlogin " + txtUserName.Text + "," + txtPass.Text).Tables[0].Rows[0][0].ToString() == "2")
                {
                    Response.Redirect("Status.aspx?Name=" + GetData("exec getEmpName " + txtUserName.Text).Tables[0].Rows[0][0].ToString() + "&userName=" + txtUserName.Text);
                   
                }
            if (GetData("exec Userlogin " + txtUserName.Text + "," + txtPass.Text).Tables[0].Rows[0][0].ToString() == "3")
            {
                Response.Redirect("fOfUser.aspx?Name=" + GetData("exec getEndUserName " + txtUserName.Text).Tables[0].Rows[0][0].ToString() + "&userName=" + txtUserName.Text);
               
            }

            }
        }

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtUserName.Text = "";
        txtPass.Text = "";
    }
}