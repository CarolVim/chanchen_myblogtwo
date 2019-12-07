<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'one.jsp' starting page</title>
  </head>
  
  <body>
    <section id="one" class="wrapper style1">

						<div class="image fit flush">
							<img src="images/bg/bg1.jpg" id="img1" />
						</div>
						<header class="special">
						<c:forEach items="${articleList}" var="article">
								<h2>${article.title}</h2>
						    <p>Keep dreaming and coding!</p>
						    <center>
							<p>${article.content} </p>
							<p> I can be a good typer if i still try</p>
						</center>
						</c:forEach>
						</header>
					</section>
					<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a></div>
  </body>
</html>
