using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPassword : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
  //  MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;"); 
    string username_rcv;

    string id;
    int lastpos = 0;


    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["username"] != null && Session["mspassword"] != null)
        {
            username_rcv = Session["username"].ToString();
            string rcv = Session["mspassword"].ToString();
            if (!Page.IsPostBack)
            {
                pass_Show();
            }
           
        }


        else
        {

            Response.Redirect("~/Login.aspx");
        }
    }


    public void pass_Show() {
        cnn.Open();
        MySqlCommand cmd1 = cnn.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select * from admin where username='" +Session["username"]+ "' ";
        MySqlDataReader r1;

        r1 = cmd1.ExecuteReader();

        while (r1.Read())
        {
            // ename = r1.GetString("status").ToString();
            // par = r1.GetString("parent").ToString();

            Verify.Text = r1.GetString("pv").ToString();
            User.Text = r1.GetString("pal").ToString();
            Add_product.Text = r1.GetString("pap").ToString();
            Product_List.Text = r1.GetString("pod").ToString();
            Withdraw.Text = r1.GetString("pd").ToString();
            Backup.Text = r1.GetString("ptb").ToString();
            login.Text = r1.GetString("pp").ToString();
            Transation.Text = r1.GetString("pt").ToString();
            Label3.Text = r1.GetString("LUT").ToString();


        }


        cnn.Close();
        
    
    }

    //All password change
    protected void Change_password_Click(object sender, EventArgs e)
    {
        cnn.Open();
        MySqlCommand cmd2 = cnn.CreateCommand();
        cmd2.CommandType = CommandType.Text;

        cmd2.CommandText = "UPDATE admin set pv='" + Verify.Text + "' , pal='" + User.Text + "',  pap='" + Add_product.Text + "',  pod='" + Product_List.Text + "', pd='" + Withdraw.Text + "', ptb='" + Backup.Text + "',pt='" + Transation.Text + "',pp='" + login.Text + "'   where username='" + username_rcv + "' ";
        //MySqlDataReader r1;

        cmd2.ExecuteReader();

        Response.Write("<script> alert('Password Update Successfully');</script>");
       // Response.Redirect("~/Product_Table.aspx");

        cnn.Close();
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Bal_Update();




        BBT();









        //Verify.Text = "ghghgh";
        
    }

    //public void BL()
    //{


    //    cnn.Open();
    //    MySqlCommand cmd1 = cnn.CreateCommand();
    //    cmd1.CommandType = CommandType.Text;

    //    cmd1.CommandText = "select * from admin where id='" + 1 + "' ";
    //    MySqlDataReader r1;

    //    r1 = cmd1.ExecuteReader();

    //    while (r1.Read())
    //    {
    //        // ename = r1.GetString("status").ToString();
    //        // par = r1.GetString("parent").ToString();

            
           


    //    }


    //    cnn.Close();
    
    
    
    
    //}





















    public void BBT()


    {

        Label3.Text = DateTime.Now.ToString();

        cnn.Open();
        MySqlCommand cmd2 = cnn.CreateCommand();
        cmd2.CommandType = CommandType.Text;

        cmd2.CommandText = "UPDATE admin set LUT='" + Label3.Text + "' where id='" + 1 + "' ";
        //MySqlDataReader r1;

        cmd2.ExecuteReader();

       // Response.Write("<script> alert('Password Update Successfully');</script>");
        // Response.Redirect("~/Product_Table.aspx");

        cnn.Close();










        Response.Write("<script> alert('TREE HAS BEEN CALCULATED !!!!!!! ');</script>");



        
    
    
    
    
    
    
    }













    public void Bal_Update()
    {

        int l = 0, r = 0, bal = 0;
        int min = 0, nbal = 0;
        int masumartaka = 0;

        lastvalue();

        for (int i = 1; i <= lastpos; i++)
        {


            cnn.Open();
            MySqlCommand cmd = cnn.CreateCommand();


            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "SELECT * FROM account where a_id='" + i + "'";
            MySqlDataReader r1;

            r1 = cmd.ExecuteReader();

            while (r1.Read())
            {
                l = int.Parse(r1.GetString("left_total"));
                r = int.Parse(r1.GetString("right_total"));
                bal = int.Parse(r1.GetString("balance"));


            }







            if (l < r) { min = l; }
            else { min = r; }


            if (min == 0) { nbal = 0; }

            else if (min >= 1 && min < 3) { nbal = 100; }
            else if (min >= 3 && min < 7) { nbal = 300; }
            else if (min >= 7 && min < 15) { nbal = 700; }
            else if (min >= 15) { nbal = 1500; }


            masumartaka = bal + nbal;

            cnn.Close();


            cnn.Open();
            MySqlCommand cmd4 = cnn.CreateCommand();
            cmd4.CommandType = CommandType.Text;

            cmd4.CommandText = "update account set balance='" + masumartaka + "' where a_id='" + i + "'";



            cmd4.ExecuteNonQuery();


            cnn.Close();






























        }














      //  Verify.Text = masumartaka.ToString();


    }





    public void lastvalue()
    {


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
      //  Label3.Text = lastpos.ToString();

        cnn.Close();

    }





    






}