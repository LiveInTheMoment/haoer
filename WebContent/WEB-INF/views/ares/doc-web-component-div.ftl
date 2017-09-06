<#include "/layout.ftl"/>
<@body>

<div class="panel panel-primary">
	  <div class="panel-heading">
	   	 业务字典
	  </div>
	  <div class="panel-body">		

<@form id="rrr">

<fieldset class="ar-fieldset">
<legend class="text-muted">主卡联系人信息</legend>

<@row>
	<@field label="姓名">
		<@input />
	</@field>
	<@field label="姓名">
		<@input />
	</@field>
	<@field label="姓名">
		<@input />
	</@field>
</@row>

<@row>
	<@field label="姓名">
		<@input />
	</@field>
	<@field label="姓名">
		<@input />
	</@field>
	<@field label="姓名">
		<@input />
	</@field>
</@row>
<@row>
	<@field label="姓名">
		<@input />
	</@field>
	<@field label="姓名">
		<@input />
	</@field>
	<@field label="姓名">
		<@input />
	</@field>
</@row>


</fieldset>

<fieldset>
<legend>2222</legend>
<@row>
	<@field label="姓名">
		<@input />
	</@field>
	<@field label="姓名">
		<@input />
	</@field>
	<@field label="姓名">
		<@input />
	</@field>
</@row>
<@row>
	<@field label="姓名">
		<@input />
	</@field>
	<@field label="姓名">
		<@input />
	</@field>
	<@field label="姓名">
		<@input />
	</@field>
</@row>
</fieldset>

<@row>
	<@toolbar>

		
		<@button>提交按钮</@button>
	</@toolbar>
</@row>
</@form>


</div>

</@body>