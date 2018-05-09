using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Withdraw : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
   // MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    
    
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] != null && Session["Wpassword"] != null)
        {

            string rcv = Session["Wpassword"].ToString();
          //  WithdrawButton.Text = DateTime.Now.ToString();
          
        }


        else
        {

            Response.Redirect("~/Login.aspx");
        }
    }




    protected void Search_Button_Click(object sender, EventArgs e)
    {
        Username_label.Text = "";
        Balance_label.Text = "";
        userName.Text = "";




        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();


        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select *from account where  username='" + SearchTextbox.Text + "'";
        MySqlDataReader r1;

        r1 = cmd.ExecuteReader();

        while (r1.Read())
        {
            Username_label.Text = r1.GetString("username").ToString();
            Balance_label.Text = r1.GetString("balance").ToString();
           
           
        }
        userName.Text = Username_label.Text;
        cnn.Close();
    }
    protected void ClearButton_Click(object sender, EventArgs e)
    {
        Username_label.Text = "";
        Balance_label.Text = "";
        SearchTextbox.Text = "";
        userName.Text = "";
        Label1.Text = "";
    }


    protected void WithdrawButton_Click(object sender, EventArgs e)
    {
        int balancedt = 0;

        cnn.Open();
        MySqlCommand cmd3 = cnn.CreateCommand();


        cmd3.CommandType = CommandType.Text;

        cmd3.CommandText = "select * from account where  username='" + SearchTextbox.Text + "'";
        MySqlDataReader r2;

        r2 = cmd3.ExecuteReader();

        while (r2.Read())
        {
           // Username_label.Text = r2.GetString("username").ToString();
            balancedt=int.Parse( r2.GetString("balance"));


        }

        cnn.Close();



        int minbal = 1500;
       // string bal = minbal.ToString();
        int Baltext = int.Parse(Balance.Text);
       // Label1.Text = Baltext.ToString();
        if (minbal <= balancedt - Baltext)
        {

        cnn.Open();



        MySqlCommand cmd1 = cnn.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "update account set balance=balance-'" + Baltext + "' where username='" + userName.Text + "'";


            cmd1.ExecuteNonQuery();
           

            cnn.Close();

            cnn.Open();

            MySqlCommand cmd2 = cnn.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            // cmd.CommandText = "insert into user (name,email,password) values ('" + name.Text + "','" + email.Text + "',MD5 ('" + password.Text + "') )";
            cmd2.CommandText = "insert into balance_withdraw (username,balance,T_Date) values ('" + userName.Text + "','" + Balance.Text + "',now())";
            // MySqlDataReader dr =  //data excute variable

            cmd2.ExecuteReader();

            Label1.Text = "Successfully Withdraw";


            cnn.Close();


        }
        else {

            Label1.Text = "Balance Not Less then 1500";
        }

        Balance.Text = "";
        userName.Text = "";



       
    }



}