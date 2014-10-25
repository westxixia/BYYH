<%@ Page Title="登录" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
	CodeBehind="login.aspx.cs" Inherits="BYYH.login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
	<table>
		<tr>
			<td>
				<asp:Panel ID="pnlErrPlaceHolder" runat="server">
				</asp:Panel>
				<asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification"
					ValidationGroup="loginUserValidationGroup" />
				<h2>
					登录
				</h2>
				<p>
					请输入用户名和密码。
					<!-- 
					<asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false">注册</asp:HyperLink>
					如果您没有帐户。 -->
				</p>
				<asp:Login ID="loginUser" runat="server" EnableViewState="false" RenderOuterTable="false">
					<LayoutTemplate>
						<div class="accountInfo" style="width: 350px">
							<legend>帐户信息</legend>
							<p>
								<asp:Label ID="lblUserName" runat="server" AssociatedControlID="UserName">用户名<strong style="color:Red">(*)</strong>:</asp:Label>
								<asp:TextBox ID="UserName" runat="server" CssClass="textEntry" MaxLength="15"></asp:TextBox>
								<asp:RequiredFieldValidator ID="valUserNameRequired" runat="server" ControlToValidate="UserName"
									CssClass="failureNotification" ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。"
									ValidationGroup="loginUserValidationGroup">*</asp:RequiredFieldValidator>
							</p>
							<p>
								<asp:Label ID="lblPassword" runat="server" AssociatedControlID="Password">密码<strong style="color:Red">(*)</strong>:</asp:Label>
								<asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"
									MaxLength="15"></asp:TextBox>
								<asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
									CssClass="failureNotification" ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" ValidationGroup="loginUserValidationGroup">*</asp:RequiredFieldValidator>
							</p>
							<p class="submitButton">
								<asp:Button ID="btnLogin" runat="server" Text="登录" ValidationGroup="loginUserValidationGroup"
									OnClick="BtnLogin_Click" OnClientClick="clearErrPlaceHolder()" />
							</p>
						</div>
					</LayoutTemplate>
				</asp:Login>
			</td>
			<td>
				<asp:Image ID="imgLogo" ImageUrl="~/images/main.JPG" runat="server" Width="550px" Height="400px" />
			</td>
		</tr>
	</table>
</asp:Content>
