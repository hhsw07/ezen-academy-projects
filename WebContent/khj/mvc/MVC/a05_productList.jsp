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
<style>
	input.cls[type=text]{width:40%;}
	.ordR{text-align:right;}
	.ordL{text-align:left;}
</style>	
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		$("h2").text("물품 list");
		$("#regBtn").click(function(){
			$("[name=proc]").val("insFrm");
			$("form").submit();
		});
		$("#buyBtn").click(function(){
			$(location).attr("href","${path}/sellingproduct");
		});		
	});
</script>
</head>

<body>
<h2 align="center"></h2>
<%--
sno, kind, name, img, price, cnt, regdte, uptdte
번호 종류  물건명 가격 재고량 등록일 
 --%>
<form method="post">
	<input type="hidden" name="proc"/>
<table>
	<tr><th>물건명</th><td><input type="text" name="name" value="${param.name}"/></td></tr>
	<tr><th>가격</th><td>
						<input class="cls" type="text" name="frPrice" size="4"  
							value="${param.frPrice}"/> ~
						<input class="cls"  type="text" name="toPrice" size="4"
							value="${param.toPrice}"/>
					</td></tr>
	<tr><td colspan="2" style="text-align:right">
			<input type="submit" value="검색"/>
			<input type="button" value="등록"
				id="regBtn"/>
			<input type="button" value="구매목록리스트"
				id="buyBtn"/>			
			</td></tr>
</table>

</form> 
 
 
<table>
	<tr><th>번호</th><th>분류</th><th>물건명</th><th>가격</th>
		<th>재고량</th><th>등록일</th></tr>
	<c:forEach var="prod" items="${plist}">
	<tr><td>${prod.sno}</td><td>${prod.kind}</td>
		<td class="ordL">${prod.name}</td>
		<td class="ordR">
			<fmt:formatNumber value="${prod.price}"/>
		</td>
		<td  class="ordR">
			<fmt:formatNumber value="${prod.cnt}"/>
		</td><td>${prod.regdte}</td></tr>
	</c:forEach>	
</table>











</body>
</html>