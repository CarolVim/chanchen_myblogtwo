<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'role.jsp' starting page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>角色列表</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/bootstrap.min.css?v=3.3.6"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/font-awesome.min.css?v=4.4.0"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/static/HT/static/admin/css/plugins/bootstrap-table/bootstrap-table.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/style.min.css?v=4.1.0"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/plugins/sweetalert/sweetalert.css"
	rel="stylesheet">
	<!--  -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/HT/H_UI/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/HT/H_UI/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/HT/H_UI/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/HT/H_UI/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/HT/H_UI/static/h-ui.admin/css/style.css" />
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>角色列表</h5>
			</div>
			
			 <div class="ibox-content">
			<div class="form-group">
							<button class="btn btn-primary" type="button"
								style="margin-top:5px" id="search">
								<strong>添加角色</strong>
							</button>
						</div>
				<!--搜索框开始-->
				<form id='commentForm' role="form" method="post"
					class="form-inline pull-right">
					<div class="content clearfix m-b">
						<div class="form-group">
							<label>管理员名称：</label> <input type="text" class="form-control"
								id="rolename" name="rolename">
						</div>
						<div class="form-group">
							<button class="btn btn-primary" type="button"
								style="margin-top:5px" id="search">
								<strong>搜 索</strong>
							</button>
						</div>
					</div>
				</form>
				<!--搜索框结束-->
	<br><br>
				<div class="example-wrap">
					<div class="example">
						<table id="categoryUl" class="table table-border table-bordered table-striped">
						<!--  <table border="5" width="600" height="50" align="center" id="categoryUl">-->
						</table>
					</div>
				</div>
				<!-- End Example Pagination -->
			</div>
		</div>
	</div>
	<!-- End Panel Other -->
	</div>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/jquery.min.js?v=2.1.4"></script>
	<script type="text/javascript">
		$(function() {
			
			$.ajax({
						url : "/myblog/Permission.do",
						type : "POST",
						dataType: "JSON",
						success : function(data) {
						console.log(data);
							//将数据显示在页面上
							var msg="";
							
							msg+=" <thead><tr>"+"<th>"+"角色ID"+" </th>"+"<th>"+"角色名称"+"</th>"+"<th>"+"角色身份"+"</th>"+"<th>"+"操作"+"</th><thead>";
							msg+="<tbody>";
						for(var i=0;i<data.length;i++) {
						    msg += "<tr>";
          					msg += "<td>" + data[i].userId + "</td>";
          					msg += "<td>" + data[i].userName + "</td>";
          					msg += "<td>" +"有效身份"+"</td>";
          					msg += "<td>" +"<button class=\"btn btn-primary\" type=\"button\" style=\"margin-top:5px\"><a href=\"${pageContext.request.contextPath}/myblog/roleedit.html?userId="+data[i].userId+" style=\"color: #FFFFFF\">编辑"+"</a>"+"</button>\t</td>";
							msg += "</tr>";
						}
						msg+="</tbody>";
						  $("#categoryUl").html(msg);
							},
							error:function(){
    						alert("数据加载错误!");
							
						}
					})
		})
	</script>
</body>
</html>
