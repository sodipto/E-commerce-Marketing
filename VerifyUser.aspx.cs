using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_VerifyUser : System.Web.UI.Page
{

    DataTable data;

    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
   // MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    
    
    string par, value;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null && Session["password1"] != null)
        {

            string rcv = Session["password1"].ToString();
            Show();
        }


        else {

            Response.Redirect("~/Login.aspx");
        }
    }


  

    public void Show()
    {


        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select *from userinfo where status='deactive' ";
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
        MySqlCommand cmd1 = cnn.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select *from userinfo where status='deactive' and username='" + TextBox1.Text + "'";
        cmd1.ExecuteNonQuery();

        data = new DataTable();
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd1);

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




    protected void Search_Button_Click(object sender, EventArgs e)
    {
        Show_Search();
    }
    protected void Refresh_Click(object sender, EventArgs e)
    {
         Show();
    
    }

    protected void ENameLinkBtn_Click(object sender, EventArgs e)
    {
        
        LinkButton btn = (LinkButton)(sender);
        string user_name = btn.CommandArgument;
        // do what you need here

        cnn.Open();
        MySqlCommand cmd7 = cnn.CreateCommand();
        cmd7.CommandType = CommandType.Text;
       
        cmd7.CommandText = "select parent from userinfo where username='" + user_name + "'";



      //  cmd7.ExecuteNonQuery();


        MySqlDataReader r1;

        r1 = cmd7.ExecuteReader();

        while (r1.Read())
        {
          //  ename = r1.GetString("status").ToString();
            par = r1.GetString("parent").ToString();


        }

      cnn.Close();

      //parent search
      cnn.Open();
      MySqlCommand cmd8 = cnn.CreateCommand();
      cmd8.CommandType = CommandType.Text;

      cmd8.CommandText = "select username from account where username='" +par+ "' ";



      //  cmd7.ExecuteNonQuery();


      MySqlDataReader r2;

      r2 = cmd8.ExecuteReader();

      while (r2.Read())
      {
          //  ename = r1.GetString("status").ToString();
          value = r2.GetString("username").ToString();


      }

      cnn.Close();

      TextBox1.Text = value;

      if (value ==null)
      {
          //  TextBox1.Text = value;

          Response.Write("<script> alert('The Reffer account not exist');</script>");
      }


      else
      {
        Session["username"] = user_name;
         
         Response.Redirect("~/M_Tree.aspx");
     // TextBox1.Text = value;
      }


    }












    protected void Delete_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)(sender);
        string user_name_delete = btn.CommandArgument;

        cnn.Open();
        MySqlCommand cmd8 = cnn.CreateCommand();
        cmd8.CommandType = CommandType.Text;

        cmd8.CommandText = "delete from userinfo where username='" +user_name_delete+ "'";
        cmd8.ExecuteNonQuery();

       


        cnn.Close();
        Show();
        // do what you need here

       // Session["username_Delete"] =user_name_delete;

        //Response.Redirect("Admin/ProductUpdate.aspx?id="+yourValue);
        //Response.Redirect("~/DeleteUser.aspx");  //cheak value pass to paginate page then chang m_tree page
    }


}