using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Income_Label : System.Web.UI.Page
{


    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
   // MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] != null && Session["Ipassword"] != null)
        {

            string rcv = Session["Ipassword"].ToString();


        }
            
        else
        {

            Response.Redirect("~/Login.aspx");
        }


    }

    //here update click
    protected void Update_click_Click(object sender, EventArgs e)
    {
        int x = 0;
        try
        {

            x = int.Parse(username.Text);


            if (x == 0) { }

            else
            {
                cnn.Open();
                MySqlCommand cmd4 = cnn.CreateCommand();
                cmd4.CommandType = CommandType.Text;

                cmd4.CommandText = "update rule set dr='" + x + "' where id='" + 1 + "'";



                cmd4.ExecuteNonQuery();


                cnn.Close();


                Label1.Text = "THE DIRECT INCOME HAS BEEN SET TO : "+ x + " TAKA";


                username.Text = "";
            }

        }

        catch (Exception e1) {

            Label1.Text = "CHEK THE INPUT PLZZZZ";
        
        
        }




    }
    //15:15
    protected void B15_Click(object sender, EventArgs e)
    {
        cnn.Open();
        MySqlCommand cmd4 = cnn.CreateCommand();
        cmd4.CommandType = CommandType.Text;

        cmd4.CommandText = "update rule set rr='" + 1 + "' where id='" + 1 + "'";



        cmd4.ExecuteNonQuery();


        cnn.Close();

    
    }




    //31:31
    protected void B31_Click(object sender, EventArgs e)
    {
        cnn.Open();
        MySqlCommand cmd4 = cnn.CreateCommand();
        cmd4.CommandType = CommandType.Text;

        cmd4.CommandText = "update rule set rr='" + 2 + "' where id='" + 1 + "'";



        cmd4.ExecuteNonQuery();


        cnn.Close();
    }

    //63:63
    protected void B63_Click(object sender, EventArgs e)
    {
        cnn.Open();
        MySqlCommand cmd4 = cnn.CreateCommand();
        cmd4.CommandType = CommandType.Text;

        cmd4.CommandText = "update rule set rr='" + 3 + "' where id='" + 1 + "'";



        cmd4.ExecuteNonQuery();


        cnn.Close();
    }
}