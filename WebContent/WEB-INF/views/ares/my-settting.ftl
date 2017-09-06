<#include "/layout.ftl">
<@body>

	<div class="panel panel-primary">
	  <div class="panel-heading">
	   	 密码修改
	  </div>
	  <div class="panel-body">
			
			<div class="container-fluid">
		        <div class="row">
		            <section>
		                    <form id="defaultForm" method="post" class="form-horizontal" action="target.php">
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">机构ID：</label>
		                            <div class="col-ar-8">
		                                <input type="text" class="form-control" name="org" value="000000001" />
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">用户名：</label>
		                            <div class="col-ar-8">
		                                <input type="text" class="form-control" name="uesrName" value="阿三" />
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">原密码：</label>
		                            <div class="col-ar-8">
		                                <input type="password" class="form-control" name="originalPassword" value="" />
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">新密码：</label>
		                            <div class="col-ar-8">
		                                <input type="password" class="form-control" name="newPassword" value="" />
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">重复新密码：</label>
		                            <div class="col-ar-8">
		                                <input type="password" class="form-control" name="confirmPassword" value="" />
		                            </div>
		                        </div>
		                        <div class="form-group">
			                        <div class="toolbar col-xs-offset-2">
										<button class="btn  btn-primary btn-sm""><i class="icon icon-search"></i> 保存</button>
										<button class="btn  btn-primary btn-sm""><i class="icon icon-search"></i> 返回</button>
									</div>
								</div>
		
		                    </form>
		            </section>
		        </div>
		    </div>

		</div>
	  </div>
	</div>

</@body>