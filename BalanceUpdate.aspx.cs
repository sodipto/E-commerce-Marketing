using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BalanceUpdate : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
    //MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;"); 
    
    
    DataTable data;
    string acc_username;
    protected void Page_Load(object sender, EventArgs e)
    {
        acc_username = Session["Account_username"].ToString();


        if (!Page.IsPostBack)
        {
            AccountUser();
        }
    }


    public void AccountUser()
    {
        

        cnn.Open();
        MySqlCommand cmd1 = cnn.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select *from account where username='" + acc_username + "' ";
        MySqlDataReader r1;

        r1 = cmd1.ExecuteReader();

        while (r1.Read())
        {
            // ename = r1.GetString("status").ToString();
            // par = r1.GetString("parent").ToString();

            username.Text = r1.GetString("username").ToString();

            Balance.Text = r1.GetString("balance").ToString();


        }


        cnn.Close();



    }

    protected void Account_update_Click(object sender, EventArgs e)
    {
        cnn.Open();
        MySqlCommand cmd2 = cnn.CreateCommand();
        cmd2.CommandType = CommandType.Text;

        cmd2.CommandText = "UPDATE account set balance='" + Balance.Text + "' where username='" + acc_username + "' ";
        //MySqlDataReader r1;



        cmd2.ExecuteReader();

        Response.Write("<script> alert('Password Updata Successfully');</script>");
        Response.Redirect("~/Backup.aspx");

        cnn.Close();
    }
}