using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_User : System.Web.UI.Page
{
    //MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    
    
    DataTable data;

    string rcv;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/Login.aspx");

        }
        rcv = Session["username"].ToString();
        Label1.Text = rcv;
        Balance_Show();
    }

    public void Balance_Show()
    {


        cnn.Open();
        MySqlCommand cmd1 = cnn.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select *from account where username='" + rcv + "' ";
        MySqlDataReader r1;

        r1 = cmd1.ExecuteReader();

        while (r1.Read())
        {
            // ename = r1.GetString("status").ToString();
            // par = r1.GetString("parent").ToString();

            Balance.Text = r1.GetString("balance").ToString();
            Left.Text = r1.GetString("left_total").ToString();
            Right.Text = r1.GetString("right_total").ToString();
        }






        cnn.Close();



    }
    


    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("~/Login.aspx");
    }

    protected void Profile_Click(object sender, EventArgs e)
    {
        Session["username_pass"] = rcv;
        Response.Redirect("~/user/UserProfile.aspx");
    }



}