<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>ACL-权限管理系统</title>

<#include "/assets.ftl"/>

<style type="text/css">
	html,body,#wrapper,#page-wrapper{
		height:100%;
		overflow:hidden;
	}
	#side-menu{
		overflow:auto;
	}
</style>
<script type="text/javascript">
	$(function(){
		var mainHeight = function(){
			var height = $("#top-body").height();
			var mHeight = height - 145;
			$("#page-primary").height(mHeight);
			$("#side-menu").height(mHeight+100);
			setTimeout(mainHeight, 200);
		}
		if($("#page-primary")){
			mainHeight();
		}
	})
</script>	
</head>
<body id="top-body">
    <div id="wrapper">

        <#include "/nav/navbar.ftl"/>

        <div class="row" id="page-wrapper">
            <div class="page-header">
                <ol class="breadcrumb" id="page-header-title" style="">
                    <li><i class="fa fa-dashboard fa-fw"></i> 首页</li>
                </ol>
            </div>
            <div id="page-primary"> 
                <iframe class="J_iframe" id="J_iframe" name="iframe0" width="100%" height="100%" src="${base}/ares/welcome.ftl" frameborder="0" seamless=""></iframe>
            </div>
        </div>

    </div>
</body>
</html>
