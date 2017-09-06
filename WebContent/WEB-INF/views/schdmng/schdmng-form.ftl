<#include "/layout.ftl">
<@body>
	<@panel head="托收批次调度信息">
    <@panelBody>
    	<@form id="form" action="${isEdit?string('pfs/schdmng/edit','pfs/schdmng/add')}" success_url="pfs/schdmng/page">
    		
            <@field hidden="true">
                <@input name="jpaVersion" value="${(schdmng.jpaVersion)!}"/>
            </@field>
            
            <#if isEdit!'false' = 'true'>
            	<@row>
    				<@field label="调度编号">
                		<@input name="schNo" readonly="readonly" value="${(schdmng.schNo)!}"/>
            		</@field>
    			</@row>
            <#else>
            	<@row>
    				<@field label="调度编号">
    					<@input name="schNo" value="${(schdmng.schNo)!}" 
    						valid={"notempty":"true", "nochinese":"true", "stringlength":"true","stringlength-max":"20"}/>
    				</@field>
    			</@row>
            </#if>
    		
    		<@row>
    			<@field label="运行时间">
    				<@date name="runTime" value="${(schdmng.runTime)!}" datetype="time" valid={"notempty":"true","stringlength":"true","stringlength-max":"8"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="贷款状态">
    				<@dictSelect  dicttype="LOAN_STATUS" name="loanStatus" showcode="true" value="${(schdmng.loanStatus)!}" valid={"notempty":"true"}/>
    			</@field>
    		</@row>
    		<@row>
    			<@field label="执行次序">
    				<@input id="runSeq" name="runSeq" value="${(schdmng.runSeq)!}" 
    					valid={"notempty":"true", "stringlength":"true","stringlength-max":"3"}/>
    			</@field>
    		</@row>
    		<@row>
    			<@field label="调度周期">
    				<@input name="cron" value="${(schdmng.cron)!}" valid={"notempty":"true","stringlength":"true","stringlength-max":"40"}/>
    			</@field>
    		</@row>
    		<@row>
    			<@field label="托收比例">
    				<@input name="collectProp" value="${(schdmng.collectProp)!}" 
    					valid={"notempty":"true", "between":"true", "between-min":"0","between-inclusive":"true","between-max":"1","stringlength":"true","stringlength-max":"5", "numeric":"true"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="是否启用">
    				<@dictSelect  dicttype="USE_FLAG" name="isUse" showcode="true" value="${(schdmng.isUse)!}" valid={"notempty":"true"}/>
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
	
	<script>
		$('#form').bootstrapValidator({
    		fields: {
        		"runSeq": {
           		 	validators: {
               			callback: {
                    		message: '请输入大于等于1的整数',
                    		callback: function(value, validator) {
                    			var reqSeq = $("#runSeq").val();
                    			var regex = /^[1-9][0-9]*$/;
                    			return regex.test(reqSeq);
                    		}
                		}
            		}
        		}
    		}
		});
	
	</script>
	
</@body>