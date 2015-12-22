<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Spider.Web.Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CESHI </title>
    <script type="text/javascript" src="JS/jquery-1.8.0.min.js"></script>
        <script type="text/javascript" src="JS/jtopo-0.4.8-min.js"></script>
      <script type="text/javascript" src="JS/spider.js"></script>
    <script type="text/javascript">
        var n1, n2; var nodes = [];
        var alarmnodes = []; var alarmtext = [];
        var stage; var scene; var links = [];
        $(document).ready(function () {

            var myCanvas = document.getElementById("canvas");
            stage = new JTopo.Stage(myCanvas);
            stage.mode = "drag";
            //findstage = stage;
            scene = new JTopo.Scene();

            // scene.backgroundColor = '255,0,0';
            scene.background = 'Images/bg.jpg';
            stage.add(scene);

            $.ajax({
                type: "GET",
                url: "Default.aspx", /* 注意后面的名字对应CS的方法名称 */
                data: { Action: 'form', rnd: Math.random() }, /* 注意参数的格式和名称 */
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (result) {
                    
                    InitStage(stage,result);
                },
                error: function (e) {
                    alert(e);
                }
            });
            showToobar(stage);
            
        });

        

        

        function dosubmit() {
              alert(stage.toJson());
           // RemoveLink(stage, links);
            //var test = findstage.find('node[text="n1"]');
            //alter(test);
            //var n1 = spider(findstage, "n1");
            //alert(n1);
            //var n2 = spider(findstage, "n2");
            //var Link = addLink(n1, n2);
            //alert("1");
        }
        
      
    </script>
    <style type="text/css">
	#contextmenu {
		border: 1px solid #aaa;
		border-bottom: 0;
		background: #eee;
		position: absolute;
		list-style: none;
		margin: 0;
		padding: 0;
		display: none;
	}
																			   
	#contextmenu li a {
		display: block;
		padding: 10px;
		border-bottom: 1px solid #aaa;
		cursor: pointer;
	}
																			   
	#contextmenu li a:hover {
		background: #fff;
	}
	</style>	
</head>

<body>
    <ul id="contextmenu" style="display:none;">	
	<li><a>查看json</a></li>
	<li><a>逆时针旋转</a></li>	
	<li><a>更改颜色</a></li>
	<li><a>放大</a></li>
	<li><a>缩小</a></li>
	<li><a>撤销上一次操作</a></li>
	<li><a>删除该节点</a></li>
  </ul>
    <form id="form1" runat="server">
 <input  type="button" id="test" name="test" value="测试" onclick="dosubmit()"/>
   <div id="content">					<canvas width="850" height="550" id="canvas"></canvas>
		 
    </div>
    </form>
</body>
</html>
