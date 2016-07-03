<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="test_Default" MasterPageFile="~/Template/MainTemplate.master" %>
<%@ Register TagPrefix="mycontrol" TagName="Test" Src="~/Controls/test1.ascx" %>


<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <mycontrol:Test ID="textC_1" runat="server" />
    <div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ProviderName="System.Data.SqlClient"
	        ConnectionString="<%$ ConnectionStrings:main_test_1ConnectionString %>"
	        SelectCommand="SELECT Id, UserName, Email, Msg, HomePage FROM GuestMsg AS gm" 
            UpdateCommand="UPDATE GuestMsg SET UserName=@UserName, Email=@Email, Msg=@Msg,
		            HomePage=@HomePage FROM GuestMsg WHERE Id=@Id" >
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="Id" EnableModelValidation="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="true" ButtonType="Image" 
	                    />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Msg" HeaderText="Msg" SortExpression="Msg" />
                <asp:BoundField DataField="HomePage" HeaderText="HomePage" SortExpression="HomePage" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
    </div>
</asp:Content>
