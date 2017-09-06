<#include "/layout.ftl">
<@body>
	<div class="panel panel-primary">
	  <div class="panel-heading">
	   	 业务字典
	  </div>
	  <div class="panel-body">			
		<div class="container-fluid" id="query">
			<div class="row">
				  <div class="col-xs-1 row-input" style="text-align: right">类型</div>
				  <div class="col-xs-2 row-input"><input type="text" class="form-control " placeholder="类型"></div>
				  <div class="col-xs-1 row-input" style="text-align: right">代码</div>
				  <div class="col-xs-2 row-input"><input type="text" class="form-control " placeholder="代码"></div>
				  <div class="col-xs-1 row-input" style="text-align: right">名称</div>
				  <div class="col-xs-2 row-input"><input type="text" class="form-control " placeholder="名称"></div>
			</div>
		</div>
		
		
		<div class="toolbar-s">
			<button class="btn  btn-primary btn-sm""><i class="fa fa-search"></i> 查询</button>
		    <button class="btn  btn-primary btn-sm"><i class="fa fa-plus"></i> 新增</button>
		    <button class="btn  btn-danger btn-sm"><i class="fa fa-times"></i> 批量删除</button>
		</div>
		
		
	
		<!-- HTML 代码 -->
			<table data-toggle="table" 
			 data-pagination="true" data-page-number="1"
			 data-search="true"
			 data-side-pagination="server"
			 > 
			  <thead>
			    <tr>
			      <th data-checkbox="true" data-field="type1"></th>
			      <th>类型</th>
			      <th>类型名称</th> 
			      <th>代码</th>
			      <th>名称</th>
			      <th>值</th>
			      <th>备注</th>
			      <th>操作</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>I</td><td>身份证</td><td>1</td><td>身份证明</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>O</td><td>房产证</td><td>1</td><td>发给</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>B</td><td>车产证</td><td>1</td><td>单位</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>J</td><td>工作证明</td><td>1</td><td>啊啊</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>G</td><td>军官证</td><td>1</td><td>军官</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>Degree</td><td>学位</td><td>M</td><td>硕士</td><td>1</td><td>硕士</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>Degree</td><td>学位</td><td>N</td><td>博士</td><td>1</td><td>博士士</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     <tr>
			    <td></td><td>Degree</td><td>学位</td><td>O</td><td>研究生</td><td>1</td><td>研究生</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     <tr>
			    <td></td><td>Degree</td><td>学位</td><td>B</td><td>本科</td><td>1</td><td>本科</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     <tr>
			    <td></td><td>Degree</td><td>学位</td><td>D</td><td>大专</td><td>1</td><td>大专</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>AppType</td><td>申请类型</td><td>A</td><td>主附同申</td><td>1</td><td>主附同申</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>AppType</td><td>独立主卡</td><td>B</td><td>主附同申</td><td>1</td><td>独立主卡</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>AppType</td><td>独立副卡</td><td>S</td><td>主附同申</td><td>1</td><td>独立副卡</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>I</td><td>身份证</td><td>1</td><td>身份证明</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>O</td><td>房产证</td><td>1</td><td>发给</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>B</td><td>车产证</td><td>1</td><td>单位</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>J</td><td>工作证明</td><td>1</td><td>啊啊</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>G</td><td>军官证</td><td>1</td><td>军官</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>Degree</td><td>学位</td><td>M</td><td>硕士</td><td>1</td><td>硕士</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>Degree</td><td>学位</td><td>N</td><td>博士</td><td>1</td><td>博士士</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     <tr>
			    <td></td><td>Degree</td><td>学位</td><td>O</td><td>研究生</td><td>1</td><td>研究生</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     <tr>
			    <td></td><td>Degree</td><td>学位</td><td>B</td><td>本科</td><td>1</td><td>本科</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     <tr>
			    <td></td><td>Degree</td><td>学位</td><td>D</td><td>大专</td><td>1</td><td>大专</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>AppType</td><td>申请类型</td><td>A</td><td>主附同申</td><td>1</td><td>主附同申</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>AppType</td><td>独立主卡</td><td>B</td><td>主附同申</td><td>1</td><td>独立主卡</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>AppType</td><td>独立副卡</td><td>S</td><td>主附同申</td><td>1</td><td>独立副卡</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>I</td><td>身份证</td><td>1</td><td>身份证明</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>O</td><td>房产证</td><td>1</td><td>发给</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>B</td><td>车产证</td><td>1</td><td>单位</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>J</td><td>工作证明</td><td>1</td><td>啊啊</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>G</td><td>军官证</td><td>1</td><td>军官</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>Degree</td><td>学位</td><td>M</td><td>硕士</td><td>1</td><td>硕士</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>Degree</td><td>学位</td><td>N</td><td>博士</td><td>1</td><td>博士士</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     <tr>
			    <td></td><td>Degree</td><td>学位</td><td>O</td><td>研究生</td><td>1</td><td>研究生</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     <tr>
			    <td></td><td>Degree</td><td>学位</td><td>B</td><td>本科</td><td>1</td><td>本科</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     <tr>
			    <td></td><td>Degree</td><td>学位</td><td>D</td><td>大专</td><td>1</td><td>大专</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>AppType</td><td>申请类型</td><td>A</td><td>主附同申</td><td>1</td><td>主附同申</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>AppType</td><td>独立主卡</td><td>B</td><td>主附同申</td><td>1</td><td>独立主卡</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>AppType</td><td>独立副卡</td><td>S</td><td>主附同申</td><td>1</td><td>独立副卡</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>I</td><td>身份证</td><td>1</td><td>身份证明</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>O</td><td>房产证</td><td>1</td><td>发给</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>B</td><td>车产证</td><td>1</td><td>单位</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>J</td><td>工作证明</td><td>1</td><td>啊啊</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>IdType</td><td>证件类型</td><td>G</td><td>军官证</td><td>1</td><td>军官</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>Degree</td><td>学位</td><td>M</td><td>硕士</td><td>1</td><td>硕士</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>Degree</td><td>学位</td><td>N</td><td>博士</td><td>1</td><td>博士士</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     <tr>
			    <td></td><td>Degree</td><td>学位</td><td>O</td><td>研究生</td><td>1</td><td>研究生</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     <tr>
			    <td></td><td>Degree</td><td>学位</td><td>B</td><td>本科</td><td>1</td><td>本科</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     <tr>
			    <td></td><td>Degree</td><td>学位</td><td>D</td><td>大专</td><td>1</td><td>大专</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>AppType</td><td>申请类型</td><td>A</td><td>主附同申</td><td>1</td><td>主附同申</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>AppType</td><td>独立主卡</td><td>B</td><td>主附同申</td><td>1</td><td>独立主卡</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			    <tr>
			    <td></td><td>AppType</td><td>独立副卡</td><td>S</td><td>主附同申</td><td>1</td><td>独立副卡</td>
			    <td> <a class="btn btn-danger btn-xs" type="button"><i class="fa fa-times" ></i> 删除</a>  </td>
			    </tr>
			     </tbody>
			</table>
		</div>
	</div>			
	
</@body>