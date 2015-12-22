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
using Maticsoft.DBUtility;

namespace Spider.Web
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
             var cmd = Request["Action"];
             if (cmd == "form")
             {
                 string jdata = "";
                 try
                 {

                     string sqlsite = " SELECT SiteID,SiteNo,SiteStyle,SpecificDescription AS ms, " +
                                        " CanvasX,CanvasY,AlarmNote ,CanvasNoteText" +
                                        "  FROM dbo.E_BaseData  ";
                                        //" ORDER BY SiteID DESC";
                     sqlsite += "  SELECT ArrowZ1,ArrowZ2 FROM dbo.E_BaseArrow";
                     sqlsite += "  SELECT ArrowZ1,ArrowZ2 FROM dbo.E_TCArrow";
                  DataSet ds=   DbHelperSQL.Query(sqlsite);
                  if (ds != null)
                  { 
                    DataTable sitedt=ds.Tables[0];
                    string sitedata = "{\"site\":[";
                    foreach (DataRow dr in sitedt.Rows)
                    {
                        sitedata += "{\"name\":\"" + dr["ms"].ToString() + "\",\"style\":\"" + dr["SiteStyle"].ToString() + "\",\"alarm\":\"" + dr["CanvasNoteText"].ToString() + "\",\"x\":" + decimal.Parse(dr["CanvasX"].ToString()) + ",\"y\": " + decimal.Parse(dr["CanvasY"].ToString()) + "},";
                      
                    }
                    sitedata = sitedata.ToString().TrimEnd(',');
                    sitedata += "],";
                    string arrowdata = "\"arrow\":[";
                      DataTable arrowdt=ds.Tables[1];
                      foreach (DataRow dr in arrowdt.Rows)
                      {
                          arrowdata += "{\"x\":" + int.Parse(dr["ArrowZ1"].ToString()) + ",\"y\": " + int.Parse(dr["ArrowZ2"].ToString()) + "},";

                      }
                      arrowdata = arrowdata.ToString().TrimEnd(',');
                      arrowdata += "],";
                      string TCarrowdata = "\"tcarrow\":[";
                      DataTable arrowTCdt = ds.Tables[2];
                      foreach (DataRow dr in arrowTCdt.Rows)
                      {
                          TCarrowdata += "{\"x\":" + int.Parse(dr["ArrowZ1"].ToString()) + ",\"y\": " + int.Parse(dr["ArrowZ2"].ToString()) + "},";

                      }
                      TCarrowdata = TCarrowdata.ToString().TrimEnd(',');
                      TCarrowdata += "]}";
                      jdata = sitedata + arrowdata + TCarrowdata;
                  }
                      
                    
                     //  jdata = "{\"TEST1\":[{\"name\":\"自定义1\",\"x\":445,\"y\":153},{\"name\":\"自定义2\",\"x\":355,\"y\":151}],";
                     //jdata += " \"TEST2\":[{\"name\":\"zz1\",\"x\":0,\"y\":1} ]}";
                     Response.ContentType = "application/json";
                     Response.Write(jdata);
                 }
                 catch (Exception ex)
                 {
                     Response.Write(ex.Message);
                 }
                 finally
                 {
                     Response.End();
                 }
             }
        }
    }
}
