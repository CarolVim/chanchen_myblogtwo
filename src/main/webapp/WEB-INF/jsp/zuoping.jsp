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
<%--					<c:forEach var="i" begin="0" end="3">--%>
						<c:forEach items="${zpList}" var="zpList">
						<div class="ibox-content">
							<div class="form-grsoup">
							<br>
							<label class="col-sm-3 control-label">作品编号：</label>
								<div class="input-group col-sm-7">
								${zpList.pictureId}
								</div>
								<br><br>
								<label class="col-sm-3 control-label">网址：</label>
								<div class="input-group col-sm-7">
									"${zpList.website}"
								</div>
								<br><br>
								<label class="col-sm-3 control-label">作品简介：</label>
								<div class="input-group col-sm-4">
									"${zpList.intro}"
								</div>
								
								<br>
								
								
								
								<label class="col-sm-3 control-label">作品显示：</label>
								<div class="input-group col-sm-4">
									<div id="croppic"
										style="width:250px;height:200px;position:relative;border:1px solid ">
										<div class="cropControls cropControlsUpload"></div>
										<img alt="image" src="${zpList.picUrl}"
											style="position:relative;left:0px;top:0px;width:250px;height:200px;" />
									</div>
								</div>
								
								<div class="form-group">
                            <div class="col-sm-4 col-sm-offset-6">
                                <button class="btn btn-primary" type="submit"><a href="${pageContext.request.contextPath}/Editorzp.do?pictureId=${photoList[i].pictureId}">编辑</a></button>
                                <span style="color:red;">${msg}</span>
                            </div>
                        </div>
                        <hr>
					</c:forEach>
					</form>
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
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/iCheck/icheck.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/layer/layer.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/jquery.form.js"></script>
	<script src="${pageContext.request.contextPath}/static/HT/static/common/croppic/js/croppic.min.js"></script>
</body>
</html>
