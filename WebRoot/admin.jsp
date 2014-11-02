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
    
    <title>admin登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div>
    <fieldset >
    	<legend align="left">身份认证</legend>
    	<s:form action="login.action"  method="post" theme="simple">
    		<div>用户名：<s:textfield name="adminname" ></s:textfield></div>
    		<div>密码：<s:password name="adminpassword"></s:password></div>
    		<div><s:submit value="登陆"></s:submit> </div>
    	</s:form>
    </fieldset>	
    </div>
  </body>
</html>
