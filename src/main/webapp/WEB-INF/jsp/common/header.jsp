<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<script type="text/javascript">
		function init(){
			setInterval("showImg()",2000);
		}
		var i=1
		function showImg(){
		i++;
		document.getElementById("img1").src="images/bg/bg"+i+".jpg";
		if(i==5){
			i=1;
			}
		}
		</script>
  </head>
  
  <body onload="init()">
   <div class="login" id="login">
   <c:if test="${user==null}">
   		<a href="${pageContext.request.contextPath}/login.html">
   			<strong>
   				<font color="white">Login_On</font>
   			</strong>
   		</a>
   		</c:if>
   	 	<font color="white">
   		<c:if test="${user!=null}">
   		当前用户为:<a href="#"><font color="white">${user.userName}</font></a>
   		</font>
   		<a href="${pageContext.request.contextPath}/logout.do"><font color="white">【注销】</font> </a>
   		</c:if>
   		<a href="register.html"><strong><font color="white">||【新用户注册】</font></strong></a>
  
   	</div>
		<!-- Header -->
			<header id="header">		
				<div class="logo"><a href="#">Welcome to chanchen's Website<span>we for the future!</span></a></div>
			</header>
  </body>
</html>
