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
	
	<link rel="stylesheet" type="text/css" href="css/admin-styles.css">
	

  </head>
  
  <body>
    <div class="center">
    <fieldset >
    	<legend align="left">身份认证</legend>
    	<s:form action="login.action"  method="post" theme="simple">
    		<div><label for="adminname">用户名：</label><s:textfield name="adminname" id="adminname"></s:textfield></div>
    		<div><label for="adminpassword">密&nbsp&nbsp码：</label><s:password name="adminpassword" id="adminpassword" ></s:password></div>
    		<div><s:submit value="登陆"></s:submit> </div>
    	</s:form>
    </fieldset>	
    </div>
  </body>
</html>
