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



public partial class Test : System.Web.UI.Page
{

    MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=root;pwd=;");
    //  MySqlConnection cnn = new MySqlConnection("server=localhost;database=mlm;uid=shield;pwd=54321;");
    DataTable data;
    protected void Page_Load(object sender, EventArgs e)
    {
        Show();
      //  Show1();
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

    

    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Clear();
        Response.Buffer = true;
        //Response.ContentType = "application/vnd.ms-excel";
       Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        Response.AddHeader("content-disposition", "attachment;filename=Backup.xls");
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






}