<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
	
	
		 <meta name="Description" content=""/>
		 <link rel="stylesheet" href="css/index.css"/>
		 <link rel="stylesheet" href="css/chongzhi.css"/>
		 <link rel="stylesheet" href="http://s0.meituan.net/bs/fe-web-meituan/2b42b60/css/com_header.css"/>
		 <link rel="stylesheet" href="http://s0.meituan.net/bs/fe-web-meituan/bfd5ac5/css/main.css"/>
	
<link rel="stylesheet" href="assets/css/style.css" />
    <title></title>
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
						<form action = "search" method="post">
           					 请选择查询标签：<SELECT NAME="searchMessage.type"  class="form-control" style="width:400px" >
			             	<OPTION value="0">1)商家名</OPTION>
			             	<OPTION value="1">2)商家特色</OPTION>  
			             							</SELECT><br> 
			              	请输入搜索信息：<input type = "text" class="form-control" style="width:400px" name="searchMessage.text" size="20"><br>
			              	<input type ="hidden" name="order" value="0"/>
			            	<input type = "submit" class="btn btn-info" value = "搜索">
   						</form>
   						</div>
					</div>
				</div>
</div>
		


<jsp:include page="bottom.jsp"/>
  </body>
</html>