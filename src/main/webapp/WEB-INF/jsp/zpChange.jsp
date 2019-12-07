<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'BianJi.jsp' starting page</title>

<link rel="shortcut icon" href="favicon.ico">
<link href="Public/static/admin/css/bootstrap.min.css?v=3.3.6"
	rel="stylesheet">
<link href="Public/static/admin/css/font-awesome.min.css?v=4.4.0"
	rel="stylesheet">
<link href="Public/static/admin/css/animate.min.css" rel="stylesheet">
<link href="Public/static/admin/css/plugins/iCheck/custom.css"
	rel="stylesheet">
<link href="Public/static/admin/css/style.min.css?v=4.1.0"
	rel="stylesheet">
<link href="Public/static/common/croppic/css/croppic.css"
	rel="stylesheet">
</head>
<body class="gray-bg">
	<div class="gallery">
		<div class="gallery">
			<div class="col-sm-8">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<center>
							<h3>作品编辑</h3>
						</center>
					</div>
					<div class="ibox-content">
						<div class="form-group">
							<label class="col-sm-3 control-label">修改图像：</label>
							<div class="input-group col-sm-4">
								<div id="croppic"
									style="width:250px;height:200px;position:relative;border:1px solid ">
									<div class="cropControls cropControlsUpload"></div>
									<span> <c:if test="${photoList.picUrl==null}">
											<img alt="image" src="/MyBlog/images/hard.jpg"
												style="position:relative;width:250px;height:200px;" />
										</c:if> 
										<c:if test="${photoList.picUrl!=null}">
											<img alt="image" src="/MyBlog/${photoList.picUrl}"
												style="position:relative;width:250px;height:200px;" />
										</c:if>
									</span>

								</div>
							</div>
						</div>

						<form class="form-horizontal m-t" id="commentForm" method="post"
							action="Updatezp.do?pictureId=${param.pictureId}"
							enctype="multipart/form-data">
			
							<div class="form-group">
								<label class="col-sm-3 control-label"><strong>图片修改：</strong></label>
								<div class="input-group col-sm-4">
									<center>
										<input type="file" name="picUrl" />
									</center>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label">作品所属编号</label>
								<div class="input-group col-sm-4">
									${param.pictureId}
								</div>
							</div>
						
							<div class="form-group">
								<label class="col-sm-3 control-label">作品所在网址</label>
								<div class="input-group col-sm-4">
									<input id="website" type="text" class="form-control"
										name="website" value="${photoList.website}"
										placeholder="请输入文章标题" required="" aria-required="true"
										value="">
								</div>
							</div>
						
						
						
							<div class="form-group">
								<label class="col-sm-3 control-label">作品简介</label>
								<div class="input-group col-sm-4">
									<input id="intro" type="text" class="form-control"
										name="intro" value="${photoList.intro}"
										placeholder="请输入文章标题" required="" aria-required="true"
										value=""  style="width:460px;height:150px">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-4 col-sm-offset-6">
									<button class="btn btn-primary" type="submit">提交</button>
									<span style="color:red;">${msg}</span>
								</div>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script src="Public/static/admin/js/jquery.min.js?v=2.1.4"></script>
	<script src="Public/static/admin/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="Public/static/admin/js/content.min.js?v=1.0.0"></script>
	<script
		src="Public/static/admin/js/plugins/validate/jquery.validate.min.js"></script>
	<script
		src="Public/static/admin/js/plugins/validate/messages_zh.min.js"></script>
	<script src="Public/static/admin/js/plugins/iCheck/icheck.min.js"></script>
	<script src="Public/static/admin/js/plugins/layer/layer.min.js"></script>
	<script src="Public/static/admin/js/jquery.form.js"></script>
	<script src="Public/static/common/croppic/js/croppic.min.js"></script>

</body>
</html>
