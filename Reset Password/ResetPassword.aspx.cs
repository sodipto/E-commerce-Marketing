using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reset_Password_ResetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        g();
    }

    public void g()
    {
        var id = Guid.NewGuid();
        TextBox1.Text = id.ToString();

    }
}