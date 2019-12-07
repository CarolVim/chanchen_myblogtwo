<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'two.jsp' starting page</title>
</head>

<body>
	<section id="two" class="wrapper style2">
	<center>
	<header>
	<h2>${shortList[0].title}</h2>
	</header>
	
	</center>
	<div class="content">
		<div class="gallery">
	<c:forEach  var="i"  begin="0" end="3">
			<div>
				<div>网址:<a href="${photoList[i].website}">${photoList[i].website}</a>请粘贴访问！</div>
				<div class="image fit flush">
					<a href="/MyBlog${photoList[i].picUrl}"><img src="/MyBlog${photoList[i].picUrl}" alt="" /></a>
				</div>
			</div>
		</c:forEach>
		<!-- 测试 -->
		<!--  -->
		</div>
	</div>
	</section>
</body>
</html>
