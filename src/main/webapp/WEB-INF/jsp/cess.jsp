<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'cess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <div class="example-wrap">
					<div class="example">
						<table id="cusTable">
							<thead>
								<th data-field="id">角色ID</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<th data-field="role_name">角色名称</th>&nbsp;&nbsp;&nbsp;
								<th data-field="role_permission">角色权限</th>
							</thead>
							<tbody>
								<tr id="one">
								</tr>
								</tbody>
						</table>
					</div>
				</div>
  </body>
  <script>
		$(function(){}{
		   var content="";
		   $.post(
		   	"/Permission.do",
		   	function(data){
		   		for(var i=0;i<data.length;i++){
		   			content+="<td >"+${data[i].userName}+"</td>";
								
		   		}
		   		$("#one").html(content);
		   	},
		   	"json"
		   );
		
		
		});
</html>
