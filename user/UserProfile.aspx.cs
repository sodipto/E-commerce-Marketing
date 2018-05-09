using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_UserProfile : System.Web.UI.Page
{
    //MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;"); 
    DataTable data;

    string rcv;
    protected void Page_Load(object sender, EventArgs e)


    {
        if (Session["username_pass"] == null)
        {
            Response.Redirect("~/Login.aspx");

        }
      
            rcv = Session["username_pass"].ToString();
            Label1.Text = rcv;
            Profile_Show();
            Balance_Show();

      



    }




    public void Profile_Show()
    {


        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select *from userinfo where username='" + rcv + "' ";
        cmd.ExecuteNonQuery();

        data = new DataTable();
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);

        adp.Fill(data);
        //GridView1.DataSource = data;
        // GridView1.DataBind();

        R1.DataSource = data;
        R1.DataBind();



        cnn.Close();



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


        }

        

       


        cnn.Close();



    }




    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("~/Login.aspx");
    }



}