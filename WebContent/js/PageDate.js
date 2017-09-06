var pageIndex = 1
var pageCount = 0;
$(function(){
	GetPageCount();//取得分页总数
	pageCount = parseInt($("#pagecount").val());//分页总数放到变量pageCount里
	$("#load").hide();//隐藏loading提示
    $("#template").hide();//隐藏模板
	ChangeState(0,1);//设置翻页按钮的初始状态
   
    bind();//绑定第一页的数据
   
    //第一页按钮click事件
    $("#first").click(function(){
        pageIndex = 1;
        ChangeState(0,1);
        bind();   
    });
   
    //上一页按钮click事件
    $("#previous").click(function(){
        pageIndex -= 1;
        ChangeState(-1,1);           
        if(pageIndex <= 1)
        {
            pageIndex = 1;
            ChangeState(0,-1);
        }
        bind();   
    });
  
    //下一页按钮click事件
    $("#next").click(function(){
        pageIndex += 1;
        ChangeState(1,-1);
        if(pageIndex>=pageCount)
        {
            pageIndex = pageCount;
            ChangeState(-1,0);
        }
        bind(pageIndex);           
    });
   
    //最后一页按钮click事件
    $("#last").click(function(){
        pageIndex = pageCount;
        ChangeState(1,0);
        bind(pageIndex);           
    });               
});
   
//AJAX方法取得数据并显示到页面上
function bind()
{
    $("[@id=ready]").remove();
    $("#load").show();
    $.ajax({
        type: "get",//使用get方法访问后台
        dataType: "json",//返回json格式的数据
        url: "Handler.ashx",//要访问的后台地址
        data: "pageIndex=" + pageIndex,//要发送的数据
        complete :function(){$("#load").hide();},//AJAX请求完成时隐藏loading提示
        success: function(msg){//msg为返回的数据，在这里做数据绑定
            var data = msg.table;
            $.each(data, function(i, n){
                var row = $("#template").clone();
                row.find("#OrderID").text(n.OrderID);
                row.find("#CustomerID").text(n.CustomerID);
                row.find("#EmployeeID").text(n.EmployeeID);
                row.find("#OrderDate").text(ChangeDate(n.OrderDate));
                if(n.RequiredDate !== undefined) row.find("#ShippedDate").text(ChangeDate(n.RequiredDate));
                row.find("#ShippedName").text(n.ShipName);
                row.find("#ShippedAddress").text(n.ShipAddress);
                row.find("#ShippedCity").text(n.ShipCity);
                row.find("#more").html("<a href=OrderInfo.aspx?id=" + n.OrderID + "&pageindex="+pageIndex+">&nbsp;More</a>");                   
                row.attr("id","ready");//改变绑定好数据的行的id
                row.appendTo("#datas");//添加到模板的容器中
            });
            $("[@id=ready]").show();
            SetPageInfo();
        }
    });
}
   
function ChangeDate(date)
{
	return date.replace("-","/").replace("-","/");
}

//设置第几页/共几页的信息
function SetPageInfo()
{
	$("#pageinfo").html(pageIndex + "/" + pageCount);
}

//AJAX方法取得分页总数
function GetPageCount()
{
    $.ajax({
        type: "get",
        dataType: "text",
        url: "Handler.ashx",
        data: "getPageCount=1",
        async: false,
        success: function(msg){
			$("#pagecount").val(msg);
        }
    });
}

//改变翻页按钮状态   
function ChangeState(state1,state2)
{
    if(state1 == 1)
    {           
        document.getElementById("first").disabled = "";
        document.getElementById("previous").disabled = "";
    }
    else if(state1 == 0)
    {           
        document.getElementById("first").disabled = "disabled";
        document.getElementById("previous").disabled = "disabled";
    }
    if(state2 == 1)
    {
        document.getElementById("next").disabled = "";
        document.getElementById("last").disabled = "";
    }
    else if(state2 == 0)
    {
        document.getElementById("next").disabled = "disabled";
        document.getElementById("last").disabled = "disabled";
    }
}

