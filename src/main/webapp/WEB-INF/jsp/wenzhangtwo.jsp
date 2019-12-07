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
	<link rel="stylesheet" type="text/css" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
	<!-- Panel Other -->
	<div class="ibox float-e-margins">
		<div class="ibox-title">
			<h5>文章列表</h5>
		</div>

		<div class="ibox-content">
			<div class="form-group">
				<button class="btn btn-primary" type="button"
						style="margin-top:5px" id="search">
					<a href="Article.html"><strong>添加文章</strong></a>
				</button>
			</div>
			<!--搜索框开始-->
			<form id='commentForm' role="form" method="post"
				  class="form-inline pull-right">
				<div class="content clearfix m-b">
					<div class="form-group">
						<label>文章名称：</label> <input type="text" class="form-control"
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
					<table id="ArticleList" class="table table-border table-bordered table-striped">
						<!--  <table border="5" width="600" height="50" align="center" id="categoryUl">-->
					</table>
					<div class="col-md-6" id="page_nav_area">

					</div>
					<div class="row">
						<div class="col-md-6" id="page_info_area">
<%--							当前第${pageInfo.pageSize} 页，总共${pageInfo.pageNum} 页，总     条记录。--%>
						</div>
						<div class="col-md-6">

						</div>
				</div>
			</div>
			<!-- End Example Pagination -->
		</div>
	</div>
</div>
<!-- End Panel Other -->
</div>

<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/jquery.min.js?v=2.1.4"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/HT/js/page/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/HT/js/page/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/HT/js/page/nicePage.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : "/myblog/article.do",
			type : "POST",
			dataType: "JSON",
			success : function(data) {
				var msg="";
				msg+=" <thead><tr>"+"<th>"+"文章ID"+" </th>"+"<th>"+"文章名称"+"</th>"+"<th>"+"发布时间"+"</th>"+"<th colspan=\"2\" >"+"操作"+"</th><thead>";
				msg+="<tbody>";
				var result=eval(data.list)
				for(var i=0;i<result.length;i++) {
					msg += "<tr>";
					msg += "<td>" + result[i].shortId + "</td>";
					msg += "<td>" + result[i].title + "</td>";
					msg += "<td>" +result[i].addtime+"</td>";
					msg += "<td>" +"<a href=\"${pageContext.request.contextPath}/myblog/Change.do?shortId="+result[i].shortId+"\">编辑"+"</a>"+"</td>";
					msg += "<td>" +"<a href=\"${pageContext.request.contextPath}/myblog/Deletewz.do?shortId="+result[i].shortId+"\">删除"+"</a>"+"</td>";
					msg += "</tr>";
				}
				msg+="</tbody>";
				$("#ArticleList").html(msg);
				$("#page_info_area").append("当前第"+data.pageNum+"页，总共"+data.pages+" 页，总"+data.total+"条记录。");
				$("#page_nav_area").html("<form name='form1' method='POST' action='${pageContext.request.contextPath}/myblog/article.do?pageNum=2'><a href='javascript:document.form1.submit();'>下一页</a>");
				},
			error:function(){
				alert("数据加载错误!");

			}
		})
	})
</script>
</body>
</html>
