<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
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
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		$("h2").text("시작");
		$("td").filter(function(idx, item){
			// item : 단위 객체..
			// idx : index
			$(item).css({"text-align":"center",
						"font-size":'20pt'}).text(idx+1);
			// filtering할 boolean 내용..
			return idx%3==0;
		}).text("빙고");
		
	});
</script>
</head>

<body>
<h2 align='center'></h2>
<table align="center" width="300" height="300">
	<tr><td></td><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td><td></td></tr>
</table>
</body>
</html>