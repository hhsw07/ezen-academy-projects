<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
<%--
# el의 기본 객체
1. session scope의 범위에 따른 객체 선언.
	pageContext, requestScope, sessionScope, applicationScope
	를 통해서 속성을 설정하여 처리할 수 있다.
	앞에 요청범위에 따른 내용을 생략이 가능하다.
2. param.요청key == request.getParameter("요청key")
   paramValues.요청배열key ==  request.getParamterValues("요청배열key")
   
   http://localhost:5080/jspexp/a09_el/a03_basicObject.jsp?name=신영수	
   http://localhost:5080/jspexp/a09_el/a03_basicObject.jsp
   	?chfruits=사과&chfruits=바나나&chfruits=딸기	
 --%>
<%
	request.setAttribute("name","홍길동");
%> 
 	<h2>${name} - ${requestScope.name}</h2>
 	<h2>param.name : ${param.name}</h>
 	<h2>paramValues.chfruits[0] : ${paramValues.chfruits[0]}</h2>
 	<h2>paramValues.chfruits[1] : ${paramValues.chfruits[1]}</h2>
 	<h2>paramValues.chfruits[2] : ${paramValues.chfruits[2]}</h2>
<!-- 
	ex1) 로그인 화면을 만들고, id, pass 값이 himan 7777일때는 인증 성공,
		그 외에는 인증 실패를 출력하세요.	param 활용
	ex2) 좋아하는 취미생활을 checkbox로 선택하게 하여, 선택된 취미 생활만
		출력되게 처리하세요 paramValues를 활용..
		 	
 --> 	
 	<form method="post">
 	아이디:<input name="id"><br>
 	패스워드:<input name="pass" type="password"><br>
 	<input type="submit" value="로그인"/>
 	</form>
 	<h2>인증여부:
 	${param.id=='himan'&&param.pass=='7777'?'인증성공':'인증실패' }</h2>
 	<form method="post">
 		<input type="checkbox" name="hobby" value="낚시"/>낚시<br>
 		<input type="checkbox" name="hobby" value="PC게임"/>PC게임<br>
 		<input type="checkbox" name="hobby" value="음악감상"/>음악감상<br>
 		<input type="checkbox" name="hobby" value="수영"/>수영<br>
 		<input type="submit" value="등록"/>
 	</form>
 	<h2>
 		선택된 건수:
 		${paramValues.hobby}
 		${paramValues.hobby[0]},
 		${paramValues.hobby[1]},
 		${paramValues.hobby[2]},
 		${paramValues.hobby[3]}
 	</h2>
  	
 	
 	
 	
 	
 	
 	
 	
 	
 
</body>
</html>