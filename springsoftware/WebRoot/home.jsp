<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" import="cn.edu.zjut.po.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
    <head>
	     <title>青娱</title>
		 <meta charset="UTF-8"/>
		 <meta name="Keywords" content=""/>
		 <meta name="Description" content=""/>
		 <link rel="stylesheet" href="css/index.css"/>
		 <link rel="stylesheet" href="css/chongzhi.css"/>
		 <link rel="stylesheet" href="http://s0.meituan.net/bs/fe-web-meituan/2b42b60/css/com_header.css"/>
		 <link rel="stylesheet" href="http://s0.meituan.net/bs/fe-web-meituan/bfd5ac5/css/main.css"/>
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
			      <a href="home.html"><img src="images/logo.png" width="120px" height="auto"/></a>
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
		 <div class="location">
		     <!-------------------定位栏----------------->
		     <div class="location-left">
			     <p class="top">全部分类</p>
				 <div class="bottom-menu">
				     <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">美食</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">美食</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">代金券</a></li>
												<li><a href="#">甜点饮品</a></li>
												<li><a href="#">火锅</a></li>
												<li><a href="#">自助餐</a></li>
												<li><a href="#">小吃快餐</a></li>
												<li><a href="#">日韩料理</a></li>
											</ul>
											<ul>
											    <li><a href="#">西餐</a></li>
												<li><a href="#">聚餐宴请</a></li>
												<li><a href="#">烧烤烤肉</a></li>
												<li><a href="#">东北菜</a></li>
												<li><a href="#">川湘菜</a></li>
												<li><a href="#">江浙菜</a></li>
											</ul>
											<ul>
											    <li><a href="#">香锅烤鱼</a></li>
												<li><a href="#">粤港菜</a></li>
												<li><a href="#">中式烧烤/烧串</a></li>
												<li><a href="#">西北菜</a></li>
											</ul>
											<ul>
											    <li><a href="#">咖啡酒吧茶馆</a></li>
												<li><a href="#">云贵菜</a></li>
												<li><a href="#">东南亚菜</a></li>
												<li><a href="#">海鲜</a></li>
												<li><a href="#">素食</a></li>
											</ul>
											<ul>
											    <li><a href="#">台湾/客家菜</a></li>
												<li><a href="#">创意菜</a></li>
												<li><a href="#">汤/粥/炖菜</a></li>
												<li><a href="#">蒙餐</a></li>
												<li><a href="#">新疆菜</a></li>
											</ul>
											<ul>
											    <li><a href="#">其他美食</a></li>
												<li><a href="#">京菜鲁菜</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">外卖</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">外卖</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">青娱外卖</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">酒店</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">榛果民宿</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">猫眼电影</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">机票&nbsp/&nbsp火车票</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">休闲娱乐&nbsp/ KTV</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">生活服务</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">生活服务</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">衣物/皮具洗护</a></li>
												<li><a href="#">家政</a></li>
												<li><a href="#">搬家运输</a></li>
												<li><a href="#">送水</a></li>
												<li><a href="#">充值缴费</a></li>
											</ul>
											<ul>
											    <li><a href="#">服饰/鞋包养护</a></li>
												<li><a href="#">开锁/换锁</a></li>
												<li><a href="#">居家维修</a></li>
												<li><a href="#">管道疏通</a></li>
											</ul>
											<ul>
											    <li><a href="#">家电维修清洗</a></li>
												<li><a href="#">电脑维修</a></li>
												<li><a href="#">手机维修</a></li>
												<li><a href="#">证件照/肖像摄影</a></li>
											</ul>
											<ul>
											    <li><a href="#">照片冲印/图文文印</a></li>
												<li><a href="#">商务服务/法律服务</a></li>
												<li><a href="#">文化传媒机构</a></li>
											</ul>
											<ul>
											    <li><a href="#">成人用品/情趣用品</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">丽人&nbsp/&nbsp美发&nbsp/&nbsp医学美容</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">结婚&nbsp/&nbsp婚纱摄影&nbsp/&nbsp婚宴</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">亲子&nbsp/&nbsp儿童乐园&nbsp/&nbsp幼教</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">运动健身&nbsp/&nbsp健身中心</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">家装&nbsp/&nbsp建材&nbsp/&nbsp家居</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">装修设计</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">半包装修</a></li>
												<li><a href="#">全包装修</a></li>
												<li><a href="#">清包装修</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">装修建材</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">地板</a></li>
												<li><a href="#">瓷砖石材</a></li>
												<li><a href="#">橱柜</a></li>
												<li><a href="#">灯饰照明</a></li>
												<li><a href="#">厨卫洁具</a></li>
												<li><a href="#">油漆涂料</a></li>
											</ul>
											<ul>
											    <li><a href="#">集成吊顶</a></li>
												<li><a href="#">墙纸墙艺</a></li>
												<li><a href="#">门窗</a></li>
												<li><a href="#">木材板材</a></li>
												<li><a href="#">家用五金</a></li>
											</ul>
											<ul>
											    <li><a href="#">电工电料</a></li>
												<li><a href="#">楼梯</a></li>
												<li><a href="#">管材管件</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">家具家居</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">家具</a></li>
												<li><a href="#">床上用品/家纺</a></li>
												<li><a href="#">家居饰品</a></li>
												<li><a href="#">厨具餐具</a></li>
												<li><a href="#">智能家居</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">家装卖场</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">建材卖场</a></li>
												<li><a href="#">家居卖场</a></li>
												<li><a href="#">灯饰卖场</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">学习培训&nbsp/&nbsp音乐培训</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">医疗健康&nbsp/&nbsp宠物&nbsp/&nbsp爱车</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
									   <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
					 <ul>
					     <li class="first-li"><i class="iconfont hc-icon-waimai"></i><a href="#">酒吧&nbsp/&nbsp密室逃脱</a><i></i></li>
						 <li class="second-li">
						     <div class="location-box">
							      <div class="box">
								       <div class="box-top">
									        <span><a href="#">酒店星级</a></span>
											<i></i>
										    <span><a href="#">更多</a></span>
									   </div>
									   <div class="box-bottom">
									        <ul>
											    <li><a href="#">经济型</a></li>
												<li><a href="#">舒适/三星</a></li>
												<li><a href="#">高档/四星</a></li>
												<li><a href="#">豪华/五星</a></li>
											</ul>
									   </div>
								  </div>
							 </div>
						 </li>
					 </ul>
				 </div>
			  </div>
			  <!----------------轮播----------------->
			 <div id="banner-container">     
			       <div class="banner-left">
				        <div class="banner-top">
				        <% 
					   		if(user==null)
					   		{
					   %>
					   <div class="banner-top-inner"><a href="searchsellers.jsp">商家搜索</a><a href="showStudent">查看个人信息</a><a href="map.jsp">行程推荐</a><a href="searchteam.jsp">组团</a><a href="circle.jsp">旅游圈</a></div>
					   <%
					   		}
					   		else if(user.getUser_type().equals("student"))
					   		{
					   %>
					   <div class="banner-top-inner"><a href="searchsellers.jsp">商家搜索</a><a href="showStudent">查看个人信息</a><a href="map.jsp">行程推荐</a><a href="searchteam.jsp">组团</a><a href="circle.jsp">旅游圈</a></div>
					   <%
					   		}
						   else if(user.getUser_type().equals("seller"))
					   		{
					   %>
					   <div class="banner-top-inner"><a href="item">商家个人空间</a><a href="updateseller.jsp">修改当前信息</a></div>
					   <%
					   		}
					   %>
						</div>
						<div class="banner-bottom">
						    <div class="banner-image">
							     <div><a href="http://www.baidu.com" target="_blank"><img src="images/1.5.jpg" width="100%" height="100%" alt=""/></a></div>
								 <div><a href="http://www.w3school.com.cn" target="_blank"><img src="images/1.2.jpg" width="100%" height="100%" alt=""/></a></div>
								 <div><a href="http://cn.bing.com/" target="_blank"><img src="images/1.4.jpg" width="100%" height="100%" alt=""/></a></div>
								 <div><a href="http://chs.meituan.com" target="_blank"><img src="images/1.3.jpg" width="100%" height="100%" alt=""/></a></div>
								 <ul class="tab">
								     <li></li>
									 <li></li>
									 <li></li>
									 <li></li>
								 </ul>
							</div>
							<div class="btn">
							     <p><span></span></p>
								 <p><span></span></p>
							</div>
						</div>
						<div class="images-bottom">
							     <div><a href=""><img src="images/3.jpg" width="100%" height="100%" alt=""/></a></div>
								 <div><a href=""><img src="images/6.jpg" width="100%" height="100%" alt=""/></a></div>
						</div>
				   </div>
				   <div class="banner-middle">
				        <div><a href="#"><img src="images/2.jpg" width="100%" height="100%" alt=""/></a></div>
						<div><a href="#"><img src="images/5.jpg" width="100%" height="100%" alt=""/></a></div>
				   </div>
				   <div class="banner-right">
				        <div>
						     <ul>
							     <li></li>
								 <li>Hi！你好</li>
								 <li><input type="button" onclick="window.location.href=' register.jsp '"  value="注册"/></li>
								 <li><input type="button" onclick="window.location.href=' login.jsp '" value="立即登录"/></li>
							 </ul>
						</div>
						<div>
						     <p></p>
							 <p>青娱APP手机版</p>
							 <p><span>1元起</span>吃喝玩乐</p>
						</div>
				   </div>
			 </div>
		 </div>			 
		 <!-------------------body------------------->
		 <div class="fbody">
		     <div class="fbody-inner">
			      <div class="fbody-inner-top">
				       <dl>
					       <dt>有格调</dt>
						   <dd>全部</dd>
						   <dd>约会聚餐</dd>
						   <dd>丽人SPA</dd>
						   <dd>电影演出</dd>
						   <dd>品质出游</dd>
					   </dl>
				  </div>
				  <div class="fbody-inner-bottom">
				       <ul>
					       <li>
						       <a href="#">
							      <div>
						              <div class="img-top"><img src="images/97.jpg" width="100%" height="100%" alt=""/></div>
								      <div class="text-bottom">
									       <p>浏阳东方电商大酒店</p>
										   <p class="float">老客全网低价</p>
										   <p class="float">新客全网低价</p>
										   <p class="float">含早</p>
										   <p>$<span>138</span>/起</p>
									  </div>
								  </div>
						       </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
						              <div class="img-top"><img src="images/00.png" width="100%" height="100%" alt=""/></div>
								      <div class="text-bottom">
									       <p>万家丽国际大酒店</p>
										   <p class="float">限时特惠</p>
										   <p class="float">商务出行</p>
										   <p class="float">房量充足</p>
										   <p class="float">老客全网低价</p>
										   <p>$<span>505</span>/起</p>
									  </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
						              <div class="img-top"><img src="images/21.jpg" width="100%" height="100%" alt=""/></div>
								      <div class="text-bottom">
									       <p>湘夫人商务酒店</p>
										   <p class="float">亲子场景酒店</p>
										   <p class="float">亲子酒店点评</p>
										   <p class="float">含早</p>
										   <p>$<span>248</span>/起</p>
									  </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
						              <div class="img-top"><img src="images/85.jpg" width="100%" height="100%" alt=""/></div>
								      <div class="text-bottom">
									       <p>浏阳东方电商大酒店</p>
										   <p class="float">天天特价</p>
										   <p class="float">新客全网最低</p>
										   <p class="float">房量充足</p>
										   <p class="float">老客全网低价</p>
										   <p>$<span>518</span>/起</p>
									  </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
						              <div class="img-top"><img src="images/85.png" width="100%" height="100%" alt=""/></div>
								      <div class="text-bottom">
									       <p>浏阳东方电商大酒店</p>
										   <p class="float">老客全网低价</p>
										   <p class="float">新客全网低价</p>
										   <p class="float">含早</p>
										   <p>$<span>138</span>/起</p>
									  </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
						              <div class="img-top"><img src="images/09.png" width="100%" height="100%" alt=""/></div>
								      <div class="text-bottom">
									       <p>浏阳东方电商大酒店</p>
										   <p class="float">老客全网低价</p>
										   <p class="float">新客全网低价</p>
										   <p class="float">含早</p>
										   <p>$<span>111</span>/起</p>
									  </div>
								  </div>
							   </a>
						   </li>
					   </ul>
				  </div>
			 </div>
			 <div class="fbody-inner">
			      <div class="fbody-inner-top">
				      <dl>
					       <dt>报优惠</dt>
						   <dd>全部</dd>
						   <dd>美食</dd>
						   <dd>电影</dd>
						   <dd>休娱</dd>
					  </dl>
				  </div>
				  <div class="fbody-inner-bottom">
				       <ul>
					       <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/96.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>老长沙土钵粉</p>
										   <p>[3店通用]招牌单品3选1,提供免费WiFi</p>
										   <p><span>$</span><span>1</span><span>青娱价￥10</span><span>已售3.6万</span></p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/74.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>蛙园家味馆特色石锅蛙</p>
										   <p>[树木岭]4人招牌石锅蛙一份</p>
										   <p><span>$</span><span>1</span><span>青娱价￥76</span><span>已售1570</span></p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/61.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>老长沙土钵粉</p>
										   <p>[3店通用]招牌单品3选1,提供免费WiFi</p>
										   <p><span>$</span><span>1</span><span>青娱价￥10</span><span>已售3.6万</span></p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/43.png" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>万达国际影城(解放路店)</p>
										   <p>正义联盟</p>
										   <p><span>$</span><span>53.5</span><span>门市价￥10</span><span>已售6.1万</span></p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/31.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>长沙北辰洲际酒店</p>
										   <p>[伍家岭]广式点心周末任点，建议单人使</p>
										   <p><span>$</span><span>13567</span><span>青娱价￥10</span><span>已售3.6万</span></p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/51.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>老长沙土钵粉</p>
										   <p>[3店通用]招牌单品3选1,提供免费WiFi</p>
										   <p><span>$</span><span>1</span><span>青娱价￥10</span><span>已售3.6万</span></p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/15.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>老长沙土钵粉</p>
										   <p>[3店通用]招牌单品3选1,提供免费WiFi</p>
										   <p><span>$</span><span>1</span><span>青娱价￥10</span><span>已售3.6万</span></p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/30.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>老长沙土钵粉</p>
										   <p>[3店通用]招牌单品3选1,提供免费WiFi</p>
										   <p><span>$</span><span>1</span><span>青娱价￥10</span><span>已售3.6万</span></p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/42.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>老长沙土钵粉</p>
										   <p>[3店通用]招牌单品3选1,提供免费WiFi</p>
										   <p><span>$</span><span>1</span><span>青娱价￥10</span><span>已售3.6万</span></p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/24.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>老长沙土钵粉</p>
										   <p>[3店通用]招牌单品3选1,提供免费WiFi</p>
										   <p><span>$</span><span>1</span><span>青娱价￥10</span><span>已售3.6万</span></p>
									   </div>
								  </div>
							   </a>
						   </li>
					   </ul>
				  </div>
			 </div>
			 <div class="fbody-inner">
			      <div class="fbody-inner-top">
				       <dl>
					       <dt>猫眼电影</dt>
						   <dd>正在热映</dd>
						   <dd>即将上映</dd>
					   </dl>
				  </div>
				  <div class="fbody-inner-bottom">
				       <ul>
					       <li>
						       <a href="#">
							       <div class="img">
								        <img src="images/02.jpg" width="100%" height="100%" alt=""/>
										<div class="img-inner">
										    <p><span>4543</span>人想看</p>
											<p><span>你在哪</span><input type="button" value="预售"/></p>
										</div>
								   </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							       <div class="img">
								        <img src="images/81.jpg" width="100%" height="100%" alt=""/>
										<div class="img-inner">
										    <p><span>118705</span>人想看</p>
											<p><span>奇门遁甲</span><input type="button" value="预售"/></p>
										</div>
								   </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							       <div class="img">
								        <img src="images/06.jpg" width="100%" height="100%" alt=""/>
										<div class="img-inner">
										    <p>观众评<span>9.6</span></p>
											<p><span>你在哪</span><input type="button" value="预售"/></p>
										</div>
								   </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							       <div class="img">
								        <img src="images/11.jpg" width="100%" height="100%" alt=""/>
										<div class="img-inner">
										    <p><span>4543</span>人想看</p>
											<p><span>烟花</span><input type="button" value="预售"/></p>
										</div>
								   </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							       <div class="img">
								        <img src="images/10.jpg" width="100%" height="100%" alt=""/>
										<div class="img-inner">
										    <p><span>4543</span>人想看</p>
											<p><span>你在哪</span><input type="button" value="预售"/></p>
										</div>
								   </div>
							   </a>
						   </li>
					   </ul>
					   <div class="button">
					       <p><span></span></p>
						   <p><span></span></p>
					   </div> 
				  </div> 
			 </div>
			 <div class="fbody-inner">
			      <div class="fbody-inner-top">
				       <dl>
					       <dt>猜你喜欢</dt>
						   <dd>为你甄选最合适的</dd>
					   </dl>
				  </div>
				  <div class="fbody-inner-bottom">
				       <ul>
					       <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/093.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/115.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/163.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/238.png" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/335.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/350.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/398.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/456.jpeg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/515.jpeg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/768.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/856.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/921.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/969.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/985.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
						   <li>
						       <a href="#">
							      <div>
								       <div class="img-top"><img src="images/804.jpg" width="100%" height="100%" alt=""/></div>
									   <div class="text-bottom">
									       <p>碧涛阁水会酒店（开福店）</p>
										   <div class="">
										       <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i class="iconfont icon-star_icon"></i>
											   <i>5673个评价</i>
											   <i>湘雅附一医院</i>
										   </div>
										   <p>$<span>89.0</span>起</p>
									   </div>
								  </div>
							   </a>
						   </li>
					   </ul>
				  </div>
			 </div>
			 <div class="fbody-inner">
			      <div class="fbody-inner-top">
				       <dl>
					       <dt>青娱导航</dt>
					   </dl>
				  </div>
				  <div class="final">
				       <div class="final-box">
					        <div class="final-left">热门城市</div>
							<div class="final-right right">
							    <ul>
								    <li><a href="#">温州</a></li><li><a href="#">深圳</a></li>
									<li><a href="#">太原</a></li><li><a href="#">青岛</a></li>
									<li><a href="#">苏州</a></li><li><a href="#">合肥</a></li>
									<li><a href="#">贵阳</a></li><li><a href="#">成都</a></li>
									<li><a href="#">哈尔滨</a></li><li><a href="#">昆明</a></li>
								</ul>
								<ul>
								    <li><a href="#">宁波</a></li><li><a href="#">南宁</a></li>
									<li><a href="#">青岛</a></li><li><a href="#">福州</a></li>
									<li><a href="#">天津</a></li><li><a href="#">杭州</a></li>
									<li><a href="#">北京</a></li><li><a href="#">成都</a></li>
									<li><a href="#">无锡</a></li><li><a href="#">昆明</a></li>
								</ul>
							</div>
					   </div>
					   <div class="final-box">
					        <div class="final-left">热门分类</div>
							<div class="final-right">
							    <ul>
								    <li><a href="#">美食</a></li><li><a href="#">摄影写真</a></li>
									<li><a href="#">休闲娱乐</a></li><li><a href="#">结婚</a></li>
									<li><a href="#">运动健身</a></li><li><a href="#">本地购物</a></li>
									<li><a href="#">生活服务</a></li><li><a href="#">时尚购</a></li>
									<li><a href="#">上门服务</a></li><li><a href="#">购物</a></li>
								</ul>
								<ul>
								    <li><a href="#">宴会</a></li><li><a href="#">汽车服务</a></li>
									<li><a href="#">丽人</a></li><li><a href="#">医疗</a></li>
									<li><a href="#">母婴亲子</a></li><li><a href="#">宠物</a></li>
									<li><a href="#">学习培训</a>
									<li><a href="#">家装</a></li>
								</ul>
							</div>
					   </div>
				  </div>
			 </div>
		   </div>
		 </div>
		 <!-------------------footer----------------->
		 <div class="footer">
		    <div class="footer-top">
			    <div class="footer-box">
			       <div class="footer-float">
			          <dl>
				         <dt><a href="#">用户帮助</a></dt>
				         <dd><a href="#">青娱承诺</a></dd>
				         <dd><a href="#">购物保障</a></dd>
				         <dd><a href="#">申请退款</a></dd>
				         <dd><a href="#">查看青娱券密码</a></dd>
				         <dd><a href="#">常见问题</a></dd>
				         <dd><a href="#">用户协议</a></dd>
				         <dd><a href="#">隐私政策</a></dd>
				         <dd><a href="#">反诈骗公告</a></dd>
			          </dl>
				      <dl>
				         <dt><a href="#">青娱服务</a></dt>
				         <dd><a href="#">青娱外卖</a></dd>
				         <dd><a href="#">猫眼电影</a></dd>
				         <dd><a href="#">青娱云</a></dd>
				         <dd><a href="#">大众点评</a></dd>
				         <dd><a href="#">榛果民宿</a></dd>
			          </dl>
				   </div>
				   <div class="footer-float">
			          <dl>
				         <dt><a href="#">商家合作</a></dt>
				         <dd><a href="#">美食商家入驻(非外卖)</a></dd>
				         <dd><a href="#">外面商家入驻</a></dd>
				         <dd><a href="#">酒店商家入驻</a></dd>
				         <dd><a href="#">境内度假商家入驻</a></dd>
				         <dd><a href="#">综合商家入驻</a></dd>
				         <dd><a href="#">榛果民宿房东商家入驻</a></dd>
				         <dd><a href="#">商家开票申请</a></dd>
				         <dd><a href="#">青娱点评智能收银机</a></dd>
				         <dd><a href="#">聚宝盆餐饮开放平台</a></dd>
				         <dd><a href="#">青娱智能支付</a></dd>
			          </dl>
			       </div>
				   <div class="footer-float">
			          <dl>
				         <dt><a href="#">代理商加盟</a></dt>
				         <dd><a href="#">到店餐饮代理商招募</a></dd>
				         <dd><a href="#">非餐饮代理商招募</a></dd>
				         <dd><a href="#">青娱联盟</a></dd>
			          </dl>
				      <dl>
				         <dt><a href="#">行业规范</a></dt>
					     <dd><a href="#">青娱点评餐饮安全管理办法</a></dd>
			          </dl>
				      <dl>
				         <dt><a href="#">廉正举报</a></dt>
					     <dd><a href="#">廉正邮箱</a></dd>
			          </dl>
				   </div>
				   <div class="footer-float">
			          <dl>
				         <dt><a href="#">关注青娱</a></dt>
				         <dd><a href="#">青娱新浪微博</a></dd>
			          </dl>
				      <dl>
				         <dt><a href="#">关于青娱</a></dt>
					     <dd><a href="#">青娱报道</a></dd>
			          </dl>
				      <dl>
				         <dt><a href="#">公司信息</a></dt>
					     <dd><a href="#">加入我们</a></dd>
					     <dd><a href="#">法律声明</a></dd>
					     <dd><a href="#">商户服务协议</a></dd>
			          </dl>
				    </div>
				    <div class="footer-float footer-phone">
				         <p>客服电话</p>
					     <p>10107888</p>
					     <p>(9:00-23:00)</p>
				    </div>
				</div>
			</div>
			<div class="footer-bottom">
			     <div>
				     <p><a href="#">&copy青娱网团购 meituan.com 京ICP证070791号 京ICP备10211739号 电子公告服务规则</a></p>
					 <p><a href="#">京公网备11010502025545号</a></p>
				 </div>
				 <p><a href="#">广播电视节目制作许可证（京）字第03889号</a></p>
			</div>
		 </div>
		 <script type="text/javascript" src="js/index.js"></script>
	</body>
</html>