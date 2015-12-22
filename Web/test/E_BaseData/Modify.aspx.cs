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
    public partial class Modify : Page
    {       

        		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				string FactoryID = "";
				if (Request.Params["id0"] != null && Request.Params["id0"].Trim() != "")
				{
					FactoryID= Request.Params["id0"];
				}
				int PipelineID = -1;
				if (Request.Params["id1"] != null && Request.Params["id1"].Trim() != "")
				{
					PipelineID=(Convert.ToInt32(Request.Params["id1"]));
				}
				int PipeParentID = -1;
				if (Request.Params["id2"] != null && Request.Params["id2"].Trim() != "")
				{
					PipeParentID=(Convert.ToInt32(Request.Params["id2"]));
				}
				int SiteID = -1;
				if (Request.Params["id3"] != null && Request.Params["id3"].Trim() != "")
				{
					SiteID=(Convert.ToInt32(Request.Params["id3"]));
				}
				#warning 代码生成提示：显示页面,请检查确认该语句是否正确
				ShowInfo(FactoryID,PipelineID,PipeParentID,SiteID);
			}
		}
			
	private void ShowInfo(string FactoryID,int PipelineID,int PipeParentID,int SiteID)
	{
		Spider.BLL.test.E_BaseData bll=new Spider.BLL.test.E_BaseData();
		Spider.Model.test.E_BaseData model=bll.GetModel(FactoryID,PipelineID,PipeParentID,SiteID);
		this.lblFactoryID.Text=model.FactoryID;
		this.lblPipelineID.Text=model.PipelineID.ToString();
		this.lblPipeParentID.Text=model.PipeParentID.ToString();
		this.lblSiteID.Text=model.SiteID.ToString();
		this.txtSiteNo.Text=model.SiteNo;
		this.txtSpecificDescription.Text=model.SpecificDescription;
		this.txtSiteStyle.Text=model.SiteStyle;
		this.txtRemarks.Text=model.Remarks;
		this.txtCanvasX.Text=model.CanvasX.ToString();
		this.txtCanvasY.Text=model.CanvasY.ToString();
		this.txtLinkNote.Text=model.LinkNote.ToString();
		this.txtArrowNote.Text=model.ArrowNote.ToString();
		this.txtAlarmNote.Text=model.AlarmNote;
		this.txtCanvasNoteText.Text=model.CanvasNoteText;

	}

		public void btnSave_Click(object sender, EventArgs e)
		{
			
			string strErr="";
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
			string FactoryID=this.lblFactoryID.Text;
			int PipelineID=int.Parse(this.lblPipelineID.Text);
			int PipeParentID=int.Parse(this.lblPipeParentID.Text);
			int SiteID=int.Parse(this.lblSiteID.Text);
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
			bll.Update(model);
			Maticsoft.Common.MessageBox.ShowAndRedirect(this,"保存成功！","list.aspx");

		}


        public void btnCancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("list.aspx");
        }
    }
}
