<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
	<style>
body{margin:0; padding:0; overflow-x:hidden;}
a{text-decoration:none;}
ul{margin:0; padding:0;}
ul li{list-style:none;}
						
	</style>
</head>
<body>
	<div class="all-wrap">
<jsp:include page="top.jsp"/>

내용이 들어갈 부분

<jsp:include page="bottom.jsp"/>
	</div>
</body>
</html>