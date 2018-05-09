using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reset_Password_SendPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



  
    protected void Button1_Click(object sender, EventArgs e)
    {
        SendPasswordResetEmail("badhansaha444@gmail.com","Saha Badhan","12345");
    }


    private void SendPasswordResetEmail(string ToEmail, string UserName, string UniqueId)
    {
        // MailMessage class is present is System.Net.Mail namespace
        MailMessage mailMessage = new MailMessage("YourEmail@gmail.com", ToEmail);


        // StringBuilder class is present in System.Text namespace
        StringBuilder sbEmailBody = new StringBuilder();
        sbEmailBody.Append("Dear " + UserName + ",<br/><br/>");
        sbEmailBody.Append("Please click on the following link to reset your password");
        sbEmailBody.Append("<br/>"); sbEmailBody.Append("http://localhost:28331/Marketing/Reset%20Password/ResetPassword.aspx?uid=" + UniqueId);
    
        sbEmailBody.Append("<br/><br/>");
        sbEmailBody.Append("<b>Pragim Technologies</b>");

        mailMessage.IsBodyHtml = true;

        mailMessage.Body = sbEmailBody.ToString();
        mailMessage.Subject = "Reset Your Password";
        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

        smtpClient.Credentials = new System.Net.NetworkCredential()
        {
            UserName = "sodiptosaha4444@gmail.com",
            Password = "BB998877BB15289641"
        };

        smtpClient.EnableSsl = true;
        smtpClient.Send(mailMessage);
    }
}