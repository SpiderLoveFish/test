using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using Maticsoft.Common;
using LTP.Accounts.Bus;
namespace Spider.Web.test.E_BaseData
{
    public partial class Add : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                       
        }

        		protected void btnSave_Click(object sender, EventArgs e)
		{
			
			string strErr="";
			if(this.txtFactoryID.Text.Trim().Length==0)
			{
				strErr+="工厂编号不能为空！\\n";	
			}
			if(!PageValidate.IsNumber(txtPipelineID.Text))
			{
				strErr+="流水线编号格式错误！\\n";	
			}
			if(!PageValidate.IsNumber(txtPipeParentID.Text))
			{
				strErr+="流水线父项编号格式错误！\\n";	
			}
			if(!PageValidate.IsNumber(txtSiteID.Text))
			{
				strErr+="站点ID（与单片机好连接）格式错误！\\n";	
			}
			if(this.txtSiteNo.Text.Trim().Length==0)
			{
				strErr+="站点号不能为空！\\n";	
			}
			if(this.txtSpecificDescription.Text.Trim().Length==0)
			{
				strErr+="具体描述不能为空！\\n";	
			}
			if(this.txtSiteStyle.Text.Trim().Length==0)
			{
				strErr+="站点类型不能为空！\\n";	
			}
			if(this.txtRemarks.Text.Trim().Length==0)
			{
				strErr+="Remarks不能为空！\\n";	
			}
			if(!PageValidate.IsNumber(txtCanvasX.Text))
			{
				strErr+="X坐标格式错误！\\n";	
			}
			if(!PageValidate.IsNumber(txtCanvasY.Text))
			{
				strErr+="Y坐标格式错误！\\n";	
			}
			if(!PageValidate.IsNumber(txtLinkNote.Text))
			{
				strErr+="实线连接格式错误！\\n";	
			}
			if(!PageValidate.IsNumber(txtArrowNote.Text))
			{
				strErr+="虚线连接格式错误！\\n";	
			}
			if(this.txtAlarmNote.Text.Trim().Length==0)
			{
				strErr+="报警不能为空！\\n";	
			}
			if(this.txtCanvasNoteText.Text.Trim().Length==0)
			{
				strErr+="节点文字描述不能为空！\\n";	
			}

			if(strErr!="")
			{
				MessageBox.Show(this,strErr);
				return;
			}
			string FactoryID=this.txtFactoryID.Text;
			int PipelineID=int.Parse(this.txtPipelineID.Text);
			int PipeParentID=int.Parse(this.txtPipeParentID.Text);
			int SiteID=int.Parse(this.txtSiteID.Text);
			string SiteNo=this.txtSiteNo.Text;
			string SpecificDescription=this.txtSpecificDescription.Text;
			string SiteStyle=this.txtSiteStyle.Text;
			string Remarks=this.txtRemarks.Text;
			int CanvasX=int.Parse(this.txtCanvasX.Text);
			int CanvasY=int.Parse(this.txtCanvasY.Text);
			int LinkNote=int.Parse(this.txtLinkNote.Text);
			int ArrowNote=int.Parse(this.txtArrowNote.Text);
			string AlarmNote=this.txtAlarmNote.Text;
			string CanvasNoteText=this.txtCanvasNoteText.Text;

			Spider.Model.test.E_BaseData model=new Spider.Model.test.E_BaseData();
			model.FactoryID=FactoryID;
			model.PipelineID=PipelineID;
			model.PipeParentID=PipeParentID;
			model.SiteID=SiteID;
			model.SiteNo=SiteNo;
			model.SpecificDescription=SpecificDescription;
			model.SiteStyle=SiteStyle;
			model.Remarks=Remarks;
			model.CanvasX=CanvasX;
			model.CanvasY=CanvasY;
			model.LinkNote=LinkNote;
			model.ArrowNote=ArrowNote;
			model.AlarmNote=AlarmNote;
			model.CanvasNoteText=CanvasNoteText;

			Spider.BLL.test.E_BaseData bll=new Spider.BLL.test.E_BaseData();
			bll.Add(model);
			Maticsoft.Common.MessageBox.ShowAndRedirect(this,"保存成功！","add.aspx");

		}


        public void btnCancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("list.aspx");
        }
    }
}
