<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--

 --%>

<html>
<head>
<meta charset="UTF-8">
<title>404에러 발생..</title>
<style type="text/css">
body {
	background-image : url('<%=path%>/a04_error/img01.jpg');
	background-repeat : no-repeat;
	background-size : cover;
}
</style>
</head>
<body>
<h2 align="center">요청한 페이지가 존재 하지 않습니다.!!</h2>
</body>
</html>
