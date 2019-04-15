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
<% Student student=(Student)session.getAttribute("userMessage");%>
<h1 class="margin-bottom-15">查看个人信息</h1>
	<div class="container">
		<div class="col-md-12">			
			<form action="adjustStudent" method="post" class="form-horizontal templatemo-create-account templatemo-container" role="form"
				name="myform"  enctype="multipart/form-data"  >
				
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="first_name" class="control-label">昵称：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px " 
			            class="form-control" name="studentUser.stu_petname" value=<%=student.getStu_petname()%>  >		            		            		            
			          </div>  
			          <div class="col-md-6">		          	
			            <label for="last_name" class="control-label">学号：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			             class="form-control" name="studentUser.stu_studentnumber" value=<%=student.getStu_studentnumber()%>  >		            		            		            
			          </div>             
			        </div>
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="username" class="control-label">姓名：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			            class="form-control" name="studentUser.stu_name" value=<%=student.getStu_name()%> >		            		            		            
			          </div>              
			          <div class="col-md-6">
			            <label for="password" class="control-label">年龄：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			            class="form-control" name="studentUser.stu_age" value=<%=student.getStu_age()%> >
			          </div>
			        </div>			
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="username" class="control-label">学校：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			            class="form-control" name="studentUser.stu_school" value=<%=student.getStu_school()%> >		            		            		            
			          </div>
			          <div class="col-md-6">		          	
			            <label for="username" class="control-label">性别：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			            class="form-control" name="studentUser.stu_sex" value=<%=student.getStu_sex()%> >		            		            		            
			          </div>
			         </div>
			        <div class="form-group">
			          <div class="col-md-6">
			            <label for="password" class="control-label">联系电话：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			            class="form-control" name="studentUser.stu_telephone" value=<%=student.getStu_telephone()%> >
			          </div>
			          <div class="col-md-6">
			            <label for="password" class="control-label">电子邮箱：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			            class="form-control" name="studentUser.stu_email" value=<%=student.getStu_email()%> >
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <label for="password" class="control-label">爱好：</label>
			            <input type="text" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px "
			            class="form-control" name="studentUser.stu_hobby" value=<%=student.getStu_hobby()%> >
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