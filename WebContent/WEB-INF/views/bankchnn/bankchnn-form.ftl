<#include "/layout.ftl">
<@body>
	<@panel head="银行与通路关系">
    <@panelBody>
    	<@form id="form" action="${isEdit?string('pfs/bankchnn/edit','pfs/bankchnn/add')}" success_url="pfs/bankchnn/page">
    		
            <@field hidden="true">
                <@input name="jpaVersion" value="${(bankchnn.jpaVersion)!}"/>
            </@field>
    		<@row>
    			<@field label="银行代码">
    				<@input name="bankCode" value="${(bankchnn.bankCode)!}" 
    					valid={"notempty":"true","digits":"true","stringlength":"true","stringlength-max":"12"}/>
    			</@field>
    		</@row>
    		<@row>
    			<@field label="银行名称">
    				<@input name="bankName" value="${(bankchnn.bankName)!}" valid={"notempty":"true","stringlength":"true","stringlength-max":"40"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="业务类型">
    				<@dictSelect  dicttype="BUS_TYPE" name="busType" showcode="false" value="${(bankchnn.busType)!}" valid={"notempty":"true"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="单笔批量标识">
    				<@dictSelect  dicttype="BS_FLAG" name="bsFlag" showcode="false" value="${(bankchnn.bsFlag)!}" valid={"notempty":"true"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="通路编号">
    			
    				<#assign sel=""> <!-- 用于修改时选中option -->
    				
    				<@select id="chnId" name="chnId" valid={"notempty":"true"}> 
    					<#if channelList??>
            				<#list channelList as channel>
            					<#if "${(bankchnn.chnId)!}" == "${channel.id!}">
            						<#assign sel="selected='selected'">
            					<#else>
            						<#assign sel="">
            					</#if>
            					<option value="${channel.id!}" ${sel!}>${channel.chnName!}-${channel.chnDesc!}</option>
			            	</#list> 
			            </#if>
    				</@select>
    			</@field>
    		</@row>
    		
    		<@row>	
    			<@field label="最大金额">
    				<@input id="maxAmt" name="maxAmt" value="${(bankchnn.maxAmt)!}"  
    					valid={"notempty":"true", "numeric":"true", "greaterthan":"true", "greaterthan-value":"1", "stringlength":"true","stringlength-max":"20"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="单笔限额">
    				<@input id = "limitSingle" name="limitSingle" value="${(bankchnn.limitSingle)!}"  
    					valid={"notempty":"true", "numeric":"true", "greaterthan":"true", "greaterthan-value":"1", "stringlength":"true","stringlength-max":"20"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="单日限额">
    				<@input name="limitDay" value="${(bankchnn.limitDay)!}"  
    				valid={"stringlength":"true", "numeric":"true", "greaterthan":"true", "greaterthan-value":"1", "stringlength-max":"20"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="单批次最大记录数">
    				<@input name="batMaxRecCnt" value="${(bankchnn.batMaxRecCnt)!}"  
    					valid={"notempty":"true","digits":"true","greaterthan":"true", "greaterthan-value":"1", "stringlength":"true","stringlength-max":"10"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="同卡单批最大笔数">
    				<@input name="cardBatRecCnt" value="${(bankchnn.cardBatRecCnt)!}"  
    					valid={"notempty":"true","digits":"true","greaterthan":"true", "greaterthan-value":"1","stringlength":"true","stringlength-max":"10"}/>
    			</@field>
    		</@row>
    		<@row>	
    			<@field label="支持卡类型"><!--TODO编辑时候要选中-->
    				<input type="hidden" id="cardTypeVal" value="${(bankchnn.cardType)!}" />
    				<input type="checkbox" name="cardType" value="C" id="check1" >借记卡
    				<input type="checkbox" name="cardType" value="D" id="check2" >贷记卡
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
	    
	    $("document").ready(function(){
            var cardType=document.getElementById("cardTypeVal").value;
			var typestr = "," + cardType + ",";
			var checkboxs = document.getElementsByName("cardType");
			for(var i=0;i<checkboxs.length;i++){
				var checkbox = checkboxs[i];
				if(typestr.indexOf("," + checkbox.value +",") != -1){
					checkbox.checked = "checked";
				}
			}
			
	    })	
	    
		$('#form').bootstrapValidator({
    		fields: {
    		  //单笔限额
        		"limitSingle": {
           		 	validators: {
               			callback: {
                    		message: '单笔限额必须落在限额区间内',
                    		callback: function(value, validator) {
                    			var maxAmt = $("#maxAmt").val();
                    			if(new Number(value) <= new Number(maxAmt) && new Number(value) >= new Number(0)){
                   					return true;
                    			}
                    			return false;
                    		}
                		}
            		}
        		}
        		//最大金额
		        	,"maxAmt":{
		            validators: {
		                callback: {
		                    message: '最大金额必须大于等于单笔限额',
		                    callback: function(value, validator) {
		                        var limitSingle = $("#limitSingle").val();
                    			if(new Number(value) >= new Number(limitSingle)){
                   					return true;
                    			}
                    			return false;
		                    	
		                    }
		                }
		            }
		        }
    		}
		});
	
	</script>
	
</@body>