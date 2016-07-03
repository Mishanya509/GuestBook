<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Mainter.master" CodeFile="addMsg.aspx.cs" Inherits="addMsg" %>

<asp:Content ID="addMsgForm" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">

    <form id="form1" runat="server">
        <div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="form-group-input">My label</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="form-group-input" placeholder="My label">
                </div>
            </div>

            <table>
                <tr>
                    <td>Имя</td>
                    <td>
                        <asp:TextBox ID="userName" runat="server" Width="406px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>E-mail</td>
                    <td>
                        <asp:TextBox ID="email" runat="server" Width="406px"></asp:TextBox>
                        <asp:RegularExpressionValidator runat="server" ID="ValidateEmail"
                            ControlToValidate="email" ValidationExpression=".*@.{2,}\..{2,}"
                            ErrorMessage="Некорректный формат E-mail" Display="dynamic">*
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>Ссылка на профиль</td>
                    <td>
                        <asp:TextBox ID="link" runat="server" Width="407px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Сообщение</td>
                    <td>
                        <asp:TextBox ID="msgText" runat="server" Height="139px" Width="402px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: right">

                        <asp:Button ID="sendMsg" runat="server" Text="Отправить" OnClick="sendMsg_Click" />

                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:ValidationSummary runat="server" ID="Summary" DisplayMode="BulletList"
                            HeaderText="<b>Пожалуйста, исправьте следующие ошибки: </b>" ShowSummary="true" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</asp:Content>
