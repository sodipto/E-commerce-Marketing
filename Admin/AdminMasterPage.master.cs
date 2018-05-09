using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
{
    string rcv;
    protected void Page_Load(object sender, EventArgs e)
    {
      //  Label1.Text = Session["email"].ToString();
       rcv=Session["username"].ToString();
       Label1.Text = rcv;
    }


    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("~/Login.aspx");
    }

    protected void Home_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Home.aspx");
    }


    protected void VerifyButton_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Checkout.aspx");
    }

    protected void Alluser_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Checkout.aspx");
    }


    protected void Addproduct_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Checkout.aspx");
    }


   
    protected void Addproductlist_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Checkout.aspx");
    }

    protected void withdraw_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Checkout.aspx");
    }


    protected void INCOME_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Checkout.aspx");
    }

    protected void Backup_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Checkout.aspx");
    }

    protected void Master_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Checkout.aspx");
    }

    protected void History_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Checkout.aspx");
    }

}
