<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>admin管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/admin-styles.css">

	
	<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
	<script src="js/jquery-admin.js" type="text/javascript" charset="utf-8"></script>
	 <script type="text/javascript">
        function clicked(){
            alert("clicked");
        }
        function openWin(src, width, height, showScroll){ 
		alert("aa");
		window.showModalDialog(src,"","location:No;status:No;help:No;dialogWidth:"+width+";dialogHeight:"+height+";scroll:"+showScroll+";"); 
		} 
    </script>
  </head>
  
  <body class="center">
  
 	
	<div>截止目前共有<s:property value="#session.c"/>人提交问卷 </div>
	<div><button onClick="openWin('<%=path%>/createxcel.jsp','400px','500px','no')" >test</button></div>
    <div><a href="<%=path%>/createxcel.action" ><button onClick="openWin('<%=path%>/createxcel.jsp','400px','500px','no')">生成excel表</button></a></div>
	<div><a href="<%=path%>/data/answer.xls"><input type="button" value="下载表格"/></a></div> 
  </body>
</html>
