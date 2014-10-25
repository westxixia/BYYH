<%@ Page Title="注册" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="BYYH.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table>
        <tr>
            <td>
                <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="false" RequireEmail="false">

                    <WizardSteps>
                        <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                            <ContentTemplate>
                                <h2>
                                    创建新帐户
                                </h2>
                                <p>
                                    使用以下表单创建新帐户。
                                </p>
                                <p>
                                    密码的长度至少必须为
                                    <%= Membership.MinRequiredPasswordLength %>
                                    个字符。
                                </p>
                                <asp:Panel ID="pnlErrPlaceHolder" runat="server">
                                </asp:Panel>
                                <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
                                    ValidationGroup="RegisterUserValidationGroup" />
                                <div class="accountInfo">
                                    <fieldset class="register">
                                        <legend>帐户信息</legend>
                                        <p>
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名<strong style="color:Red">(*)</strong>:</asp:Label>
                                            <asp:TextBox ID="UserName" runat="server" CssClass="textEntry" MaxLength="25"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                CssClass="failureNotification" ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。"
                                                ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                        </p>
                                        <p>
                                            <asp:Label ID="NickNameLabel" runat="server" AssociatedControlID="NickName">昵称:</asp:Label>
                                            <asp:TextBox ID="NickName" runat="server" CssClass="textEntry" MaxLength="50"></asp:TextBox>
                                        </p>
                                        <p>
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码<strong style="color:Red">(*)</strong>:</asp:Label>
                                            <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"
                                                MaxLength="30"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                CssClass="failureNotification" ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                        </p>
                                        <p>
                                            <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">确认密码<strong style="color:Red">(*)</strong>:</asp:Label>
                                            <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"
                                                MaxLength="30"></asp:TextBox>
                                            <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification"
                                                Display="Dynamic" ErrorMessage="必须填写“确认密码”。" ID="ConfirmPasswordRequired" runat="server"
                                                ToolTip="必须填写“确认密码”。" ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                                ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic"
                                                ErrorMessage="“密码”和“确认密码”必须匹配。" ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                                        </p>
                                    </fieldset>
                                    <p class="submitButton">
                                        <asp:Button ID="btnCreateUser" runat="server" Text="创建用户" OnClick="BtnCreateUser_Click"
                                            ValidationGroup="RegisterUserValidationGroup" />
                                    </p>
                                </div>
                            </ContentTemplate>
                            <CustomNavigationTemplate>
                            </CustomNavigationTemplate>
                        </asp:CreateUserWizardStep>
                    </WizardSteps>
                </asp:CreateUserWizard>
            </td>
            <td>
                <asp:Image ID="imgLogo" ImageUrl="~/images/main.JPG" runat="server" Width="550px" Height="400px" />
            </td>
        </tr>
    </table>
</asp:Content>
