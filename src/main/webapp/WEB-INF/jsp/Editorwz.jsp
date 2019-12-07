<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>编辑文章</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="Public/static/admin/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="Public/static/admin/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="Public/static/admin/css/animate.min.css" rel="stylesheet">
    <link href="Public/static/admin/js/css/style.min.css?v=4.1.0" rel="stylesheet">
    <link href="Public/static/admin/js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet">
    <link href="Public/static/admin/js/layui/css/layui.css"rel="stylesheet">
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-10">
            <div class="ibox float-e-margins">
                <br>
                <div class="ibox-content">
                    <form class="form-horizontal m-t" id="" method="post" action="${pageContext.request.contextPath}/Change.do?shortId=${shortList.shortId}">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">文章标题：</label>
                            <div class="input-group col-sm-7">
                                <input id="title" type="text" class="form-control" name="title" required="" aria-required="true" value="${shortList.title}">
                            </div>
                        </div>
                        
                              
                        <div class="form-group">
                            <label class="col-sm-3 control-label">文章内容：</label>
                            <div class="input-group col-sm-7">
                                <script id="editor" name="content" type="text/plain">
                                 ${shortList.content}
                                </script>
                            </div>
                        </div>
                        
                         <div class="form-group">
                            <label class="col-sm-3 control-label">发表时间：</label>
                           <div class="input-group col-sm-7">
                                <input id="title" type="text" class="form-control" name="time" required="" aria-required="true" value="${shortList.addtime}">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-8">
                                <!--<input type="button" value="提交" class="btn btn-primary" id="postform"/>-->
                                <button class="btn btn-primary" type="submit">确认提交</button>
                                <center>${msg}</center>
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
<script src="Public/static/admin/js/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
<script src="Public/static/admin/js/plugins/validate/jquery.validate.min.js"></script>
<script src="Public/static/admin/js/plugins/validate/messages_zh.min.js"></script>
<script src="Public/static/admin/js/layui/layui.js"></script>
<script src="Public/static/admin/js/jquery.form.js"></script>
<script src="Public/static/admin/js/plugins/ueditor/ueditor.config.js"></script>
<script src="Public/static/admin/js/plugins/ueditor/ueditor.all.min.js"></script>
<script>
 var editor = UE.getEditor('editor');
/* function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    } */
</script>
<script type="text/javascript">
/* 
    var index = '';
    function showStart(){
        index = layer.load(0, {shade: false});
        return true;
    } */

/*     function showSuccess(res){

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
    } */
/* 
    $(document).ready(function(){
        // 添加角色
        var options = {
            beforeSubmit:showStart,
            success:showSuccess
        };

        $('#commentForm').submit(function(){
            $(this).ajaxSubmit(options);
            return false;
        });

        $('#keywords').tagsinput('add', 'some tag');
        $(".bootstrap-tagsinput").addClass('col-sm-12').find('input').addClass('form-control')
            .attr('placeholder', '输入后按enter'); */

        // 上传图片
/*         layui.use('upload', function(){
            var upload = layui.upload; */

            //执行实例
/*             var uploadInst = upload.render({
                elem: '#test1' //绑定元素
                ,url: "{:url('articles/uploadImg')}" //上传接口
                ,done: function(res){
                    //上传完毕回调
                    $("#thumbnail").val(res.data.src);
                    $("#sm").html('<img src="' + res.data.src + '" style="width:40px;height: 40px;"/>');
                }
                ,error: function(){
                    //请求异常回调
                }
            });
        })
       
    }); */
	
    // 表单验证
/*     $.validator.setDefaults({
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
    }); */
</script>
</body>
</html>