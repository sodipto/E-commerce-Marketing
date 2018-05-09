using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Registration_Registration : System.Web.UI.Page
{
    string msg = "This userName Already Exist,Change your username";
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
   // MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    //class item check
    public bool username_Check()
    {

        string constring = "server=localhost;database=mlm;uid=root;pwd=;"; // chage here
        MySqlConnection con = new MySqlConnection(constring);
        MySqlCommand cmd = new MySqlCommand("Select * from userinfo where username='" + username.Text + "' ", con);
        // cmd.Parameters.AddWithValue("@ClassName", this.Class_textBox.Text);
        con.Open();
        int TotalRows = 0;
        TotalRows = Convert.ToInt32(cmd.ExecuteScalar());
        if (TotalRows > 0)
        {
          //  MessageBox.Show("This class Already exist");

            Response.Write("<script> alert('Error:" + msg + " ');</script>");
            return true;
        }
        else
        {
            return false;
        }
    }

    ////parent item check
    //public bool parent_Check()
    //{

    //    string constring = "server=localhost;database=mlm;uid=root;pwd=;";
    //    MySqlConnection con = new MySqlConnection(constring);
    //    MySqlCommand cmd = new MySqlCommand("Select * from userinfo where parent='" + username.Text + "' ", con);
    //    // cmd.Parameters.AddWithValue("@ClassName", this.Class_textBox.Text);
    //    con.Open();
    //    int TotalRows = 0;
    //    TotalRows = Convert.ToInt32(cmd.ExecuteScalar());
    //    if (TotalRows > 0)
    //    {
    //        //  MessageBox.Show("This class Already exist");

    //        Response.Write("<script> alert('Error:" + msg + " ');</script>");
    //        return true;
    //    }
    //    else
    //    {
    //        return false;
    //    }
    //} 


   





    protected void Register_Click(object sender, EventArgs e)
    {
        if (!username_Check())
       {

            try
            {

                //end code


                cnn.Open();

                //  MessageBox.Show("Connection Open ! ");
                MySqlCommand cmd = cnn.CreateCommand();
                cmd.CommandType = CommandType.Text;
               // cmd.CommandText = "insert into user (name,email,password) values ('" + name.Text + "','" + email.Text + "',MD5 ('" + password.Text + "') )";
                cmd.CommandText = "insert into userinfo (full_name,username,password,email,parent,f_name,nomini_name,nomini_relation,dob,p_id,mobile,address,country,bank_account,nid,direct_income_acc,status) values ('" + name.Text + "','" + username.Text + "','" + password.Text + "','" + email.Text + "','" + parent.Text + "','" + father.Text + "','" + Nomini.Text + "','" + Nomini_Relation.Text + "','" + dob.Text + "','" + p_id.Text + "','" + Mobile.Text + "','" + address.Text + "','" + country.Text + "','" + bank_account.Text + "','" + nid.Text + "','" + D_income.Text + "','deactive')";
                // MySqlDataReader dr =  //data excute variable

                cmd.ExecuteReader();




                cnn.Close();
                Response.Redirect("~/Login.aspx");




            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
      }

              


    }
}