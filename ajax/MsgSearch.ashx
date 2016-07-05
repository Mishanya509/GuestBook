<%@ WebHandler Language="C#" Class="MsgSearch" %>

using System;
using System.Web;
using System.Data;

public class MsgSearch : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        HttpResponse response = context.Response;
        response.ContentType = "text/plain";

        String query = (String)context.Request.QueryString["q"];
        try
        {
            DataTable res = GuestMsg.SearchMsg(query);
            foreach (DataRow row in res.Rows)
            {
                //response.Write( String.Join(",",row.ItemArray) + ";" );
                response.Write( row["id"] + ";" );
            }
        }
        catch(Exception ex)
        {
            response.Write(ex.Message);
        }


    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}