<#include "/layout.ftl">
<@body>

	<div class="panel panel-primary">
	  <div class="panel-heading">
	   	 员工基本信息资料
	  </div>
	  <div class="panel-body">
			
			<div class="container-fluid">
		        <div class="row">
		            <!-- form: -->
		            <section>
		
		                    <form id="defaultForm" method="post" class="form-horizontal" action="target.php">
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">姓名：</label>
		                            <div class="col-ar-6">
		                                <input type="text" class="form-control" name="userName" placeholder="必填" value="阿三"/>
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">员工号：</label>
		                            <div class="col-ar-8">
		                                <input type="text" class="form-control" name="userNumber" value="123456789"/>
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">所属部门：</label>
		                            <div class="col-ar-8">
		                                <input type="text" class="form-control" name="department" value="外围系统部" />
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">上级领导：</label>
		                            <div class="col-ar-8">
		                                <input type="text" class="form-control" name="leadership" value="Boss"/>
		                            </div>
		                        </div>
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">密码：</label>
		                            <div class="col-ar-8">
		                                <input type="password" class="form-control" name="password" value="11111111" />
		                            </div>
		                        </div>
		                        
		                        
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">角色权限：</label>
		                            <div class="col-ar-8">
		                                <select class="form-control" name="role">
							 				<option>管理员</option>
							 				<option>开发人员</option>
							 				<option>测试人员</option>
							 			</select>
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">性别：</label>
		                            <div class="col-ar-8">
		                                <div class="radio">
		                                    <label>
		                                        <input type="radio" name="gender" value="男" />男
		                                    </label>
		                                    <label>
		                                        <input type="radio" name="gender" value="女" /> 女
		                                    </label>
		                                </div>
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-ar-6 control-label">生日：</label>
		                            <div class="col-ar-8">
		                                <input type="text" class="form-control" name="birthday" value="1993-09-20"/>
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