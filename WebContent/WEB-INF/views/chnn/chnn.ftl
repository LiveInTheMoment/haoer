<#include "/layout.ftl"/>
<@body>
  <@panel head="支付通路列表">
	<@panelBody>
	   <@form id="queryForm" cols="4">
            <@row class="a">
                <@field label="通路名称">
                    <@input name="query.chnName" />
                </@field>
                <@field label="通路描述">
                    <@input name="query.chnDesc" />
                </@field>
                <@field label="开关状态">
                    <@dictSelect dicttype="SWITCH" name="query.chnSwitch"/>
                </@field>
                <@field label="商户号">
                    <@input name="query.authMerchNo" />
                </@field>
            </@row>
       </@form>
            <@toolbar class="">
                <@button id="queryButton" fa="search">查询</@button>
                <@href href="pfs/chnn/addpage" fa="plus">新增</@href>
            </@toolbar>
		
		<@table id="table" url="pfs/chnn/list" form_id="queryForm" button_id="queryButton">
			<@th field="chnName" title="通路名称"></@th>
			<@th field="chnDesc" title="通路描述"></@th>
			<@th field="chnSwitch" title="开关状态"></@th>
            <@th field="authMerchNo" title="商户号"></@th>
			<@th field="chnFee" title="通路费用"></@th>
            <@th field="updateBy" title="最后修改人"></@th>
            <@th field="updateTime" title="最后修改时间" render="true">
				<@thDate value="{{row.updateTime}}" datetype="datetime"/>
		    </@th>
			<@th title="操作" render="true">
				<@href href="pfs/chnn/editpage?id={{row.id}}"  name="编辑" fa="edit" />
				<@ajaxButton  confirm="确定删除此记录？" sense="danger"  name="删除" url="pfs/chnn/delete?id={{row.id}}" success_url="pfs/chnn/page" />
			</@th>
		</@table>
		
	</@panelBody>  
  </@panel>
</@body>