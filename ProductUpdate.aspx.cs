using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ProductUpdate : System.Web.UI.Page
{

    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
    //MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    
    DataTable data;
    string pid;
    string path;
    
    protected void Page_Load(object sender, EventArgs e)
    {
     
      // Label1.Text = pid;
        pid = Session["productId"].ToString();


        if (!Page.IsPostBack)
        {
            AllProduct();
        }

       
    }





    public void AllProduct() {
        //p_id.Enabled = false;  
        
        cnn.Open();
        MySqlCommand cmd1 = cnn.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select *from product where product_ID='"+pid+"' ";
        MySqlDataReader r1;

        r1 = cmd1.ExecuteReader();

        while (r1.Read())
        {
            // ename = r1.GetString("status").ToString();
            // par = r1.GetString("parent").ToString();

            p_id.Text = r1.GetString("product_ID").ToString();
            name.Text = r1.GetString("productName").ToString();
            description.Text = r1.GetString("productDescription").ToString();
            price.Text = r1.GetString("productPrice").ToString();
            Point.Text = r1.GetString("productPoint").ToString();
            warinty.Text = r1.GetString("productWarinty").ToString();


        }


        cnn.Close();
         
    
    
    }


  

    protected void Product_update_Click(object sender, EventArgs e)
    {

        if (p_image.HasFile)
        {

            p_image.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "ProductImage/" + p_image.FileName);
            path = p_image.FileName;

        }



        cnn.Open();
        MySqlCommand cmd2 = cnn.CreateCommand();
        cmd2.CommandType = CommandType.Text;

        cmd2.CommandText = "UPDATE product set productWarinty='" + warinty.Text + "',productDescription='" + description.Text + "',productName='" + name.Text + "',productPoint='" + Point.Text + "', productPrice='" + price.Text + "',image='"+path+"' where product_ID='" + pid + "' ";
        //MySqlDataReader r1;

        cmd2.ExecuteReader();

         Response.Write("<script> alert('Product_Entry Updata Successfully');</script>");
         Response.Redirect("~/Product_Table.aspx");

        cnn.Close();
    }





   
    
}