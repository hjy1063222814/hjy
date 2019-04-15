<%@ page language="java" contentType="text/html; charset=UTF-8" import="cn.edu.zjut.po.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="assets/css/style.css" />
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	
		<meta name="Description" content=""/>
		 <link rel="stylesheet" href="css/index.css"/>
		 <link rel="stylesheet" href="css/chongzhi.css"/>
		 <link rel="stylesheet" href="http://s0.meituan.net/bs/fe-web-meituan/2b42b60/css/com_header.css"/>
		 <link rel="stylesheet" href="http://s0.meituan.net/bs/fe-web-meituan/bfd5ac5/css/main.css"/>
		 
	<style type="text/css">
		body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";font-size:14px;}
		#l-map{height:500px;width:60%;}
		#r-result{width:100%;}
	</style>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>输入想去地点</title>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6dgCnbww0pKjrSqemh2NtIeAyhnQnXuP"></script>
</head>
<body>
<%	String username =(String)session.getAttribute("user");%>
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
								<div id="l-map" style='display:none;'></div>
	<div id="r-result"><input type="text" class="form-control" style="width:300px" id="suggestId" placeholder="请输入地点:" size="20" style="width:150px;" /></div>
	<div id="searchResultPanel" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></div>
	
	<input type="button"  class="btn btn-info" value="查看推荐计划" onclick="test()"/>
	</div>
   						
					</div>
				</div>
				</div>

<jsp:include page="bottom.jsp"/>

</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	function
	 test(){       
		var username= "<%= username %>";
		if(username=="null")
		{
			alert("请先登陆!");
			location.href="login.jsp";
		}
		else
		{
			var s =document.getElementById("suggestId").value;
			location.href="advice.jsp?"+"address="+s;
		}
	 }
	function G(id) {
		return document.getElementById(id);
	}

	var map = new BMap.Map("l-map");
	map.centerAndZoom("杭州",12);                   // 初始化地图,设置城市和地图级别。

	var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
		{"input" : "suggestId"
		,"location" : map
	});

	ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
	var str = "";
		var _value = e.fromitem.value;
		var value = "";
		if (e.fromitem.index > -1) {
			value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		}    
		str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
		
		value = "";
		if (e.toitem.index > -1) {
			_value = e.toitem.value;
			value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		}    
		str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
		G("searchResultPanel").innerHTML = str;
	});

	var myValue;
	ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
	var _value = e.item.value;
		myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
		G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
		
		setPlace();
	});

	function setPlace(){
		map.clearOverlays();    //清除地图上所有覆盖物
		function myFun(){
			var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
			map.centerAndZoom(pp, 18);
			map.addOverlay(new BMap.Marker(pp));    //添加标注
		}
		var local = new BMap.LocalSearch(map, { //智能搜索
		  onSearchComplete: myFun
		});
		local.search(myValue);
	}

</script>

