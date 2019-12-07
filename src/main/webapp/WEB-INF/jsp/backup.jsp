<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>数据备份/还原</title>
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
<link href="Public/static/admin/css/plugins/sweetalert/sweetalert.css"
	rel="stylesheet">
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<!-- Panel Other -->
		<div class="ibox float-e-margins">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>数据表列表</h5>
				</div>
				<div class="ibox-content">

					<table class="table table-bordered">
						<thead>
							<tr>
								<th>ID</th>
								<th>表名</th>
								<th>上次备份时间</th>
								<th>最近还原时间</th>
								<th>存储地址</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${dbList}" var="dbList">
								<tr>
									<td class="sorting_1">${dbList.dbId}</td>
									<td class="sorting_1">${dbList.dbname}</td>
									<td class="sorting_1">${dbList.editime}</td>
									<td class="sorting_1">${dbList.lastime}</td>
									<td class="sorting_1">${dbList.saveaddress}</td>
									<td class="center ">
										<!-- <if condition="$vo['role_id'] neq 1"> --> <a
										href="${pageContext.request.contextPath}/backup.do?dbId=${dbList.dbId}" class="btn btn-success btn-xs"
										data-loader="App-loader" data-loadername="编辑角色"><i
											class="fa fa-edit"></i>备份</a> &nbsp;&nbsp; <a
										href="${pageContext.request.contextPath}/return.do?dbId=${dbList.dbId}" class="btn btn-success btn-xs"
										data-loader="App-loader" data-loadername="还原"> <i
											class="fa fa-plus"></i>还原
									</a>
									</td>
								</tr>
							</c:forEach>
							
						</tbody>
					</table>
		<h3><center>${msg}!!!</center></h3>
				</div>
			</div>
		</div>
	</div>
	<!-- End Panel Other -->
	</div>
	<!-- 角色分配 -->
	<div class="col-sm-12" style="display: none" id="wait">
		<div class="ibox ">
			<div class="ibox-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/jquery.min.js?v=2.1.4"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/content.min.js?v=1.0.0"></script>
	<script
		src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/suggest/bootstrap-suggest.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/layer/laydate/laydate.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/sweetalert/sweetalert.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/layer/layer.min.js"></script>
	<script type="text/javascript">

    function importData(table, all){
        index = layer.open({
            type: 1,
            area:'400px',
            title:'正在操作',
            skin: 'layui-layer-demo', //加上边框
            content: $('#wait')
        });
        $.getJSON("{:url('data/importData')}", {'table' : table}, function(res){
            layer.close(index);
            layer.alert('备份成功！', {icon: 1}, function(){
                window.location.reload();
            });
        })
    }

    function backData(table){
        index = layer.open({
            type: 1,
            area:'400px',
            title:'正在操作',
            skin: 'layui-layer-demo', //加上边框
            content: $('#wait')
        });
        $.getJSON("{:url('data/backData')}", {'table' : table}, function(res){
            layer.close(index);
            if(res.code == 1){
                layer.alert('还原成功！', {icon: 1}, function(){
                    window.location.reload();
                });
            }else{
                layer.alert(res.msg, {icon: 2});
            }
        })
    }
</script>
</body>
</html>
