<%@ Page Title="E_BaseData" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Spider.Web.test.E_BaseData.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script language="javascript" src="/js/CheckBox.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!--Title -->

            <!--Title end -->

            <!--Add  -->

            <!--Add end -->

            <!--Search -->
            <table style="width: 100%;" cellpadding="2" cellspacing="1" class="border">
                <tr>
                    <td style="width: 80px" align="right" class="tdbg">
                         <b>关键字：</b>
                    </td>
                    <td class="tdbg">                       
                    <asp:TextBox ID="txtKeyword" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSearch" runat="server" Text="查询"  OnClick="btnSearch_Click" >
                    </asp:Button>                    
                        
                    </td>
                    <td class="tdbg">
                    </td>
                </tr>
            </table>
            <!--Search end-->
            <br />
            <asp:GridView ID="gridView" runat="server" AllowPaging="True" Width="100%" CellPadding="3"  OnPageIndexChanging ="gridView_PageIndexChanging"
                    BorderWidth="1px" DataKeyNames="FactoryID,PipelineID,PipeParentID,SiteID" OnRowDataBound="gridView_RowDataBound"
                    AutoGenerateColumns="false" PageSize="10"  RowStyle-HorizontalAlign="Center" OnRowCreated="gridView_OnRowCreated">
                    <Columns>
                    <asp:TemplateField ControlStyle-Width="30" HeaderText="选择"    >
                                <ItemTemplate>
                                    <asp:CheckBox ID="DeleteThis" onclick="javascript:CCA(this);" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField> 
                            
		<asp:BoundField DataField="FactoryID" HeaderText="工厂编号" SortExpression="FactoryID" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="PipelineID" HeaderText="流水线编号" SortExpression="PipelineID" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="PipeParentID" HeaderText="流水线父项编号" SortExpression="PipeParentID" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="SiteID" HeaderText="站点ID（与单片机好连接）" SortExpression="SiteID" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="SiteNo" HeaderText="站点号" SortExpression="SiteNo" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="SpecificDescription" HeaderText="具体描述" SortExpression="SpecificDescription" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="SiteStyle" HeaderText="站点类型" SortExpression="SiteStyle" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="CanvasX" HeaderText="X坐标" SortExpression="CanvasX" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="CanvasY" HeaderText="Y坐标" SortExpression="CanvasY" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="LinkNote" HeaderText="实线连接" SortExpression="LinkNote" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="ArrowNote" HeaderText="虚线连接" SortExpression="ArrowNote" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="AlarmNote" HeaderText="报警" SortExpression="AlarmNote" ItemStyle-HorizontalAlign="Center"  /> 
		<asp:BoundField DataField="CanvasNoteText" HeaderText="节点文字描述" SortExpression="CanvasNoteText" ItemStyle-HorizontalAlign="Center"  /> 
                            
                            <asp:HyperLinkField HeaderText="详细" ControlStyle-Width="50" DataNavigateUrlFields="FactoryID,PipelineID,PipeParentID,SiteID" DataNavigateUrlFormatString="Show.aspx?id0={0}&id1={1}&id2={2}&id3={3}"
                                Text="详细"  />
                            <asp:HyperLinkField HeaderText="编辑" ControlStyle-Width="50" DataNavigateUrlFields="FactoryID,PipelineID,PipeParentID,SiteID" DataNavigateUrlFormatString="Modify.aspx?id0={0}&id1={1}&id2={2}&id3={3}"
                                Text="编辑"  />
                            <asp:TemplateField ControlStyle-Width="50" HeaderText="删除"   Visible="false"  >
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                         Text="删除"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                </asp:GridView>
               <table border="0" cellpadding="0" cellspacing="1" style="width: 100%;">
                <tr>
                    <td style="width: 1px;">                        
                    </td>
                    <td align="left">
                        <asp:Button ID="btnDelete" runat="server" Text="删除" OnClick="btnDelete_Click"/>                       
                    </td>
                </tr>
            </table>
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceCheckright" runat="server">
</asp:Content>--%>
