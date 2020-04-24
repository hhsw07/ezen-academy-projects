<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
# request 기본 객체
1. 웹 브라우저가 웹 서버에 전송한 요청 관련 정보 제공
2. 주요 기능
	1) 클라이언트(브라우저)와 관련된 정보 읽기
	2) 서버와 관련된 정보 읽기 기능.
	3) 클라이언트에 전송한 요청 파라미터 읽기 기능..
		request.getParamter("")
	4) 클라이언트가 전송한 요청 헤더 읽기 기능
	5) 클라이언트가 전송한 쿠키 읽기 기능
	6) 속성 처리 기능..
3. request.getParamter("key")	
	1) client가 주소창이나 form객체를 통해서 전송하는 매개값을 
	처리하는 객체를 말한다.
	페이지명?key=value&key=value (GET)
	form method="post"
		name="key"  value="value" (POST)

 -->
 	<!-- id와 pass을 입력했을 때, url 창을 확인!!
 	http://localhost:5080/jspexp/a01_basic/a07_request.jsp
 	?id=%ED%99%8D%EA%B8%B8%EB%8F%99&pass=8888
 	name="pass"
 	value="8888"
 	
 	 -->
	<form>
		아이디:<input type="text" name="id"/><br>
		패스워드:<input type="password" name="pass"/><br>
		<input type="submit"/>
	</form> 
	<%
	// ?id=@@@
	String id = request.getParameter("id");
	if(id==null) id="";
	
	String pass = request.getParameter("pass");
	if(pass==null) pass="";
	%>
 	<h2>입력한 id:<%=id %></h2>
 	<h2>입력한 pass:<%=pass %></h2>
 	<%if(!id.equals("")&&!pass.equals("")){%>
 	<h3><%=id.equals("himan")&&pass.equals("7777")?
 			"로그인성공":"로그인실패" %></h3>
 	<%}%>
 
</body>
</html>