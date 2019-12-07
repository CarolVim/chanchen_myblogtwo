<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'three.jsp' starting page</title>
</head>

<body>
	<center>
		<header>
		<h2>${shortList[1].title}</h2>
		</header>
	</center>
	<section id="three" class="wrapper">
	<div class="spotlight">
		<div class="image flush">
		    <img src="/MyBlog${shortList[2].picUrl}" alt="" />
			
		</div>
		<div class="inner">
			<h3>Date:${shortList[2].addtime}</h3>
			<h3><a href="#">${shortList[2].title}</a></h3>
			<p><font color="black">${shortList[2].content}</font></p>
		</div>
	</div>
	<div class="spotlight alt">
		<div class="image flush">
			<img src="/MyBlog${shortList[3].picUrl}" alt="" />
		</div>
		<div class="inner">
		
			<center>
			
				<h3>Date:${shortList[1].addtime}</h3>
			</center>
			<h3><a href="#">${shortList[3].title}</a></h3>
			<p>${shortList[3].content}</p>
			
		</div>
	</div>
	<div class="spotlight">
		<div class="image flush">
			<img src="/MyBlog${shortList[4].picUrl}" alt="" />
		</div>
		<div class="inner">
			<h3>Date:${shortList[2].addtime}</h3>
			<h3><a href="#">${shortList[4].title}</a></h3>
			<p><font color="black">${shortList[4].content}</font></p>
		</div>
	</div>
	</section>
</body>
</html>
