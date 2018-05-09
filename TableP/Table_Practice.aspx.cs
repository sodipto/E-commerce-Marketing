using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TableP_Table_Practice : System.Web.UI.Page
{


    DataTable data;



    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");


    protected void Page_Load(object sender, EventArgs e)
    {
       // Show();
    }




    public void Show()
    {


        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select *from Product ";
        cmd.ExecuteNonQuery();

        data = new DataTable();
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);

        adp.Fill(data);
       // R1.DataSource = data;
       // R1.DataBind();

        cnn.Close();
    }


}