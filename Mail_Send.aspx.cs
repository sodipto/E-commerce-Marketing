using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Mail_Send : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Send_Button_Click(object sender, EventArgs e)
    {
        string body = "Form:" + form.Text + "\n";
        body += "Form:" + subject.Text + "\n";
        body += "msg:" + msg.Text + "\n";


        var smtp = new SmtpClient();
        {

            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(form.Text,password.Text);
            smtp.Timeout = 20000;

        
        }

        smtp.Send(form.Text,to.Text,subject.Text,body);

        Label6.Text = "Email Sent Successfully";



    }
}