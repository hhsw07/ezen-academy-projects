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
fmt:유형 jstl태그
1. 데이터유형을 변경하거나, 원하는 데이터를 처리할 때,
	주로 활용된다.
2. 공통 설정 변경	
	String path = request.getContextPath()
	==> <c:set var="path" value="${pageContext.request.contextPath}"
	request.setCharacterEncoding("utf-8")
	==> <fmt:requestEncoding value="utf-8" />
3. 날짜 처리.
	1) 날짜 + 시간 
	2) data type은 java.util.Date를 활용한다.
	3) 기본 형식
		<fmt:formatDate type="date|time|both" 
			dateSteyle="full|short"
			pattern="yyyy/MM/dd kk:mm:ss.S" 
			value="선언된 데이터"/>
4. 숫자 처리
	1) 숫자를 통화나 소숫점 이하, 지정된 형식으로 처리..
	2) type의 속성들 
		currency : 통화단위
		percent : % 처리.
	3) pattern : 00,000,000.000 등과 같이 특정한 출력 형식을
		처리할 수 있다.			
	
 --%>
<%
	pageContext.setAttribute("now", new Date());
	pageContext.setAttribute("num01", 99999.75);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="${path}/a00_com/a00_com.css">
</head>
<body>
	<h2>날짜 처리</h2>
	<h3>기본 출력 : ${now}</h3>
	<h3>날짜 full형식:<fmt:formatDate type="date" dateStyle="full" value="${now}"/></h3>
	<h3>날짜 short형식:<fmt:formatDate type="date" dateStyle="short" value="${now}"/></h3>
	<h3>날짜 기본형식:<fmt:formatDate type="date" value="${now}"/></h3>
	<h3>시간 기본형식:<fmt:formatDate type="time" value="${now}"/></h3>
	<h3>시간 full형식:<fmt:formatDate type="time" timeStyle="full" value="${now}" /></h3>
	<h3>시간 short형식:<fmt:formatDate type="time"  timeStyle="short"  value="${now}"/></h3>
	<h3>날짜/시간형식:<fmt:formatDate type="both" value="${now}"/></h3>
	<h3>날짜/시간형식 full:<fmt:formatDate type="both" value="${now}"
		 dateStyle="full"  timeStyle="full" /></h3>
	<h3>패턴형식:<fmt:formatDate pattern="yyyy/MM/dd kk:mm:ss.S" value="${now}"/></h3>
	<h2>숫자 처리</h2>
	<h3>기본형식: ${num01}</h3>
	<h3>숫자 기본형식: <fmt:formatNumber value="${num01}" var="numFmt01"/></h3>
	<h3>숫자 통화형식: <fmt:formatNumber value="${num01}" type="currency"/></h3>
	<h3>숫자 통화형식: <fmt:formatNumber value="${num01}" 
						type="currency" currencySymbol="만원"/></h3>
	<h3>숫자 퍼센트형식1: <fmt:formatNumber value="${num01}" type="percent"/></h3>
	<h3>숫자 퍼센트형식2: <fmt:formatNumber value="${0.25}" type="percent"/></h3>
	<h3>숫자 패턴형식: <fmt:formatNumber value="${num01}" 
						 pattern="0,000,000.000" /></h3>
	<h3>변수로 지정:${numFmt01}</h3>
	<%--
	dao를 이용해서 emplist를 가져와서 forEach 구문으로 출력하되,
	hiredate를 both full형식으로 sal을 천단위 원으로 표기하여 출력하세요. 
	사원명  입사일   급여		
	 --%>
	
	
	 

</body>
</html>










