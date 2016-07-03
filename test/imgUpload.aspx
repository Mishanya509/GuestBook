<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imgUpload.aspx.cs" Inherits="test_imgUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="UploadButton" runat="server"
                OnClick="UploadButton_Click"
                Text="Upload File" />
            <br />
            <asp:Label ID="FileUploadedLabel" runat="server" />
            <asp:Image ID="uplImg" runat="server" />
        </div>
    </form>
</body>
</html>
