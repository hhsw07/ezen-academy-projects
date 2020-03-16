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
<title>Insert title here</title>
<style type="text/css">
	a {text-decoration:none; color:black;}
	body {margin:5px auto;}
	.logo {font-family:sans-serif;font-size:35px;color:#FF4000;font-weight:bold; margin:0;}
</style>
</head>
<body>
<%--
e.printStackTrace() 를 처리하지 못하여 어떤줄에서 예외발생했는지 알 수 가 없음.
적용은 좀 더 나중에 필요할 듯.
 --%>

<h1><a href="<%=path %>/main/Main.jsp" class="logo" >HobbyFactory</a></h1>
<h2>요청한 페이지가 없습니다.</h2>
<h2>예외 사유: <%=exception.getMessage() %></h2>
<h2>예외 사유(상세): <%=exception.toString() %></h2>



</body>
</html>