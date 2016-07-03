using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_test1 : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.IsPostBack)
            RefreshTime();
    }

    protected void lnkTime_Click(object sender, EventArgs e)
    {
        RefreshTime();
    }

    public void RefreshTime()
    {
        lnkTime.Text = DateTime.Now.ToString();
    }
}