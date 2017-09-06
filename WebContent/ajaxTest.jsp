<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    
    <title>页面实时监控</title>
    
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
<script type="text/javascript">
   function makeRequest(url) {
   httpRequest = false;
   if (window.XMLHttpRequest) {
    httpRequest = new XMLHttpRequest();
    if (httpRequest.overrideMimeType) {
     httpRequest.overrideMimeType('text/xml');
    }
   } else if (window.ActiveXObject) {
    try {
     httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
     try {
      httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
     } catch (e) {
     }
    }
   }
   if (!httpRequest) {
    alert("您的浏览器不支持当前操作，请使用 IE 5.0 以上版本!");
    return false;
   }

   httpRequest.open('GET', url, true);
   httpRequest.onreadystatechange = callBack;

   //禁止IE缓存
   httpRequest.setRequestHeader("If-Modified-Since", "0");

   //发送数据
   httpRequest.send(null);
//每1秒读取一次后台数据
   setTimeout("makeRequest('" + url + "')", 1000);
}

function callBack() {
   if (httpRequest.readyState == 4) {
    if (httpRequest.status == 0 || httpRequest.status == 200) {
     var result = httpRequest.responseText;
     if (result == "") {
      result = "系统取值失败";
     }
    // 定义数组 ;
     var array = new Array(); 
     // 分隔JSON ;
     array = result.split(";"); 
     // 绘制表格 ;    
     // 定义表格开始标签 ;
     var tableStart = "<table id='test' border='1' cellpadding='5' cellspacing='0' bordercolor='green' align='center'><tr>"
     var head = "<tr><td>手机发送速度</td><td>手机发送总量</td><td>信息发送速度</td><td>信息发送总量</td><td>当前时间</td></tr>" 
     var tdStart = "<td>"
     var tdEnd = "</td>" 
     //定义表格结束标签 ;
     var tableEnd = "</tr></table>" 
     document.getElementById("showData").innerHTML = tableStart +head+ tableEnd ;
     for ( i = 0 ; i < array.length ; i++ ) {
        // 追加行 ;
      var oRow1=test.insertRow(test.rows.length);//方法用于在表格中的指定位置插入一个新行
      alert(test.rows.length);
        // 获取表格的行集合。 
        var aRows=test.rows; 
        // 获取第一行的单元格集合。 
        var aCells=oRow1.cells; 
        // 在第一行中插入两个单元格。 
        var oCell1_1=oRow1.insertCell(aCells.length); 
        var oCell1_2=oRow1.insertCell(aCells.length); 
        var oCell1_3=oRow1.insertCell(aCells.length); 
        var oCell1_4=oRow1.insertCell(aCells.length); 
        var oCell1_5=oRow1.insertCell(aCells.length);   
      var obj = eval('('+array[i]+')');
      // 定义MOBILE_SPEED 
      var MOBILE_SPEED = tdStart + obj.MOBILE_SPEED + tdEnd     
      // 定义MOBILE_TOTAL_COUNT 
      var MOBILE_TOTAL_COUNT = tdStart + obj.MOBILE_TOTAL_COUNT + tdEnd 
      // 定义MSG_SPEED
      var MSG_SPEED = tdStart + obj.MSG_SPEED + tdEnd 
      // 定义MSG_TOTAL_COUNT
      var MSG_TOTAL_COUNT = tdStart + obj.MSG_TOTAL_COUNT + tdEnd
      // 时间 date     
      var date = tdStart + new Date() + tdEnd ;
      // 向单元格内填充数据 ;        
      oCell1_1.innerHTML = MOBILE_SPEED;   
        oCell1_2.innerHTML = MOBILE_TOTAL_COUNT;
        oCell1_3.innerHTML = MSG_SPEED;
        oCell1_4.innerHTML = MSG_TOTAL_COUNT;
        oCell1_5.innerHTML = date ;
     }     
    
    } else {//httpRequest.status != 200
    
    /*  flag = window.confirm("服务器无响应,是否关闭本页面？");
     if ( flag ) {
      window.close();
     } */
    
    }
   }
}
</script>
</head>

<body onload=makeRequest("/haoer/user/AjaxServlet")>
<!-- 显示数据 --> 
   <div id="showData"></div> 
</body>
</html>