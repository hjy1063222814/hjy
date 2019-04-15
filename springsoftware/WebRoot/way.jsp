<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
	body, html,#allmap {width: 100%;height: 400px;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6dgCnbww0pKjrSqemh2NtIeAyhnQnXuP"></script>
	<title>用户路线</title>
</head>
<body>
	<div id="allmap"></div>
</body>
</html>
<script type="text/javascript">
	function getParameterByName() {
		
	    var argsStr = window.location.href.slice(window.location.href.indexOf('?')+1);  
	    argsStr = argsStr.split('&');
	    var x=new Array();
	    var y=new Array();
	    for(var i=0;i<argsStr.length;i++)
	    {
	    	x = argsStr[i].split('=');
	    	y[i] = decodeURI(x[1]);
	    }
	        return y;
	}
	var add=new Array();
	add=getParameterByName();
	var p=add[add.length-1].split(",");
	//alert(add[0]+add[1]);
	var map = new BMap.Map("allmap");
	map.centerAndZoom(new BMap.Point(120.1689,30.2553), 15);
	var p1 = new BMap.Point(120.043334,30.230949);
	var p2 = new BMap.Point(p[0],p[1]);
	
	var driving = new BMap.DrivingRoute(map, {renderOptions:{map: map, autoViewport: true}});
	driving.search(p1, p2,{waypoints:[add[0]/*,add[1]*/]});
	map.enableScrollWheelZoom(true);
</script>