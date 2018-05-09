using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mainpage_ALLProduct : System.Web.UI.Page
{
    DataTable data;


    string rcv;
    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
    //MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    protected void Page_Load(object sender, EventArgs e)
    {

        if(!IsPostBack){
        
        }
        //if (Session["c"] == null)
        //{
        //    Show();
        //    //Catagory_show();
        //}

        //else
        //{
        //    //rcv = Request.QueryString["Product_Catagory"]; Request.QueryString["Product_Catagory"] 
        //    Catagory();
        //  //  Show();
        //  //  rcv = Session["c"].ToString();
           
        //   // Catagory_show();
             
        //}

        Show();


    }

    //public void Catagory_show()
    //{


    //    cnn.Open();
    //    MySqlCommand cmd4 = cnn.CreateCommand();
    //    cmd4.CommandType = CommandType.Text;

    //    cmd4.CommandText = "select catagory from Product ";
    //    cmd4.ExecuteNonQuery();

    //    data = new DataTable();
    //    MySqlDataAdapter adp = new MySqlDataAdapter(cmd4);

    //    adp.Fill(data);
    //   Repeater1.DataSource = data;
    //    Repeater1.DataBind();

    //    cnn.Close();
    //}
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
        //GridView1.DataSource = data;
        // GridView1.DataBind();

        //Create the PagedDataSource that will be used in paging
        PagedDataSource pgitems = new PagedDataSource();
        pgitems.DataSource = data.DefaultView;
        pgitems.AllowPaging = true;

        //Control page size from here 
        pgitems.PageSize = 3;
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

    public void Catagory()
    {


        //cnn.Open();
        //MySqlCommand cmd = cnn.CreateCommand();
        //cmd.CommandType = CommandType.Text;

        //cmd.CommandText = "select *from Product where catagory='" + Session["c"] + "' ";
        //cmd.ExecuteNonQuery();

        //data = new DataTable();
        //MySqlDataAdapter adp = new MySqlDataAdapter(cmd);

        //adp.Fill(data);
        ////GridView1.DataSource = data;
        //// GridView1.DataBind();

        ////Create the PagedDataSource that will be used in paging
        //PagedDataSource pgitems = new PagedDataSource();
        //pgitems.DataSource = data.DefaultView;
        //pgitems.AllowPaging = true;

        ////Control page size from here 
        //pgitems.PageSize = 3;
        //pgitems.CurrentPageIndex = PageNumber;
        //if (pgitems.PageCount > 1)
        //{
        //    rptPaging.Visible = true;
        //    ArrayList pages = new ArrayList();
        //    for (int i = 0; i <= pgitems.PageCount - 1; i++)
        //    {
        //        pages.Add((i + 1).ToString());
        //    }
        //    rptPaging.DataSource = pages;
        //    rptPaging.DataBind();
        //}
        //else
        //{
        //    rptPaging.Visible = false;
        //}

        ////Finally, set the datasource of the repeater
        //// RepCourse.DataSource = pgitems;
        //// RepCourse.DataBind();


        //R1.DataSource = pgitems;
        //R1.DataBind();


        //cnn.Close();



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




    //protected void Search_Button_Click(object sender, EventArgs e)
    //{
    //    Show_Search();
    //}
    //protected void Refresh_Click(object sender, EventArgs e)
    //{
    //    Show();
    //    TextBox1.Text = "";

    //}

    //protected void ENameLinkBtn_Click(object sender, EventArgs e)
    //{
    //    LinkButton btn = (LinkButton)(sender);
    //    string product_catagory = btn.CommandArgument;
    //    // do what you need here

    //    Session["c"] = product_catagory;

    //   // Response.Redirect("~/Mainpage/ALLProduct.aspx?Product_Catagory=" +product_catagory);
    //  Response.Redirect("~/Mainpage/ALLProduct.aspx");
    //}

    protected void D1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select *from Product where catagory='" +D1.SelectedItem.Value+ "' ";
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
        pgitems.PageSize = 6;
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
}