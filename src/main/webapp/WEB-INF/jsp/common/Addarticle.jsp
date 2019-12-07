<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>编辑文章</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/js/css/style.min.css?v=4.1.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/js/layui/css/layui.css"rel="stylesheet">
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-10">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                   <h3><center>新增文章</center></h3>
                </div>
                <div class="ibox-content">
                    <form class="form-horizontal m-t" id="commentForm" method="post" action="${pageContext.request.contextPath}/myblog/Addarticle.do">
                        <input type="hidden" name="id" value=""/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">文章标题：</label>
                            <div class="input-group col-sm-7">
                                <input id="title" type="text" class="form-control" name="title" required="" aria-required="true" value="">
                            </div>
                        </div>
<%--                        <div class="form-group">--%>
<%--                            <label class="col-sm-3 control-label">文章分类：</label>--%>
<%--                            <div class="input-group col-sm-7">--%>
<%--                                <input id="kind" type="text" class="form-control" name="kind" required="" aria-required="true" value="">--%>
<%--                            </div>--%>
<%--                        </div>--%>
                       
                        <div class="form-group">
                            <label class="col-sm-3 control-label">文章内容：</label>
                            <div class="input-group col-sm-7">
                                <script id="content" name="content" type="text">
                                   
                                </script>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-8">
                                <!--<input type="button" value="提交" class="btn btn-primary" id="postform"/>-->
                                <button class="btn btn-primary" type="submit">确认提交</button>
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
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/validate/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/validate/messages_zh.min.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/ueditor/ueditor.config.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/js/plugins/ueditor/ueditor.all.min.js"></script>
<script>
 var editor = UE.getEditor('content');
</script>
</body>
</html>