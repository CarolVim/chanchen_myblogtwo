<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'TianJia.jsp' starting page</title>
       <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>编辑管理员</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="Public/static/admin/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="Public/static/admin/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="Public/static/admin/css/animate.min.css" rel="stylesheet">
    <link href="Public/static/admin/css/style.min.css?v=4.1.0" rel="stylesheet">
  </head>
  
  <body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-8">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <center><h3>添加管理员界面</h3></center>
                </div>
                <div class="ibox-content">
                    <form class="form-horizontal m-t" id="commentForm" method="post" action="#">
					
                        <div class="form-group">                       
                            <label class="col-sm-3 control-label">管理员昵称：</label>
                            <div class="input-group col-sm-4">
                                <input id="nickname" type="text" class="form-control" name="nickname" required="" aria-required="true">
                            </div>
                        </div>
                  
                          <div class="form-group">
                            <label class="col-sm-3 control-label">登录名：</label>
                            <div class="input-group col-sm-4">
                                <input id="username" type="text" class="form-control" name="username" required="" aria-required="true">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">角色：</label>
                            <div class="input-group col-sm-4">
                                <select class="form-control" name="role_id" required="" aria-required="true">
                                    <option value="">请选择</option>
                                    <option value="1">超级管理员</option>
                                    <option value="2">普通管理员</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">登录密码：</label>
                            <div class="input-group col-sm-4">
                                <input id="password" type="text" class="form-control" name="password" required="" aria-required="true">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-6">
                                <!--<input type="button" value="提交" class="btn btn-primary" id="postform"/>-->
                                <button class="btn btn-primary" type="submit">提交</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
</div>
<script src="Public/static/admin/js/jquery.min.js?v=2.1.4"></script>
<script src="Public/static/admin/js/bootstrap.min.js?v=3.3.6"></script>
<script src="Public/static/admin/js/content.min.js?v=1.0.0"></script>
<script src="Public/static/admin/js/plugins/validate/jquery.validate.min.js"></script>
<script src="Public/static/admin/js/plugins/validate/messages_zh.min.js"></script>
<script src="Public/static/admin/js/plugins/layer/layer.min.js"></script>
<script src="Public/static/admin/js/jquery.form.js"></script>
<!-- <script type="text/javascript">

    var index = '';
    function showStart(){
        index = layer.load(0, {shade: false});
        return true;
    }

    function showSuccess(res){

        layer.ready(function(){
            layer.close(index);
            if(1 == res.code){
                layer.alert(res.msg, {title: '友情提示', icon: 1, closeBtn: 0}, function(){
                    window.location.href = res.data;
                });
            }else if(111 == res.code){
                window.location.reload();
            }else{
                layer.msg(res.msg, {anim: 6});
            }
        });
    }

    //表单验证
    $(document).ready(function(){

        // 编辑角色
        var options = {
            beforeSubmit:showStart,
            success:showSuccess
        };

        $('#commentForm').submit(function(){
            $(this).ajaxSubmit(options);
            return false;
        });
    });
    $.validator.setDefaults({
        highlight: function(e) {
            $(e).closest(".form-group").removeClass("has-success").addClass("has-error")
        },
        success: function(e) {
            e.closest(".form-group").removeClass("has-error").addClass("has-success")
        },
        errorElement: "span",
        errorPlacement: function(e, r) {
            e.appendTo(r.is(":radio") || r.is(":checkbox") ? r.parent().parent().parent() : r.parent())
        },
        errorClass: "help-block m-b-none",
        validClass: "help-block m-b-none"
    });
</script> -->
</body>
</html>
