<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="Spider.Web.test.E_BaseData.Show" Title="显示页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
                <tr>                   
                    <td class="tdbg">
                               
<table cellSpacing="0" cellPadding="0" width="100%" border="0">
	<tr>
	<td height="25" width="30%" align="right">
		工厂编号
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblFactoryID" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		流水线编号
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblPipelineID" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		流水线父项编号
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblPipeParentID" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		站点ID（与单片机好连接）
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblSiteID" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		站点号
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblSiteNo" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		具体描述
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblSpecificDescription" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		站点类型
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblSiteStyle" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		Remarks
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblRemarks" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		X坐标
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblCanvasX" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		Y坐标
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblCanvasY" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		实线连接
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblLinkNote" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		虚线连接
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblArrowNote" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		报警
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblAlarmNote" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		节点文字描述
	：</td>
	<td height="25" width="*" align="left">
		<asp:Label id="lblCanvasNoteText" runat="server"></asp:Label>
	</td></tr>
</table>

                    </td>
                </tr>
            </table>
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceCheckright" runat="server">
</asp:Content>--%>




