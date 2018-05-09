using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mainpage_Default : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
   // MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    DataTable data;
    string rec_username;

    protected void Page_Load(object sender, EventArgs e)
    {
        Show();
    }


    public void Show()
    {


        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "SELECT * FROM product ORDER BY product_ID DESC LIMIT 3";
        cmd.ExecuteNonQuery();

        data = new DataTable();
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);

        adp.Fill(data);

        R1.DataSource = data;
        R1.DataBind();


        cnn.Close();



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Mainpage/ALLProduct.aspx");
            
    }
}