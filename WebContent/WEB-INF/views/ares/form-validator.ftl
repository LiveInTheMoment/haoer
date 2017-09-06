<#include "/layout.ftl">
<@body>
	
	<div class="panel panel-info">
	  <div class="panel-heading">
	   	 新增
	  </div>
	  <div class="panel-body">
			
			<div class="container-fluid">
		        <div class="row">
		            <!-- form: -->
		            <section>
		                <div class="col-lg-8">
		
		                    <form id="defaultForm" method="post" class="form-horizontal" action="target.php">
		                        <div class="form-group">
		                            <label class="col-lg-3 control-label">用户名</label>
		                            <div class="col-lg-4">
		                                <input type="text" class="form-control" name="firstName" placeholder="必填" />
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-lg-3 control-label">邮件地址</label>
		                            <div class="col-lg-5">
		                                <input type="text" class="form-control" name="email" />
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-lg-3 control-label">密码</label>
		                            <div class="col-lg-5">
		                                <input type="password" class="form-control" name="password" />
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-lg-3 control-label">重新输入密码</label>
		                            <div class="col-lg-5">
		                                <input type="password" class="form-control" name="confirmPassword" />
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-lg-3 control-label">性别</label>
		                            <div class="col-lg-5">
		                                <div class="radio">
		                                    <label>
		                                        <input type="radio" name="gender" value="男" /> 男
		                                    </label>
		                                    <label>
		                                        <input type="radio" name="gender" value="女" /> 女
		                                    </label>
		                                    <label>
		                                        <input type="radio" name="gender" value="other" /> 其他
		                                    </label>
		                                </div>
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-lg-3 control-label">生日</label>
		                            <div class="col-lg-5">
		                                <input type="text" class="form-control" name="birthday" value="" onclick="laydate()"/> 
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-lg-3 control-label">语言</label>
		                            <div class="col-lg-5">
		                                <div class="checkbox">
		                                    <label>
		                                        <input type="checkbox" name="languages[]" value="英语" /> 英语
		                                    </label>
		                                    <label>
		                                        <input type="checkbox" name="languages[]" value="法语" /> 法语
		                                    </label>
		                                    <label>
		                                        <input type="checkbox" name="languages[]" value="德语" /> 德语
		                                    </label>
		                                    <label>
		                                        <input type="checkbox" name="languages[]" value="汉语" /> 汉语
		                                    </label>
		                                    <label>
		                                        <input type="checkbox" name="languages[]" value="other" /> 其他
		                                    </label>
		                                </div>
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-lg-3 control-label">编程语言</label>
		                            <div class="col-lg-5">
		                                <div class="checkbox">
		                                    <label>
		                                        <input type="checkbox" name="programs[]" value="net" /> .Net
		                                    </label>
		                                    <label>
		                                        <input type="checkbox" name="programs[]" value="java" /> Java
		                                    </label>
		                                    <label>
		                                        <input type="checkbox" name="programs[]" value="c" /> C/C++
		                                    </label>
		                                    <label>
		                                        <input type="checkbox" name="programs[]" value="php" /> PHP
		                                    </label>
		                                    <label>
		                                        <input type="checkbox" name="programs[]" value="perl" /> Perl
		                                    </label>
		                                    <label>
		                                        <input type="checkbox" name="programs[]" value="ruby" /> Ruby
		                                    </label>
		                                    <label>
		                                        <input type="checkbox" name="programs[]" value="python" /> Python
		                                    </label>
		                                    <label>
		                                        <input type="checkbox" name="programs[]" value="javascript" /> Javascript
		                                    </label>
		                                </div>
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <label class="col-lg-3 control-label" id="captchaOperation"></label>
		                            <div class="col-lg-2">
		                                <input type="text" class="form-control" name="captcha" />
		                            </div>
		                        </div>
		
		                        <div class="form-group">
		                            <div class="col-lg-9 col-xs-offset-3">
		                                <button type="submit" class="btn btn-primary" name="signup" value="Sign up">提交</button>
		                                <button type="button" class="btn btn-info" id="validateBtn">手动验证</button>
		                                <button type="button" class="btn btn-info" id="resetBtn">重置</button>
		                            </div>
		                        </div>
		                    </form>
		                </div>
		            </section>
		            <!-- :form -->
		        </div>
		    </div>
		
		<script type="text/javascript">
		$(document).ready(function() {
		    // Generate a simple captcha
		    function randomNumber(min, max) {
		        return Math.floor(Math.random() * (max - min + 1) + min);
		    };
		    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));
		
		    $('#defaultForm').bootstrapValidator({
		//        live: 'disabled',
		        message: 'This value is not valid',
		        feedbackIcons: {
		            valid: 'glyphicon glyphicon-ok',
		            invalid: 'glyphicon glyphicon-remove',
		            validating: 'glyphicon glyphicon-refresh'
		        },
		        fields: {
		            firstName: {
		                group: '.col-lg-4',
		                validators: {
		                    notEmpty: {
		                        message: '用户名不能为空'
		                    }
		                }
		            },
		            
		            username: {
		                message: 'The username is not valid',
		                validators: {
		                    notEmpty: {
		                        message: 'The username is required and cannot be empty'
		                    },
		                    stringLength: {
		                        min: 6,
		                        max: 30,
		                        message: 'The username must be more than 6 and less than 30 characters long'
		                    },
		                    regexp: {
		                        regexp: /^[a-zA-Z0-9_\.]+$/,
		                        message: 'The username can only consist of alphabetical, number, dot and underscore'
		                    },
		                    remote: {
		                        type: 'POST',
		                        url: 'remote.php',
		                        message: 'The username is not available'
		                    },
		                    different: {
		                        field: 'password,confirmPassword',
		                        message: 'The username and password cannot be the same as each other'
		                    }
		                }
		            },
		            email: {
		                validators: {
		                    emailAddress: {
		                        message: '请输入正确的邮箱格式！'
		                    }
		                }
		            },
		            password: {
		                validators: {
		                    notEmpty: {
		                        message: '密码不能为空！'
		                    },
		                    identical: {
		                        field: 'confirmPassword',
		                        message: '密码错误！'
		                    },
		                    different: {
		                        field: 'username',
		                        message: '密码不能与用户名相同！'
		                    }
		                }
		            },
		            confirmPassword: {
		                validators: {
		                    notEmpty: {
		                        message: '确认密码不能为空！'
		                    },
		                    identical: {
		                        field: 'password',
		                        message: '确认密码与原始密码不同！'
		                    },
		                    different: {
		                        field: 'username',
		                        message: '密码不能与用户名相同！'
		                    }
		                }
		            },
		            birthday: {
		                validators: {
		                    date: {
		                        format: 'YYYY-MM-DD',
		                        message: '生日无效！'
		                    }
		                }
		            },
		            gender: {
		                validators: {
		                    notEmpty: {
		                        message: '请选择性别！'
		                    }
		                }
		            },
		            'languages[]': {
		                validators: {
		                    notEmpty: {
		                        message: '请选择至少一种你会说的语言！'
		                    }
		                }
		            },
		            'programs[]': {
		                validators: {
		                    choice: {
		                        min: 2,
		                        max: 4,
		                        message: '请选择你擅长的4 - 2种编程语言！'
		                    }
		                }
		            },
		            captcha: {
		                validators: {
		                    callback: {
		                        message: '答案错误！',
		                        callback: function(value, validator) {
		                            var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
		                            return value == sum;
		                        }
		                    }
		                }
		            }
		        }
		    });
		
		    // Validate the form manually
		    $('#validateBtn').click(function() {
		        $('#defaultForm').bootstrapValidator('validate');
		    });
		
		    $('#resetBtn').click(function() {
		        $('#defaultForm').data('bootstrapValidator').resetForm(true);
		    });
		});
		</script>















		</div>
	  </div>
	</div>
	
					
</@body>