<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>              <!-- 发起组团界面 -->
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
  <head>
  <s:head theme="xhtml"/>
<sx:head parseContent="true" extraLocales="UTF-8"/>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Begin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="text/javascript">
  function check(){
  var time=document.getElementById("k1").value
    var r = time.match(/^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\s+(20|21|22|23|[0-1]\d):[0-5]\d:[0-5]\d$/);
    if(r==null)
    {
    alert("请输入正确的开始时间格式,如:2014-01-01 12:00:00");
        return false; 
       }
    return true;
}
  </script>
 
  <body>
  <jsp:include page="top.jsp"/>
<div class="location">
 <!----------------轮播----------------->
			 <div id="banner-container">     
			       <div class="banner-left">
				        <div class="banner-top">
						    <div class="banner-top-inner"><a href="searchsellers.jsp">商家搜索</a><a href="showStudent">查看个人信息</a><a href="map.jsp">行程推荐</a><a href="searchteam.jsp">组团</a><a href="circle.jsp">旅游圈</a></div>
						</div>
						<br>
  <div align="center">
    <form action="begin_group" method="post" onsubmit="return check()">                         <!-- 用户创建团队界面 -->
    
    请选择您要创建的团队类型:<br>
<input type="radio" name="group.type" value="sport" check="checked">运动   
<input type="radio" name="group.type" value="food" >饮食
<input type="radio" name="group.type" value="indoor" >室内活动
<input type="radio" name="group.type" value="other" >其他<br>
请选择团队活动需要人数<br>
<select id="people_num" name="group.limitNum">
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
</select><br>
请输入团队活动开始时间：<input name="group.time" id='k1' type="text"><BR>
请输入您的联系方式(手机号码)：<input name="group.phone" type="text"><BR>
请输入要组织的活动：<input name="group.activity" type="text"><BR>
请输入活动地点：<input name="group.place" type="text"><BR>
请输入每人活动预算：<input name="group.budget" type="text"><br>
<input type="submit" value="创建团队" ><br>
<input type="button" value="返回" onclick="window.location.href='fault'" /> <br>
</form>
</div>
</div>
     </div>
      </div>
    <jsp:include page="bottom.jsp"/>
  </body>
</html>
