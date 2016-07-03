<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Mainter.master"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="lstMSg" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server" >

    <asp:Label ID="msgLbl" ForeColor="Red" Visible="false" Text="" runat="server" />
    <form id="form1" runat="server">
        <asp:Panel ID="msgContainer" runat="server"></asp:Panel>
        <%--<asp:HyperLink ID="addMsg" runat="server" NavigateUrl="~/addMsg.aspx" >Добавить сообщение</asp:HyperLink>--%>
    </form>
</asp:Content>