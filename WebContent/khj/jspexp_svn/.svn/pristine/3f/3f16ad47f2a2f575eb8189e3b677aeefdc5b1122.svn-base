<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jspexp.z01_vo.*,jspexp.b01_database.*"
%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css">
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">	

	$(document).ready(function() {
		<%--
		1.[난이도1] h3를 7개 만들고, 배경색상을 무지개 색상으로
		나타내고, 해당 내용을 무지개명으로 출력 처리 하세요.

		2.[난이도2] 4X4 테이블에 글자가 9~1로 역순위로 나타나되,
		이중에 임의의 cell 1개에는 지뢰 (펑)이라고 표시되게,
		하세요..
		
		3.[난이도1] 로그인, 아이디, 패스워드 값을 입력하는 화면을 만들되
		중앙정렬, 배경색/글자색은 파랑/주황으로 설정하시오.
		
		4.[난이도2] 위 내용에 클릭시, 아이디, 패스워드 값을 맞을 때는,
		배경색상이 흰색으로 변경, 그렇지 않을 때는 빨강색으로 변경되게 하세요.(js 이벤트 활용) 
	
		
		--%>
		
		
		<%--1번 문제 --%>
		$("h2").eq(0).text("red");
		$("h2").eq(0).css({"background-color":"red","color":"white"});
		
		$("h2").eq(1).text("orange");
		$("h2").eq(1).css("background-color","orange");
		
		$("h2").eq(2).text("yellow");
		$("h2").eq(2).css("background-color","yellow");
		
		$("h2").eq(3).text("green");
		$("h2").eq(3).css("background-color","green");
		
		$("h2").eq(4).text("blue");
		$("h2").eq(4).css({"background-color":"blue","color":"white"});
		
		$("h2").eq(5).text("navy");
		$("h2").eq(5).css({"background-color":"navy","color":"white"});
		
		$("h2").eq(6).text("purple");
		$("h2").eq(6).css({"background-color":"purple","color":"white"});
		
	
		
		
		<%--3번 문제 --%>
		$("[name=id],[name=pass]").css({"text-align":"center","background-color":"blue","color":"orange"});
		$("[name=id]").val("safetheearth");
		$("[name=pass]").val("8282");
		
		
		
		
		
		
		
		
	});
</script>
</head>
<body>

	<%-- 1번 문제 --%>
	
	<%for(int i=0; i<7; i++) {%>
	<h2></h2>
	<%}%>
	

	<%--3번 문제 --%>
	아이디 : <input type="text" name="id"/><br>
	패스워드 : <input type="text" name="pass"/><br>
	로그인 : <input type="button" name="login" value="로그인"/><br>
</body> 
</html>