<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="${path}/a00_com/a00_com.css">
<!-- 서버 안에 jquery lib를 다운 받아서 설정 -->	
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	<%-- 
	// document 즉, DOM객체가 메모리에 로딩되었을 때,
	// :body안에 있는 tag가 DOM객체로 로딩되었을 때
	// function(){} : 수행할 함수 지정.
	--%>
	$(document).ready(function(){
		<%-- 
		h2라는 DOM객체에  text() : 포함 시킬 문자열 지정
		text()는 html tag 랜더링 하지 않음..
		html()는 포함된 문자열 html tag로 랜더링 함
		--%>
		$("h2").text("local setting Jquery시작");
		$("#div01").text("<h2>안녕하세요(text)</h2>");
		$("#div02").html("<h2>안녕하세요(html)</h2>");
		
	});
</script>
</head>
<body>
	<h2></h2>
	<div id="div01"></div>
	<div id="div02"></div>
</body>
</html>



