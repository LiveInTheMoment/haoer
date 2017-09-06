<#include "/layout.ftl">
<@body>

	<div class="panel panel-primary">
		<div class="panel-heading">
			栅格系统
		</div>
		<div class="panel-body">
			<p>
				栅格系统是流行的页面布局系统。
				栅格系统通过一系列的行（row）与列（column）的组合来创建页面布局。<a href="http://v3.bootcss.com/css/#grid" target="_blank"><i class="fa fa-external-link"></i></a>
			</p>
		</div>
	</div>
	
	<div class="panel panel-success">
		<div class="panel-heading">
			ares 扩展的栅格系统
		</div>
		<div class="panel-body">
			<p class="text-primary">
				ares重新编译了bootstrap的栅格系统。</p>
			<p>新增了36列的栅格，并对边距进行了缩减(槽宽10px)。
			<p>
				<b>使用</b>  
				<ul>
					<li> dom元素上去除bootstrap原来的 col-xs 、 col-sm 、 col-md 和 col-lg 栅格类 </li>
					<li> 添加  class="col-ar-*" （*是1~36的数字）</li>
				</ul>
			</p>
		</div>
	</div>
	
	<div class="panel panel-info">
		<div class="panel-heading">
			为什么添加36列是栅格
		</div>
		<div class="panel-body">
			<p>
				bootstrap 原栅格系统最大列数12，槽宽（列边距）30px，在做web页面时，看起来很大气。
			</p>
			<p>
				我们公司做的系统以管理系统为主，12列的栅格在表单上有很多字段时，不好布局、难以控制。
				尤其在每行3个表单字段的时候，无法均分（1个单位 label,2个单位 input）。
			</p>
			
			<p>	
				使用36列的栅格，布局可精确控制。在减少槽宽后，表单与lable显的更精细，更符合管理系统的风格。
				唯一不好的是36列栅格，增加了计算难度。但36以内的加减法...
			</p>
		
		</div>
	</div>
</@body>