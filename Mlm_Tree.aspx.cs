using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;

public partial class Mlm_Tree : System.Web.UI.Page
{
    DataTable data;
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
    //MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    
    protected void Page_Load(object sender, EventArgs e)
    {

       

        
    }




    //This button action button for calculation of Binary tree
    protected void Action_Button_Click(object sender, EventArgs e)
    {

        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();
        cmd.CommandType = CommandType.Text;

        //cmd.CommandText = "select *from userinfo where status='deactive'";
        cmd.CommandText = "select *from userinfo";
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


    protected void Update_Status(object sender, EventArgs e)
    {

        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "update userinfo set status='deactive' where username='sodipto'";

        

        cmd.ExecuteNonQuery();

        data = new DataTable();
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);

        adp.Fill(data);
        //GridView1.DataSource = data;
        // GridView1.DataBind();

        R1.DataSource = data;
        R1.DataBind();



      //  cnn.Close();
            //  ValuePass("sodipto");

    }

    protected void Idpass_Click(object sender, EventArgs e)
    {


        Session["Data"] = ((LinkButton)sender).Text;

        Response.Redirect("M_Tree.aspx");
    }






   
}