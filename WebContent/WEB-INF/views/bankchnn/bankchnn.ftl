<#include "/layout.ftl"/>
<@body>
  <@panel head="银行通路配置列表">
	<@panelBody>
	   <@form id="queryForm" cols="4">
            <@row class="a">
                <@field label="银行代码">
                    <@input name="query.bankCode" />
                </@field>
                <@field label="银行名称">
                    <@input name="query.bankName" />
                </@field>
                <@field label="业务类型">
                    <@dictSelect dicttype="BUS_TYPE" name="query.busType"/>
                </@field>
                <@field label="单笔批量">
                    <@dictSelect dicttype="BS_FLAG" name="query.bsFlag"/>
                </@field>
            </@row>
       </@form>
            <@toolbar class="">
                <@button id="queryButton" fa="search">查询</@button>
                <@href href="pfs/bankchnn/addpage" fa="plus">新增</@href>
            </@toolbar>
		
		<@table id="table" url="pfs/bankchnn/list" form_id="queryForm" button_id="queryButton">
			<@th field="bankCode" title="银行代码"></@th>
			<@th field="bankName" title="银行名称"></@th>
			<@th title="业务类型" render="true">
			    <@thDictName  dicttype="BUS_TYPE" value="{{row.busType}}" showcode="false" />
			</@th>
			<@th title="单笔批量标识" render="true">
			    <@thDictName  dicttype="BS_FLAG" value="{{row.bsFlag}}" showcode="false" />
			</@th>
			<@th field="chnName" title="通路名称"></@th>
            <@th field="authMerchNo" title="商户号"></@th>
            <@th field="maxAmt" title="最大交易额"></@th>
            <@th field="limitSingle" title="单笔限额"></@th>
            <@th field="batMaxRecCnt" title="单批最大记录数"></@th>
            <@th field="cardBatRecCnt" title="同卡单批最大笔数"></@th>
            
			<@th title="操作" render="true">
				<@href href="pfs/bankchnn/editpage?bankCode={{row.bankCode}}&busType={{row.busType}}&bsFlag={{row.bsFlag}}&chnId={{row.chnId}}"  name="编辑" fa="edit" />
				<@ajaxButton  confirm="确定删除此记录？" sense="danger"  name="删除" url="pfs/bankchnn/delete?bankCode={{row.bankCode}}&busType={{row.busType}}&bsFlag={{row.bsFlag}}&chnId={{row.chnId}}" success_url="pfs/bankchnn/page" />
			</@th>
		</@table>
		
	</@panelBody>  
  </@panel>
</@body>