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
namespace Spider.Web.test.E_BaseData
{
    public partial class Show : Page
    {        
        		public string strid=""; 
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
		this.lblSiteNo.Text=model.SiteNo;
		this.lblSpecificDescription.Text=model.SpecificDescription;
		this.lblSiteStyle.Text=model.SiteStyle;
		this.lblRemarks.Text=model.Remarks;
		this.lblCanvasX.Text=model.CanvasX.ToString();
		this.lblCanvasY.Text=model.CanvasY.ToString();
		this.lblLinkNote.Text=model.LinkNote.ToString();
		this.lblArrowNote.Text=model.ArrowNote.ToString();
		this.lblAlarmNote.Text=model.AlarmNote;
		this.lblCanvasNoteText.Text=model.CanvasNoteText;

	}


    }
}
