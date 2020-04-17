<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
# forTokens 
1. 구분자에 의해서 데이터를 처리하는 것을 말한다.
2. 기본 형식
	<c:forTokens var="변수명" items="구분자포함데이터"
		delims="구분자"
		${변수명} : 단위 데이터
3. 속성
	1) var : 구분자에 의해서 추출된 하나의 데이터
	2) items :구분자가 있는 문자열
	3) delims : 구분자
 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
	<c:forTokens var="color" items="red, green, blue" 
		delims=",">
		<h2>${color}</h2>	
	</c:forTokens>
<%--
	무지개 색상을 ;으로 구분자를 주어서 h2로 배경색상과
	함께 출력하세요.
	"red;orange;yellow;green;blue;navy;purple"
 --%>	
	<c:forTokens var="rainbow"
		 items="red;orange;yellow;green;blue;navy;purple"
		 delims=";">
		 <h2 align="center" style="background-color:${rainbow}">${rainbow}</h2>
	</c:forTokens>	 
</body>
</html>






