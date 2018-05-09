using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddProduct : System.Web.UI.Page
{
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
  //  MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;"); 
    
    DataTable data;
    string msg = "This ProductID Already Exist,Change your ProductID";
    string path;
    protected void Page_Load(object sender, EventArgs e)
    {

        
        if (Session["username"] != null && Session["Apassword"] != null)
        {

            string rcv = Session["Apassword"].ToString();
          
        }


        else
        {

            Response.Redirect("~/Login.aspx");
        }
    }

    public bool username_Check()
    {
      //  MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;"); 
      //  string constring = "server=localhost;database=mlm;uid=shield;pwd=54321;";
       string constring = "server=localhost;database=mlm;uid=root;pwd=;";
        MySqlConnection con = new MySqlConnection(constring);
        MySqlCommand cmd = new MySqlCommand("Select * from product where product_ID='" + p_id.Text + "' ", con);
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


    protected void Product_Entry_Click(object sender, EventArgs e)
    {

        if (p_image.HasFile) {

            p_image.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "ProductImage/" + p_image.FileName );
            path =p_image.FileName;
        
        }

        if (!username_Check())
        {

            try
            {

                //end code


                cnn.Open();

                if (D1.SelectedItem.Text == "Select your Catagory")
                {
                    // lblmsg.Text = "Please Select Year";
                    // dropdownlist1.Focus();
                    // return;
                    Response.Write("<script> alert('Select youy Catagory');</script>");
                }

                else
                {
                    MySqlCommand cmd = cnn.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    // cmd.CommandText = "insert into user (name,email,password) values ('" + name.Text + "','" + email.Text + "',MD5 ('" + password.Text + "') )";
                    cmd.CommandText = "insert into product (product_ID,productName,productDescription,productPrice,productPoint,productWarinty,catagory,image) values ('" + p_id.Text + "','" + name.Text + "','" + description.Text + "','" + price.Text + "','" + Point.Text + "','" + warinty.Text + "','" + D1.SelectedItem.Value + "','" + path + "')";
                    // MySqlDataReader dr =  //data excute variable

                    cmd.ExecuteReader();




                    cnn.Close();
                   // Response.Write("Insert SuccessFully");
                    Response.Write("<script> alert('Product Entry Succesfully');</script>");

                    p_id.Text = "";
                    name.Text="";

                    description.Text="";
                    price.Text = "";
                    Point.Text="";
                    warinty.Text= "";
                   




                }



            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

            



    }
}