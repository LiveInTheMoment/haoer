<#include "/layout.ftl"/>
<@segment>
    <@panelBody>
       <@form id="queryForm" >
            <@row class="a">
                <@field label="用户ID">
                    <@input name="query.userId" />
                </@field>
                <@field label="用户名称">
                    <@input name="query.userName" />
                </@field>
                <@field label_ar="1" >
                    <@button id="queryButton" fa="search">查询</@button>
                </@field>
            </@row>
       </@form>
        
        <@table id="table" url="user/list" pagination="false" form_id="queryForm" button_id="queryButton" height="410" condensed="true">
            <@th checkbox="true"></@th>
            <@th field="userId" title="用户ID"></@th>
            <@th field="userNo" title="登录名"></@th>
            <@th field="userName" title="用户名称"></@th>
            <@th field="branchCode" title="所属分支机构"></@th>
            <@th field="status" title="用户状态"></@th>
            <@th field="workStatus" title="工作状态"></@th>
        </@table>
        
    </@panelBody>  
</@segment>