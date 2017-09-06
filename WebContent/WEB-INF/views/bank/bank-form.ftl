<#include "/layout.ftl">
<@body>
	<@panel head="银行字典信息">
    <@panelBody>
    	<@form id="form" action="${isEdit?string('pfs/bank/edit','pfs/bank/add')}" success_url="pfs/bank/page">
    		<@field hidden="true">
                <@input name="id" value="${(bank.id)!}"/>
            </@field>
    		<@field hidden="true">
                <@input name="jpaVersion" value="${(bank.jpaVersion)!}"/>
            </@field>
    		<@row>
    			<@field label="银行编码">
    				<@input name="bankCode" value="${(bank.bankCode)!}" valid={"notempty":"true","digits":"true", "stringlength":"true","stringlength-max":"40"}/>
    			</@field>
    		</@row>
    		<@row>
    			<@field label="银行名称">
    				<@input name="bankName" value="${(bank.bankName)!}" valid={"notempty":"true","stringlength":"true","stringlength-max":"40"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="银行简称">
    				<@input name="bankShortName" value="${(bank.bankShortName)!}" valid={"stringlength":"true","stringlength-max":"40"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="备用字段1">
    				<@input name="reserve1" value="${(bank.reserve1)!}"  valid={"stringlength":"true","stringlength-max":"40"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="备用字段2">
    				<@input name="reserve2" value="${(bank.reserve2)!}"  valid={"stringlength":"true","stringlength-max":"40"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="备用字段3">
    				<@input name="reserve3" value="${(bank.reserve3)!}"  valid={"stringlength":"true","stringlength-max":"40"}/>
    			</@field>
    		</@row>
    		<@row>
                   <@toolbar>
                       <@submitButton />
                       <@backButton />
                   </@toolbar>
               </@row>
    	</@form>
    </@panelBody>
	</@panel>
</@body>