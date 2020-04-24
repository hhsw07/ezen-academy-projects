<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,java.net.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<style type="text/css">
    th,td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("h1,table").attr("align","center");
		$("h1").html("사원 정보^^");	
	});
</script>
</head>
<body>
<div class="container">
	<h1></h1>
	<!-- 사원명과 직책 화면 조회 처리 -->
	<form class="form-inline" method="post">
		<label for="ename"> 사 원 명 </label>
		<input class="form-control" id="ename" name="ename" value="${param.ename}"/>
		<label for="job"> 직 책 </label>
		<input class="form-control" id="job" name="job" value="${param.job}"/>
		<input  type="submit" class="btn btn-primary" value="검색"/>
	</form>
	<br>
	<table class="table table-hover table-striped">
		<thead class="thead-light">
			<tr><th>사원번호</th><th>이름</th><th>직책</th><th>관리자번호</th>
			<th>입사일</th><th>급여</th><th>보너스</th><th>부서번호</th>
			</tr>
		</thead>
		<c:forEach var="emp" items="${emplist }">
	    	<tr>
	    		<td>${emp.empno}</td>
	    		<td>${emp.ename}</td>
	    		<td>${emp.job}</td>
	    		<td>${emp.mgr}</td>
	    		<td><fmt:formatDate value="${emp.hiredate}"/></td>
	    		<td><fmt:formatNumber value="${emp.sal}"/>  </td>
	    		<td><fmt:formatNumber value="${emp.comm}"/></td>
	    		<td>${emp.deptno}</td>
	    	</tr>
	    </c:forEach>
	</table>
</div>

</body>
</html>