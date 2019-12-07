<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>编辑角色</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/bootstrap.min.css?v=3.3.6"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/font-awesome.min.css?v=4.4.0"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/style.min.css?v=4.1.0"
	rel="stylesheet">
</head>
<body class="gray-bg" >
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-8">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>编辑角色</h5>
					</div>
					<div class="ibox-content">
						<form class="form-horizontal m-t" id="commentForm" method="post"
							action="${pageContext.request.contextPath}/roleupdate.do?userId=${param.userId}">
							<input name="clickone" type="radio" value="1" checked="checked">超级管理员&nbsp;&nbsp;<input
								name="clickone" type="radio" value="0">普通管理员<br>
							<button>提交</button>
							<span style="color:red;">${msg}</span>
						</form>
					</div>
					<div class="ibox-content">
						<h3>角色权限设置：</h3>
						<h5>超级管理员：全部模块最高权限</h5>
						<h5>普通管理员：普通文章编辑权限</h5>
					    <span id="check"></span>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/jquery.min.js?v=2.1.4"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/content.min.js?v=1.0.0"></script>
	<script
		src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/validate/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/validate/messages_zh.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/layer/layer.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/jquery.form.js"></script>

</body>
</html>
