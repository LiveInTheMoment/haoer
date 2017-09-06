<#include "/layout.ftl">
<@body>

<style>

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
	margin: 0;padding: 0;border: 0;outline: 0;font-weight: inherit;font-style: inherit;font-size: 100%;font-family: inherit;vertical-align: baseline;}
body {color: #2f332a;font: 15px/21px Arial, Helvetica, simsun, sans-serif;background: #f0f6e4 \9;}
h1, h2, h3, h4, h5, h6 {color: #2f332a;font-weight: bold;font-family: Helvetica, Arial, sans-serif;padding-bottom: 5px;}
h1 {font-size: 24px;line-height: 34px;text-align: center;}
h2 {font-size: 14px;line-height: 24px;padding-top: 5px;}
h6 {font-weight: normal;font-size: 12px;letter-spacing: 1px;line-height: 24px;text-align: center;}
a {color:#3C6E31;text-decoration: underline;}
a:hover {background-color:#3C6E31;color:white;}
input.radio {margin: 0 2px 0 8px;}
input.radio.first {margin-left:0;}
input.empty {color: lightgray;}
code {color: #2f332a;}
.highlight_red {color:#A60000;}
.highlight_green {color:#A7F43D;}
li {list-style: circle;font-size: 12px;}
li.title {list-style: none;}
ul.list {margin-left: 17px;}

div.content_wrap {width: 600px;height:380px;}
div.content_wrap div.left{float: left;width: 250px;}
div.content_wrap div.right{float: right;width: 340px;}
div.zTreeDemoBackground {width:250px;height:362px;text-align:left;}

ul.ztree {margin-top: 10px;border: 1px solid #617775;background: #f0f6e4;width:220px;height:360px;overflow-y:scroll;overflow-x:auto;}
ul.log {border: 1px solid #617775;background: #f0f6e4;width:300px;height:170px;overflow: hidden;}
ul.log.small {height:45px;}
ul.log li {color: #666666;list-style: none;padding-left: 10px;}
ul.log li.dark {background-color: #E3E3E3;}

/* ruler */
div.ruler {height:20px; width:220px; background-color:#f0f6e4;border: 1px solid #333; margin-bottom: 5px; cursor: pointer}
div.ruler div.cursor {height:20px; width:30px; background-color:#3C6E31; color:white; text-align: right; padding-right: 5px; cursor: pointer}

#menuContent{
	z-index:9
}

</style>


 <input id="citySel" type="text" readonly value="" style="width:120px;" onclick="showMenu();" />
		&nbsp;<a id="menuBtn" href="#" onclick="showMenu(); return false;">select</a></li>

	

<#macro js_funcEvent func="" params="">
    <#if func?? && func!="">
        <#local funcStr=func?string?trim />
        <#local length=funcStr?length />
        <#local last=funcStr?substring(length-1,length) />
        <#if last==")" || last=="}" || last==";">${funcStr}<#else>${funcStr}(<#if params?? && params!="">${params}<#else>this</#if>)</#if></#if></#macro>
<#-- ajaxButton ajax按钮-->
<#-- ajaxButton ajax按钮-->
<#macro ajaxButton1 id="" name="" value="" sense="primary" fa="" class="" style="" 
    url="" url_data={} form_id="" multi_submit="false" after="" before="" confirm="" success_url="" >
    
    <#local uuid_func=ar_('uuid') />
    
    <script type="text/javascript">
       function ${uuid_func}(that){
            var $this = $(that);
            
            <#if confirm?? && confirm!="">
                var confirmMsg = $this.attr("data-ar-confirm");
                if(!confirm(confirmMsg)){
                    return false;
                }
            </#if>
            
            <#if before?? && before!="">
                <#-- var before = $this.attr("data-ar-before"); -->
                var before_result = (<@js_funcEvent func="${before}"/>);
                if(before_result==false){
                    return false;
                }
            </#if>
            
            <#if url?? && url!="">
                var url = $this.attr("data-ar-url");
                var data = {};
                <#if url_data?? && url_data?size gt 0 >
                    var url_data = $this.attr("data-ar-url_data");
                    data = eval('(' + url_data + ')');
                    
                    var form_data = $("#${form_id}").serializeObject();
                    data = $.extend({},data,form_data);
                </#if>
                
                
                $.post(url, data,
                  function(res){
                  
                    <#if after?? && after!="">
                        <#-- var after = $this.attr("data-ar-after"); -->
                        var after_res = (<@js_funcEvent func="${after}" params="res"/>);
                        if(after_res==false){
                            return false;
                        }
                    <#else>
                        alert(res.msg);
                        if(res.s){
                            <#if multi_submit=="true">
                                ar_.buttonDisable('${id}',false);
                            <#else>
                                ar_.buttonDisable('${id}',true);
                            </#if>
                        }else{
                            /*操作失败，默认恢复提交按钮*/
                            ar_.buttonDisable('${id}',false);
                            return false;
                        }
                    </#if>
                    
                    <#if success_url?? && success_url!="">
                        if(res.s){
                            var success_url = $this.attr("data-ar-success_url");
                            var eval_success_url = "success_url = '" + success_url;
                            eval(eval_success_url);                       
    
                            window.location.href="";
                            window.location.href=success_url;
                        }
                    </#if>
                    
                },'json');
            <#else>
                <#if success_url?? && success_url!="">
                    var success_url = $this.attr("data-ar-success_url");
                    var eval_success_url = "success_url = '" + success_url;
                    eval(eval_success_url);
                        
                    window.location.href="";
                    window.location.href=success_url;
                </#if>
            </#if>
        }
    </script>
    
    <button type="button" id="${id}" name="${name}" value="${value}" onclick="${uuid_func}(this)"
    data-ar-url="${base}/${url}" data-ar-url_data="<@mapToMapStr map=url_data />"
    data-ar-after="${after}" data-ar-before="${before}" data-ar-confirm="${confirm}"
    <#if success_url?? && success_url!="">data-ar-success_url="${base}/${ar_('success_url_replace',success_url)}"</#if>
    class="btn btn-sm btn-${sense} ${class}" style="${style}" > 
    <#if fa??&&fa!=""><i class="fa fa-${fa}"></i> </#if><#nested/>${name}</button>
</#macro>


String a = "{{row.id}}{{res.obj.id}}{{{res.obj.xxx}}";
        
String pp = "\\{\\{(res\\.obj\\..+?)\\}\\}"; 

String q = replace(a,pp,"","\\{","\\}");

1111<br/>
${ar_('success_url_replace','dict/page?id={{res.obj.qq}}')}"
<br/>111
<@mapToMapStr map={"1323":"123","22":"123"} />

调用顺序，confirm ，before，url, after/ multi_submit、success_url
      confirm before success_url
      
<@form id="formid">
    <@field label="在这里不">
            <@input name="name" />
            <@input name="name22" />
    </@field>
</@form>      
      
<@ajaxButton1 name="name" form_id="formid" confirm="确认删除？" before="aa" after="after" url="dict/add" url_data={"code":"中国人","type","1232132","typeName":"3123","codeName":"125214"} success_url="dict/page" />

<script type="text/javascript">
    var aa = function(){
        alert(124214);
    }
    
    var after = function(res){
        alert("after");
    }
</script>





    <@form action="dict/add" after="aa">
        <@submitButton name="tijiao" />
    </@form>
    
    
    <@panel id="xxx">
        <@panelBody>
        <@table url="dict/list">
            <@th title="代码" field="code" />
            <@th title="名称" field="codeName"/>
            <@th title="caozuo" field="" render="true">
                <@ajaxButton1 name="name" confirm="确认删除？" before="aa" after="after" url="dict/add?id={{row.id}}" 
                url_data={"q":"中国人","123123","123132"} success_url="dict/page?id={{res.obj.x}}" />
            </@th>
        </@table>
        </@panelBody>
    </@panel>
    
    
    
    <script type="text/javascript">
        
        function clicka(){
            d = top.dialog({
                width:1000,
                title: '欢迎',
                height:300,
                url:'${base}/lookup/userlist.ftl',
                oniframeload:function(){},
                cancel:function(){
                },
                ok:function(){
                    alert("ok");
                    return false;
                },
                okValue:'点我',
                cancelDisplay: false,
                button:[
                {
                    value: '确定',
                    callback: function () {
                        this
                        .content('你同意了');
                        return false;
                    },
                    autofocus: true
                },
        {
            value: '清除',
            callback: function () {
                alert('你不同意');
                return false;
            },
            autofocus: true
        }, {
            value: '清除111',
            callback: function () {
                alert('你不同意');
                return false;
            },
            autofocus: true
        }
                ]
            });
            d.showModal();
        }
        
    </script>
    
    <@button click="clicka" name="art"/>
    
    
    <SCRIPT type="text/javascript">
		<!--
		var setting = {
			check: {
				enable: true,
				chkStyle: "radio",
				radioType: "all"
			},
			view: {
				dblClickExpand: false
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				onClick: onClick,
				onCheck: onCheck
			}
		};

		var zNodes =[
			{id:1, pId:0, name:"北京"},
			{id:2, pId:0, name:"天津"},
			{id:3, pId:0, name:"上海"},
			{id:6, pId:0, name:"重庆"},
			{id:4, pId:0, name:"河北省", open:true, nocheck:true},
			{id:41, pId:4, name:"石家庄"},
			{id:42, pId:4, name:"保定"},
			{id:43, pId:4, name:"邯郸"},
			{id:44, pId:4, name:"承德"},
			{id:5, pId:0, name:"广东省", open:true, nocheck:true},
			{id:51, pId:5, name:"广州"},
			{id:52, pId:5, name:"深圳"},
			{id:53, pId:5, name:"东莞"},
			{id:54, pId:5, name:"佛山"},
			{id:6, pId:0, name:"福建省", open:true, nocheck:true},
			{id:61, pId:6, name:"福州"},
			{id:62, pId:6, name:"厦门"},
			{id:63, pId:6, name:"泉州"},
			{id:64, pId:6, name:"三明"}
		 ];

		function onClick(e, treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			zTree.checkNode(treeNode, !treeNode.checked, null, true);
			return false;
		}

		function onCheck(e, treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getCheckedNodes(true),
			v = "";
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
			if (!(event.target.id == "menuBtn" || event.target.id == "citySel" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
				hideMenu();
			}
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		//-->
	</SCRIPT>
	
	<div id="menuContent" class="menuContent" style="display:none; position: absolute;">
		<ul id="treeDemo" class="ztree" style="margin-top:0; width:180px; height: 300px;"></ul>
	</div>
	
	<script>
		ar_.dtFormat = function (date,format) {  
            var o = {  
                "M+": date.getMonth() + 1,  
                "d+": date.getDate(),  
                "h+": date.getHours(),  
                "m+": date.getMinutes(),  
                "s+": date.getSeconds(),  
                "q+": Math.floor((date.getMonth() + 3) / 3),  
                "S": date.getMilliseconds()  
            }  
            if (/(y+)/.test(format)) {  
                format = format.replace(RegExp.$1, (date.getFullYear() + "").substr(4 - RegExp.$1.length));  
            }  
            for (var k in o) {  
                if (new RegExp("(" + k + ")").test(format)) {  
                    format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));  
                }  
            }  
            return format;  
        };
        /*日期格式*/
        ar_.dateFormat = function(d){
            if( typeof(d) == 'object'){ //Date obj
                var date = d;
            }else{
                var dNumber = new Number(d);
                var date = new Date(dNumber);
            }
        	return ar_.dtFormat(date,'yyyy-MM-dd');
        };
        /*日期时间格式*/
        ar_.datetimeFormat = function(d){
            if( typeof(d) == 'object'){ //Date obj
                var date = d;
            }else{
                var dNumber = new Number(d);
                var date = new Date(dNumber);
            }
        	return ar_.dtFormat(date,'yyyy-MM-dd hh:mm:ss');
        };
        /*时间格式*/
        ar_.timeFormat = function(d){
            if( typeof(d) == 'object'){ //Date obj
                var date = d;
            }else{
                var dNumber = new Number(d);
                var date = new Date(dNumber);
            }
        	return ar_.dtFormat(date,'hh:mm:ss');
        };
        var d = new Date(1471348030000);
	</script>
   
   
   <@tab id="tab" >
        <@tabNav> 
            <@tabTitle pane_id="pane1" active="true" title="tab1">
            </@tabTitle>    
            <@tabTitle pane_id="pane2"  title="tab2">
            </@tabTitle>
        </@tabNav>
        <@tabContent> 
            <@tabPane id="pane1" active="true">
                ...
            </@tabPane>    
            <@tabPane id="pane2" >
                ...
            </@tabPane>
        </@tabContent>
    </@tab>
    
    <script type="text/javascript">
        
        var addtab = function(){
            alert("1");
             //设置参数
            var option = {id:"tab", //id新增标签页的id，可为空
                      title:"title", //新增标签页的标题，不能为空
                      url:"${base}/dict/page",
                      close:true  //是否可以关闭，默认true
                      };
             var id = $('#tab').ar_tab().add(option);
        }
        
    </script>
    
    <@button name="addtab" click="addtab" />
    
</@body>
