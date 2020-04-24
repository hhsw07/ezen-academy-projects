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
		$("h2").text("물품 목록");
		var products=["사과","바나나","딸기","오렌지","수박",
				"키위","망고","레몬","자몽"];
		$("table:eq(0) td").text(function(idx){
			return products[idx];
		});
		var no=1;
		$("table:first td").click(function(){
			var $noth=$("<th>"+(no++)+"</th>")
			// tr 객체 생성하고, 생성된 내용 no, 클릭한 td를 복사하여 추가.
			var $tr=$("<tr></tr>").append($noth, $(this).clone());
			$("table:last").append($tr);
		});
		
	});
</script>
</head>

<body>
<h2 align='center'></h2>
<table>
	<tr><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td></tr>
</table>
<h3>장바구니 목록</h3>
<table>
	<tr><th>번호</th><th>물건</th></tr>
</table>

</body>
</html>