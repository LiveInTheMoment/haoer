<#include "/layout.ftl">
<@body>
	<@panel head="通路信息">
    <@panelBody>
    	<@form id="form" action="${isEdit?string('pfs/switch/edit','pfs/switch/add')}" success_url="pfs/switch/page">
    		<@field hidden="true">
                <@input name="id" value="${(switch.id)!}"/>
            </@field>
            <@field hidden="true">
                <@input name="jpaVersion" value="${(switch.jpaVersion)!}"/>
            </@field>
    		
    		<@row>	
    			<@field label="业务类型">
    				<@dictSelect  dicttype="BUS_TYPE" name="busType" showcode="true" value="${(switch.busType)!}" valid={"notempty":"true"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="单笔批量标识">
    				<@dictSelect  dicttype="BS_FLAG" name="bsFlag" showcode="true" value="${(switch.bsFlag)!}" valid={"notempty":"true"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="开关状态">
    				<@dictSelect  dicttype="SWITCH" name="status" showcode="true" value="${(switch.status)!}" valid={"notempty":"true"}/>
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