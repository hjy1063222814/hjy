<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
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
<h1 class="margin-bottom-15">完善个人信息</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form"
				name="myform" action="addStudent" enctype="multipart/form-data" method="post">
				
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="studentUser.stu_petname" class="control-label">昵称 *</label>
			            <input type="text" class="form-control" name="studentUser.stu_petname" placeholder="">		            		            		            
			          </div>  
			          <div class="col-md-6">		          	
			            <label for="studentUser.stu_studentnumber" class="control-label">学号*</label>
			            <input type="text" class="form-control" name="studentUser.stu_studentnumber" placeholder="">		            		            		            
			          </div>             
			        </div>
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="studentUser.stu_name" class="control-label">姓名*</label>
			            <input type="text" class="form-control" name="studentUser.stu_name" placeholder="">		            		            		            
			          </div>              
			          <div class="col-md-6">
			            <label for="studentUser.stu_age" class="control-label">年龄</label>
			            <input type="text" class="form-control" name="studentUser.stu_age" placeholder="">
			          </div>
			        </div>			
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="studentUser.stu_school" class="control-label">学校*</label>
			            <input type="text" class="form-control" name="studentUser.stu_school" placeholder="">		            		            		            
			          </div>
			          <div class="col-md-6 templatemo-radio-group">
			          	 <label class="radio-inline"> 
		          			<input type="radio" name="loginUser.user_sex" id="optionsRadios1" value="man"> 男
		          		</label>
		          		 <label class="radio-inline">
		          			<input type="radio" name="loginUser.user_sex" id="optionsRadios2" value="woman"> 女
		          		</label>
			          </div>             
			        </div>
			        <div class="form-group">
			          <div class="col-md-6">
			            <label for="studentUser.stu_telephone" class="control-label">联系电话</label>
			            <input type="text" class="form-control" name="studentUser.stu_telephone" placeholder="">
			          </div>
			          <div class="col-md-6">
			            <label for="studentUser.stu_email" class="control-label">电子邮箱</label>
			            <input type="text" class="form-control" name="studentUser.stu_email" placeholder="">
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <label for="studentUser.stu_hobby" class="control-label">爱好</label>
			            <input type="text" class="form-control" name="studentUser.stu_hobby" placeholder="">
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="submit" value="提交信息" class="btn btn-info">
						<s:property value="#request.tip"/><p>
			            <a href="login-1.html" class="pull-right">取消</a>
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