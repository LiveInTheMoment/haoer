<#include "/layout.ftl">
<@body>
	<@panel head="通路信息">
    <@panelBody>
    	<@form id="form" action="${isEdit?string('pfs/chnn/edit','pfs/chnn/add')}" success_url="pfs/chnn/page">
    		<@field hidden="true">
                <@input name="id" value="${(chnn.id)!}"/>
            </@field>
            <@field hidden="true">
                <@input name="jpaVersion" value="${(chnn.jpaVersion)!}"/>
            </@field>
    		<@row>
    			<@field label="通路名称">
    				<@input name="chnName" value="${(chnn.chnName)!}" valid={"notempty":"true","stringlength":"true","stringlength-max":"40"}/>
    			</@field>
    		</@row>
    		<@row>
    			<@field label="通路描述">
    				<@input name="chnDesc" value="${(chnn.chnDesc)!}" valid={"notempty":"true","stringlength":"true","stringlength-max":"40"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="开关状态">
    				<@select name="chnSwitch" value="${(chnn.chnSwitch)!}" options={"ON":"开启","OFF":"关闭"} valid={"notempty":"true","stringlength":"true","stringlength-max":"4"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="通路费用">
    				<@input name="chnFee" value="${(chnn.chnFee)!}"  
    					valid={"stringlength":"true", "numeric":"true", "greaterthan":"true", "greaterthan-value":"0","stringlength-max":"10"}/>
    			</@field>
    		</@row>
    		<@row>
    			<@field label="商户号">
    				<@input name="authMerchNo" value="${(chnn.authMerchNo)!}"  valid={"notempty":"true","stringlength":"true","stringlength-max":"40"}/>
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