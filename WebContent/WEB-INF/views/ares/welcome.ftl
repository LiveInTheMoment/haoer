<#include "/layout.ftl"/>
<@body>

<div class="panel panel-primary" id="panel">
	
  <div class="panel-heading" >
  	Ares 阿瑞斯
  </div>
  <div class="panel-body">
    <p>阿瑞斯（希腊语：Ἀρης），战神，古希腊神话中为战争而生的神，奥林匹斯十二神之一，被视为尚武精神的化身，象征着战争中的勇气与胜利。</p>
  </div>
</div>

<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">技术选型</h3>
  </div>
  <div class="panel-body">
    <ul>
    	<li>
    		js框架
    		<ul>
    			<li>jQuery - 大名鼎鼎的js框架 </li>
    		</ul>
    	</li>
    	<li>css框架
    		<ul>
    			<li>bootstrap - ares使用官方原生的bootstrap,没有使用基于bootstrap二次封装的其他框架 <a href="http://v3.bootcss.com/" target="_blank"><i class="fa fa-external-link"></i></a></li>
    		</ul>
    	</li>
    	<li>插件
			<ul>
				<li>metisMenu - 菜单样式插件</li>
				<li>font-awesome - CSS3字体图标</li>
				<li>iframe-resizer - iframe插件</li>
				<li>bootstrap-table - 表格插件  <a href="http://bootstrap-table.wenzhixin.net.cn/examples/" target="_blank"><i class="fa fa-external-link"></i></a></li>
				<li>bootstrapValidator - 表单验证插件 <a href="http://bv.doc.javake.cn/api/" target="_blank"><i class="fa fa-external-link"></i></a></li>
				<li>layer.js - 弹窗插件 <a href=" http://layer.layui.com/" target="_blank"><i class="fa fa-external-link"></i></a></li> 
				<li>my97datepicker.js - 日期时间插件  <a href="http://www.my97.net/dp/demo/index.htm" target="_blank"><i class="fa fa-external-link"></i></a></li>
			</ul>
    	</li>
    </ul>
    
    <p class="text-muted">以上列出的框架与插件，在当前环境下，可满足绝大部分场景的开发</p>
  </div>
</div>

<div class="panel panel-info">
  <div class="panel-heading">插件引入原则</div>
  <div class="panel-body">
    
   <p>引入插件时遵循以下原则:</p>
   <ul>
   		<li>稳定优先 - 不过度引入js插件，不引入重型、极少使用的插件。 </li>
   		<li>效率优先 - 不引入icheck等单纯美化界面的插件（原生bootstrap在表现上已非常美观精致）。而且icheck等插件会变更html内容，出现非预期的dom。</li>
   		<li>dom可预期 - 后期freemarker开发的组件，以生成原生、语义化的html为主。可预期的dom在开发和维护时有天然的便利。</li>
   		<li>技术一致性 - 优先使用jQuery和bootstrap生态圈的插件，降低学习门槛。 </li>
   </ul>
    
  </div>
</div>

<div class="panel panel-warning">
  <div class="panel-heading">
    <h3 class="panel-title">门槛</h3>
  </div>
  <div class="panel-body">
    
    <p class="text-muted">理论上讲，熟练掌握js、html、css的开发人员，使用ares可以开发出功能强大、表现惊艳的web系统，因为ares是基于bootstrap的。</p>
    <br />
    <p>最低要求</p>
    <ul>
	    <li>前端知识
		    <ul>
		    	<li>基本html知识</li>
		    	<li>基本js知识</li>
		    	<li>jQuery：dom操作、Ajax、事件</li>
		    	<li>bootstrap的Grid栅格原理</li>
		    </ul>
	    </li>
	   	<li>java技术
	   		<ul>
	   			<li>freemarker模版引擎</li>
	   			<li>spring mvc</li>
	   		</ul>
	   	</li>
     </ul>
	
	<p class="text-warning">开发门槛非常低，都是非常流行的技术，学习曲线也很平滑的</p>     
  </div>
</div>

<div class="panel panel-danger">
  <div class="panel-heading">
    <h3 class="panel-title">浏览器兼容</h3>
  </div>
  <div class="panel-body">
	<p></p>
	<ul>
	    <li>ares使用html5开发</li>
	    <li>在现代浏览器（ie>=9,chrome,firefox）上有很好的表现</li>
	    <li>对ie8有限支持，功能可使用正常，但展现效果有偏差</li>
	    <li>ie8以下版本的浏览器不支持</li>
	</ul>
  </div>
</div>
</@body>