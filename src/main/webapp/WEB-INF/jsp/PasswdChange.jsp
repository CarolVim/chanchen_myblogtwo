<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人中心</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/HT/static/admin/css/style.min.css?v=4.1.0" rel="stylesheet">
  </head>
  
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-8">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>编辑信息</h5>
                </div>
                <div class="ibox-content">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">原始密码：</label>
                            <div class="input-group col-sm-4">
                                <input type="password" class="form-control" name="oldPass"  placeholder="${pwList.userPass}">
                            </div>
                        </div>
                    <form class="form-horizontal m-t" id="commentForm" method="post" action="${pageContext.request.contextPath}/myblog/updatePass.do">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">新密码：</label>
                            <div class="input-group col-sm-4">
                                <input type="password" class="form-control" name="newPass"  placeholder="请输入新密码">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">重复新密码：</label>
                            <div class="input-group col-sm-4">
                                <input type="password" class="form-control" name="rePass"  placeholder="请再次输入新密码">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-6">
                                <!--<input type="button" value="提交" class="btn btn-primary" id="postform"/>-->
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
<script src="${pageContext.request.contextPath}/static/HT/static/admin/css/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/css/bootstrap.min.js?v=3.3.6"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/css/content.min.js?v=1.0.0"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/css/plugins/validate/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/css/plugins/validate/messages_zh.min.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/css/plugins/iCheck/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/css/plugins/layer/layer.min.js"></script>
<script src="${pageContext.request.contextPath}/static/HT/static/admin/css/jquery.form.js"></script>
<script type="text/javascript">

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


    $(document).ready(function(){
        $(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",});

        // 编辑管理员
        var options = {
            beforeSubmit:showStart,
            success:showSuccess
        };

        $('#commentForm').submit(function(){
            $(this).ajaxSubmit(options);
            return false;
        });
    });

    // 表单验证
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

</script>
</body>
</html>
