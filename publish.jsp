<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<head><s:head theme="xhtml"/>
<sx:head parseContent="true" extraLocales="UTF-8"/> </head>
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
						<form action="findStuspace" method="post">

						<button type="submit"name="submit"value="hotcommit"  class="btn btn-info">热度</button>
						<button type="submit"name="submit"value="recentcommit"  class="btn btn-info">实时</button>
						<button type="submit"name="submit"value="mycommit"  class="btn btn-info">我的</button>
						<input type="button" class="btn btn-info"  value="发表" onClick="window.location.href='publish.jsp'"> 
					</form>
   						</div>
   						<br><br><br>
<div align="center">
<s:form action="addStuspace" method="post" enctype="multipart/form-data">
 <table>
<s:textfield name="stuspace_txt" label="文本"/>
<s:file name="upload" label="图片"/>
<s:submit value="提交"/>
<s:reset value="重置"/>

</table>
</s:form>
</div>
</div>
     </div>
      </div>
    <jsp:include page="bottom.jsp"/>

</body></html>