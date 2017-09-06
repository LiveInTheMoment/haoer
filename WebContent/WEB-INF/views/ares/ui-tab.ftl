<#include "/layout.ftl"> 
<@body>

<div class="panel panel-default">
	<div class="panel-body">
		<ul id="myTab" class="nav nav-tabs">
			<li class="active"><a href="#home" data-toggle="tab"> 主申请信息 </a></li>
			<li><a href="/demo/bootstrap3-plugin-tab.htm#attach" data-toggle="tab">附卡申请信息</a></li>
			<li><a href="/demo/bootstrap3-plugin-tab.htm#other" data-toggle="tab">其他信息</a></li>
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="home">
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
			<div class="tab-pane fade" id="attach">
				<form class="">
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">领卡方式与主卡一致</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>是</option>
					 				<option>否</option>
					 			</select>
							  </div>
							  <div class="col-ar-4 row-input" style="text-align: right">领卡方式</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>邮件寄送</option>
					 				<option>分行领卡</option>
					 				<option>快递寄送</option>
					 			</select>
							  </div>
							  <div class="col-ar-4 row-input" style="text-align: right">领卡网点</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>北京</option>
					 				<option>上海</option>
					 			</select>
							  </div>
						</div>
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">卡片寄送地址标志</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>家庭地址</option>
					 				<option>公司地址</option>
					 			</select>
							  </div>
							  <div class="col-ar-4 row-input" style="text-align: right">与主卡持卡人关系</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>配偶</option>
					 				<option>父亲</option>
					 				<option>母亲</option>
					 				<option>兄弟</option>
					 				<option>姐妹</option>
					 			</select>
							  </div>
							  <div class="col-ar-4 row-input" style="text-align: right">卡号</div>
							  <div class="col-ar-8 form-inline" >
								   <div class="form-control" style="text-align: right">625165</div>-<input class="form-control" style="width:55%;"/>
							  </div>
						</div>
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">证件类型</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>身份证</option>
					 				<option>军官证</option>
					 				<option>士兵证</option>
					 				<option>护照</option>
					 			</select>
							  </div>
							  <div class="col-ar-4 row-input" style="text-align: right">证件号码</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">证件到期日</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
						</div>
						<div class="row">
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
							  <div class="col-ar-4 row-input" style="text-align: right">生日</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
						</div>
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">姓名</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">凸印姓名</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">国籍</div>
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
						
							  <div class="col-ar-4 row-input" style="text-align: right">是否永久居住</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>是</option>
					 				<option>否</option>
					 			</select>
							  </div>
						</div>
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">永久居住地国家代码</div>
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
						</div>
						<div class="row">
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
							  <div class="col-ar-4 row-input" style="text-align: right">年收入</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">移动电话</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
						</div>
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">电子邮箱</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
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
					 				<option>河南</option>
					 				<option>湖北</option>
					 				<option>广州</option>
					 			</select>
							  </div>
							  <div class="col-ar-4 row-input" style="text-align: right">家庭所在市</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>上海</option>
					 				<option>北京</option>
					 				<option>郑州</option>
					 			</select>
							  </div>
							  <div class="col-ar-4 row-input" style="text-align: right">家庭所在区/县</div>
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
							<div class="toolbar col-xs-offset-1">
								<button class="btn  btn-primary btn-sm""><i class="icon icon-search"></i> 保存</button>
							</div>
						</div>
					</form>	
			</div>
			<div class="tab-pane fade" id="other">
					<form class="">
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">风险情况</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>普通</option>
					 				<option>中风险</option>
					 				<option>高风险</option>
					 			</select>
							  </div>
							  <div class="col-ar-4 row-input" style="text-align: right">投保状态</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>已投</option>
					 				<option>未投</option>
					 			</select>
							  </div>
							  <div class="col-ar-4 row-input" style="text-align: right">投保时间</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
						</div>
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">投保总月份</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">社保月缴存金额</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">投保基数</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
						</div>
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">是否企业法人</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>是</option>
					 				<option>否</option>
					 			</select>
							  </div>
							  <div class="col-ar-4 row-input" style="text-align: right">公司注册日期</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">公司注册资金</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
						</div>
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">个人占股比例</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">房产类型</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>自有住房</option>
					 				<option>租房</option>
					 				<option>与亲属合住</option>
					 				<option>集体宿舍</option>
					 				<option>其他</option>
					 			</select>
							  </div>
							  <div class="col-ar-4 row-input" style="text-align: right">房产总价值</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
						</div>
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">房产平均年龄</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">房产贷款金额</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">个人所占产权比例</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
						</div>
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">自购车辆情况</div>
							  <div class="col-ar-8 row-input">
							  	<select class="form-control">
								    <option></option>
					 				<option>自购有贷款</option>
					 				<option>自购无贷款</option>
					 				<option>无自购车辆</option>
					 			</select>
							  </div>
							  <div class="col-ar-4 row-input" style="text-align: right">自购车辆购买时间</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control "  placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">车品牌</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
						</div>
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">自购车辆价值</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">驾驶证号码</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
							  <div class="col-ar-4 row-input" style="text-align: right">驾驶证登记日期</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
						</div>
						<div class="row">
							  <div class="col-ar-4 row-input" style="text-align: right">车牌号码</div>
							  <div class="col-ar-8 row-input"><input type="text" class="form-control " placeholder=""></div>
						</div>
						<div class="row">
							<div class="toolbar col-xs-offset-1">
								<button class="btn  btn-primary btn-sm""><i class="icon icon-search"></i> 保存</button>
							</div>
						</div>
					</form>	
			</div>
			<div class="tab-pane fade" id="ejb">
				<p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。</p>
			</div>
		</div>

	</div>
</div>


</@body>
