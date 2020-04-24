<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
# useBean과 요청객체의 처리..
1. name은 useBean의 값과 자동으로 mapping될 수 있다.
	name="age"  ==> Bean객체의 setAge()가 있으면  요청값으로 할당 될 수
	있다.

 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
	<form method="post" action="a04_reqBean.jsp">
		이름:<input type="text" name="name"/><br>
		패스워드:<input type="text" name="pass"/><br>
		아이디:<input type="text" name="id"/><br>
		포인트:<input type="text" name="point"/><br>
		권한:<input type="text" name="auth"/><br>
		<!-- 
		요청값을 받는 page에서 useBean을 선언하고,
		setProperty로 해당 메서드로 요청된 값을 받으면서 객체를 생성해서
		활용할 수 있다.
		 -->
		<input type="submit"/>
	</form>
</body>
</html>






