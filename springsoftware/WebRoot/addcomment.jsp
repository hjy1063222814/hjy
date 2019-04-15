<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%> 
<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>请输入您宝贵的评价</title>
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">

    <!-- Icon Fonts -->
    <link href="fonts/icomoon/style.css" rel="stylesheet">

    <!-- Styles -->
    <link href="js/plugins/highlight/solarized-light.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">

    <!-- Modernizer -->
    <script type="text/javascript" src="js/vendor/modernizr-3.3.1.min.js"></script>
  </head>
  <body>
     <div class="ace-wrapper">
        <div align="center"><input type="button" value="返回主页" onclick="window.location.href='home'" /> <br></div>
        <div id="ace-content" class="ace-container-shift">
            <div class="ace-container">

 
                <div class="ace-paper-stock">
                    <main class="ace-paper clearfix">
                        <div class="ace-paper-cont clear-mrg">
						
						<!-- START: PAGE CONTENT -->

    

    <div class="padd-box-sm">
     <h2 class="title-lg text-upper padd-box">评价</h2>
        <form action="add" method="post" class="contact-form" enctype="multipart/form-data">

            <div class="form-group">
                <label class="form-label" for="url">评分</label>
                <div class="form-item-wrap">
											<select name="score">
												<option value="0">0分</option>
												<option value="1">1分</option>
												<option value="2">2分</option>
												<option value="3">3分</option>
												<option value="4">4分</option>
												<option value="5">5分</option>
											</select>
										</div>
            </div>

            <div class="form-group">
                <label class="form-label" for="comment">请输入您的评价</label>
                <div class="form-item-wrap">
                    <textarea name = "comment" id="comment" class="form-item"></textarea>
                </div>
            </div>
								<div class="form-group">
									<label class="form-label" for="comment">上传图片</label>
									 <input type="file" name="upload"/><br>			 
								</div>
								<div class="form-submit form-item-wrap">
                <input class="btn btn-primary btn-lg" type="submit" value="提交">
            </div>
        </form>
    </div>

    <div id="map" data-latitude="50.84592" data-longitude="4.366859999999974"></div>

<!-- END: PAGE CONTENT -->
						
                </div><!-- .ace-paper-cont -->
            </main><!-- .ace-paper -->
        </div><!-- .ace-paper-stock -->

        </div><!-- .ace-container -->
    </div><!-- #ace-content -->
    
</div>
</div>
</body>
</html>
