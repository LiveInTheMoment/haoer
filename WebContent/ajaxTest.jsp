<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    
    <title>ҳ��ʵʱ���</title>
    
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
    alert("�����������֧�ֵ�ǰ��������ʹ�� IE 5.0 ���ϰ汾!");
    return false;
   }

   httpRequest.open('GET', url, true);
   httpRequest.onreadystatechange = callBack;

   //��ֹIE����
   httpRequest.setRequestHeader("If-Modified-Since", "0");

   //��������
   httpRequest.send(null);
//ÿ1���ȡһ�κ�̨����
   setTimeout("makeRequest('" + url + "')", 1000);
}

function callBack() {
   if (httpRequest.readyState == 4) {
    if (httpRequest.status == 0 || httpRequest.status == 200) {
     var result = httpRequest.responseText;
     if (result == "") {
      result = "ϵͳȡֵʧ��";
     }
    // �������� ;
     var array = new Array(); 
     // �ָ�JSON ;
     array = result.split(";"); 
     // ���Ʊ�� ;    
     // ������ʼ��ǩ ;
     var tableStart = "<table id='test' border='1' cellpadding='5' cellspacing='0' bordercolor='green' align='center'><tr>"
     var head = "<tr><td>�ֻ������ٶ�</td><td>�ֻ���������</td><td>��Ϣ�����ٶ�</td><td>��Ϣ��������</td><td>��ǰʱ��</td></tr>" 
     var tdStart = "<td>"
     var tdEnd = "</td>" 
     //�����������ǩ ;
     var tableEnd = "</tr></table>" 
     document.getElementById("showData").innerHTML = tableStart +head+ tableEnd ;
     for ( i = 0 ; i < array.length ; i++ ) {
        // ׷���� ;
      var oRow1=test.insertRow(test.rows.length);//���������ڱ���е�ָ��λ�ò���һ������
      alert(test.rows.length);
        // ��ȡ�����м��ϡ� 
        var aRows=test.rows; 
        // ��ȡ��һ�еĵ�Ԫ�񼯺ϡ� 
        var aCells=oRow1.cells; 
        // �ڵ�һ���в���������Ԫ�� 
        var oCell1_1=oRow1.insertCell(aCells.length); 
        var oCell1_2=oRow1.insertCell(aCells.length); 
        var oCell1_3=oRow1.insertCell(aCells.length); 
        var oCell1_4=oRow1.insertCell(aCells.length); 
        var oCell1_5=oRow1.insertCell(aCells.length);   
      var obj = eval('('+array[i]+')');
      // ����MOBILE_SPEED 
      var MOBILE_SPEED = tdStart + obj.MOBILE_SPEED + tdEnd     
      // ����MOBILE_TOTAL_COUNT 
      var MOBILE_TOTAL_COUNT = tdStart + obj.MOBILE_TOTAL_COUNT + tdEnd 
      // ����MSG_SPEED
      var MSG_SPEED = tdStart + obj.MSG_SPEED + tdEnd 
      // ����MSG_TOTAL_COUNT
      var MSG_TOTAL_COUNT = tdStart + obj.MSG_TOTAL_COUNT + tdEnd
      // ʱ�� date     
      var date = tdStart + new Date() + tdEnd ;
      // ��Ԫ����������� ;        
      oCell1_1.innerHTML = MOBILE_SPEED;   
        oCell1_2.innerHTML = MOBILE_TOTAL_COUNT;
        oCell1_3.innerHTML = MSG_SPEED;
        oCell1_4.innerHTML = MSG_TOTAL_COUNT;
        oCell1_5.innerHTML = date ;
     }     
    
    } else {//httpRequest.status != 200
    
    /*  flag = window.confirm("����������Ӧ,�Ƿ�رձ�ҳ�棿");
     if ( flag ) {
      window.close();
     } */
    
    }
   }
}
</script>
</head>

<body onload=makeRequest("/haoer/user/AjaxServlet")>
<!-- ��ʾ���� --> 
   <div id="showData"></div> 
</body>
</html>