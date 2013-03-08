using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblEror.Visible = false;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtContent.Text = "";
        txtEmail.Text = "";
        txtName.Text = "";
    }
    bool checkSend = true;
    protected void btnSend_Click(object sender, EventArgs e)
    {
        if(txtContent.Text=="" ||txtName.Text=="" || txtEmail.Text==""){
            lblEror.Text = "information you entered is invalid!!!";
            lblEror.Visible = true;
            checkSend = false;
        }
        if (isValidEmail(txtEmail.Text) == false) {
            lblEror.Text = "information you entered is invalid!!!";
            lblEror.Visible = true;
            checkSend = false;
        }
        if(checkSend==true){
            String sql = "exec createFeedBack '" + txtName.Text + "','" + txtEmail.Text + "','" + txtContent.Text+"'";
            ExecuteQuery(sql);
        }

    }
    public static bool isValidEmail(string inputEmail)
    {
        string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" +
              @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
              @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
        Regex re = new Regex(strRegex);
        if (re.IsMatch(inputEmail))
            return (true);
        else
            return (false);
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
}