<#include "/layout.ftl">
<@body>
    
  <!--<SCRIPT LANGUAGE="JavaScript">
   var zTreeObj;
   // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
   var setting = {};
   // zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
   var zNodes = [
   {name:"test1", open:true, children:[
      {name:"test1_1"}, {name:"test1_2"}]},
   {name:"test2", open:true, children:[
      {name:"test2_1"}, {name:"test2_2"}]}
   ];
   $(document).ready(function(){
      zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);
   });
  </SCRIPT>
  
<div>
   <ul id="treeDemo" class="ztree"></ul>
</div>
-->
<SCRIPT type="text/javascript">
        var setting = {
            view: {
                dblClickExpand: false
            },
            data: {
                simpleData: {
                    enable: true
                }
            },
            callback: {
                beforeClick: beforeClick,
                onClick: onClick
            }
        };

        var zNodes =[
            {id:1, pId:0, name:"北京"},
            {id:2, pId:0, name:"天津"},
            {id:3, pId:0, name:"上海"},
            {id:6, pId:0, name:"重庆"},
            {id:4, pId:0, name:"河北省", open:true},
            {id:41, pId:4, name:"石家庄"},
            {id:42, pId:4, name:"保定"},
            {id:43, pId:4, name:"邯郸"},
            {id:44, pId:4, name:"承德"},
            {id:5, pId:0, name:"广东省", open:true},
            {id:51, pId:5, name:"广州"},
            {id:52, pId:5, name:"深圳"},
            {id:53, pId:5, name:"东莞"},
            {id:54, pId:5, name:"佛山"},
            {id:6, pId:0, name:"福建省", open:true},
            {id:61, pId:6, name:"福州"},
            {id:62, pId:6, name:"厦门"},
            {id:63, pId:6, name:"泉州"},
            {id:64, pId:6, name:"三明"}
         ];

        function beforeClick(treeId, treeNode) {
            var check = (treeNode && !treeNode.isParent);
            if (!check) alert("只能选择城市...");
            return check;
        }
        
        function onClick(e, treeId, treeNode) {
            var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
            nodes = zTree.getSelectedNodes(),
            v = "";
            nodes.sort(function compare(a,b){return a.id-b.id;});
            for (var i=0, l=nodes.length; i<l; i++) {
                v += nodes[i].name + ",";
            }
            if (v.length > 0 ) v = v.substring(0, v.length-1);
            var cityObj = $("#citySel");
            cityObj.attr("value", v);
        }

        function showMenu() {
            var cityObj = $("#citySel");
            var cityOffset = $("#citySel").offset();
            $("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");

            $("body").bind("mousedown", onBodyDown);
        }
        function hideMenu() {
            $("#menuContent").fadeOut("fast");
            $("body").unbind("mousedown", onBodyDown);
        }
        function onBodyDown(event) {
            if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
                hideMenu();
            }
        }

        $(document).ready(function(){
            $.fn.zTree.init($("#treeDemo"), setting, zNodes);
        });
        
    </SCRIPT>
    <style type="text/css">
    </style>
<div class="content_wrap">
    <div class="zTreeDemoBackground left">
        <ul class="list">
            <li class="title">&nbsp;&nbsp;<span class="highlight_red">选择城市时，按下 Ctrl 或 Cmd 键可以进行多选</span></li>
            <li class="title">&nbsp;&nbsp;城市：<input id="citySel" type="text" readonly value="" style="width:120px;" onclick="showMenu(); return false;" />
        &nbsp;<a id="menuBtn" href="#" onclick="showMenu(); return false;">选择</a></li>
        </ul>
    </div>
    <div class="right">
        <ul class="info">
            <li class="title"><h2>实现方法说明</h2>
                <ul class="list">
                <li>用 zTree 实现这种下拉菜单，应该说是比较容易的，你只需要控制 zTree 所在容器的隐藏/显示，以及位置即可。</li>
                <li class="highlight_red">zTree v3.x 实现了多点选中功能，因此对于需要多选的下拉菜单也易如反掌。</li>
                <li class="highlight_red">利用 setting 的各项配置参数，完全可以满足大部分的功能需求。</li>
                </ul>
            </li>
        </ul>
    </div>
</div>

<div id="menuContent" class="menuContent" style="display:none; position: absolute;">
    <ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;"></ul>
</div>
</@body>