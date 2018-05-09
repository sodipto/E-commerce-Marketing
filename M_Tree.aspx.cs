using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class M_Tree : System.Web.UI.Page
{

    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
   // MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    
    
    
    string userName_rcv;
    string ename;
    string par;
    string dirr;
    string par_child_count;
    int par_child_count1;
    protected void Page_Load(object sender, EventArgs e)
    {
        userName_rcv = Session["username"].ToString();
       // Label1.Text = userName_rcv;
        Update_Status(userName_rcv);

        
    }

   




    public void Update_Status(string rcv)
    {

        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "update userinfo set status='active' where username='" +rcv + "'";



        cmd.ExecuteNonQuery();

        ValuePass(rcv);



      //  cnn.Close();
       // ValuePass("sodipto");

    }

    //update and insert to the account

    public void ValuePass(string user)
    {



       // cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();


        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select * from userinfo where status='active' and username='" + user + "'";
        MySqlDataReader r1;

        r1 = cmd.ExecuteReader();

        while (r1.Read())
        {
            ename = r1.GetString("status").ToString();
            par = r1.GetString("parent").ToString();
            dirr = r1.GetString("direct_income_acc").ToString();

        }

        cnn.Close();
        if (ename == "active")
        {








            Parent_Tress(user);



          
            
        }

        else
        {

         //   Label1.Text = "Her Account Deactive";

        }

       

  // cnn.Close();

    }


    //child count to the parrent
    public void Parent_Tress(string user)
    {
        

          cnn.Open();
        MySqlCommand cmd2 = cnn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        MySqlDataReader r2;
        cmd2.CommandText = "SELECT child_count from account WHERE username='" + user + "' IN (select username='"+par+"')";

      



        r2 = cmd2.ExecuteReader();
        
        while (r2.Read())
        {
            par_child_count = r2.GetString("child_count").ToString();
          


        }

        par_child_count1 = int.Parse(par_child_count);  //child count to the parrent
      //  Label2.Text = par_child_count1.ToString();





        cnn.Close();


        if (par_child_count1 < 2)
        {


            switch (par_child_count1)  // to determine the letermine left or right 
            {
                case 0:
                   leftok();


                    break;


                case 1:

                    rightok();
                    break;


            }



        }


        else {

            

            cnn.Open();
            MySqlCommand cmd = cnn.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "update userinfo set status='deactive' where username='" + userName_rcv + "'";



            cmd.ExecuteNonQuery();

           



             cnn.Close();


            


             Response.Write("<script> alert('The Reffer account has Already reach maximum Limit ');</script>");


           //  Response.Redirect("~/VerifyUser.aspx");




            

        }






    }




    public void leftok()
    {
        par_child_count1++;
    



         cnn.Open();
        MySqlCommand cmd3 = cnn.CreateCommand();
        cmd3.CommandType = CommandType.Text;

        cmd3.CommandText = "update account set child_count='"+par_child_count1+"' where username='" +par + "'";



        cmd3.ExecuteNonQuery();

     



       cnn.Close();
       
       insert_ac0();
        All_in_all( userName_rcv,0);

    }





    
    
    
    
    


    public void rightok()
    {
        par_child_count1++;

        cnn.Open();
        MySqlCommand cmd4 = cnn.CreateCommand();
        cmd4.CommandType = CommandType.Text;

        cmd4.CommandText = "update account set child_count='"+par_child_count1+"' where username='" +par + "'";



        cmd4.ExecuteNonQuery();

        cnn.Close();

        insert_ac1();
        All_in_all(userName_rcv, 1);
    }




    //insert new account

    public void insert_ac0() {
        

        cnn.Open();

        MySqlCommand cmd1 = cnn.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "insert into account (username,parent_acc,parent_pos) values ('" + userName_rcv + "','" + par + "',0)";


        cmd1.ExecuteReader();

     //   Label1.Text = "Succesfully";
        
        

        cnn.Close();
    
    
    
    
    }


    public void insert_ac1()
    {


        cnn.Open();

        MySqlCommand cmd1 = cnn.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "insert into account (username,parent_acc,parent_pos) values ('" + userName_rcv + "','" + par + "',1)";


        cmd1.ExecuteReader();

       // Label1.Text = "Succesfully";
        
        // 

        cnn.Close();




    }


    public void All_in_all(string user_Name,int b) {

        string Ref = user_Name;
        string temp = "";
        int pos = b;
        int pos1 = 0;
        int l = 0;
        int r = 0;
        int T = 0;
        int xx = 11;


        cnn.Open();
        MySqlCommand cmd5 = cnn.CreateCommand();


        cmd5.CommandType = CommandType.Text;

        cmd5.CommandText = "select *from account where username='" +Ref+ "'";
        MySqlDataReader r1;

        r1 = cmd5.ExecuteReader();

        while (r1.Read())
        {
            Ref = r1.GetString("parent_acc").ToString();
           // par = r1.GetString("parent").ToString();
           // pos = int.Parse(r1.GetString("parent_pos").ToString());


        }

        cnn.Close();


        while (xx != 12)
        {


            cnn.Open();
            MySqlCommand cmd6 = cnn.CreateCommand();


            cmd6.CommandType = CommandType.Text;

            cmd6.CommandText = "select *from account where username='" + Ref + "'";
            MySqlDataReader r2;

            r2 = cmd6.ExecuteReader();

            while (r2.Read())
            {
                temp = r2.GetString("parent_acc").ToString();

                pos1 = int.Parse(r2.GetString("parent_pos").ToString());
                l = int.Parse(r2.GetString("left_total").ToString());
                r = int.Parse(r2.GetString("right_total").ToString());
                T = int.Parse(r2.GetString("total_acc").ToString());

            }

            cnn.Close();



            cnn.Open();
            MySqlCommand cmd4 = cnn.CreateCommand();
            cmd4.CommandType = CommandType.Text;
            if (pos == 0)
            {
                l++;

            }
            else
            {
                r++;
            }

            T++;
            cmd4.CommandText = "update account set left_total='" + l + "',right_total='" + r + "',total_acc='" + T + "' where username='" + Ref + "'";



            cmd4.ExecuteNonQuery();

            cnn.Close();

            if (pos1 == 111) {



                xx = 12;
            }







            pos = pos1;

            Ref = temp;



        }

        dir();

        Response.Redirect("~/VerifyUser.aspx");
    }

    public void dir()
    {
        int bal = 0;
        cnn.Open();
        MySqlCommand cmd6 = cnn.CreateCommand();


        cmd6.CommandType = CommandType.Text;

        cmd6.CommandText = "select * from rule where id='" + 1 + "'";
        MySqlDataReader r2;

        r2 = cmd6.ExecuteReader();

        while (r2.Read())
        {
            

            bal = int.Parse(r2.GetString("dr").ToString());
            

        }

        cnn.Close();





        cnn.Open();
        MySqlCommand cmd4 = cnn.CreateCommand();
        cmd4.CommandType = CommandType.Text;

        cmd4.CommandText = "update account set balance=balance+'" + bal + "' where username='" + dirr + "'";



        cmd4.ExecuteNonQuery();

        cnn.Close();
    
    
    
    
    
    }









    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/VerifyUser.aspx");
    }
}