using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

using ExcelLibrary.CompoundDocumentFormat;
using ExcelLibrary.SpreadSheet;
using ExcelLibrary.BinaryDrawingFormat;
using ExcelLibrary.BinaryFileFormat;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
using System.Data;
using System.Threading.Tasks;
using System.Collections;



public partial class Backup : System.Web.UI.Page
{
  MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
  //MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    DataTable data;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null && Session["Bkpassword"] != null)
        {

            string rcv = Session["Bkpassword"].ToString();
            if (!Page.IsPostBack)
            {
                Show();
                Show1();
            }
        }


        else
        {

            Response.Redirect("~/Login.aspx");
        }
    }




    public void Show()
    {


        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select * from account ";
        cmd.ExecuteNonQuery();

        data = new DataTable();
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);

        adp.Fill(data);
       R1.DataSource = data;
        R1.DataBind();

       

        cnn.Close();



    }
    //Balance Update show tab
    public void Show1()
    {


        cnn.Open();
        MySqlCommand cmd = cnn.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select * from account ";
        cmd.ExecuteNonQuery();

        data = new DataTable();
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);

        adp.Fill(data);

        PagedDataSource pgitems = new PagedDataSource();
        pgitems.DataSource = data.DefaultView;
        pgitems.AllowPaging = true;

        //Control page size from here 
        pgitems.PageSize = 2;
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


        R2.DataSource = pgitems;
        R2.DataBind();

        //R2.DataSource = data;
        //R2.DataBind();



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
        Show1();
    }

    public void Show_Search()
    {


        cnn.Open();
        MySqlCommand cmd1 = cnn.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select *from account where username='" +TextBox1.Text + "'";
        cmd1.ExecuteNonQuery();

        data = new DataTable();
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd1);

        adp.Fill(data);


        R1.DataSource = data;
        R1.DataBind();


        cnn.Close();



    }

    public void Show_Search2()
    {


        cnn.Open();
        MySqlCommand cmd1 = cnn.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select *from account where username='" + Search_2.Text + "'";
        cmd1.ExecuteNonQuery();

        data = new DataTable();
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd1);

        adp.Fill(data);


        R2.DataSource = data;
        R2.DataBind();


        cnn.Close();



    }






   


    
    protected void Search_Button_Click(object sender, EventArgs e)
    {
        Show_Search();
    }


    protected void Refresh_Click1(object sender, EventArgs e)
    {
        Show();
        TextBox1.Text = "";
    }

    


    protected void ENameLinkBtn_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)(sender);
        string a_username = btn.CommandArgument;
     

        Session["Account_username"] = a_username;

        
        Response.Redirect("~/BalanceUpdate.aspx");
    }

   
    protected void Export_Button_Click1(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ContentType = "application/vnd.ms-excel";
      //  Response.ContentType = "application/ms-word";  // for word
        //  Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        Response.AddHeader("content-disposition", "attachment;filename=BackupFile.xls");
        Response.Charset = "";
        this.EnableViewState = false;

        System.IO.StringWriter sw = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter htw = new System.Web.UI.HtmlTextWriter(sw);

        R1.RenderControl(htw);

        Response.Write(sw.ToString());
        Response.End();
    }




    private void BindFiles()
    {
        DirectoryInfo di = new DirectoryInfo("C:/");
        R1.DataSource = di.GetFiles();
        R1.DataBind();
    }


    protected void Refresh2_Click(object sender, EventArgs e)
    {
        Show1();
        Search_2.Text = "";
    }

    //Balance page update click
    protected void Search2_button_Click(object sender, EventArgs e)
    {
        Show_Search2();
    }
}