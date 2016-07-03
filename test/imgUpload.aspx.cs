using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test_imgUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void UploadButton_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
            try
            {
                FileUpload1.SaveAs(Server.MapPath("~/uploads/") +
                     FileUpload1.FileName);
              
                foreach (string fileKey in HttpContext.Current.Request.Files.Keys)
                {
                    HttpPostedFile file = HttpContext.Current.Request.Files[fileKey];
                    if (file.ContentLength <= 0) continue; //Skip unused file controls.

                    //The resizing settings can specify any of 30 commands.. See http://imageresizing.net for details.
                    //Destination paths can have variables like <guid> and <ext>, or 
                    //even a santizied version of the original filename, like <filename:A-Za-z0-9>
                    ImageResizer.ImageJob i = new ImageResizer.ImageJob(
                        file, "~/uploads/100_100"+ file.FileName, new ImageResizer.ResizeSettings(
                                "width=100;height=100;format=jpg;mode=max"));
                    i.CreateParentDirectory = true; //Auto-create the uploads directory.
                    i.Build();
                    uplImg.ImageUrl = "~/uploads/100_100" + file.FileName;
                }

            }
            catch (Exception ex)
            {
                FileUploadedLabel.Text = "ERROR: " + ex.Message.ToString();
            }
        else
        {
            FileUploadedLabel.Text = "You have not specified a file.";
        }
    }
}