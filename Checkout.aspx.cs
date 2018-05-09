using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Checkout : System.Web.UI.Page
{

    string rcv;


    string pp, pv, pal, pap, pod, pd, pil, ptb, pm,pt;

    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
    //MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;"); 
    
    DataTable data;
    protected void Page_Load(object sender, EventArgs e)
    {
        rcv = Session["username"].ToString(); 
    }


    protected void EntryButton_Click(object sender, EventArgs e)
    {


        cnn.Open();
        MySqlCommand cmd1 = cnn.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select *from admin ";
        MySqlDataReader r1;

        r1 = cmd1.ExecuteReader();

        while (r1.Read())
        {
            // ename = r1.GetString("status").ToString();
            // par = r1.GetString("parent").ToString();

     

             pp= r1.GetString("pp").ToString();
             pv= r1.GetString("pv").ToString();
             pal= r1.GetString("pal").ToString();
             pap= r1.GetString("pap").ToString();
             pod= r1.GetString("pod").ToString();
             pd= r1.GetString("pd").ToString();
             pil= r1.GetString("pil").ToString();
             ptb= r1.GetString("ptb").ToString();
             pm = r1.GetString("pm").ToString();
             pt = r1.GetString("pt").ToString();

        }

        //verify
        if (pass.Text == pv)
        {
            Session["password1"]=pv;
            Response.Redirect("~/VerifyUser.aspx");

        }

         //userlist
        else if (pass.Text == pal)
        {

            Session["AUpassword"] = pal;
            Response.Redirect("~/ALLUser.aspx");

        
        }
         //add product
        else if (pass.Text == pap)
        {

            Session["Apassword"] = pap;
            Response.Redirect("~/AddProduct.aspx");


        }

         //product list
        else if (pass.Text == pod)
        {

            Session["Ppassword"] = pod;
            Response.Redirect("~/Product_Table.aspx");


        }

             //withdraw
        else if (pass.Text == pd)
        {

            Session["Wpassword"] = pd;
            Response.Redirect("~/Withdraw.aspx");


        }

            //income label
        else if (pass.Text == pil)
        {

            Session["Ipassword"] = pil;
            Response.Redirect("~/Income_Label.aspx");


        }

            //backup
        else if (pass.Text == ptb)
        {

            Session["Bkpassword"] = ptb;
            Response.Redirect("~/Backup.aspx");


        }

       //master pass
        else if (pass.Text == pm)
        {

            Session["mspassword"] = pm;
            Response.Redirect("~/MasterPassword.aspx");


        }


        else if (pass.Text == pt)
        {

            Session["Tpassword"] = pt;
            Response.Redirect("~/TransationHistory.aspx");


        }
        else
        {

            Label1.Text = "Wrong password";
        }






        cnn.Close();
         
    
          


    }



}