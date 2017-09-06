<#include "/layout.ftl"/>
<@body>
  <@panel head="托收批次调度控制列表">
	<@panelBody>
	   <@form id="queryForm" cols="4">
            <@row class="a">
                <@field label="贷款状态">
                    <@dictSelect dicttype="LOAN_STATUS" name="query.loanStatus"/>
                </@field>
            </@row>
       </@form>
            <@toolbar class="">
                <@button id="queryButton" fa="search">查询</@button>
                <@href href="pfs/schdmng/addpage" fa="plus">新增</@href>
            </@toolbar>
		
		<@table id="table" url="pfs/schdmng/list" form_id="queryForm" button_id="queryButton">
			<@th field="schNo" title="调度编号"></@th>
			<@th field="loanStatus" title="贷款状态"></@th>
			<@th field="runSeq" title="运行次序"></@th>
			<@th field="runTime" title="运行时间"></@th>
            <@th field="cron" title="周期表达式"></@th>
            <@th field="collectProp" title="托收比例"></@th>
            <@th field="isUse" title="是否启用"></@th>
            <@th field="updateBy" title="最后修改人"></@th>
            <@th field="updateDate" title="最后修改时间" render="true">
				<@thDate value="{{row.updateDate}}" datetype="datetime"/>
		    </@th>
			<@th title="操作" render="true">
				<@href href="pfs/schdmng/editpage?schNo={{row.schNo}}"  name="编辑" fa="edit" />
				<@ajaxButton  confirm="确定删除此记录？" sense="danger"  name="删除" url="pfs/schdmng/delete?schNo={{row.schNo}}" success_url="pfs/schdmng/page" />
			</@th>
		</@table>
		
	</@panelBody>  
  </@panel>
</@body>