<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<style>
body{margin:0; padding:0; overflow-x:hidden;}
a{text-decoration:none;}
ul{margin:0; padding:0;}
ul li{list-style:none;}

.all-wrap{}

						
		.policy{width:1280px; margin:0 auto;}
			.menu-img img{width:100%; height:400px;}	
       		.visual button{position:absolute; right:1000%;}

	</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<body>
	<div class="all-wrap">
<jsp:include page="top.jsp"/>
내용 들어갈부분

<jsp:include page="bottom.jsp"/>
	</div>
</body>
</html>