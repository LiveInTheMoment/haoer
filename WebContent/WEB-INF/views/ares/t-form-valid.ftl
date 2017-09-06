<#include "/layout.ftl"/>
<@body>
		<div class="panel panel-primary" id="panel">
					
				<div class="panel-heading" >
			  		BootstrapValidator表单验证
			  	</div>
			  	<div class="panel-body">
			  	
			  		<p>BootstrapValidator是一款最好的jquery表单字段验证插件，它是基于boostrap设计的。</p>
			  		<p>如果前端框架使用bootstrap，则BootstrapValidator是最好的选择，它可以与bootstrap完美的结合。</p>
			  		bootstrapValidator - 表单验证插件 <a href="http://bv.doc.javake.cn/validators/" target="_blank"><i class="fa fa-external-link"></i></a>
			  	</div>
		</div>
		<div class="panel panel-success" id="panel">
					
				<div class="panel-heading" >
			  		验证使用方法
			  	</div>
			  	<div class="panel-body">
			  		<p>BootstrapValidator的验证可以直接写在标签中，也可以通过js来实现。</p>
			  		<p>BootstrapValidator的官方文档中也提供了对这些验证器的使用方法，如下：</p>
			  		<p></p>
			  		<p>验证使用的方法：</p>
			  		<ul>
				    	<li>判断是否打开了校验开关。当为true时则进行非空的检验，false则不进行校验；例如 ：notempty="true"</li>
				    	<li>校验结果返回信息提示。校验结果返回信息需要通过notempty-message="msg"来返回，该插件中提供了原有的信息提示，
			  				我们可以通过设置notempty-message="msg"来自定义提示信息。例如：notempty-message="该输入框不能为空！"</li>
				    </ul>
			  	</div>
		</div>

		<div class="panel panel-info" id="panel">
				
			<div class="panel-heading" >
		  		常用的判断性表单验证
		  	</div>
		  	<div class="panel-body">
		  		<p>非空验证：notEmpty</p>
				    <ul>
				    	<li>验证开关：notempty="true" </li>
				    	<li>验证消息：notempty-message="msg"</li>
				    </ul>
				    
		  		<p>数字验证：digits</p>
		  			 <ul>
				    	<li>验证开关：digits="true" </li>
				    	<li>验证消息：digits-message="msg"</li>
				    </ul>
		  			
		  		<p>邮箱验证：emailaddress</p>
		  			 <ul>
				    	<li>验证开关：emailaddress="true" </li>
				    	<li>验证消息：emailaddress-message="msg"</li>
				    </ul>
		  		
		  		<p>整数验证：integer</p>
		  			 <ul>
				    	<li>验证开关：integer="true" </li>
				    	<li>验证消息：integer-message="msg"</li>
				    </ul>
		  		
		  		
		  	</div>
		</div>
		<div class="panel panel-info" id="panel">
					
				<div class="panel-heading" >
			  		常用的条件控制表单验证
			  	</div>
			  	<div class="panel-body">
			  		<p>数值限定范围比较验证：between（检查输入值是否在（严格与否）两个给定的数字之间）</p>
					    <ul>
					    	<li>验证开关：between="true" </li>
					    	<li>验证消息：between-message="msg"</li>
					    	<li>数值范围内最低值：between-min="-10" </li>
					    	<li>数值范围内最高值：between-max="10"</li>
					    </ul>
					    
			  		<p>两个字段值是否相同验证：different（如果输入值与给定字段的值不同，则返回真值）</p>
			  			 <ul>
					    	<li>验证开关：different="true" </li>
					    	<li>验证消息：different-message="msg"</li>
					    	<li>与之进行比较的值：different-field="给定字段的id" </li>
					    </ul>
			  			
			  		<p>大于等于验证：greatThan（如果值大于或等于给定数，则返回真值）</p>
			  			 <ul>
					    	<li>验证开关：greaterthan="true" </li>
					    	<li>验证消息：greaterthan-message="msg"</li>
					    	<li>与之比较的定数：greaterthan-value="10"</li>
					    	<li>其他：greaterthan-inclusive="true"，则值大于或等于给定数；为false，则值大于给定数</li>
					    </ul>
			  		
			  		<p>小于等于验证：lessthan（如果值小于或等于给定的数字，则返回真值）</p>
			  			 <ul>
					    	<li>验证开关：lessthan="true" </li>
					    	<li>验证消息：lessthan-message="msg"</li>
					    	<li>与之比较的定数：lessthan-value="10"</li>
					    	<li>其他：lessthan-inclusive="true"，则值小于于或等于给定数；为false，则值小于给定数</li>
					    </ul>
					<p>两个字段值是否完全相同验证：identical（检查值是否与某个特定字段相同，如果完全相同，则返回真值）</p>
			  			 <ul>
					    	<li>验证开关：identical="true" </li>
					    	<li>验证消息：identical-message="msg"</li>
					    	<li>与之进行比较的特定字段：identical-field="特定字段的id" </li>
					    </ul>
					<p>数字验证：numeric（检查值是否为数字）</p>
			  			 <ul>
					    	<li>验证开关：numeric="true" </li>
					    	<li>验证消息：numeric-message="msg"</li>
					    	<li>分离器设置：data-bv-numeric-separator=","（分离器默认. 或者自定义为 ,）</li>
					    </ul>
					<p>字符串大小写验证：stringcase（检查一个字符串是否是一个小写的或大写的情况）</p>
			  			 <ul>
					    	<li>验证开关：stringcase="true" </li>
					    	<li>验证消息：stringcase-message="msg"</li>
					    	<li>大小写验证：data-bv-stringcase-case="lower"，lower为小写；upper为大写。</li>
					    </ul>
					<p>字符串长度验证：stringlength（验证字符串的长度）</p>
			  			 <ul>
					    	<li>验证开关：stringlength="true" </li>
					    	<li>验证消息：stringlength-message="msg"</li>
					    	<li>字符串最小长度：data-bv-stringlength-min="2"</li>
					    	<li>字符串最大长度：data-bv-stringlength-max ="5" or maxlength</li>
					    </ul>
			  		
			  		
			  	</div>
			</div>
</@body>