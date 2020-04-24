<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%--
# $("배열선택자").each(function(){})

 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css">
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">	

	$(document).ready(function() {
		<%--
		
		
		--%>
		$("h2").text("학생의 세 과목 점수와 평균구하기");
		$("h3").each(function(idx, item){
			console.log(idx+":"+$(item).text());
			$(item).append("["+idx+"]");
		});
		var array = [
			{name:"홍길동",kor:70,eng:80,math:90,avg:(70+80+90)/3},
			{name:"신길동",kor:90,eng:85,math:90,avg:(90+85+90)/3},
			{name:"마길동",kor:100,eng:85,math:90,avg:(100+85+90)/3},
		];
		$.each(array,function(idx, stud){
			$("td").eq((idx*5+0)).append(stud.name)
			$("td").eq((idx*5+1)).append(stud.kor)
			$("td").eq((idx*5+2)).append(stud.eng)
			$("td").eq((idx*5+3)).append(stud.math)
			$("td").eq((idx*5+4)).append(stud.avg)			
		});
/*
 ex)
 $.each를 이용해서 array 데이터를 화면 테이블에 출력(평균) 처리하세요.
 이름		국어		영어		수학		평균
 */		
	});
</script>
</head>
<body>
<h2 align="center"></h2>
<table border="1">
	<tr>
		<th>이름</th>
		<th>국어</th>
		<th>영어</th>
		<th>수학</th>
		<th>평균</th>
	</tr>
	<tr>
		<td></td>
		<td></td>	
		<td></td>		
		<td></td>	
		<td></td>		
	</tr>
	<tr>
		<td></td>		
		<td></td>		
		<td></td>		
		<td></td>		
		<td></td>		
	</tr>
	<tr>
		<td></td>		
		<td></td>		
		<td></td>		
		<td></td>		
		<td></td>		
	</tr>
</table>
</body>
</html>