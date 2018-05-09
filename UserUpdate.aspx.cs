using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserUpdate : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
    //MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    
    
    DataTable data;
    string rec_username;
    protected void Page_Load(object sender, EventArgs e)
    {
        rec_username = Session["userusername"].ToString();


        if (!Page.IsPostBack)
        {
           AllUser();
        }
    }


    public void AllUser()
    {
        //p_id.Enabled = false;  

        cnn.Open();
        MySqlCommand cmd1 = cnn.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select *from userinfo where username='" + rec_username + "' ";
        MySqlDataReader r1;

        r1 = cmd1.ExecuteReader();

        while (r1.Read())
        {
            // ename = r1.GetString("status").ToString();
            // par = r1.GetString("parent").ToString();

            username.Text = r1.GetString("username").ToString();
            full_name.Text = r1.GetString("full_name").ToString();
            Password.Text = r1.GetString("password").ToString();
            email.Text = r1.GetString("email").ToString();
            parent.Text = r1.GetString("parent").ToString();
            f_name.Text = r1.GetString("f_name").ToString();

            nomini_name.Text = r1.GetString("nomini_name").ToString();
            nomini_relation.Text = r1.GetString("nomini_relation").ToString();
            dob.Text = r1.GetString("dob").ToString();
            p_id.Text = r1.GetString("p_id").ToString();
            mobile.Text = r1.GetString("mobile").ToString();
            address.Text = r1.GetString("address").ToString();

            country.Text = r1.GetString("country").ToString();
            bank_account.Text = r1.GetString("bank_account").ToString();
            nid.Text = r1.GetString("nid").ToString();
            direct_income_acc.Text = r1.GetString("direct_income_acc").ToString();
            status.Text = r1.GetString("status").ToString();


        }


        cnn.Close();



    }


    //userupdate
    protected void User_update_Click(object sender, EventArgs e)
    {
        cnn.Open();
        MySqlCommand cmd2 = cnn.CreateCommand();
        cmd2.CommandType = CommandType.Text;

        cmd2.CommandText = "UPDATE userinfo set full_name='" + full_name.Text + "',Password='" + Password.Text + "',email='" + email.Text + "',f_name='" + f_name.Text + "', nomini_name='" + nomini_name.Text + "',nomini_relation='" + nomini_relation.Text + "',dob='" + dob.Text + "',p_id='" + p_id.Text + "',mobile='" + mobile.Text + "', address='" + address.Text + "',country='" + country.Text + "',bank_account='" + bank_account.Text + "',nid='" + nid.Text + "',direct_income_acc='" + direct_income_acc.Text + "' where username='" + rec_username + "' ";
        //MySqlDataReader r1;



        cmd2.ExecuteReader();

        Response.Write("<script> alert('Product_Entry Updata Successfully');</script>");
        Response.Redirect("~/ALLUser.aspx");

        cnn.Close();
    }
}