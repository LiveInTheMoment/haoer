<#include "/layout.ftl"/>
<@body>
  <@panel head="银行字典列表">
	<@panelBody>
	   <@form id="queryForm" >
            <@row class="a">
                <@field label="银行代码">
                    <@input name="query.bankCode" />
                </@field>
                <@field label="银行名称">
                    <@input name="query.bankName" />
                </@field>
                <@field label="银行简称">
                    <@input name="query.bankShortName" />
                </@field>
            </@row>
       </@form>
            <@toolbar class="">
                <@button id="queryButton" fa="search">查询</@button>
                <!-- <@href href="/bank/addpage" fa="plus">新增</@href> -->
            </@toolbar>
		
		<@table id="table" url="pfs/bank/list" form_id="queryForm" button_id="queryButton">
			<@th field="bankCode" title="银行代码"></@th>
			<@th field="bankName" title="银行名称"></@th>
			<@th field="bankShortName" title="银行简称"></@th>
			<@th field="reserve1" title="备用字段"></@th>
            
			<@th title="操作" render="true">
				<@href href="pfs/bank/editpage?id={{row.id}}"  name="编辑" fa="edit" />
			</@th>
		</@table>
		
	</@panelBody>  
  </@panel>
</@body>