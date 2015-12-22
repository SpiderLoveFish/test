 

function InitStage(stage, result) {
    
    var gridLayout = JTopo.layout.GridLayout(2, 6);
    var gridLayoutZ = JTopo.layout.GridLayout(1, 3);
    var flowLayout = JTopo.layout.FlowLayout(10, 10);
    var container = new JTopo.Container('主线');
    // container.layout = gridLayout;
    container.textPosition = 'Middle_Center';
    container.fontColor = '100,255,0';
    container.font = '18pt 微软雅黑';
    container.borderColor = '255,0,0';
    container.dragable = false;
    container.borderRadius = 30; // 圆角
    container.setBound(180, 200, 550, 300);
    scene.add(container);
    var containerZ = new JTopo.Container('检验线');
    containerZ.layout = gridLayoutZ;
    containerZ.dragable = false;
    containerZ.textPosition = 'Top_Center';
    containerZ.textOffsetY = 50;
    containerZ.fontColor = '100,255,0';
    containerZ.font = '18pt 微软雅黑';
    containerZ.fillColor = '10,10,100';
    containerZ.borderColor = '255,0,0';
    containerZ.borderRadius = 30; // 圆角
    containerZ.setBound(180, 10, 550, 150);
    scene.add(containerZ);
    var containerLeft = new JTopo.Container('');
    //  containerLeft.layout = gridLayoutZ;
    containerLeft.dragable = false;
    //containerLeft.textPosition = 'Top_Center';
    containerLeft.textOffsetY = 50;
    containerLeft.fontColor = '100,255,0';
    //containerLeft.font = '18pt 微软雅黑';
    //containerLeft.fillColor = '10,10,100';
    containerLeft.borderColor = '255,0,0';
    containerLeft.borderRadius = 30; // 圆角
    containerLeft.setBound(10, 10, 150, 400);
    scene.add(containerLeft);

    var obj = eval(result);
    //alert(obj);
    for (var n = 0; n < obj.site.length; n++) {
        // for (var n in obj.site) {
        if (obj.site[n] == "null" || obj.site[n] == null) {
            alert(n);
            obj.site[n] = "";
        }
        else {

            switch (n) {
                case 0:
                    n1 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n1);
                    break;
                case 1:
                    n2 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n2);
                    break;
                case 2:
                    n3 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n3);
                    break;
                case 3:
                    n4 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n4);
                    break;
                case 4:
                    n5 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n5);
                    break;
                case 5:
                    n6 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n6);
                    break;
                case 6:
                    n7 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n7);
                    break;
                case 7:
                    n8 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n8);
                    break;
                case 8:
                    n9 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n9);
                    break;
                case 9:
                    n10 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n10);
                    break;
                case 10:
                    n11 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n11);
                    break;
                case 11:
                    n12 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n12);

                    break;
                case 12:
                    n13 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n13);
                    break;
                case 13:
                    n14 = addNode(obj.site[n].name, obj.site[n].x, obj.site[n].y, obj.site[n].alarm, n, obj.site[n].style);
                    nodes.push(n14);
                    break;
                default: break;
            }



            // var Link = addLink(n1,n2);
        }

    }
    for (var n = 0; n < obj.arrow.length; n++) {

        var link = newFoldLink(nodes[obj.arrow[n].x], nodes[obj.arrow[n].y], '', 'vertical',5);

    }
    for (var n = 0; n < obj.tcarrow.length; n++) {

        var link = newFlexionalLink(nodes[obj.tcarrow[n].x], nodes[obj.tcarrow[n].y], '', 'vertical');
        links.push(link);
    }
    var computer = addNode('工控机', 20, 451, "", 14, "");

    leftconta();

    


    function addNode(text, x, y, alarm, n, style) {
        var node = new JTopo.Node(text);
        node.borderRadius = 5;
        node.alpha = 0.9
        node.font = '10pt 微软雅黑';
        var text = position = text;
        if (n < 6)
            node.textOffsetY = -100;
        // node.style = style;
        if (style == "A") {//上料站

            node.fontColor = "100,255,0";
        }
        else if (style == "C") {//总结站
            node.fontColor = "0,0,255";

        }
        else if (style == "D") {//缓存站

            node.fontColor = "255,255,255";
        }
        else if (style == "E") {//检验站

            node.fontColor = "255,255,255";
        }
        else
            node.fontColor = "204,204,204";
        if (alarm != "") {

            alarmnodes.push(n);
            alarmtext.push(alarm);
            node.alarm = alarm;
            node.alarmColor = '255,0,0';
            node.alarmAlpha = 0.9;
        }
        if (text == "")
        { }
        else if (text == "工控机")
            node.setImage('Images/computer.png', true);
        else
            node.setImage('Images/U.png', true);
        node.setLocation(x, y);
        scene.add(node);
        
        if (text.substr(0, 1) == "Z")
            containerZ.add(node);
        else if (text.substr(0, 1) == "U") {
            container.add(node);

        }
        // }
        node.addEventListener('mouseup', function (event) {
            currentNode = this;
            handler(event);
        });

        return node;
    }

    // 折线
    function newFoldLink(nodeA, nodeZ, text, direction, dashedPattern) {
        var link = new JTopo.FoldLink(nodeA, nodeZ, text);
        link.direction = direction || 'horizontal';
        link.arrowsRadius = 10; //箭头大小
        link.lineWidth = 2; // 线宽

        link.textOffsetY = -100; // 文本偏移量（向下3个像素）
        link.offsetGap = 30;
        link.bundleGap = 15; // 线条之间的间隔
        // link.strokeColor = JTopo.util.randomColor(); // 线条颜色随机
        link.dashedPattern = dashedPattern;
        scene.add(link);
        return link;
    }

    // 二次折线
    function newFlexionalLink(nodeA, nodeZ, text, direction, dashedPattern) {
        var link = new JTopo.CurveLink(nodeA, nodeZ, text);
        link.direction = direction || 'horizontal';
        link.arrowsRadius = 10;
        link.lineWidth = 3; // 线宽
        link.offsetGap = 35;
        link.bundleGap = 15; // 线条之间的间隔
        link.textOffsetY = 10; // 文本偏移量（向下15个像素）
        link.strokeColor = '0,250,0';
        link.dashedPattern = dashedPattern;
        scene.add(link);
        return link;
    }

    var currentNode = null;
    function handler(event) {
        if (event.button == 2) {// 右键
            // 当前位置弹出菜单（div）
            $("#contextmenu").css({
                top: event.pageY,
                left: event.pageX
            }).show();
        }
        //else if (event.button ==0) {// 左键
        //    // 当前位置弹出菜单（div）
        //    $("#contextmenu").css({
        //        top: event.pageY,
        //        left: event.pageX
        //    }).show();
        //}
        //else if (event.button == 1) {// 左键
        //    // 当前位置弹出菜单（div）
        //    $("#contextmenu").css({
        //        top: event.pageY,
        //        left: event.pageX
        //    }).show();
        //}
    }



    stage.click(function (event) {
        if (event.button == 0) {// 右键
            // 关闭弹出菜单（div）
            $("#contextmenu").hide();
        }
    });
    $("#contextmenu a").click(function () {
        var text = $(this).text();

        if (text == ' 查看json') {
            alert(currentNode.toJson());
        }
        if (text == '删除该节点') {
            scene.remove(currentNode);
            currentNode = null;
        } if (text == '撤销上一次操作') {
            currentNode.restore();
        } else {
            currentNode.save();
        }

        if (text == '更改颜色') {
            currentNode.fillColor = JTopo.util.randomColor();
        } else if (text == '顺时针旋转') {
            currentNode.rotate += 0.5;
        } else if (text == '逆时针旋转') {
            currentNode.rotate -= 0.5;
        } else if (text == '放大') {
            currentNode.scaleX += 0.2;
            currentNode.scaleY += 0.2;
        } else if (text == '缩小') {
            currentNode.scaleX -= 0.2;
            currentNode.scaleY -= 0.2;
        }
        $("#contextmenu").hide();
    });

    setInterval(function () {
        for (var n = 0; n < alarmnodes.length; n++) {

            if (nodes[alarmnodes[n]].alarm == 'undefined'
                || nodes[alarmnodes[n]].alarm == null
                || nodes[alarmnodes[n]].alarm == '') {
                {
                    nodes[alarmnodes[n]].alarm = alarmtext[n];

                }
            } else {
                nodes[alarmnodes[n]].alarm = null;
            }
        }
    }, 1000);

    function leftconta() {
        var node1 = addNode('', 20, 10, "", 15, "");
        var node2 = addNode('', 20, 200, "", 16, "");
        newFoldLink(node1, node2, "机械流向", "vertical",5);
        var node3 = addNode('', 100, 10, "", 17, "");
        var node4 = addNode('', 100, 200, "", 18, "");
        newFlexionalLink(node3, node4, "单据流向", "vertical");
    }


}
// 页面工具栏
function showToobar(stage) {
    
    //var scene=stage.child[0];
    var toobarDiv = $('<div class="jtopo_toolbar">').html(''
		//+ '<input type="radio" name="modeRadio" value="normal" checked id="r1"/>'
		//+ '<label for="r1"> 默认</label>'
		//+ '&nbsp;<input type="radio" name="modeRadio" value="select" id="r2"/><label for="r2"> 框选</label>'
		//+ '&nbsp;<input type="radio" name="modeRadio" value="drag" id="r3"/><label for="r3"> 平移</label>'
		//+ '&nbsp;<input type="radio" name="modeRadio" value="edit" id="r4"/><label for="r4"> 编辑</label>'
		//+ '&nbsp;&nbsp;<input type="button" id="centerButton" value="居中显示"/>'
		//+ '<input type="button" id="fullScreenButton" value="全屏显示"/>'
		//+ '<input type="button" id="zoomOutButton" value=" 放 大 " />'
		+ '<input type="button" id="ClearButton" value=" 清除单据流 " />'
		//+ '&nbsp;&nbsp;<input type="checkbox" id="zoomCheckbox"/><label for="zoomCheckbox">鼠标缩放</label>'
		//+ '&nbsp;&nbsp;<input type="text" id="findText" value="" onkeydown="findButton.click()">'
		//+ '<input type="button" id="findButton" value=" 查 询 ">'
		+ '&nbsp;&nbsp;<input type="button" id="exportButton" value="导出图片">');

    $('#content').prepend(toobarDiv);

    // 工具栏按钮处理
    $('#ClearButton').click(function () {
       
        if ($('#ClearButton').val().trim() == "清除单据流") {
            for (var n = 0; n < links.length; n++) {
               
                scene.remove(links[n]);
                // stage.removeChild(links[n]);
               
           }
            $('#ClearButton').val("恢复单据流");
        }
        else {
            for (var n = 0; n < links.length; n++) {
                scene.add(links[n]);
            }
            $('#ClearButton').val("清除单据流");
         }//stage.remove();
    });

    $("input[name='modeRadio']").click(function () {
        stage.mode = $("input[name='modeRadio']:checked").val();
    });
    $('#centerButton').click(function () {
        stage.centerAndZoom(); //缩放并居中显示
    });
    $('#zoomOutButton').click(function () {
        stage.zoomOut();
    });
    $('#zoomInButton').click(function () {
        stage.zoomIn();
    });
    $('#exportButton').click(function () {
        stage.saveImageInfo();
    });
    $('#zoomCheckbox').click(function () {
        if ($('#zoomCheckbox').attr('checked')) {
            stage.wheelZoom = 0.85; // 设置鼠标缩放比例
        } else {
            stage.wheelZoom = null; // 取消鼠标缩放比例
        }
    });
    $('#fullScreenButton').click(function () {
        runPrefixMethod(stage.canvas, "RequestFullScreen")
    });

    // 查询
    $('#findButton').click(function () {
        var text = $('#findText').val().trim();
        var nodes = stage.find('node[text="' + text + '"]');
        if (nodes.length > 0) {
            var node = nodes[0];
            node.selected = true;
            var location = node.getCenterLocation();
            // 查询到的节点居中显示
            stage.setCenter(location.x, location.y);

            function nodeFlash(node, n) {
                if (n == 0) {
                    node.selected = false;
                    return;
                };
                node.selected = !node.selected;
                setTimeout(function () {
                    nodeFlash(node, n - 1);
                }, 300);
            }

            // 闪烁几下
            nodeFlash(node, 6);
        }
    });
}

function RemoveLink(findstage,links)
{
    //for (var n = 0; n < links.length; n++) {
    //    findstage.scene.remove(links[n]);
    //    alert(links[n]);
    //}
   // alert(links);
   // screen.remove
     
    findstage.wheelZoom = 0.85;


}

var runPrefixMethod = function (element, method) {
    var usablePrefixMethod;
    ["webkit", "moz", "ms", "o", ""].forEach(function (prefix) {
        if (usablePrefixMethod) return;
        if (prefix === "") {
            // 无前缀，方法首字母小写
            method = method.slice(0, 1).toLowerCase() + method.slice(1);
        }
        var typePrefixMethod = typeof element[prefix + method];
        if (typePrefixMethod + "" !== "undefined") {
            if (typePrefixMethod === "function") {
                usablePrefixMethod = element[prefix + method]();
            } else {
                usablePrefixMethod = element[prefix + method];
            }
        }
    }
);

    return usablePrefixMethod;
};
/*
runPrefixMethod(this, "RequestFullScreen");
if (typeof window.screenX === "number") {
var eleFull = canvas;
eleFull.addEventListener("click", function() {
	if (runPrefixMethod(document, "FullScreen") || runPrefixMethod(document, "IsFullScreen")) {
		runPrefixMethod(document, "CancelFullScreen");
		this.title = this.title.replace("退出", "");
	} else if (runPrefixMethod(this, "RequestFullScreen")) {
		this.title = this.title.replace("点击", "点击退出");
	}
});
} else {
alert("浏览器不支持");
}*/
