using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Home : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
   // MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    string id;
    int lastpos=0;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] != null)
        {

            Label1.Text = Session["username"].ToString();
            //Show();
        }


        else
        {

            Response.Redirect("~/Login.aspx");
        }
    }



    protected void Calculate_Click(object sender, EventArgs e)
    {
       // Bal_Update();
        Response.Write("<script> alert('WELLCOME ADMIN >>>>>>>>>>YOUR WEBSITE IS OK >>>>>');</script>");
    }


    public void Bal_Update()
    {

        int l=0, r=0, bal=0;
        int min = 0, nbal = 0;
        int masumartaka = 0;

        lastvalue();

        for (int i = 1; i <=lastpos; i++)

        {


            cnn.Open();
            MySqlCommand cmd = cnn.CreateCommand();


            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "SELECT * FROM account where a_id='"+i+"'";
            MySqlDataReader r1;

            r1 = cmd.ExecuteReader();

            while (r1.Read())
            {
                l = int.Parse(r1.GetString("left_total"));
                r = int.Parse(r1.GetString("right_total"));
               bal= int.Parse(r1.GetString("balance"));


            }

           
            

          


            if (l < r) { min = l; }
            else { min = r; }


            if (min == 0) { nbal = 0; }

            else if (min >= 1 && min <3) { nbal = 100;}
            else if (min >= 3 && min < 7) { nbal = 300; }
            else if (min >= 7 && min < 15) { nbal = 700; }
            else if (min >= 15){ nbal = 1500;}


            masumartaka = bal + nbal;

            cnn.Close();


            cnn.Open();
            MySqlCommand cmd4 = cnn.CreateCommand();
            cmd4.CommandType = CommandType.Text;

            cmd4.CommandText = "update account set balance='" +masumartaka+ "' where a_id='" +i+ "'";



            cmd4.ExecuteNonQuery();


            cnn.Close();

           



























        
         }














       


    }





    public void lastvalue() {


        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();


        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "SELECT a_id FROM account ORDER BY a_id DESC LIMIT 1";
        MySqlDataReader r1;

        r1 = cmd.ExecuteReader();

        while (r1.Read())
        {
            id = r1.GetString("a_id").ToString();
           

        }

        lastpos = int.Parse(id);
       

        cnn.Close();
    
    }


}