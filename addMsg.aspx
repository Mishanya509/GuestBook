<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Mainter.master" CodeFile="addMsg.aspx.cs" Inherits="addMsg" %>

<asp:Content ID="addMsgForm" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">


    <form id="form1" runat="server">
        <div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="userName">Имя</label>
                <div class="col-sm-10">
                    <asp:TextBox  class="form-control" ID="userName" runat="server" Width="406px"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="form-group-input">E-mail</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="email" runat="server" Width="406px"  class="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1"
                        ControlToValidate="email" ValidationExpression=".*@.{2,}\..{2,}"
                        ErrorMessage="Некорректный формат E-mail" Display="dynamic">*
                    </asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="form-group-input">Ссылка на профиль</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="link" runat="server" Width="407px"  class="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="form-group-input">Сообщение</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="msgText" runat="server" Height="139px" Width="402px" TextMode="MultiLine"  class="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">

                <div class="col-sm-10">
                    <asp:Button ID="Button1" runat="server" Text="Отправить" OnClick="sendMsg_Click" class="btn btn-primary" /> 
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-10">
                    <asp:ValidationSummary runat="server" ID="ValidationSummary1" DisplayMode="BulletList"
                            HeaderText="<b>Пожалуйста, исправьте следующие ошибки: </b>" ShowSummary="true" />
                </div>
            </div>

        </div>
    </form>
</asp:Content>
