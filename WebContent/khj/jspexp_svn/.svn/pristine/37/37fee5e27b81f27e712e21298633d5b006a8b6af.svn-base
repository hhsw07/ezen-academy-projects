<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%--
 로그인
ID [    ]   ==> Gentleman  @@@님 환영합니다.
PWD [    ]  ==> Lady @@님 환영합니다. 
()남 ()여
 [로그인]
 --%>
<body>
	<h2>로그인</h2>
	<form method="post">
	아이디:<input type="text" name="id"/><br>
	패스워드:<input type="password" name="pass"/><br>
	<input type="radio" name="gender" value="M"/>남
	<input type="radio" name="gender" value="F"/>여<br>
	<input type="submit" value="로그인" />
	</form>
<%
	String id=request.getParameter("id");
	String pass= request.getParameter("pass");
	String gender= request.getParameter("gender");
	// id, pass는 생략
	if(gender!=null){
		String page1="a0311_reqGoMale.jsp";
		if(gender.equals("F")) page1="a0311_reqGoFemale.jsp";
		// request 범위까지 전송처리.
		RequestDispatcher rd = request.getRequestDispatcher(page1);
		rd.forward(request, response);
		
	}
	





%>	
</body>
</html>