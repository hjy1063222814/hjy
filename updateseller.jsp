<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" import="cn.edu.zjut.po.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>完善信息</title>
<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	

</head>
<body class="templatemo-bg-gray">
<% Seller seller=null;
seller=(Seller)session.getAttribute("userMessage");%>
<h1 class="margin-bottom-15">修改商家信息</h1>
	<div class="container">
		<div class="col-md-12">			
			<form action="adjustSeller" method="post" class="form-horizontal templatemo-create-account templatemo-container" role="form"
				name="myform"  enctype="multipart/form-data"  >
				
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="first_name" class="control-label">店名：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px " 
			            class="form-control" name="sellerUser.seller_sellername" value=<%=seller.getSeller_sellername()%>   >		          		            		            
			          </div>  
			          <div class="col-md-6">		          	
			            <label for="last_name" class="control-label">地点：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			             class="form-control" name="sellerUser.seller_place" value=<%=seller.getSeller_place()%>        		            		             >		  
			          </div>             
			        </div>
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="username" class="control-label">电话：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			            class="form-control" name="sellerUser.seller_telephone" value=<%=seller.getSeller_telephone()%>  >		           		            		            
			          </div>              
			          <div class="col-md-6">
			            <label for="password" class="control-label">人均消费：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			            class="form-control" name="sellerUser.seller_average" value=<%=seller.getSeller_average()%> >
			          </div>
			        </div>			
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="username" class="control-label">营业时间：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			            class="form-control" name="sellerUser.seller_opentime"  value=<%=seller.getSeller_opentime()%> >	           
			          </div>
			          <div class="col-md-6">		          	
			            <label for="username" class="control-label">商家信息：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			            class="form-control" name="sellerUser.seller_sellerinfo" value=<%=seller.getSeller_sellerinfo()%>  >		          		            		            
			          </div>
			         </div>
   					<div class="form-group">
			          <div class="col-md-12">
			             <input type="submit" value="提交信息" class="btn btn-info">
			             <s:property value="#request.tip"/><p>
			            <a href="home.jsp" class="pull-right">取消</a>
			          </div>
			        </div>	
				</div>						    	
		      </form>		      
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="templatemo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">Terms of Service</h4>
	      </div>
	      <div class="modal-body">
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

</body>
</html>