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
# $("배열선택자").each(function(){})

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
		$("h3").each(function(idx, item){
			console.log(idx+":"+$(item).text());
			$(item).append("["+idx+"]");
		});
		var array=[
			{name:"홍길동",kor:70,eng:80,math:90},
			{name:"신길동",kor:90,eng:85,math:90},
			{name:"마길동",kor:100,eng:85,math:90},
		];
		$.each(array,function(idx, stud){
			$("h3").eq(idx).append(stud.name+"의 국어:"+stud.kor);
		});
/* ex)
  $.each를 이용해서  array 데이터를 화면 테이블에 
  	출력 처리(평균) 하세요..
 	이름  국어 영어 수학 평균
 */		
 		var tab="<tr><th>번호</th><th>이름</th><th>국어</th><th>영어</th><th>수학</th><th>평균</th></tr>";
 		$.each(array,function(idx,stud){
 			var avg=(stud.kor+stud.eng+stud.math)/3;
 			tab+="<tr><td>"+(idx+1)+"</td>"
 			+"<td>"+stud.name+"</td>"
 			+"<td>"+stud.kor+"</td>"
 			+"<td>"+stud.eng+"</td>"
 			+"<td>"+stud.math+"</td>"
 			+"<td>"+avg.toFixed(2)+"</td></tr>";
 		});
 		$("table").html(tab);
	});
</script>
</head>

<body>
<h2 align='center'></h2>
<h3>안녕하세요</h3>
<h3>안녕하세요</h3>
<h3>안녕하세요</h3>
<h3>안녕하세요</h3>
<h3>안녕하세요</h3>
<h3>안녕하세요</h3>
<h3>안녕하세요</h3>
<h3>안녕하세요</h3>
<h3>안녕하세요</h3>
<h3>안녕하세요</h3>
<h3>안녕하세요</h3>
<h3>안녕하세요</h3>
<table></table>
</body>
</html>