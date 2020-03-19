<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*"
    isErrorPage="true"
    %>
<%  request.setCharacterEncoding("utf-8");
    String path = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하비팩토리 - 취미를 통해 일상을 가꾸자</title>
<style type="text/css">
	a {text-decoration:none; color:black;}
	body {margin:5px auto;}
	h2 {text-align:center;}
	img {margin-left:600px;}
	.logo {font-family:sans-serif;font-size:35px;color:#FF4000;font-weight:bold; margin:0;}
	.all_wrap{width:1280px; margin:0 auto;}
	.user_top{width:1280px; height:50px; background-color:#000000; vertical-align:middle; position:relative;}
	
</style>
</head>
<body>
<%--
e.printStackTrace() 를 처리하지 못하여 어떤줄에서 예외발생했는지 알 수 가 없음.
적용은 좀 더 나중에 필요할 듯.
 --%>

	<div class="all_wrap">
		<div class="user_top"></div>
		<h1><a href="<%=path %>/main/Main.jsp" class="logo" >HobbyFactory</a></h1>
		<hr>
		<h2>요청한 페이지가 없습니다.</h2>
		<h2>불편을 드려 죄송합니다.</h2>
		<img src="<%=path %>/main/image/fixed.webp"/>
	</div>
	

</body>
</html>