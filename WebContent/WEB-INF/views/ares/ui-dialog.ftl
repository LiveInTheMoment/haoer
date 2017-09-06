<#include "/layout.ftl"/>
<@body>

<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">成功</h3>
  </div>
  <div class="panel-body">
  	<p>弹出使用layer,这是一个比bootstrap自带的弹窗强大、灵活很多的一个弹窗插件。这页只是最简单的例子，后续会将弹窗封装为组件，方便开发</p>
  </div>
</div>

<div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">主要样式</h3>
  </div>
  <div class="panel-body">
    
    <button class="btn btn-primary" id="dialog">模态弹窗</button>
    
  </div>
</div>

<script type="text/javascript">
	
	$("#dialog").on('click',function(){
		//页面层
		top.layer.open({
		  type: 2,
		  area: ['1200px', '600px'], //宽高
		  content: '${base}/ares/welcome.ftl'
		});
	});
	

</script>

</@body>
