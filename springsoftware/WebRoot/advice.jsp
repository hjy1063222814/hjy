<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,cn.edu.zjut.po.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
		body, html,#allmap {width: 100%;height: 100%; margin:0;font-family:"微软雅黑";}
		#l-map{height:300px;width:100%;}
		#r-result{width:100%; font-size: 14px; line-height: 20px;}
		#r-result1{width:100%; font-size: 14px; line-height: 20px;}
		#allmap{height:500px;width:100%;}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6dgCnbww0pKjrSqemh2NtIeAyhnQnXuP"></script>
	<title>用户推荐</title>
</head>
<body>
<% 
	Student s=(Student)session.getAttribute("userMessage");
	String h=s.getStu_hobby();
%>
<jsp:include page="top.jsp"/>
<div class="location">
 <!----------------轮播----------------->
			 <div id="banner-container">     
			       <div class="banner-left">
				        <div class="banner-top">
						   <div class="banner-top-inner"><a href="searchsellers.jsp">商家搜索</a><a href="showStudent">查看个人信息</a><a href="map.jsp">行程推荐</a><a href="searchteam.jsp">组团</a><a href="circle.jsp">旅游圈</a></div>
						</div>
						<br>
	<p><%=request.getParameter("address")%></p>
	<div id="l-map" style='display:none;'></div>      <!--设置不可见 -->
	<div id="r-result"></div>
	<div id="r-result1" style='display:none;'></div>
	<input type="button" value="查看路线图" onclick="test()"/>
	<div id="allmap"></div>
	</div>
				</div>
				</div>

<jsp:include page="bottom.jsp"/>
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	
	function getParameterByName() {
	    var argsStr = window.location.href.slice(window.location.href.indexOf('?')+1).split('=');  //获取URL参数字符串
	        return argsStr[1];
    }
	var add=getParameterByName();
	var map = new BMap.Map("l-map"); 
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 18);
	// 创建地址解析器实例
	var myGeo = new BMap.Geocoder();
	// 将地址解析结果显示在地图上,并调整地图视野
	myGeo.getPoint(add, function(point){
		if (point) {
			//map.removeOverlay(marker);
			map.centerAndZoom(point, 20);
			map.addOverlay(new BMap.Marker(point));
			
			var s = [];
			var j =[];
			j.push( point.lng+"," + point.lat);
			document.getElementById("r-result1").innerHTML = j.join("<br/>");
			var options = {
				onSearchComplete: function(results){
					// 判断状态是否正确
					if (local.getStatus() == BMAP_STATUS_SUCCESS){
						for (var i = 0; i < 1; i ++){
							s.push(results.getPoi(i).title + ", " + results.getPoi(i).address);
						}
						document.getElementById("r-result").innerHTML = s.join("<br/>");
					}
				}
			};
			var local = new BMap.LocalSearch(map, options);
			
			var h= "<%= h %>";
			
			h=h.split(",");
			for(var i=0;i<h.length;i++)
			{
				local.searchNearby(h[i],point,2000);        //爱好读取,设置范围
			}
			/*local.searchNearby("电影",point,3000);          
			local.searchNearby("奶茶",point,1000);
			local.searchNearby("川菜",point,2000);        //爱好读取,设置范围*/
			
		}else{
			alert("您选择地址没有解析到结果!");
		}
	}, "杭州市");
	function
	 test(){       
		var s =document.getElementById("r-result").innerHTML;
		var k =document.getElementById("r-result1").innerHTML;
		s=s.split("<br>");
		k=k.split(",");
		var x;
		var ur="";
		var i;
		var y=new Array();
		for(i=0;i<s.length;i++)
		{
			x=s[i].split(",");
			y[i]=x[0];
		}
		var map = new BMap.Map("allmap");
		map.centerAndZoom(new BMap.Point(120.1689,30.2553), 15);
		var p1 = new BMap.Point(120.043334,30.230949);
		var p2 = new BMap.Point(k[0],k[1]);
		var driving = new BMap.DrivingRoute(map, {renderOptions:{map: map, autoViewport: true}});
		driving.search(p1, p2,{waypoints:y});
		map.enableScrollWheelZoom(true);
	 }
</script>
