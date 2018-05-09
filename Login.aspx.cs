using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
    //MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    //Login Here Button
    protected void Login_button_Click(object sender, EventArgs e)
    {



        if (email.Text != "admin")
        {
            try
            {
                cnn.Open();


                MySqlCommand cmd = cnn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                MySqlDataReader myreader;

                cmd.CommandText = "select *from userinfo where username='" + email.Text + "' and password= '" + password.Text + "' ";



                myreader = cmd.ExecuteReader();


                int count = 0;
                while (myreader.Read())
                {

                    count += 1;


                }


                if (count == 1)
                {
                    Session["username"] = email.Text;

                    Response.Redirect("user/user.aspx");
                    // Label1.Text = "Login Successfully";



                }




                else
                {

                    Label1.Text = "Username  or password  Incorrect";

                }








            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        else
        {




            try
            {
                cnn.Open();


                MySqlCommand cmd = cnn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                MySqlDataReader myreader;

                cmd.CommandText = "select *from admin where username='" + email.Text + "' and pp= '" + password.Text + "' ";



                myreader = cmd.ExecuteReader();


                int count = 0;
                while (myreader.Read())
                {

                    count += 1;


                }


                if (count == 1)
                {
                    Session["username"] = email.Text;

                    Response.Redirect("~/Home.aspx");
                    // Label1.Text = "Login Successfully";



                }




                else
                {

                    Label1.Text = "Username  or password  Incorrect";

                }









            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }







        }
    }

}