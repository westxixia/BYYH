<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
	CodeBehind="main.aspx.cs" Inherits="BYYH.main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<script type="text/javascript" src="js/main.js" ></script>
	<asp:ScriptManager ID="ScriptManager1" runat="server">
	</asp:ScriptManager>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
			<table width="100%" border="1">
				<tr style="height: 40px">
					<td width="30%">
						<asp:DropDownList ID="ddlSelectShop" runat="server" Width="130px">
						</asp:DropDownList>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Button ID="btnSelect" runat="server" Text="查询" OnClick="btnSelect_Click" />
					</td>
					<td rowspan="4">
						<asp:Panel ID="pnlErrPlaceHolder" runat="server">
						</asp:Panel>
						<table>
							<tr id="trUserName" runat="server" visible="false">
								<th style="text-align: left;">
									用户：
								</th>
								<td style="text-align: left;">
									<asp:TextBox ID="txtUserName" runat="server" ReadOnly="true" 
										BackColor="#999999" ></asp:TextBox>
								</td>
							</tr>
							<tr>
								<th style="text-align: left;">
									日期：<font color="red">※</font>
								</th>
								<td style="text-align: left;">
									<asp:TextBox ID="txtSelectDate" runat="server" ReadOnly="true" 
										BackColor="#999999" ></asp:TextBox>
									<asp:HiddenField ID="hdfSelectDate" runat="server" />
								</td>
							</tr>
							<tr>
								<th style="text-align: left;">
									店铺：<font color="red">※</font>
								</th>
								<td style="text-align: left;">
									<asp:DropDownList ID="ddlBookingShop" runat="server" Width="130px">
									</asp:DropDownList>
								</td>
							</tr>
							<tr>
								<th style="text-align: left;">
									预订时间：<font color="red">※</font>
								</th>
								<td style="text-align: left;">
									<asp:DropDownList ID="ddlBookingDatetype" runat="server" Width="130px">
									</asp:DropDownList>
								</td>
							</tr>
							<tr>
								<th style="text-align: left;">
									宴会席数：<font color="red">※</font>
								</th>
								<td style="text-align: left;">
									<asp:TextBox ID="txtBookingTableCount" runat="server" MaxLength="3" Width="50px"
										onkeypress="var k=event.keyCode; return k>=48&&k<=57" onpaste="return !clipboardData.getData('text').match(/\D/)"
										ondragenter="return false"></asp:TextBox>
									备用
									<asp:TextBox ID="txtBackTableCount" runat="server" MaxLength="3" Width="50px" onkeypress="var k=event.keyCode; return k>=48&&k<=57"
										onpaste="return !clipboardData.getData('text').match(/\D/)" ondragenter="return false"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<th style="text-align: left;">
									预订类型：<font color="red">※</font>
								</th>
								<td style="text-align: left;">
									<asp:DropDownList ID="ddlBookingType" runat="server" Width="130px">
									</asp:DropDownList>
								</td>
							</tr>
							<tr>
								<th style="text-align: left;">
									备注：
								</th>
								<td style="text-align: left;">
									<asp:TextBox ID="txtNotes" runat="server" Columns="20" Rows="2" MaxLength="100" TextMode="MultiLine"></asp:TextBox>
								</td>
							</tr>
							<tr id="trNotesPS" runat="server" visible="false">
								<th style="text-align: left;">
									备注PS：
								</th>
								<td style="text-align: left;">
									<asp:TextBox ID="txtNotesPS" runat="server" Columns="20" Rows="2" MaxLength="100"
										TextMode="MultiLine"></asp:TextBox>
								</td>
							</tr>
							<tr>
								<th>
								</th>
								<td style="text-align: left;">
									<asp:Button ID="btnEdit" runat="server" Text="修改" Width="60px" OnClick="btnEdit_Click" />
									<asp:Button ID="btnDelete" runat="server" Text="删除" Width="60px" OnClick="btnDelete_Click" />
									<asp:Button ID="btnAdd" runat="server" Text="追加" Width="60px" OnClick="btnAdd_Click" />
									<asp:Button ID="btnCancel" runat="server" Text="cancel" Width="60px" OnClick="btnCancel_Click" />
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
							BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
							Font-Size="8pt" ForeColor="#003399" Height="240px" Width="264px" OnSelectionChanged="Calendar1_SelectionChanged"
							OnDayRender="Calendar1_DayRender" FirstDayOfWeek="Sunday">
							<DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
							<NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
							<OtherMonthDayStyle ForeColor="#999999" />
							<SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
							<SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
							<TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
								Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
							<TodayDayStyle BackColor="yellow" ForeColor="#66FF33" Font-Bold="True" Font-Italic="False"
								Font-Overline="False" Font-Underline="False" />
							<WeekendDayStyle BackColor="#CCCCFF" />
						</asp:Calendar>
					</td>
				</tr>
				<tr style="height: 50px">
					<td style="text-align: center">
						<div>
							【<asp:Label ID="lblAnimal" runat="server"></asp:Label>年】<asp:Label ID="lblDate" runat="server"></asp:Label>
						</div>
						<div>
							<asp:Label ID="lblChineseDate" runat="server"></asp:Label>
						</div>
					</td>
				</tr>
			</table>
			<asp:GridView ID="gvBookInfo" runat="server" Width="900px">
				<Columns>
					<asp:BoundField HeaderText="用户" DataField="USERNAME" />
					<asp:BoundField HeaderText="店铺" />
					<asp:BoundField HeaderText="预订时间" />
					<asp:BoundField HeaderText="宴会席数" />
					<asp:BoundField HeaderText="预订类型" />
					<asp:BoundField HeaderText="备注" />
					<asp:BoundField HeaderText="备注(PS)" />
					<asp:ButtonField ButtonType="Button" HeaderText="操作" Text="修改预订" />
				</Columns>
			</asp:GridView>
		</ContentTemplate>
	</asp:UpdatePanel>
</asp:Content>
