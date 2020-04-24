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
		$("h2").text("사원 정보 호출(json)");
		$(".sch").keyup(function(){
			var xhr = new XMLHttpRequest();
			var param = "ename="+$("[name=ename]").val();
			param +="&job="+$("[name=job]").val();
			//$("h2").text(param);
			xhr.open("get","z05_emp.jsp?"+param,true);
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4&&xhr.status==200){
					//$("div").html(xhr.responseText);
					// xhr.responseText : text형식의 요청값을 서버에서 받음..
					// eval를 통해서 js에서 사용되는 Object로 변경처리..
					var emplist = eval('('+xhr.responseText+')');
					var show="<table align='center'>";
					show+="<tr><th>사원번호</th><th>사원명</th><th>직책</th><th>급여</th></tr>";
					for(var idx in emplist){
						var emp = emplist[idx];
						show+="<tr>";
						var tot=0;
						for(var pro in emp){
							show+="<td>"+emp[pro]+"</td>";
						}
						show+="</tr>";
					}
					$("div").html(show);
					
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
<table  align="center">
	<tr><th>사원명</th>
		<td><input class="sch" type="text" name="ename" /></td></tr>
	<tr><th>직책</th>
		<td><input class="sch" type="text" name="job" /></td></tr>
	<tr>
</table>
<div></div>
</body>
</html>

