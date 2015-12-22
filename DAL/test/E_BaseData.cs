using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace Spider.DAL.test
{
	/// <summary>
	/// 数据访问类:E_BaseData
	/// </summary>
	public partial class E_BaseData
	{
		public E_BaseData()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("PipelineID", "E_BaseData"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string FactoryID,int PipelineID,int PipeParentID,int SiteID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from E_BaseData");
			strSql.Append(" where FactoryID=@FactoryID and PipelineID=@PipelineID and PipeParentID=@PipeParentID and SiteID=@SiteID ");
			SqlParameter[] parameters = {
					new SqlParameter("@FactoryID", SqlDbType.VarChar,10),
					new SqlParameter("@PipelineID", SqlDbType.Int,4),
					new SqlParameter("@PipeParentID", SqlDbType.Int,4),
					new SqlParameter("@SiteID", SqlDbType.Int,4)			};
			parameters[0].Value = FactoryID;
			parameters[1].Value = PipelineID;
			parameters[2].Value = PipeParentID;
			parameters[3].Value = SiteID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(Spider.Model.test.E_BaseData model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into E_BaseData(");
			strSql.Append("FactoryID,PipelineID,PipeParentID,SiteID,SiteNo,SpecificDescription,SiteStyle,Remarks,CanvasX,CanvasY,LinkNote,ArrowNote,AlarmNote,CanvasNoteText)");
			strSql.Append(" values (");
			strSql.Append("@FactoryID,@PipelineID,@PipeParentID,@SiteID,@SiteNo,@SpecificDescription,@SiteStyle,@Remarks,@CanvasX,@CanvasY,@LinkNote,@ArrowNote,@AlarmNote,@CanvasNoteText)");
			SqlParameter[] parameters = {
					new SqlParameter("@FactoryID", SqlDbType.VarChar,10),
					new SqlParameter("@PipelineID", SqlDbType.Int,4),
					new SqlParameter("@PipeParentID", SqlDbType.Int,4),
					new SqlParameter("@SiteID", SqlDbType.Int,4),
					new SqlParameter("@SiteNo", SqlDbType.VarChar,10),
					new SqlParameter("@SpecificDescription", SqlDbType.VarChar,50),
					new SqlParameter("@SiteStyle", SqlDbType.VarChar,50),
					new SqlParameter("@Remarks", SqlDbType.VarChar,50),
					new SqlParameter("@CanvasX", SqlDbType.Int,4),
					new SqlParameter("@CanvasY", SqlDbType.Int,4),
					new SqlParameter("@LinkNote", SqlDbType.Int,4),
					new SqlParameter("@ArrowNote", SqlDbType.Int,4),
					new SqlParameter("@AlarmNote", SqlDbType.VarChar,10),
					new SqlParameter("@CanvasNoteText", SqlDbType.VarChar,50)};
			parameters[0].Value = model.FactoryID;
			parameters[1].Value = model.PipelineID;
			parameters[2].Value = model.PipeParentID;
			parameters[3].Value = model.SiteID;
			parameters[4].Value = model.SiteNo;
			parameters[5].Value = model.SpecificDescription;
			parameters[6].Value = model.SiteStyle;
			parameters[7].Value = model.Remarks;
			parameters[8].Value = model.CanvasX;
			parameters[9].Value = model.CanvasY;
			parameters[10].Value = model.LinkNote;
			parameters[11].Value = model.ArrowNote;
			parameters[12].Value = model.AlarmNote;
			parameters[13].Value = model.CanvasNoteText;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(Spider.Model.test.E_BaseData model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update E_BaseData set ");
			strSql.Append("SiteNo=@SiteNo,");
			strSql.Append("SpecificDescription=@SpecificDescription,");
			strSql.Append("SiteStyle=@SiteStyle,");
			strSql.Append("Remarks=@Remarks,");
			strSql.Append("CanvasX=@CanvasX,");
			strSql.Append("CanvasY=@CanvasY,");
			strSql.Append("LinkNote=@LinkNote,");
			strSql.Append("ArrowNote=@ArrowNote,");
			strSql.Append("AlarmNote=@AlarmNote,");
			strSql.Append("CanvasNoteText=@CanvasNoteText");
			strSql.Append(" where FactoryID=@FactoryID and PipelineID=@PipelineID and PipeParentID=@PipeParentID and SiteID=@SiteID ");
			SqlParameter[] parameters = {
					new SqlParameter("@SiteNo", SqlDbType.VarChar,10),
					new SqlParameter("@SpecificDescription", SqlDbType.VarChar,50),
					new SqlParameter("@SiteStyle", SqlDbType.VarChar,50),
					new SqlParameter("@Remarks", SqlDbType.VarChar,50),
					new SqlParameter("@CanvasX", SqlDbType.Int,4),
					new SqlParameter("@CanvasY", SqlDbType.Int,4),
					new SqlParameter("@LinkNote", SqlDbType.Int,4),
					new SqlParameter("@ArrowNote", SqlDbType.Int,4),
					new SqlParameter("@AlarmNote", SqlDbType.VarChar,10),
					new SqlParameter("@CanvasNoteText", SqlDbType.VarChar,50),
					new SqlParameter("@FactoryID", SqlDbType.VarChar,10),
					new SqlParameter("@PipelineID", SqlDbType.Int,4),
					new SqlParameter("@PipeParentID", SqlDbType.Int,4),
					new SqlParameter("@SiteID", SqlDbType.Int,4)};
			parameters[0].Value = model.SiteNo;
			parameters[1].Value = model.SpecificDescription;
			parameters[2].Value = model.SiteStyle;
			parameters[3].Value = model.Remarks;
			parameters[4].Value = model.CanvasX;
			parameters[5].Value = model.CanvasY;
			parameters[6].Value = model.LinkNote;
			parameters[7].Value = model.ArrowNote;
			parameters[8].Value = model.AlarmNote;
			parameters[9].Value = model.CanvasNoteText;
			parameters[10].Value = model.FactoryID;
			parameters[11].Value = model.PipelineID;
			parameters[12].Value = model.PipeParentID;
			parameters[13].Value = model.SiteID;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(string FactoryID,int PipelineID,int PipeParentID,int SiteID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from E_BaseData ");
			strSql.Append(" where FactoryID=@FactoryID and PipelineID=@PipelineID and PipeParentID=@PipeParentID and SiteID=@SiteID ");
			SqlParameter[] parameters = {
					new SqlParameter("@FactoryID", SqlDbType.VarChar,10),
					new SqlParameter("@PipelineID", SqlDbType.Int,4),
					new SqlParameter("@PipeParentID", SqlDbType.Int,4),
					new SqlParameter("@SiteID", SqlDbType.Int,4)			};
			parameters[0].Value = FactoryID;
			parameters[1].Value = PipelineID;
			parameters[2].Value = PipeParentID;
			parameters[3].Value = SiteID;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public Spider.Model.test.E_BaseData GetModel(string FactoryID,int PipelineID,int PipeParentID,int SiteID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 FactoryID,PipelineID,PipeParentID,SiteID,SiteNo,SpecificDescription,SiteStyle,Remarks,CanvasX,CanvasY,LinkNote,ArrowNote,AlarmNote,CanvasNoteText from E_BaseData ");
			strSql.Append(" where FactoryID=@FactoryID and PipelineID=@PipelineID and PipeParentID=@PipeParentID and SiteID=@SiteID ");
			SqlParameter[] parameters = {
					new SqlParameter("@FactoryID", SqlDbType.VarChar,10),
					new SqlParameter("@PipelineID", SqlDbType.Int,4),
					new SqlParameter("@PipeParentID", SqlDbType.Int,4),
					new SqlParameter("@SiteID", SqlDbType.Int,4)			};
			parameters[0].Value = FactoryID;
			parameters[1].Value = PipelineID;
			parameters[2].Value = PipeParentID;
			parameters[3].Value = SiteID;

			Spider.Model.test.E_BaseData model=new Spider.Model.test.E_BaseData();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public Spider.Model.test.E_BaseData DataRowToModel(DataRow row)
		{
			Spider.Model.test.E_BaseData model=new Spider.Model.test.E_BaseData();
			if (row != null)
			{
				if(row["FactoryID"]!=null)
				{
					model.FactoryID=row["FactoryID"].ToString();
				}
				if(row["PipelineID"]!=null && row["PipelineID"].ToString()!="")
				{
					model.PipelineID=int.Parse(row["PipelineID"].ToString());
				}
				if(row["PipeParentID"]!=null && row["PipeParentID"].ToString()!="")
				{
					model.PipeParentID=int.Parse(row["PipeParentID"].ToString());
				}
				if(row["SiteID"]!=null && row["SiteID"].ToString()!="")
				{
					model.SiteID=int.Parse(row["SiteID"].ToString());
				}
				if(row["SiteNo"]!=null)
				{
					model.SiteNo=row["SiteNo"].ToString();
				}
				if(row["SpecificDescription"]!=null)
				{
					model.SpecificDescription=row["SpecificDescription"].ToString();
				}
				if(row["SiteStyle"]!=null)
				{
					model.SiteStyle=row["SiteStyle"].ToString();
				}
				if(row["Remarks"]!=null)
				{
					model.Remarks=row["Remarks"].ToString();
				}
				if(row["CanvasX"]!=null && row["CanvasX"].ToString()!="")
				{
					model.CanvasX=int.Parse(row["CanvasX"].ToString());
				}
				if(row["CanvasY"]!=null && row["CanvasY"].ToString()!="")
				{
					model.CanvasY=int.Parse(row["CanvasY"].ToString());
				}
				if(row["LinkNote"]!=null && row["LinkNote"].ToString()!="")
				{
					model.LinkNote=int.Parse(row["LinkNote"].ToString());
				}
				if(row["ArrowNote"]!=null && row["ArrowNote"].ToString()!="")
				{
					model.ArrowNote=int.Parse(row["ArrowNote"].ToString());
				}
				if(row["AlarmNote"]!=null)
				{
					model.AlarmNote=row["AlarmNote"].ToString();
				}
				if(row["CanvasNoteText"]!=null)
				{
					model.CanvasNoteText=row["CanvasNoteText"].ToString();
				}
			}
			return model;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select FactoryID,PipelineID,PipeParentID,SiteID,SiteNo,SpecificDescription,SiteStyle,Remarks,CanvasX,CanvasY,LinkNote,ArrowNote,AlarmNote,CanvasNoteText ");
			strSql.Append(" FROM E_BaseData ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
			strSql.Append(" FactoryID,PipelineID,PipeParentID,SiteID,SiteNo,SpecificDescription,SiteStyle,Remarks,CanvasX,CanvasY,LinkNote,ArrowNote,AlarmNote,CanvasNoteText ");
			strSql.Append(" FROM E_BaseData ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) FROM E_BaseData ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("SELECT * FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby );
			}
			else
			{
				strSql.Append("order by T.SiteID desc");
			}
			strSql.Append(")AS Row, T.*  from E_BaseData T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "E_BaseData";
			parameters[1].Value = "SiteID";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

