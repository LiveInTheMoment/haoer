<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function addUser(){
		var form = document.forms[0];
		form.action="/haoer/bank/addBank";
		form.method="post";
		form.submit();
	}
</script>
</head>
<body>
	<h>添加银行信息</h>
	<br>
	<form name="userForm" action="">
		银行信息：<input type="text" name="bank">
		<br>
		账单日：<input type="text" name="billDay">
		<br>
		总额度：<input type="text" name="totalAmount">
		<br>
		
		<input type="button" value="添加" onclick="addUser()">
		
		
	
	</form>
	
	
	
</body>
</html>