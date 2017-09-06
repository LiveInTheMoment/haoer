<#include "/layout.ftl"/>
<@body>
  <@panel head="控制开关列表">
	<@panelBody>
	   <@form id="queryForm" cols="4">
            <@row class="a">
                <@field label="业务类型">
                    <@dictSelect dicttype="BUS_TYPE" name="query.busType"/>
                </@field>
                 <@field label="单笔批量">
                    <@dictSelect dicttype="BS_FLAG" name="query.bsFlag"/>
                </@field>
                <@field label="开关状态">
                    <@dictSelect dicttype="SWITCH" name="query.status"/>
                </@field>
            </@row>
       </@form>
            <@toolbar class="">
                <@button id="queryButton" fa="search">查询</@button>
                <@href href="pfs/switch/addpage" fa="plus">新增</@href>
            </@toolbar>
		
		<@table id="table" url="pfs/switch/list" form_id="queryForm" button_id="queryButton">
			<@th field="org" title="机构号"></@th>
			<@th field="busType" title="业务类型"></@th>
			<@th field="bsFlag" title="单笔批量标识"></@th>
            <@th field="status" title="开关状态"></@th>
            <@th field="updateBy" title="最后修改人"></@th>
            <@th field="updateDate" title="最后修改时间" render="true">
				<@thDate value="{{row.updateDate}}" datetype="datetime"/>
		    </@th>
			<@th title="操作" render="true">
				<@href href="pfs/switch/editpage?id={{row.id}}"  name="编辑" fa="edit" />
				<@ajaxButton  confirm="确定删除此记录？" sense="danger"  name="删除" url="pfs/switch/delete?id={{row.id}}" success_url="pfs/switch/page" />
			</@th>
		</@table>
		
	</@panelBody>  
  </@panel>
</@body>