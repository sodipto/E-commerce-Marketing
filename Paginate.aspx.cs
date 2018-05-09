using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paginate : System.Web.UI.Page
{
    

    DataTable data;

     MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["username"].ToString();
        Show();
    }

     public void Show()
    {


        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select *from userinfo ";
        cmd.ExecuteNonQuery();

        data = new DataTable();
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);

        adp.Fill(data);
        //GridView1.DataSource = data;
        // GridView1.DataBind();

             //Create the PagedDataSource that will be used in paging
    PagedDataSource pgitems = new PagedDataSource();
    pgitems.DataSource = data.DefaultView;
    pgitems.AllowPaging = true;

    //Control page size from here 
    pgitems.PageSize = 4;
    pgitems.CurrentPageIndex = PageNumber;
    if (pgitems.PageCount > 1)
    {
        rptPaging.Visible = true;
        ArrayList pages = new ArrayList();
        for (int i = 0; i <= pgitems.PageCount - 1; i++)
        {
            pages.Add((i + 1).ToString());
        }
        rptPaging.DataSource = pages;
        rptPaging.DataBind();
    }
    else
    {
        rptPaging.Visible = false;
    }

    //Finally, set the datasource of the repeater
   // RepCourse.DataSource = pgitems;
   // RepCourse.DataBind();


    R1.DataSource = pgitems;
    R1.DataBind();


        cnn.Close();



    }

     public void Show_Search()
     {


         cnn.Open();
         MySqlCommand cmd = cnn.CreateCommand();
         cmd.CommandType = CommandType.Text;

         cmd.CommandText = "select *from userinfo where username='"+TextBox1.Text+"'";
         cmd.ExecuteNonQuery();

         data = new DataTable();
         MySqlDataAdapter adp = new MySqlDataAdapter(cmd);

         adp.Fill(data);
         //GridView1.DataSource = data;
         // GridView1.DataBind();

         //Create the PagedDataSource that will be used in paging
         PagedDataSource pgitems = new PagedDataSource();
         pgitems.DataSource = data.DefaultView;
         pgitems.AllowPaging = true;

         //Control page size from here 
         pgitems.PageSize = 4;
         pgitems.CurrentPageIndex = PageNumber;
         if (pgitems.PageCount > 1)
         {
             rptPaging.Visible = true;
             ArrayList pages = new ArrayList();
             for (int i = 0; i <= pgitems.PageCount - 1; i++)
             {
                 pages.Add((i + 1).ToString());
             }
             rptPaging.DataSource = pages;
             rptPaging.DataBind();
         }
         else
         {
             rptPaging.Visible = false;
         }

         //Finally, set the datasource of the repeater
         // RepCourse.DataSource = pgitems;
         // RepCourse.DataBind();


         R1.DataSource = pgitems;
         R1.DataBind();


         cnn.Close();



     }


     public int PageNumber
     {
         get
         {
             if (ViewState["PageNumber"] != null)
             {
                 return Convert.ToInt32(ViewState["PageNumber"]);
             }
             else
             {
                 return 0;
             }
         }
         set { ViewState["PageNumber"] = value; }
     }


 
//This method will fire when clicking on the page no link from the pager repeater
protected void rptPaging_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
{
    PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
    Show();
}



protected void Button1_Click(object sender, EventArgs e)
{
    Show_Search();
}



}
