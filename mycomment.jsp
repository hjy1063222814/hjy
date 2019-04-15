<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"  import="cn.edu.zjut.po.*"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.*"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="assets/css/style.css" />

<meta name="Description" content=""/>
		 <link rel="stylesheet" href="css/index.css"/>
		 <link rel="stylesheet" href="css/chongzhi.css"/>
		 <link rel="stylesheet" href="http://s0.meituan.net/bs/fe-web-meituan/2b42b60/css/com_header.css"/>
		 <link rel="stylesheet" href="http://s0.meituan.net/bs/fe-web-meituan/bfd5ac5/css/main.css"/>
		 
		     <link href="style.css" rel="stylesheet">
		 
<title>旅游圈</title>
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
						<div class="divcss5">
						<form action="findStuspace" method="post">

						<button type="submit"name="submit"value="hotcommit"  class="btn btn-info">热度</button>
						<button type="submit"name="submit"value="recentcommit"  class="btn btn-info">实时</button>
						<button type="submit"name="submit"value="mycommit"  class="btn btn-info">我的</button>
						<input type="button" class="btn btn-info"  value="发表" onClick="window.location.href='publish.jsp'"> 
					</form>
   						</div>

    </div>
    </div>
    </div>
   <div style="color:#5a5555">
   <font face="微软雅黑" size=3px>
	<%
			String usernumber =(String)session.getAttribute("user");
			List list=(List)session.getAttribute("items");
			Stuspace stuspace =null;
			if(list!=null)
			  for(int i=0;i<list.size();i++)
			   {
				  stuspace=(Stuspace)list.get(i);
				  StuspacePK spk=stuspace.getSpk();
		%>
    <fieldset>
    <div class="ref-box brd-btm hreview">
                    <div class="ref-avatar">
                        <img alt="" src="images/head1.png" class="avatar avatar-54 photo" height="54" width="54">
                    </div>

                    <div class="ref-info">
                        <div class="ref-author">
    					<strong>用户：<%=spk.getStu_usernumber()%></strong>
    					<span>时间：<%=spk.getStuspace_time()%></span>
    				</div>

                        <blockquote class="ref-cont clear-mrg">
                        	<p>评论：<%=stuspace.getStuspace_txt()%></p>
                        </blockquote>
                        <br>
                         <div>图片：<img src="<%=stuspace.getStuspace_photo()%>" width="100" height="100">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
    					<div>点赞：<%=stuspace.getStuspace_like()%></div>
   <div><a href="findLike?stu_usernumber=<%=spk.getStu_usernumber()%>&stuspace_time=<%=spk.getStuspace_time()%>">点赞</a></div> 
    </fieldset>
    <br/>
    <br/>
    <br/>
    <br/>
    <%}%>
    </font>
    </div>
    <jsp:include page="bottom.jsp"/>
</body>
</html>
	
	
	
	
	
	
	
	
	
	
	