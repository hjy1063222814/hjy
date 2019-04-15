<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyGroupMember.jsp' starting page</title>
    
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
      <table border="1">
  <tr>
    <td>团队id</td>
    <td>${sessionScope.group.teamId}</td>                                  <!-- 这里显示从数据库查询得来的团队id(每个团队一个独一无二的id) -->
  </tr>
  <tr>
    <td>组团名</td>
    <td>${sessionScope.group.activity}</td>                                  
  </tr>
  <tr>
    <td>团队类型</td>
    <td>${sessionScope.group.type}</td>                                  <!-- 这里显示从数据库查询得来的团队类型 -->
  </tr>
  <tr>
    <th>身份</th>
    <th>参加者</th>                                
  </tr>
  <tr>
    <th>团队限定人数</th>                         <!-- 这里显示从数据库查询得来的团队限定人数-->
    <th>${sessionScope.group.limitNum}</th>                                
  </tr>
   <tr>
    <th>当前人数</th>                              
    <th>${sessionScope.group.numNow}</th>                                <!-- 这里显示从数据库查询得来的团队当前人数-->
  </tr>
  <tr>
    <th>活动开始时间</th>                              
    <th>${sessionScope.group.time}</th>                                <!-- 这里显示从数据库查询得来的团队活动开始时间-->
  </tr>
  <tr>
    <th>发起人联系方式</th>                              
    <th>${sessionScope.group.phone}</th>                                <!-- 这里显示从数据库查询得来的团队发起人联系方式-->
  </tr>
  <tr>
    <th>活动每人预算</th>                              
    <th>${sessionScope.group.budget}</th>                                <!-- 这里显示从数据库查询得来的团队的每人预算-->
  </tr>
</table> <br>
<input type="button" value="退出该团" onclick="location.href='leaveGroup'" /> <br>
<input type="button" value="返回" onclick="location.href='fault'" /> <br>
</div>
</div>
     </div>
      </div>
    <jsp:include page="bottom.jsp"/>
  </body>
  
</html>
