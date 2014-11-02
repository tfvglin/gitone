<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>本科招生情况调查问卷</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="success">
	<meta name="viewport" content="width = device-width,initial-scale =1.0,minimum-scale=1.0,maxmum-scale=1.0"/> 
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
	<style>
	.center
	{
	 width: 400px;
	 height: 200px;
	}
	</style>
	<script type="text/javascript">
	$(document).ready(function(){
	
	$(".center").css({ 
		position:'absolute', 
		left: ($(window).width() - $(".center").outerWidth())/2, 
		top: ($(window).height() - $(".center").outerHeight())/2 + $(document).scrollTop() 
		});
	$(window).resize(function(){ 
		$(".center").css({ 
			position:'absolute', 
			left: ($(window).width() - $(".center").outerWidth())/2, 
			top: ($(window).height() - $(".center").outerHeight())/2 + $(document).scrollTop() 
			}); 
		}); 
		});
	</script>
  </head>
  
  <body>
  <div class="center" align="center">
    
   
     <div><p style="color:#C4C4C4;font-size:30px;align:center;font-weight: 900">调查结果已提交</p> </div>
      <div><p style="color:#C4C4C4;font-size:30px;align:center;font-weight: 900">感谢你的参与！</p> </div>
 </div>
  </body>
</html>
