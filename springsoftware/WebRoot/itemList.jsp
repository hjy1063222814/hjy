<%@ page language="java" import="java.util.*" pageEncoding="utf-8" import="java.util.*" import="cn.edu.zjut.po.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" class="ace ace-card-on ace-tab-nav-on ace-main-nav-on ace-sidebar-on" data-theme-color="#c0e3e7">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>商家详情</title>
<meta name="description" content="">

<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="shortcut icon" href="favicon.ico">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico"
	rel="stylesheet">

<!-- Icon Fonts -->
<link href="fonts/icomoon/style.css" rel="stylesheet">

<!-- Styles -->
<link href="js/plugins/highlight/solarized-light.css" rel="stylesheet">
<link href="style.css" rel="stylesheet">

<!-- Modernizer -->
<script type="text/javascript" src="js/vendor/modernizr-3.3.1.min.js"></script>
<body>
<s:head theme="xhtml"/> 
<sx:head parseContent="true" extraLocales="UTF-8"/> 

<div class="ace-wrapper">
<div align="center"><input type="button" value="返回主页" onclick="window.location.href='home'" /> <br></div>
 <div id="ace-content" class="ace-container-shift">
            <div class="ace-container">
		<div class="ace-paper-stock">
			<main class="ace-paper clearfix">
				<div class="ace-paper-cont clear-mrg">
				 <s:iterator value="seller" >
				 <section class="section brd-btm">
            <div class="row">
                <div class="col-sm-6 clear-mrg">
                    <h2 class="title-thin text-muted">详细信息</h2>
                        <dl class="dl-horizontal clear-mrg">
                        <dt class="text-upper">商家名</dt>
                        <dd><s:property value="seller_sellername"/></dd>
                        
                        <dt class="text-upper">商家图</dt>
                        <dd><img src="<s:property value="seller_photo"/>" height="40" width="325"/></dd>
                        
                        <dt class="text-upper">商家地点</dt>
                        <dd><s:property value="seller_place"/></dd>

                        <dt class="text-upper">联系电话</dt>
                        <dd><s:property value="seller_telephone"/></dd>

                        <dt class="text-upper">平均消费</dt>
                        <dd><s:property value="seller_average"/></dd>

                        <dt class="text-upper">商家评分</dt>
                        <dd><s:property value="seller_score"/></dd>
                        
                        <dt class="text-upper">营业时间</dt>
                        <dd><s:property value="seller_opentime"/></dd>
                        
                        <dt class="text-upper">商家简介</dt>
                        <dd><s:property value="seller_sellerinfo"/></dd>
                    </dl>
                </div><!-- .col-sm-6 -->  
            </div><!-- .row -->
        </section>
        </s:iterator>
					<div class="padd-box">
							<h2 class="title-lg text-upper">评论</h2>
                    <s:iterator value="space" >
						<section class="section clear-mrg">
							<div class="padd-box-sm clear-mrg">
								<div class="ref-box brd-btm hreview">
									<div class="ref-info">
										<div class="ref-author">
											<strong>用户<s:property value="selpk.stu_usernumber"/></strong> 
											<span><s:property value="selspace_time"/></span>
											<span><img src="<s:property value="selspace_photo"/>" height="8" width="65"/></span>
										</div>

										<blockquote class="ref-cont clear-mrg">
											<p><s:property value="selspace_comment"/></p>
											<p>评分:<s:property value="selspace_score"/>分</p>
										</blockquote>
									</div>
								</div>
							</div>
						</section>
						</s:iterator>
						
					</div>
				</div>
				<% User user = (User)session.getAttribute("loginUser"); 
				if(user.getUser_type().equals("student"))
				{%>
				<s:form action="comment" method="post">
               <input class="btn btn-primary btn-lg" type="submit" value="评论"></s:form>
               <% }
				%>
			</main>
		</div>
	</div>
	</div>
	</div>
</body>