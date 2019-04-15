<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Search.jsp' starting page</title>
    
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
    <input type="button" value="运动" onclick="window.location.href='sport'" /> <br>
    <input type="button" value="饮食" onclick="window.location.href='food'" /> <br>
    <input type="button" value="室内活动" onclick="window.location.href='indoor'" /> <br>
    <input type="button" value="其他" onclick="window.location.href='other'" /> <br>
    <input type="button" value="返回" onclick="window.location.href='fault'" /> <br>
    <s:property value="#request.message"/><p>
    </div>
    <div align="center">
   <div  style="width:700px; height:225px; overflow-y:scroll;">                               <!-- 用一个可滚动的table显示现有的组团 -->
   <c:forEach items="${sessionScope.list}" var="li"> <!-- 这里用一个循环数据库里取出来的团队有几个就循环几次，每次创建一个表格 -->
   <table cellspacing="0" width="732px" id="dataTableDetail" align="center" border=1>          
   <tr>
    <td>团队id</td>
    <td>${li.teamId}</td>
  </tr>
  <tr>
    <td>团队类型</td>
    <td>${li.type}</td>
  </tr>
<tr>
    <td>团队当前人数</td>
    <td>${li.numNow}</td>
  </tr>
  <tr>
    <td>团队要求人数</td>
    <td>${li.limitNum}</td>
  </tr>
  <tr>
    <td>时间</td>
    <td>${li.time}</td>
  </tr>
  <tr>
    <td>发起人联系方式</td>
    <td>${li.phone}</td>
  </tr>
   <tr>
    <td>活动</td>
    <td>${li.activity}</td>
  </tr>
  <tr>
    <th>活动每人预算</th>                              
    <th>${li.budget}</th>                                
  </tr>
   </table>
   <form action="thisGroup?id=${li.teamId}" method="post"><button type="submit">加入该团</button> <br></form> <br>
   </c:forEach>
   </div>
   </div>    </div>
     </div>
      </div>
    <jsp:include page="bottom.jsp"/>
