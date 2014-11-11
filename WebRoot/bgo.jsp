<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
	<meta http-equiv="description" content="调查问卷">
	<meta name="viewport" content="width = device-width,initial-scale =1.0,minimum-scale=1.0,maxmum-scale=1.0"/>
	
	
	<%
		String stuname = request.getParameter("stuname");
	 %>
	 
	<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
	<script src="js/jquery-question.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/jquery-style.js" type="text/javascript" charset="utf-8"></script>
	
	<link rel="stylesheet" type="text/css" href="css/styles.css">

	
<!--  	<style type="text/css">
	.area
	{
	padding:15px;
	}

	.question
	{
	text-align:left;
	font-weight:bold;
	}
	.select,.other
	{
	text-align:left;
	margin:20px;
	font-weight:normal;
	}
	.textform{
	margin:10px auto;
	}
	.graytips
	{

	position: static;
	border-width:0 0 1 0;
	border-style:solid;
	border-color:#436EEE;
	margin-left: 5px;
	}

	input[type="submit"]{
    border:2px solid #e5e5e5;
    background:#8DEEEE;
    padding:10px 30px;
	color:#fff;
	font-size:20px;
	cursor:pointer;
	}
	
	#erroform{
		display:block;
		position:fixed;
		background: #Foo;
		width: 200px;
		test-align:center;
		margin:0 auto;
	}

	</style>-->
  </head>
  
  <body>
  <div align="center" style="width:90%;margin:0 auto;padding-top: 30px;padding-bottom: 30px;">
  <h1>开始进行调查问卷 </h1><br>
 <div id="erroform" style="display:none">
 	<div id="erro"><p>错误提示<p></div>
 	<button id="ok">确定</button>
 </div>
  <s:form name="reform" action="add.action" method="post" theme="simple">
 	<s:actionmessage cssStyle="color:red"/><s:fielderror cssStyle="color:red" />
 	  <s:hidden name="stuname" value="%{#parameters.stuname}"/>
 	  <s:hidden name="stunum" value="%{#parameters.stunum}"/> 
 	<div style="font-size:12px"><%=stuname %>同学，你好！感谢你对本次问卷调查的积极参与！</div>
 	<div style="margin: 10px"></div>
 	<div style="font-weight:bold;">联系电话： <input type="text" name="phone" id="phone" value="请填写联系电话" class="graytips"><span style="color:red;">*</span></div>
	
	<div id="questionone" class="area">
	<div class="question">1.您是什么时间开始关注报考大学信息的？</div>
 	
 	<div class="select"><input type="radio" name="question1" id="q1_1" value="A"><label for="q1_1">高一</label></div>
 	<div class="select"><input type="radio" name="question1" id="q1_2" value="B"><label for="q1_2">高二</label></div>
 	<div class="select"><input type="radio" name="question1" id="q1_3" value="C"><label for="q1_3">高三</label></div>
 	<div class="select"><input type="radio" name="question1" id="q1_4" value="D"><label for="q1_4">报考志愿临近时</label></div>
 	
 	<div class="other"><input type="radio" name="question1" id="q1_5" value="E" class="last"><label for="q1_5">其他</label><input type="text"  name="q1other"  value="请注明..."  class="graytips text" /></div>
 	</div>
 	
 	<div class="seg"><hr></div>
 	
 	<div id="questiontwo" class="area">
	<div class="question">2.您是什么时候知道西安电子科技大学的？</div>
 	
 	<div class="select"><input type="radio" name="question2" id="q2_1" value="A"><label for="q2_1">高中以前</label></div>
 	<div class="select"><input type="radio" name="question2" id="q2_2" value="B"><label for="q2_2">高一</label></div>
 	<div class="select"><input type="radio" name="question2" id="q2_3" value="C"><label for="q2_3">高二</label></div>
 	<div class="select"><input type="radio" name="question2" id="q2_4" value="D"><label for="q2_4">高三</label></div>
 	<div class="select"><input type="radio" name="question2" id="q2_5" value="E"><label for="q2_5">报考志愿临近时</label></div>
 	
 	<div class="other"><input type="radio" name="question2" id="q2_6" value="E" class="last"><label for="q2_6">其他</label><input type="text"  name="q2other"  value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>
 	
 	<div id="questionthree" class="area">
	<div class="question">3.您主要通过哪种方式获得报考大学信息？</div>
 	
 	<div class="select"><input type="radio" name="question3" id="q3_1" value="A"><label for="q3_1">招生杂志、报纸</label></div>
 	<div class="select"><input type="radio" name="question3" id="q3_2" value="B"><label for="q3_2">现场咨询会</label></div>
 	<div class="select"><input type="radio" name="question3" id="q3_3" value="C"><label for="q3_3">网络</label></div>
 	<div class="select"><input type="radio" name="question3" id="q3_4" value="D"><label for="q3_4">电视</label></div>
 	<div class="select"><input type="radio" name="question3" id="q3_5" value="E"><label for="q3_5">学校宣传资料</label></div>
 	<div class="select"><input type="radio" name="question3" id="q3_6" value="F"><label for="q3_6">学校咨询电话</label></div>
 	<div class="select"><input type="radio" name="question3" id="q3_7" value="G"><label for="q3_7">高校派到中学的宣传人员</label></div>
 	
 	<div class="other"><input type="radio" name="question3" id="q3_8" value="E" class="last"><label for="q3_8">其他</label><input type="text" name="q3other"   value="请注明..." class="graytips text"/></div>
 	</div>
 	
  	<div class="seg"><hr></div>
  
  
	<div id="questionfour" class="area" >
    <div class="question">4.您如何知道并了解西电的？（对于以下五个方面，每个方面可以不选，可以多选）：</div>
  <!-- <div class="question select">(1) 电视： <s:checkboxlist list="#{'A':'A、当地电视台','B':'B、中央电视台','C':'C、外省电视台','D':'D、其他'}" name='question4.1'  /><input type="text" name="q4_1other"  value="请注明..."  class="graytips"/></div>
    <div class="question select">(2) 广播：<s:checkboxlist list="#{'A':'A、当地广播电台','B':'B、中央广播电台','C':'C、外省广播电台','D':'D、其他'}" name='question4.2'  /><input type="text"  name="q4_2other" value="请注明..."  class="graytips"/></div>
    <div class="question select">(3) 杂志、报纸：<s:checkboxlist list="#{'A':'A、招生类杂志','B':'B、本地报纸','C':'C、全国性报纸','D':'D、其他'}" name='question4.3'  /><input type="text"  name="q4_3other"  value="请注明..." class="graytips"/></div>
    <div class="question select">(4) 网络：<s:checkboxlist list="#{'A':'A、各大门户网站（新浪、搜狐、网易等）','B':'B、招生考试类网站','C':'C、微博','D':'D、微信','E':'E、其他'}" name='question4.4'  /><input type="text"  name="q4_4other"  value="请注明..." class="graytips"/></div>
    <div class="question select">(5) 他人推荐：<s:checkboxlist list="#{'A':'A、父母、亲属','B':'B、朋友','C':'C、班主任、其他老师','D':'D、西电大学生','E':'E、学校招生指南','F':'F、其他'}" name='question4.5'/><input type="text"  name="q4_5other" value="请注明..." class="graytips"/></div>
   --> 	
  <div class="select"  style="padding: 10px 5px" >	<div style="font-weight: 800;color:#3c3c3c" >(1) 电视：</div> 
   	<div class="select"><input type="checkbox" name="question4.1" value="A" id="4_1_A" /><label for="4_1_A">当地电视台</label> </div>
  	 <div class="select"><input type="checkbox" name="question4.1" value="B" id="4_1_B" /><label for="4_1_B">中央电视台</label> </div>
      <div class="select"><input type="checkbox" name="question4.1" value="C" id="4_1_C" /><label for="4_1_C">外省电视台</label> </div>
      <div class="select"><input type="checkbox" name="question4.1" value="D" id="4_1_D" class="last" /><label for="4_1_D">其他</label><input type="text" name="q4_1other"  value="请注明..."  class="graytips text"/> </div>
   </div> 
    <div class="select"  style="padding: 10px 5px" >	<div style="font-weight: 800;color:#3c3c3c" >(2) 广播：</div> 
   	<div class="select"><input type="checkbox" name="question4.2" value="A" id="4_2_A" /><label for="4_2_A">当地广播电台</label> </div>
  	 <div class="select"><input type="checkbox" name="question4.2" value="B" id="4_2_B" /><label for="4_2_B">中央广播电台</label> </div>
      <div class="select"><input type="checkbox" name="question4.2" value="C" id="4_2_C" /><label for="4_2_C">外省广播电台</label> </div>
      <div class="select"><input type="checkbox" name="question4.2" value="D" id="4_2_D" class="last" /><label for="4_2_D">其他</label><input type="text" name="q4_2other"  value="请注明..."  class="graytips text"/> </div>
   </div> 
    <div class="select"  style="padding: 10px 5px" >	<div style="font-weight: 800;color:#3c3c3c" >(3) 杂志、报纸：</div> 
   	<div class="select"><input type="checkbox" name="question4.3" value="A" id="4_3_A" /><label for="4_3_A">招生类杂志</label> </div>
  	 <div class="select"><input type="checkbox" name="question4.3" value="B" id="4_3_B" /><label for="4_3_B">本地报纸</label> </div>
      <div class="select"><input type="checkbox" name="question4.3" value="C" id="4_3_C" /><label for="4_3_C">全国性报纸</label> </div>
      <div class="select"><input type="checkbox" name="question4.3" value="D" id="4_3_D" class="last"/><label for="4_3_D">其他</label><input type="text" name="q4_3other"  value="请注明..."  class="graytips text"/> </div>
   </div> 
    <div class="select"  style="padding: 10px 5px" >	<div style="font-weight: 800;color:#3c3c3c" >(4) 网络：</div> 
   	<div class="select"><input type="checkbox" name="question4.4" value="A" id="4_4_A" /><label for="4_4_A">各大门户网站（新浪、搜狐、网易等）</label> </div>
  	 <div class="select"><input type="checkbox" name="question4.4" value="B" id="4_4_B" /><label for="4_4_B">招生考试类网站</label> </div>
      <div class="select"><input type="checkbox" name="question4.4" value="C" id="4_4_C" /><label for="4_4_C">微博</label> </div>
       <div class="select"><input type="checkbox" name="question4.4" value="D" id="4_4_D" /><label for="4_4_D">微信</label></div>
      <div class="select"><input type="checkbox" name="question4.4" value="E" id="4_4_E" class="last"/><label for="4_4_E">其他</label><input type="text" name="q4_4other"  value="请注明..."  class="graytips text"/> </div>
   </div> 
    <div class="select"  style="padding: 10px 5px" >	<div style="font-weight: 800;color:#3c3c3c" >(5) 他人推荐：</div> 
   	<div class="select"><input type="checkbox" name="question4.5" value="A" id="4_5_A" /><label for="4_5A">父母、亲属</label> </div>
  	 <div class="select"><input type="checkbox" name="question4.5" value="B" id="4_5_B" /><label for="4_5_B">朋友</label> </div>
      <div class="select"><input type="checkbox" name="question4.5" value="C" id="4_5_C" /><label for="4_5_C">班主任、其他老师</label> </div>
       <div class="select"><input type="checkbox" name="question4.5" value="D" id="4_5_D" /><label for="4_5_D">西电大学生</label></div>
     <div class="select"><input type="checkbox" name="question4.5" value="E" id="4_5_E" /><label for="4_5_E">学校招生指南、招生说明会推荐</label></div>
      <div class="select"><input type="checkbox" name="question4.5" value="E" id="4_5_D" class="last"/><label for="4_5_D">其他</label><input type="text" name="q4_5other"  value="请注明..."  class="graytips text"/> </div>
   </div> 
    </div>
    
    <div class="seg"><hr></div>
    
	<div id="questionfive" class="area"  >
	<div class="question">5.您关注的招生类杂志是？</div>
 	<div class="select"><input type="radio" name="question5" id="q5_1" value="A"><label for="q5_1">不关注</label></div>
 	<div class="select"><input type="radio" name="question5" id="q5_2" value="B"><label for="q5_2">《求学》</label></div>
 	<div class="select"><input type="radio" name="question5" id="q5_3" value="C"><label for="q5_3">《高校招生》</label></div>
 	<div class="select"><input type="radio" name="question5" id="q5_4" value="D"><label for="q5_4">《高考金刊》</label></div>
 	
 	<div class="other"><input type="radio" name="question5" id="q5_5" value="E" class="last"><label for="q5_5">其他</label><input type="text"  name="q5other"  value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>
  
    <div id="questionsix" class="area"  >
	<div class="question">6.您对各高校派往当地的宣传人员？</div>
 	<div class="select"><input type="radio" name="question6" id="q6_1" value="A"><label for="q6_1">没有接触</label></div>
 	<div class="select"><input type="radio" name="question6" id="q6_2" value="B"><label for="q6_2">很少接触</label></div>
 	<div class="select"><input type="radio" name="question6" id="q6_3" value="C"><label for="q6_3">接触较多</label></div>
 	<div class="select"><input type="radio" name="question6" id="q6_4" value="D"><label for="q6_4">经常接触</label></div>
 	
 	<div class="other"><input type="radio" name="question6" id="q6_5" value="E" class="last"><label for="q6_5">其他</label><input type="text" name="q6other"   value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>
  	
  	<div id="questionseven" class="area"  >
	<div class="question">7.您或者您的家人对于各地的现场招生咨询会？</div>
 	<div class="select"><input type="radio" name="question7" id="q7_1" value="A"><label for="q7_1">经常参加</label></div>
 	<div class="select"><input type="radio" name="question7" id="q7_2" value="B"><label for="q7_2">较多参加</label></div>
 	<div class="select"><input type="radio" name="question7" id="q7_3" value="C"><label for="q7_3">很少参加</label></div>
 	<div class="select"><input type="radio" name="question7" id="q7_4" value="D"><label for="q7_4">不参加</label></div>
 	
 	<div class="other"><input type="radio" name="question7" id="q7_5" value="E" class="last"><label for="q7_5">其他</label><input type="text"  name="q7other"   value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>
  	
  	<div id="questioneight" class="area"  >
	<div class="question">8.您在您所在的中学见过西电的印刷版宣传资料或者宣传人员吗？</div>
 	
 	<div class="select"><input type="radio" name="question8" id="q8_1" value="A"><label for="q8_1">都见过</label></div>
 	<div class="select"><input type="radio" name="question8" id="q8_2" value="B"><label for="q8_2">见过宣传资料</label></div>
 	<div class="select"><input type="radio" name="question8" id="q8_3" value="C"><label for="q8_3">见过宣传人员</label></div>
 	<div class="select"><input type="radio" name="question8" id="q8_4" value="D"><label for="q8_4">都没见过</label></div>
 	
 	<div class="other"><input type="radio" name="question8" id="q8_5" value="E" class="last"><label for="q8_5">其他</label><input type="text"  name="q8other"  value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>
	
    <div id="questionnine" class="area"  >
	<div class="question">9.您关注的招生类网站是？</div>
 
 	<div class="select"><input type="radio" name="question9" id="q9_1" value="A"><label for="q9_1">各级招生主管部门网站</label></div>
 	<div class="select"><input type="radio" name="question9" id="q9_2" value="B"><label for="q9_2">高校招生办网站</label></div>
 	<div class="select"><input type="radio" name="question9" id="q9_3" value="C"><label for="q9_3">sohu、sina等门户网站</label></div>
 	
 	<div class="other"><input type="radio" name="question9" id="q9_4" value="D" class="last"><label for="q9_4">其他</label><input type="text"  name="q9other"  value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>	
    	
    <div id="questionten" class="area"  > 
	<div class="question">10.您访问过我校招生网站http://zsb.xidian.edu.cn吗？</div>
 	
 	<div class="select"><input type="radio" name="question10" id="q10_1" value="A"><label for="q10_1">没有</label></div>
 	<div class="select"><input type="radio" name="question10" id="q10_2" value="B"><label for="q10_2">偶尔访问</label></div>
 	<div class="select"><input type="radio" name="question10" id="q10_3" value="C"><label for="q10_3">较多访问</label></div>
 	<div class="select"><input type="radio" name="question10" id="q10_4" value="D"><label for="q10_4">经常访问</label></div>
 	
 	<div class="other"><input type="radio" name="question10" id="q10_5" value="E" class="last"><label for="q10_5">其他</label><input type="text" name="q10other"   value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>
 		
    <div id="questioneleven" class="area"  >
	<div class="question">11.什么人对您报考志愿影响比较大？</div>
 	
 	<div class="select"><input type="radio" name="question11" id="q11_1" value="A"><label for="q11_1">自己</label></div>
 	<div class="select"><input type="radio" name="question11" id="q11_2" value="B"><label for="q11_2">家长亲戚</label></div>
 	<div class="select"><input type="radio" name="question11" id="q11_3" value="C"><label for="q11_3">班主任、老师</label></div>
 	<div class="select"><input type="radio" name="question11" id="q11_4" value="D"><label for="q11_4">朋友同学</label></div>
 	<div class="select"><input type="radio" name="question11" id="q11_5" value="E"><label for="q11_5">已经考入大学的学长 </label></div>
 	
 	<div class="other"><input type="radio" name="question11" id="q11_6" value="F" class="last"><label for="q11_6">其他</label><input type="text"  name="q11other"  value="请注明..."class="graytips text" /></div>
 	</div>
 	 	
 	<div class="seg"><hr></div>
 	
 	<div id="questiontwelve" class="area"  >
	<div class="question">12.您认为各专业招生计划数量的多少对填报志愿时候的专业选择有无影响？</div>
 	
 	<div class="select"><input type="radio" name="question12" id="q12_1" value="A"><label for="q12_1">影响很大</label></div>
 	<div class="select"><input type="radio" name="question12" id="q12_2" value="B"><label for="q12_2">影响一般</label></div>
 	<div class="select"><input type="radio" name="question12" id="q12_3" value="C"><label for="q12_3">影响很小</label></div>
 	<div class="select"><input type="radio" name="question12" id="q12_4" value="D"><label for="q12_4">无影响</label></div>
 	
 	<div class="other"><input type="radio" name="question12" id="q12_5" value="E" class="last"><label for="q12_5">其他</label><input type="text" name="q12other"   value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>
    	
    <div id="questionthirteen" class="area"  >
	<div class="question">13.您选择西电的原因是？</div>
 	
 	<div class="select"><input type="radio" name="question13" id="q13_1" value="A"><label for="q13_1">分数合适</label></div>
 	<div class="select"><input type="radio" name="question13" id="q13_2" value="B"><label for="q13_2">专业好</label></div>
 	<div class="select"><input type="radio" name="question13" id="q13_3" value="C"><label for="q13_3">地理位置好</label></div>
 	<div class="select"><input type="radio" name="question13" id="q13_4" value="D"><label for="q13_4">就业好</label></div>
 	
 	<div class="other"><input type="radio" name="question13" id="q13_5" value="E" class="last"><label for="q13_5">其他</label><input type="text" name="q13other"   value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>	
    	
    <div id="questionfourteen" class="area"  >
	<div class="question">14.影响您报考高校最重要的因素是哪一条？</div>
 	
 	<div class="select"><input type="radio" name="question14" id="q14_1" value="A"><label for="q14_1">高校整体排名</label></div>
 	<div class="select"><input type="radio" name="question14" id="q14_2" value="B"><label for="q14_2">是否985或211</label></div>
 	<div class="select"><input type="radio" name="question14" id="q14_3" value="C"><label for="q14_3">专业排名</label></div>
 	<div class="select"><input type="radio" name="question14" id="q14_4" value="D"><label for="q14_4">地理位置 </label></div>
 	<div class="select"><input type="radio" name="question14" id="q14_5" value="E"><label for="q14_5">就业情况 </label></div>
 	
 	<div class="other"><input type="radio" name="question14" id="q14_6" value="F" class="last"><label for="q14_6">其他</label><input type="text"  name="q14other"  value="请注明..." class="graytips text" /></div>
 	</div>
 	 	
 	<div class="seg"><hr></div>	
    	
    <div id="questionfifteen" class="area"  >
	<div class="question">15.您今年报考我校时是否知道我校为国家“985”优势学科创新平台建设高校？</div>
 	
 	<div class="select"><input type="radio" name="question15" id="q15_1" value="A"><label for="q15_1">知道</label></div>
 	<div class="select"><input type="radio" name="question15" id="q15_2" value="B"><label for="q15_2">不知道</label></div>
 	<div class="select"><input type="radio" name="question15" id="q15_3" value="C"><label for="q15_3">没听说过国家“985”优势学科创新平台</label></div>
 	
 	</div>
 	 	
 	<div class="seg"><hr></div>	
    		
    <div id="questionsixteen" class="area"  >
	<div class="question">16.国家“2011”协同创新计划对您和您的同学报考高校有无影响？</div>
 	
 	<div class="select"><input type="radio" name="question16" id="q16_1" value="A"><label for="q16_1">有影响</label></div>
 	<div class="select"><input type="radio" name="question16" id="q16_2" value="B"><label for="q16_2">没有影响</label></div>
 	<div class="select"><input type="radio" name="question16" id="q16_3" value="C"><label for="q16_3">没听说过“2011”计划</label></div>
 	
 	</div>
 	 	
 	<div class="seg"><hr></div>	
    			
    <div id="questionseventeen" class="area"  >
	<div class="question">17.您所在中学是西电“优秀生源基地”吗？</div>
 	
 	<div class="select"><input type="radio" name="question17" id="q17_1" value="A"><label for="q17_1">是</label></div>
 	<div class="select"><input type="radio" name="question17" id="q17_2" value="B"><label for="q17_2">不是</label></div>
 	<div class="select"><input type="radio" name="question17" id="q17_3" value="C"><label for="q17_3">不清楚</label></div>
 	
 	<div class="other"><input type="radio" name="question17" id="q17_4" value="D" class="last"><label for="q17_4">其他</label><input type="text" name="q17other"   value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>		
    	
    <div id="questioneighteen" class="area"  >
	<div class="question">18.入学前，您对西电的印象如何？</div>
 	
 	<div class="select"><input type="radio" name="question18" id="q18_1" value="A"><label for="q18_1">很好</label></div>
 	<div class="select"><input type="radio" name="question18" id="q18_2" value="B"><label for="q18_2">好</label></div>
 	<div class="select"><input type="radio" name="question18" id="q18_3" value="C"><label for="q18_3">一般</label></div>
 	<div class="select"><input type="radio" name="question18" id="q18_4" value="D"><label for="q18_4">不好</label></div>
 	
 	<div class="other"><input type="radio" name="question18" id="q18_5" value="E" class="last"><label for="q18_5">其他</label><input type="text"  name="q18other"  value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>	
 	
 	<div id="questionnineteen" class="area"  >
	<div class="question">19.入学后，您对西电的印象如何？</div>
 	
 	<div class="select"><input type="radio" name="question19" id="q19_1" value="A"><label for="q19_1">很好</label></div>
 	<div class="select"><input type="radio" name="question19" id="q19_2" value="B"><label for="q19_2">好</label></div>
 	<div class="select"><input type="radio" name="question19" id="q19_3" value="C"><label for="q19_3">一般</label></div>
 	<div class="select"><input type="radio" name="question19" id="q19_4" value="D"><label for="q19_4">不好</label></div>
 	
 	<div class="other"><input type="radio" name="question19" id="q19_5" value="E" class="last"><label for="q19_5">其他</label><input type="text"  name="q19other"  value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>		
    	
    <div id="questiontwenty" class="area"  >
	<div class="question">20.请对西电的“学校知名度”做出您的评价</div>
 	
 	<div class="select"><input type="radio" name="question20" id="q20_1" value="A"><label for="q20_1">很高</label></div>
 	<div class="select"><input type="radio" name="question20" id="q20_2" value="B"><label for="q20_2">高</label></div>
 	<div class="select"><input type="radio" name="question20" id="q20_3" value="C"><label for="q20_3">一般</label></div>
 	<div class="select"><input type="radio" name="question20" id="q20_4" value="D"><label for="q20_4">不高</label></div>
 	
 	<div class="other"><input type="radio" name="question20" id="q20_5" value="E" class="last"><label for="q20_5">其他</label><input type="text"  name="q20other"  value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>	
 	
    <div id="questiontwenty-one" class="area"  >
	<div class="question">21.您是否浏览过我校报考指南？若是，其中哪部分信息是您最关注的？</div>
 	
 	<div class="select"><input type="radio" name="question21" id="q21_1" value="A"><label for="q21_1">没看过</label></div>
 	<div class="select"><input type="radio" name="question21" id="q21_2" value="B"><label for="q21_2">学校介绍</label></div>
 	<div class="select"><input type="radio" name="question21" id="q21_3" value="C"><label for="q21_3">各专业介绍及课程设置</label></div>
 	<div class="select"><input type="radio" name="question21" id="q21_4" value="D"><label for="q21_4">历年录取分数</label></div>
 	
 	<div class="other"><input type="radio" name="question21" id="q21_5" value="E" class="last"><label for="q21_5">其他</label><input type="text"  name="q21other"  value="请注明..." class="graytips text"/></div>
 	</div>
 	
 	<div class="seg"><hr></div>		
    	
    	
   <div id="questiontwenyt-two" class="textarea"  >
   <div class="question">22.您对我校《报考指南》提供的信息的意见，需增加哪方面的内容（请填写100字以内，没有意见请填写“无”）：</div>
   <div class="question textform" ><s:textarea name="question22" id="question22" cols="25" rows="5" style='resize: none;font-size:20' class="textform"/> </div>
   </div>
   
   <div class="seg"><hr></div>	
   
   <div id="questiontwenyt-three" class="textarea"  >
   <div class="question">23.您对我校招生网站http://zsb.xidian.edu.cn提供的信息、留言版面的意见（请填写100字以内，没有意见请填写“无”）：</div>
   <div class="question textform" ><s:textarea name="question23" id="question23" cols="25" rows="5" style='resize: none;font-size:20' class="textform"/> </div>
   </div>
   
   <div class="seg"><hr></div>	
   
   <div id="questiontwenyt-four" class="textarea"  >
   <div class="question">24.列出您当初报考时与西电一起作为备选的学校（没有请在第一个输入框中填写“无”）：</div>
    <!--  <div class="question text" ><s:textarea name="question24"  cols="70" rows="5" style='resize: none;font-size:20' class="text"/> </div>-->
   <div class="question textform" ><s:textfield name="question24_0" id="question24_0"  style='resize: none;font-size:20' class="textform"/> </div>
   <div class="question textform" ><s:textfield name="question24_1" id="question24_1"  style='resize: none;font-size:20' class="textform"/> </div>
   <div class="question textform" ><s:textfield name="question24_2" id="question24_2"  style='resize: none;font-size:20' class="textform"/> </div>
   <div class="question textform" ><s:textfield name="question24_3" id="question24_3" style='resize: none;font-size:20' class="textform"/> </div>
   <div class="question textform" ><s:textfield name="question24_4" id="question24_4" style='resize: none;font-size:20' class="textform"/> </div>
   </div>
   
   <div class="seg"><hr></div>
   
   <div id="questiontwenyt-four" class="textarea"  >
   <div class="question">25.报考前您希望高校提供哪些信息，以及对西电招生工作的意见和建议（请填写100字以内，没有意见请填写“无”）：</div>
   <div class="question textform" ><s:textarea name="question25" id="question25" cols="25" rows="5" style='resize: none;font-size:20' class="textform"/> </div>
   </div>
   
   <div class="seg"><hr></div>
   
   <div><p style="color:#C4C4C4;font-size:25px;align:center">问卷到此结束，感谢作答！</p> </div>
   
      <s:submit value="提交问卷" id="submit" class="button"></s:submit>
  </s:form>

   </div>
   <div align="center"><s:include value="footer.jsp"></s:include>	</div>	
  </body>
</html>
