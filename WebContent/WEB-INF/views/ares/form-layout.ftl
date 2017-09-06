<#include "/layout.ftl">
<@body>
	
	<div class="panel panel-success">
	  <div class="panel-heading">
	   	 表单布局
	  </div>
	  <div class="panel-body">
	    <div class="container-fluid" id="query">
			<form class="">
				<div class="row">
					  <div class="col-ar-4 row-input" style="text-align: right">证件类型</div>
					  <div class="col-ar-8 row-input">
					  	<select class="form-control">
						    <option></option>
			 				<option>I-身份证</option>
			 				<option>A-军官证</option>
			 				<option>B-房产证</option>
			 			</select>
		 			  </div>
					  <div class="col-ar-4 row-input" style="text-align: right">证件号码</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
					  <div class="col-ar-4 row-input" style="text-align: right">自选卡号</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
				</div>
				<div class="row">
					  <div class="col-ar-4 row-input" style="text-align: right">证件到期日</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
					  <div class="col-ar-4 row-input" style="text-align: right">发证机关所在地</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
					  <div class="col-ar-4 row-input" style="text-align: right">性别</div>
					  <div class="col-ar-8 row-input">
					  	<select class="form-control">
						    <option></option>
			 				<option>男</option>
			 				<option>女</option>
			 			</select>
					  </div>
				</div>
				<div class="row">
					  <div class="col-ar-4 row-input" style="text-align: right">生日</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder="" onclick="laydate()">  </div>
					  <div class="col-ar-4 row-input" style="text-align: right">姓名</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
				
					  <div class="col-ar-4 row-input" style="text-align: right">凸印姓名</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
				</div>
				<div class="row">
					  <div class="col-ar-4 row-input" style="text-align: right">国籍</div>
					  <div class="col-ar-8 row-input">
					  	<select class="form-control">
						    <option></option>
			 				<option>中国</option>
			 				<option>台湾</option>
			 				<option>加拿大</option>
			 				<option>美国</option>
			 				<option>英国</option>
			 			</select>
					  </div>
					  <div class="col-ar-4 row-input" style="text-align: right">是否永久居住</div>
					  <div class="col-ar-8 row-input">
					  	<select class="form-control">
						    <option></option>
			 				<option>是</option>
			 				<option>否</option>
			 			</select>
					  </div>
					  <div class="col-ar-4 row-input" style="text-align: right">永久居住地国家代码</div>
					  <div class="col-ar-8 row-input">
					  	<select class="form-control">
						    <option></option>
			 				<option>中国</option>
			 				<option>台湾</option>
			 				<option>加拿大</option>
			 				<option>美国</option>
			 				<option>英国</option>
			 			</select>
					  </div>
				</div>
				<div class="row">
					  <div class="col-ar-4 row-input" style="text-align: right">婚姻状况</div>
					  <div class="col-ar-8 row-input">
					  	<select class="form-control">
						    <option></option>
			 				<option>已婚</option>
			 				<option>未婚</option>
			 				<option>丧偶</option>
			 			</select>
					  </div>
					  <div class="col-ar-4 row-input" style="text-align: right">教育状况</div>
					  <div class="col-ar-8 row-input">
					  	<select class="form-control">
						    <option></option>
			 				<option>博士及以上</option>
			 				<option>硕士</option>
			 				<option>本科</option>
			 				<option>大专</option>
			 				<option>中专及技校</option>
			 			</select>
					  </div>
					  <div class="col-ar-4 row-input" style="text-align: right">学位</div>
					  <div class="col-ar-8 row-input">
					  	<select class="form-control">
						    <option></option>
			 				<option>其他</option>
			 				<option>名誉博士</option>
			 				<option>博士</option>
			 				<option>硕士</option>
			 				<option>学士</option>
			 			</select>
					  </div>
				</div>
				<div class="row">
					  <div class="col-ar-4 row-input" style="text-align: right">年收入</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
					  <div class="col-ar-4 row-input" style="text-align: right">移动电话</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
					  <div class="col-ar-4 row-input" style="text-align: right">电子邮箱</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
				</div>
				<div class="row">
					  <div class="col-ar-4 row-input" style="text-align: right">家庭人口</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
					  <div class="col-ar-4 row-input" style="text-align: right">家庭人均年收入</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
					  <div class="col-ar-4 row-input" style="text-align: right">家庭国家代码</div>
					  <div class="col-ar-8 row-input">
					  	<select class="form-control">
						    <option></option>
			 				<option>中国</option>
			 				<option>台湾</option>
			 				<option>加拿大</option>
			 				<option>美国</option>
			 				<option>英国</option>
			 			</select>
					  </div>
				</div>
				<div class="row">
					  <div class="col-ar-4 row-input" style="text-align: right">家庭所在省</div>
					  <div class="col-ar-8 row-input">
					  	<select class="form-control">
						    <option></option>
			 				<option>北京</option>
			 				<option>上海</option>
			 				<option>广州</option>
			 				<option>河南</option>
			 				<option>湖北</option>
			 			</select>
					  </div>
					  <div class="col-ar-4 row-input" style="text-align: right">家庭所在市</div>
					  <div class="col-ar-8 row-input"><select class="form-control"></select></div>
					  <div class="col-ar-4 row-input" style="text-align: right">家庭所在区/县</div>
					  <div class="col-ar-8 row-input"><select class="form-control"></select></div>
				</div>
				<div class="row">
					  <div class="col-ar-4 row-input" style="text-align: right">家庭地址</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
					  <div class="col-ar-4 row-input" style="text-align: right">家庭住宅邮编</div>
					  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
					  <div class="col-ar-4 row-input" style="text-align: right">家庭电话</div>
					  <div class="col-ar-8 form-inline" >
						  <input class="form-control" style="width:35%;"/>-<input class="form-control" style="width:55%;"/>
					 </div>
				</div>
				<div class="row">
					 <div class="col-ar-4 row-input" style="text-align: right">备注</div>
					 <div class="col-xs-5 row-input"><input type="text" class="form-control "  placeholder=""></div>
				</div>
				<div class="row">
					 <div class="col-ar-4 row-input" style="text-align: right">备忘</div>
					 <div class="col-xs-5 row-input"><input type="text" class="form-control " placeholder=""></div>
				</div>
				<div class="row">
					<div class="toolbar col-xs-offset-1">
						<button class="btn  btn-primary btn-sm""><i class="icon icon-search"></i> 保存</button>
					</div>
				</div>
			</form>
	  </div>
	</div>
	
					
</@body>