<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>ACL-权限管理系统</title>


<style type="text/css">

html,body{
	height:100%;
	overflow: hidden;
	margin:0;
}

.top-head{
	height:80px;
}

.top-side{
	float:left;
	width:230px;
}
.top-main{
	/*height:calc(100% - 80px);*/
	margin-left:230px;
}

</style>
<#assign base=request.contextPath />
<script src="${base}/assets/plugins/jquery/jquery-1.11.0.min.js"></script>
<!--[if lt IE 9]>
    <script src="${base}/assets/plugins/html5shiv/html5shiv.js"></script>
    <script src="${base}/assets/plugins/respond/respond.min.js"></script>
    <script src="${base}/assets/plugins/iframe-resizer/js/ie8.polyfils.min.js"></script>
<![endif]-->

<script type="text/javascript">
	
	$(function(){
		var height = $("#top-body").height();
	})

	var mainHeight = function(){
		var height = $("#top-body").height();
		var mHeight = height - 80;
		$("#top-main").height(mHeight);
		setTimeout(mainHeight, 200);
	}
	mainHeight();

/**
 * dai
 
var iframeHeight = function() {    
    $('#J_iframe').iFrameResize({
		log : false, 
		enablePublicMethods : true
    });
    setTimeout(iframeHeight, 200);
};
iframeHeight();
*/
</script>
</head>
<body id="top-body" >
	<div class="top-head">
		<button name="" onclick="mainHeight()">change</button>
	</div>
	<div class="top-side">
	
	</div>
	<div class="top-main" id="top-main">
		<iframe class="J_iframe" name="iframe32" width="100%" height="100%" src="mainc.ftl" frameborder="0" data-id="contacts.html" seamless=""></iframe>
	</div>

    
</body>
</html>
