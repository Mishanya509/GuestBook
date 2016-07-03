using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addMsg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void sendMsg_Click(object sender, EventArgs e)
    {
        GuestMsg.Add(userName.Text, email.Text, link.Text, msgText.Text);
        Response.Redirect("/");


    }
}