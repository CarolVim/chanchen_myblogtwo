<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<style type="text/css">
.DTTTFooter {
	margin: 0;
	background: #fff;
	overflow: hidden;
	padding: 5px 5px 2px 10px;
	border: 1px solid #ddd;
	border-top: 0px;
	background-color: #eee;
	background-image: -webkit-linear-gradient(top, #f2f2f2 0, #fafafa 100%);
	background-image: -moz-linear-gradient(top, #f2f2f2 0, #fafafa 100%);
	background-image: linear-gradient(to bottom, #f2f2f2 0, #fafafa 100%);
}

div.dataTables_paginate {
	float: right;
	margin: 0;
}

li {
	float: left;
}

.pagination {
	margin: 0;
}

.pagination li {
	display: inline;
}

.pagination  li a:hover {
	background-color: #ddd;
	border-color: #ddd;
	color: #000;
}

.col-sm-6 {
	width: 50%;
}

.dataTables_info {
	float: left;
}

.pagination  li.active  a, .pagination  li .active a:hover {
	background-color: #2dc3e8;
	border-color: #2dc3e8;
	color: #fff;
	-webkit-text-shadow: 0 -1px 0 rgba(0, 0, 0, .25);
	text-shadow: 0 -1px 0 rgba(0, 0, 0, .25);
}

.pagination li a, .pagination li span {
	position: relative;
	float: left;
	padding: 6px 12px;
	margin-left: -1px;
	line-height: 1.42857143;
	color: #428bca;
	text-decoration: none;
	background-color: #fff;
	border: 1px solid #ddd;
}

.pagination .disabled a {
	color: #777;
	cursor: not-allowed;
}

.row {
	padding: 20px;
}

#img {
	top: 10px;
	left: 20px;
	position: absolute;
}
</style>
<link rel="stylesheet" type="text/css"
	href="Public/H_UI/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="Public/H_UI/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="Public/H_UI/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="Public/H_UI/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="Public/H_UI/static/h-ui.admin/css/style.css" />

</head>

<body>
	<center>
		<h3>
			<Strong>主页面文章列表管理</Strong>
			</h3s>
	</center>
	<div class="row">

		<div class="col-xs-12 col-md-12">
			<div class="widget">

				<div class="widget-body">
					<table id="App-table"
						class="table table-border table-bordered table-striped">
						<thead class="bordered-darkorange">
							<tr role="row">
								<th>ID</th>
								<th>文章标题</th>
								<th>发表时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${pageInfo.list}" var="article">
								<tr>
									<td class="sorting_1">${article.shortId}</td>
									<td class=" sorting_1">${article.title}</td>
									<td class="sorting_1 ">${article.addtime}</td>
									<td class="center ">
										<button class="btn btn-primary" type="button"
											style="margin-top:5px">
											<a
												href="${pageContext.request.contextPath}/wenzhang.html?&&flag=1"
												style="color: #FFFFFF">编辑</a>
										</button>

									</td>
								</tr>
							</c:forEach>

						</tbody>


					</table>
					<P>当前共${pageInfo.pageNum}页数，共${pageInfo.pages}页数<a href="article.html?pageNum=1"> 首页</a><a href="article.html?pageNum=${pageInfo.pageNum-1}">上一页</a>
					<a href="${pageContext.request.contextPath}/myblog/article.html?pageNum=2">下一页</a> </p>
				</div>
			</div>
		</div>
	</div>
	<%-- <br><br>
	<%@ include file="wenzhangtwo.jsp"%> --%>

</body>
<script type="text/javascript"
	src="Public/H_UI/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="Public/H_UI/lib/layer/2.4/layer.js"></script>
<script type="text/javascript"
	src="Public/H_UI/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript"
	src="Public/H_UI/static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->
</html>
