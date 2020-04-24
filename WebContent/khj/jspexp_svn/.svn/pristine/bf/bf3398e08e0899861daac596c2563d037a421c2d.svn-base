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
<body>
<!-- 
2. session 객체를 이용하여, 로그인한 회원의 정보를 페이지가
닫힐 때까지 계속 유지되도록 코드 처리하세요. 회원 정보(아이디,
이름, 포인트) -->
	<h2>로그인</h2>
	<form method="post">
	아이디:<input type="text" name="id"/><br>
	패스워드:<input type="password" name="pass"/><br>
	<input type="submit" value="로그인" />
	</form>
</body>
<%
boolean isInvalid=false;
String id=request.getParameter("id");
String pass=request.getParameter("pass");
if(	id!=null && pass!=null ){
	if(id.equals("himan")&& pass.equals("7777")){
		session.setAttribute("mem", new Member("himan", "7777", 
				"홍길동", 3000, "일반사용자"));
		response.sendRedirect("a0311_session_go.jsp");
	}else{
		isInvalid=true;
	}
}

%>
<script type="text/javascript">
	var isInvalid=<%=isInvalid%>;
	if(isInvalid){
		alert("인증된 계정이 아닙니다!");
	}
</script>
</html>



