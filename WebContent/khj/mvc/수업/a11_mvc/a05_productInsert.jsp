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
<style type="text/css">
	textarea{width:80%;}
</style>	
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		$("h2").text("물품등록");
		var proc="${param.proc}";
		if(proc=="insert"){
			if(!confirm("등록성공\n계속등록하시겠습까?")){
				location.href="${path}/product";
			}
		}
		
		
	});
	function goMain(){
		location.href="${path}/product";
	}
</script>
</head>

<body>
<h2 align="center"></h2>
	<form method="post">
		<input type="hidden" name="proc" value="insert"/>
	<table align="center">
		<tr><th>물건명</th>
			<td><input type="text" name="name"/></td>
			<th>이미지</th><td>
				<input type="file" name="img"/></td></tr>
		<tr><th>분류</th>
			<td><select name="div">
					<option value="1002">전자제품</option>
					<option value="1003">의류</option>
					<option value="1004">육류</option>
					<option value="1005">어류</option>
					<option value="1006">제과류</option>
					<option value="1007">과일류</option>
				</select></td>
			<th>기타</th>
			<td><textarea name="etc"></textarea></td></tr>		
		<tr><th>가격</th>
			<td><input type="text" name="price"/></td>
			<th>갯수</th><td><input type="text" name="cnt"/></td></tr>	
		<tr><td colspan="4" style="text-align:right">
				<input type="submit" value="등록" />
				<input type="button" value="조회화면"  onclick="javascript:goMain()"/>
			</td></tr>
	</table>
	</form>


</body>
</html>