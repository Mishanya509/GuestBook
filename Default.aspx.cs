using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            DataTable msgLst = GuestMsg.GetMsg();
            HtmlGenericControl rowBlock = new HtmlGenericControl("div");
            rowBlock.Attributes["class"] = "row";

            foreach (DataRow row in msgLst.Rows)
            {
                rowBlock.Controls.Add( GenCard(row) );
            }
            msgContainer.Controls.Add(rowBlock);
        }
        catch( Exception ex )
        {
            msgLbl.Text = "Error: \n"+ex.Message;
            msgLbl.Visible = true;
        }

    }

    protected HtmlGenericControl GenCard( DataRow row )
    {

        //HtmlGenericControl card = new HtmlGenericControl("div");
        //card.Attributes["class"] = "row";

        HtmlGenericControl cardBlock = new HtmlGenericControl("div");
        cardBlock.Attributes["class"] = "col-sm-6 col-md-4 msgBlock";
        cardBlock.Attributes["data-itmid"] = row["id"].ToString();

        //cardBlock.InnerHtml = "<h4 class='card-title'>"+ row["UserName"].ToString()+"</h4>"+
        //    "<p class='card-text'>"+ row["Msg"].ToString() + "</p>"+
        //    "<a href = '#' class='btn btn-primary'>Go somewhere</a>";

        cardBlock.InnerHtml =
            "<div class='thumbnail'  >" +
              "<div class='caption'>" +
                "<h3>" + ((DateTime)row["WhnCrt"]).ToString("d.M.yyyy") + "&nbsp;-&nbsp;" + row["UserName"].ToString() + "</h3>" +
                "<p>" + row["Msg"].ToString() + "</p>" +
                "<p><a href = '#' class='btn btn-primary' role='button'>Button</a> <a href = '#' class='btn btn-default' role='button'>Button</a></p>" +
              "</div>" +
            "</div>";

        //card.Controls.Add(cardBlock);

        return cardBlock;


    }

}