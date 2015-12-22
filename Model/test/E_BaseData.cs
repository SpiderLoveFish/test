using System;
namespace Spider.Model.test
{
	/// <summary>
	/// E_BaseData:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class E_BaseData
	{
		public E_BaseData()
		{}
		#region Model
		private string _factoryid;
		private int _pipelineid;
		private int _pipeparentid=1;
		private int _siteid;
		private string _siteno;
		private string _specificdescription;
		private string _sitestyle;
		private string _remarks;
		private int? _canvasx;
		private int? _canvasy;
		private int? _linknote;
		private int? _arrownote;
		private string _alarmnote;
		private string _canvasnotetext;
		/// <summary>
		/// 工厂编号，比如T1，T2
		/// </summary>
		public string FactoryID
		{
			set{ _factoryid=value;}
			get{return _factoryid;}
		}
		/// <summary>
		/// 流水线编号
		/// </summary>
		public int PipelineID
		{
			set{ _pipelineid=value;}
			get{return _pipelineid;}
		}
		/// <summary>
		/// 流水线父项编号，默认为1（防止多线加小线）
		/// </summary>
		public int PipeParentID
		{
			set{ _pipeparentid=value;}
			get{return _pipeparentid;}
		}
		/// <summary>
		/// 站点ID（与单片机好连接）
		/// </summary>
		public int SiteID
		{
			set{ _siteid=value;}
			get{return _siteid;}
		}
		/// <summary>
		/// 站点号，与上位机对应
		/// </summary>
		public string SiteNo
		{
			set{ _siteno=value;}
			get{return _siteno;}
		}
		/// <summary>
		/// 具体描述
		/// </summary>
		public string SpecificDescription
		{
			set{ _specificdescription=value;}
			get{return _specificdescription;}
		}
		/// <summary>
		/// 站点类型，比如上料站、正常站、缓存站、检验站之类
		/// </summary>
		public string SiteStyle
		{
			set{ _sitestyle=value;}
			get{return _sitestyle;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Remarks
		{
			set{ _remarks=value;}
			get{return _remarks;}
		}
		/// <summary>
		/// X坐标
		/// </summary>
		public int? CanvasX
		{
			set{ _canvasx=value;}
			get{return _canvasx;}
		}
		/// <summary>
		/// Y坐标
		/// </summary>
		public int? CanvasY
		{
			set{ _canvasy=value;}
			get{return _canvasy;}
		}
		/// <summary>
		/// 实线连接
		/// </summary>
		public int? LinkNote
		{
			set{ _linknote=value;}
			get{return _linknote;}
		}
		/// <summary>
		/// 虚线连接
		/// </summary>
		public int? ArrowNote
		{
			set{ _arrownote=value;}
			get{return _arrownote;}
		}
		/// <summary>
		/// 报警
		/// </summary>
		public string AlarmNote
		{
			set{ _alarmnote=value;}
			get{return _alarmnote;}
		}
		/// <summary>
		/// 节点文字描述
		/// </summary>
		public string CanvasNoteText
		{
			set{ _canvasnotetext=value;}
			get{return _canvasnotetext;}
		}
		#endregion Model

	}
}

