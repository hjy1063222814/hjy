<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" import="cn.edu.zjut.po.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		 <meta name="Description" content=""/>
		 <link rel="stylesheet" href="css/index.css"/>
		 <link rel="stylesheet" href="css/chongzhi.css"/>
		 <link rel="stylesheet" href="http://s0.meituan.net/bs/fe-web-meituan/2b42b60/css/com_header.css"/>
		 <link rel="stylesheet" href="http://s0.meituan.net/bs/fe-web-meituan/bfd5ac5/css/main.css"/>
		 
		 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body>
	     <!-------------------header----------------->
		 <div class="header">
		    <div class="header-box">
		      <div class="header-bar">
			       <ul>
				       <li><span class="iconfont header-icon icon-header_location">杭州</span></li>
					   <li><span><a href="#">切换城市</a></span></li>
					   <li>[<span><a href="#">宁波</a></span><span><a href="#">上海</a></span><span><a href="#">北京</a></span>]</li>
					   <% 
					   		User user=(User)session.getAttribute("loginUser");
					   		if(user==null)
					   		{
					   %>
					   <li><span><a href="login.jsp">立即登录</a></span></li>
					   <li><span><a href="register.jsp">注册</a></span></li>
					   <%
					   		}
					   		else if(user.getUser_type().equals("student"))
					   		{
					   			Student student=(Student)session.getAttribute("userMessage");
					   %>
					   <li><span><%= student.getStu_petname() %>，欢迎您的登陆!</span></li>
					   
					   <li><span><a href="quit">退出登陆</a></span></li>
					   <%
					   		}
						   else if(user.getUser_type().equals("seller"))
					   		{
					   			Seller seller=(Seller)session.getAttribute("userMessage");
					   %>
					   <li><span><%= seller.getSeller_sellername() %>，欢迎您的登陆!</span></li>
					   
					   <li><span><a href="quit">退出登陆</a></span></li>
					   <%
					   		}
					   %>
				   </ul>
				   <div class="header-left">
				       
				   </div>
			  </div>
			</div>
	
		
		<!-------------------搜索------------------->
			<div class="search">
		      <div class="search-left">
			      <a href="#"><img src="images/logo.png" width="120px" height="auto"/></a>
			  </div> 
			  <div class="search-middle">
			     <div class="search-middle-top">
			        <input type="text" name="text" placeholder="搜索商家或地点" class="input-text"/>
				    <button class="iconfont header-icon icon-search btn"></button>
			     </div>
				 <ul>
				    <li><a href="#">誉鲜米粉</a></li>
					<li><a href="#">韩大地自主烧烤城</a></li>
					<li><a href="#">佰烧海鲜烤肉自助</a></li>
					<li><a href="#">金釜山自助海鲜烤肉火锅</a></li>
				 </ul>
			  </div> 
			  <div class="search-right">
			     <ul>
				     <li><a href="#"><i class="iconfont icon-tui"></i><span>随时退</span></a></li>
					 <li><a href="#"><i class="iconfont icon-tui2"></i><span>不满意面单</span></a></li>
					 <li><a href="#"><i class="iconfont icon-tui1"></i><span>过期退</span></a></li>
				 </ul>
			  </div>
		    </div>
		    </div>				
</body>