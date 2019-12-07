<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'Photoes.jsp' starting page</title>
<link rel="shortcut icon" href="favicon.ico">
<link href="Public/static/admin/css/bootstrap.min.css?v=3.3.6"
	rel="stylesheet">
<link href="Public/static/admin/css/font-awesome.min.css?v=4.4.0"
	rel="stylesheet">
<link href="Public/static/admin/css/animate.min.css" rel="stylesheet">
<link href="Public/static/admin/css/plugins/iCheck/custom.css"
	rel="stylesheet">
<link href="Public/static/admin/css/style.min.css?v=4.1.0"
	rel="stylesheet">
<link href="Public/static/common/croppic/css/croppic.css"
	rel="stylesheet">
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-8">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<center>
							<h3>上传图片</h3>
						</center>
					</div>
					<div class="ibox-content">
						<div class="form-grsoup">
							<label class="col-sm-3 control-label">图片一：</label>
							<div class="input-group col-sm-4">
								<div id="croppic" style="width:250px;height:200px;position:relative;border:1px solid ">
									<div class="cropControls cropControlsUpload">
										<i class="cropControlUpload"></i>
									</div>
								</div>
								
							</div>
							
							<div class="ibox-content">
						<div class="form-grsoup">
							<label class="col-sm-3 control-label">图片二：</label>
							<div class="input-group col-sm-4">
								<div id="croppic" style="width:250px;height:200px;position:relative;border:1px solid ">
									<div class="cropControls cropControlsUpload">
										<i class="cropControlUpload"></i>
									</div>
								</div>
								
							</div>
							
							<div class="ibox-content">
						<div class="form-grsoup">
							<label class="col-sm-3 control-label">图片三：</label>
							<div class="input-group col-sm-4">
								<div id="croppic" style="width:250px;height:200px;position:relative;border:1px solid ">
									<div class="cropControls cropControlsUpload">
										<i class="cropControlUpload"></i>
									</div>
								</div>
								
							</div>
							
							<div class="ibox-content">
						<div class="form-grsoup">
							<label class="col-sm-3 control-label">图片四：</label>
							<div class="input-group col-sm-4">
								<div id="croppic" style="width:250px;height:200px;position:relative;border:1px solid ">
									<div class="cropControls cropControlsUpload">
										<i class="cropControlUpload"></i>
									</div>
								</div>
								
							</div>
						<div class="form-group">
							<div class="col-sm-4 col-sm-offset-6">
								<button class="btn btn-primary" type="submit">提交</button>
							</div>
						</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script src="Public/static/admin/js/jquery.min.js?v=2.1.4"></script>
	<script src="Public/static/admin/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="Public/static/admin/js/content.min.js?v=1.0.0"></script>
	<script
		src="Public/static/admin/js/plugins/validate/jquery.validate.min.js"></script>
	<script
		src="Public/static/admin/js/plugins/validate/messages_zh.min.js"></script>
	<script src="Public/static/admin/js/plugins/iCheck/icheck.min.js"></script>
	<script src="Public/static/admin/js/plugins/layer/layer.min.js"></script>
	<script src="Public/static/admin/js/jquery.form.js"></script>
	<script src="Public/static/common/croppic/js/croppic.min.js"></script>
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

    //头像上传插件
    //'{:url('/uploadHeade')}'
    function croppicUp() {
        var cropperOptions = {
			uploadUrl:'/uploadHeade', //上传处理url
            cropUrl:'/cropHeade',     //裁剪处理url
            outputUrlId:'myOutputId',
            modal:true  //黑窗口特效
		}
		//绑定div
		var cropperHeader = new Croppic('croppic', cropperOptions);
    }

    $(document).ready(function(){
        croppicUp();

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
