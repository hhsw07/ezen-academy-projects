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
		$("h2").text("학생 정보 호출(json)");
		$("h2").click(function(){
			var xhr = new XMLHttpRequest();
			xhr.open("get","z04_json.txt",true);
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4&&xhr.status==200){
					//$("div").html("<h2>"+xhr.responseText+"</h2>");
					// 객체로 변경..
					var students = eval('('+xhr.responseText+')');
					// .append() : 문자열 추가시 사용..
					var show="<table align='center'>";
					show+="<tr><th>이름</th><th>국어</th><th>영어</th><th>수학</th><th>총점</th><th>평균</th></tr>";
					for(var idx in students){
						var stu = students[idx];
						show+="<tr>";
						var tot=0
						for(var pro in stu){
							show+="<td>"+stu[pro]+"</td>";
							if(pro!='name'){
								tot+=stu[pro];
							}
						}
						show+="<td>"+tot+"</td>";
						show+="<td>"+(tot/3).toFixed(1)+"</td>";
						show+="</tr>";
					}
					$("div").append(show);
					
				}
				
			};
			xhr.send();
			/*
			z04_json.txt으로 이름 국어, 영어, 수학 json 형식으로 선언하고,
			
			z04_ajaxExp.jsp를 통해서.
			성적확인 클릭시,
			테이블로  이름 국어, 영어, 수학, 총점 평균을 출력 처리.
			
			
			
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