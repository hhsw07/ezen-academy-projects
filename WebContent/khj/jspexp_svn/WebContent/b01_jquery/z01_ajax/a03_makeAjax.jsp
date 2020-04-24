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
		$("h2").text("비동기 호출(json)");
		$("h2").click(function(){
			var xhr = new XMLHttpRequest();
			xhr.open("get","z03_json.txt",true);
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4&&xhr.status==200){
					$("div").html("<h2>"+xhr.responseText+"</h2>");
					// 객체로 변경..
					var person = eval('('+xhr.responseText+')');
					// .append() : 문자열 추가시 사용..
					$("div").append("<h2>"+person.name+"</h2>");
					$("div").append("<h2>"+person.age+"</h2>");
					$("div").append("<h2>"+person.loc+"</h2>");
					
				}
				
			};
			xhr.send();
			/*
			z03_json으로 
			
			*/
			
		});
	});
</script>
</head>

<body>
<h2 align='center'></h2>
<div></div>
</body>
</html>