<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'Photoes.jsp' starting page</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/bootstrap.min.css?v=3.3.6"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/HTstatic/admin/css/font-awesome.min.css?v=4.4.0"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/plugins/iCheck/custom.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/HT/static/admin/css/style.min.css?v=4.1.0"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/HT/static/common/croppic/css/croppic.css"
	rel="stylesheet">
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-8">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<center>
							<h3>图片列表</h3>
						</center>
					</div>
					<c:forEach items="${shortList.list}" var="shortList">
						<div class="ibox-content">
							<div class="form-grsoup">
								<label class="col-sm-3 control-label">文章名称：</label>
								<div class="input-group col-sm-7">
									<input id="title" type="text" class="form-control" name="title"
										required="" aria-required="true" value="${shortList.title}">
								</div>
								<label class="col-sm-3 control-label">文章配图：</label>
								<div class="input-group col-sm-4">
									<div id="croppic"
										style="width:250px;height:200px;position:relative;border:1px solid ">
										<div class="cropControls cropControlsUpload"></div>
										<c:if test="${shortList.shortId>2}">
											<img alt="image" src="${shortList.picUrl}"
												style="position:relative;left:0px;top:0px;width:250px;height:200px;" />
										</c:if>
										<c:if test="${shortList.shortId<=2}">
											<img alt="image" src="/static/HT/images/upload/SUN.jpg"
												style="position:relative;left:0px;top:0px;width:250px;height:200px;" />
										</c:if>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-4 col-sm-offset-6">
										<button class="btn btn-primary" type="submit"><a href="${pageContext.request.contextPath}/pc.do?shortId=${shortList.shortId}">编辑</a></button>
										<span style="color:red;">${msg}</span>
									</div>
								</div>

					</c:forEach>
					</form>

				</div>
			</div>
					<div class="page text-right clearfix" style="margin-top: 40px">
					   <!-- 当前页为第一页时href="javascript:void(0)" 禁用 a 标签的点击时间事件 当前页不是第一页时请求url 中返回currentPage=${pageInfo.pageNum - 1 } 当前页 -1-->
					<a <c:if test="${pageInfo.pageNum != pageInfo.firstPage}">href="${pageContext.request.contextPath}/orders/list?currentPage=${pageInfo.pageNum - 1 }"</c:if> 
							<c:if test="${pageInfo.pageNum == pageInfo.firstPage}"> href="javascript:void(0)" class="disabled"</c:if>
					>上一页</a>
					<!-- foreach 从 1 开始 到 总页数结束  遍历输出 -->
					<c:forEach begin="1" end="${pageInfo.pages }" varStatus="status">
						<a href="${pageContext.request.contextPath}/orders/list?currentPage=${status.count }" 
						    <c:if test="${status.count == pageInfo.pageNum}">class="select"</c:if>>${status.count }</a>
						 </c:forEach>
<%--					                                        <!-- 当前页为最后一页时href="javascript:void(0)" 禁用 a 标签的点击时间事件 --%>
<%--                                        当前页不是最后一页时请求url 中返回currentPage=${pageInfo.pageNum - 1 } 当前页 -1--%>
<%--                                     -->--%>
					<a <c:if test="${pageInfo.pageNum == pageInfo.lastPage}">class="disabled" href="javascript:void(0)"</c:if> 
					   <c:if test="${pageInfo.pageNum != pageInfo.lastPage}">href="${pageContext.request.contextPath}/orders/list?currentPage=${pageInfo.pageNum + 1 }"</c:if> >下一页</a>
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
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/iCheck/icheck.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/layer/layer.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/jquery.form.js"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/common/croppic/js/croppic.min.js"></script>
</body>
</html>
