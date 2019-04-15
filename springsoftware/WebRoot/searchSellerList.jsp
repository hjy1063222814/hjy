<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  
    import="java.util.List" import="java.util.*" import="cn.edu.zjut.po.Seller"  import="cn.edu.zjut.po.SearchMessage"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
    <%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<s:head theme="xhtml"/>
<sx:head parseContent="true" extraLocales="UTF-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商家查询结果</title>
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
	<%
			List list = (List)session.getAttribute("sellerList");
			SearchMessage searchMessage = (SearchMessage)session.getAttribute("searchMessage");
	%>
	<center>
		商家查询结果
		<br><a href="search?searchMessage.text=<%= searchMessage.getText() %>&
								searchMessage.type=<%= searchMessage.getType() %>&
								order=1">人均消费↑</a>
			<a href="search?searchMessage.text=<%= searchMessage.getText() %>&
								searchMessage.type=<%= searchMessage.getType() %>&
								order=2">人均消费↓</a>
			<a href="search?searchMessage.text=<%= searchMessage.getText() %>&
								searchMessage.type=<%= searchMessage.getType() %>&
								order=3">商家评分↓</a>
	</center>
		<%
			for(int i=0;i<list.size();i++)
			{
				Seller seller = (Seller)list.get(i);
		%>
	<table>
			<tr>
				<td>商家名：</td>
				<td><a href="item?sellernumber=<%= seller.getSeller_sellernumber() %>"><%= seller.getSeller_sellername() %></a></td>
				<td>商家标签：</td>
				<td><%= seller.getSeller_type() %></td>
			<tr>
			<tr>
				<td>所在地点：</td>
				<td><%= seller.getSeller_place() %></td>
				<td>营业时间：</td>
				<td><%= seller.getSeller_opentime() %></td>
			<tr>
			<tr>
				<td>人均消费：</td>
				<td><%= seller.getSeller_average() %></td>
				<td>商家评分：</td>
				<td><%= seller.getSeller_score() %></td>
			<tr>
			<tr>
				<td>客服电话：</td>
				<td><%= seller.getSeller_telephone() %></td>
				<td>商家信息：</td>
				<td><%= seller.getSeller_sellerinfo() %></td>
			<tr>
	</table>
	<br><br>
		<%
			}
		%>
<jsp:include page="bottom.jsp"/>

</body>
</html>