<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
	<title>商家入驻信息</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body class="templatemo-bg-gray">


	<div class="container">
		<div class="col-md-12">	
			<h1 class="text-center margin-bottom-15">商家入驻</h1>		
			<form class="form-horizontal templatemo-contact-form-2 templatemo-container" role="form" action="addSeller" method="post" enctype="multipart/form-data">
				
					
				      <div class="col-md-6">
				        <div style="form-group">
				            <div class="col-sm-12">
				            	<div class="templatemo-input-icon-container">
				            		<i class="fa fa-info-circle"></i>
				            		<input type="text" class="form-control" name="sellerUser.seller_sellername" id="seller_sellername" placeholder="店名">
				            	</div>
				          	</div>
				        </div>
				        
				       
				        
				         <div style="form-group">
				            <div class="col-sm-12">
				            	<div class="templatemo-input-icon-container">
				            		<i class="fa fa-info-circle"></i>
				            		<input type="text" class="form-control" name="sellerUser.seller_place" id="seller_place" placeholder="地点">
				            	</div>
				          	</div>
				        </div>
				        
				      
				        
				         <div style="form-group">
				            <div class="col-sm-12">
				            	<div class="templatemo-input-icon-container">
				            		<i class="fa fa-info-circle"></i>
				            		<input type="text" class="form-control" name="sellerUser.seller_telephone" id="seller_telephone" placeholder="联系方式">
				            	</div>
				          	</div>
				        </div>
				        
				       
				        
				         <div style="form-group">
				            <div class="col-sm-12">
				            	<div class="templatemo-input-icon-container">
				            		<i class="fa fa-info-circle"></i>
				            		<input type="text" class="form-control" name="sellerUser.seller_average" id="seller_average" placeholder="人均消费">
				            	</div>
				          	</div>
				        </div>
				        
				        
				         <div style="form-group">
				            <div class="col-sm-12">
				            	<div class="templatemo-input-icon-container">
				            		<i class="fa fa-info-circle"></i>
				            		<input type="text" class="form-control" name="sellerUser.seller_opentime" id="seller_opentime" placeholder="营业时间">
				            	</div>
				          	</div>
				        </div>
				         
				        
				         <div style="form-group">
				            <div class="col-sm-12">
				            	<div class="templatemo-input-icon-container">
				            		<i class="fa fa-info-circle"></i>
				            		<select name="sellerUser.seller_type" id="type" class="form-control" placeholder="商家标签" >
									<option value="面食粥点">面食粥点</option>
									<option value="简餐便当">简餐便当</option>
									<option value="汉堡披萨">汉堡披萨</option>
									<option value="香锅冒菜">香锅冒菜</option>
									<option value="日韩料理">日韩料理</option>
									<option value="小吃炸串">小吃炸串</option>
									<option value="地方菜系">地方菜系</option>
									<option value="超市便利">超市便利</option>
									<option value="水果蔬菜">水果蔬菜</option>
									<option value="甜品饮品">甜品饮品</option>
									<option value="逛街购物">逛街购物</option>
									<option value="热门景点">热门景点</option>
									<option value="游戏桌游">游戏桌游</option>
									</select>
				            	</div>
				          	</div>
				        </div>
				        
				         <br>
				        
				         <div style="form-group">
				            <div class="col-sm-12">
				            	<div class="templatemo-input-icon-container">
				            		<i class="fa fa-info-circle"></i>
				            		<input type="file" class="form-control" name="upload" id="fileName" placeholder="添加图片">
				            	</div>
				          	</div>
				        </div>
				        
				         <br>
				        </div>
				        
				        
					
					<div class="col-md-6">
						<div class="form-group">
				          <div class="col-md-12">
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-pencil-square-o"></i>
				            	<textarea rows="10" cols="50" class="form-control" name="sellerUser.seller_sellerinfo" id="seller_sellerinfo" placeholder="输入店铺的介绍"></textarea>
				            </div>
				          </div>
				        </div>
					</div>					
					        
		        <div class="form-group">
		          <div class="col-md-12">
		          
		            <input name="Submit" type="submit" id="Submit"   value="申请入驻" class="btn btn-warning pull-right">		            
		          </div>
		        </div>		    	
		      </form>	
              
              <div class="row">
              	<div class="col-md-8 col-xs-offset-1">
                	<br>
                	
                </div>
              </div>	 
              
		</div>
	</div>

</body>
</html>