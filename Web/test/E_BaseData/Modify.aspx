<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Modify.aspx.cs" Inherits="Spider.Web.test.E_BaseData.Modify" Title="修改页" %>
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
		<asp:label id="lblFactoryID" runat="server"></asp:label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		流水线编号
	：</td>
	<td height="25" width="*" align="left">
		<asp:label id="lblPipelineID" runat="server"></asp:label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		流水线父项编号
	：</td>
	<td height="25" width="*" align="left">
		<asp:label id="lblPipeParentID" runat="server"></asp:label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		站点ID（与单片机好连接）
	：</td>
	<td height="25" width="*" align="left">
		<asp:label id="lblSiteID" runat="server"></asp:label>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		站点号
	：</td>
	<td height="25" width="*" align="left">
		<asp:TextBox id="txtSiteNo" runat="server" Width="200px"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		具体描述
	：</td>
	<td height="25" width="*" align="left">
		<asp:TextBox id="txtSpecificDescription" runat="server" Width="200px"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		站点类型
	：</td>
	<td height="25" width="*" align="left">
		<asp:TextBox id="txtSiteStyle" runat="server" Width="200px"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		Remarks
	：</td>
	<td height="25" width="*" align="left">
		<asp:TextBox id="txtRemarks" runat="server" Width="200px"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		X坐标
	：</td>
	<td height="25" width="*" align="left">
		<asp:TextBox id="txtCanvasX" runat="server" Width="200px"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		Y坐标
	：</td>
	<td height="25" width="*" align="left">
		<asp:TextBox id="txtCanvasY" runat="server" Width="200px"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		实线连接
	：</td>
	<td height="25" width="*" align="left">
		<asp:TextBox id="txtLinkNote" runat="server" Width="200px"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		虚线连接
	：</td>
	<td height="25" width="*" align="left">
		<asp:TextBox id="txtArrowNote" runat="server" Width="200px"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		报警
	：</td>
	<td height="25" width="*" align="left">
		<asp:TextBox id="txtAlarmNote" runat="server" Width="200px"></asp:TextBox>
	</td></tr>
	<tr>
	<td height="25" width="30%" align="right">
		节点文字描述
	：</td>
	<td height="25" width="*" align="left">
		<asp:TextBox id="txtCanvasNoteText" runat="server" Width="200px"></asp:TextBox>
	</td></tr>
</table>

            </td>
        </tr>
        <tr>
            <td class="tdbg" align="center" valign="bottom">
                <asp:Button ID="btnSave" runat="server" Text="保存"
                    OnClick="btnSave_Click" class="inputbutton" onmouseover="this.className='inputbutton_hover'"
                    onmouseout="this.className='inputbutton'"></asp:Button>
                <asp:Button ID="btnCancle" runat="server" Text="取消"
                    OnClick="btnCancle_Click" class="inputbutton" onmouseover="this.className='inputbutton_hover'"
                    onmouseout="this.className='inputbutton'"></asp:Button>
            </td>
        </tr>
    </table>
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceCheckright" runat="server">
</asp:Content>--%>

