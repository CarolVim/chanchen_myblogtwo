<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'BianJi.jsp' starting page</title>
	<link rel="shortcut icon" href="favicon.ico">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/style.min.css?v=4.1.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/common/croppic/css/croppic.css" rel="stylesheet">
  </head>
 <body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-8">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <center><h3>编辑信息</h3></center>
                </div>
                <div class="ibox-content">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">修改头像：</label>
                        <div class="input-group col-sm-4">
                        <div id="croppic" style="width:250px;height:200px;position:relative;border:1px solid ">
                        <div class="cropControls cropControlsUpload">
                        	</div>
                        	<span>
                        <!-- 	<c:if test="${userList.picUrl==null}"> -->
                <img alt="image" class="img-circle" src="${pageContext.request.contextPath}/static/HT/images/hh.jpg" style="position:relative;left:15px;top:5px;width:80px;height:80px;"/>
                      <!--   </c:if> -->
                        <!--	<c:if test="${userList.picUrl!=null}">-->
                <img alt="image" class="img-circle" src="${pageContext.request.contextPath}${userList.picUrl}" style="position:relative;left:15px;top:5px;width:80px;height:80px;"/>
                     <!--   </c:if>-->
                        </span>
                        
                        </div>
                        </div>
                    </div>

                    <form class="form-horizontal m-t" id="commentForm" method="post" action="${pageContext.request.contextPath}/myblog/UpdateUserInfo.do?userId=${userList.userId}" enctype="multipart/form-data">
                      <!--   <input type="hidden" name="head" value="#" id="myOutputId"> -->
                         <div class="form-group">
                            <label class="col-sm-3 control-label"></label>
                            <div class="input-group col-sm-4">
                              <center><input type="file" name="picUrl"/></center>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">昵称：</label>
                            <div class="input-group col-sm-4">
                                <input id="userName" type="text" class="form-control" name="userName" value="${userList.userName}" placeholder="请输入真实姓名" required="" aria-required="true" value="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">注册时间：</label>
                            <div class="input-group col-sm-4">
                                <input id="time" type="text" class="form-control" name="zct" value="${userList.registTime}" placeholder="请输入真实姓名" required="" aria-required="true" value="">

                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">账户状态：</label>
                            <div class="input-group col-sm-4">
                                <input id="zhuangtai" type="text" class="form-control" name="zt" value="安全" placeholder="请输入真实姓名" required="" aria-required="true" value="">

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
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/bootstrap.min.js?v=3.3.6"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/content.min.js?v=1.0.0"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/validate/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/validate/messages_zh.min.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/iCheck/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/layer/layer.min.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/common/croppic/js/croppic.min.js"></script>

</body>
</html>
