<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <html lang="CN">
<head>
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title>后台登录界面</title>
     <link href="${pageContext.request.contextPath}/static/Index/Login/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/Index/Login/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/Index/Login/css/style.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/Index/Login/css/login.min.css" rel="stylesheet">
</head>

<body class="signin">
<div class="signinpanel">
    <div class="row">
        <div class="col-sm-7">
            <div class="signin-info">
                <div class="logopanel m-b">
                </div>
                <div class="m-b"></div>
                <h4>Hello <strong>BossChan！</strong></h4>
                <ul class="m-b">

                </ul>
            </div>
        </div>
         <div class="col-sm-5">
            <form method="post" action="Login.do">
                <p class="m-t-md" id="err_msg">登录到博客后台</p>
                <input type="text" class="form-control uname" placeholder="用户名" id="user_name" name="userName"/>
                <input type="password" class="form-control pword m-b" placeholder="密码" id="password" name="userPass"/>
          <!-- 验证码模块 -->
             <div style="margin-bottom:20px">
                    <input type="text" class="form-control" placeholder="验证码" style="color:black;width:120px;float:left;margin:0px 0px;" name="code" id="code"/>
<%--suppress CssInvalidPropertyValue --%>
                 &nbsp;&nbsp;&nbsp;&nbsp;<img id="CreateCheckCode" src="PictureCheckCode"style="float:center;cursor: pointer"/><span style="color:red;">${msg}</span>
              <br>
		<center><a href="" onclick="myReload()"> 看不清,换一个</a></center>
		
                <!-- 写jsp页面的验证码功能 -->
                
                </div>
                <input type="submit" class="btn btn-success btn-block" id="login_btn" value="登录"/>
                <a href="register.html">若没有账号可先注册！</a>
            </form>
        </div>
        
    </div>
    <div class="signup-footer">
        <div class="pull-left">
            &copy; 2017-2019 All Rights Reserved. snake
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/static/Index/Login/js/jq/jquery.min.js?v=2.1.4"></script>
<script src="${pageContext.request.contextPath}/static/Index/Login/js/bootstrap.min.js?v=3.3.6"></script>

</body>
</html>
