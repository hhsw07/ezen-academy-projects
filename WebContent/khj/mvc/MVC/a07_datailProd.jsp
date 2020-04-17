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
	.numFrm{text-align:right;}
	textarea{width:80%;}
</style>	
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		$("h2").text("물품 상세화면");
		var proc = "${param.proc}";
		if(proc=='cart'){
			
			if(confirm("장바구니에 담았습니다\n장바구니로 가시겠습니까?")){
				$("[name=proc]").val("clist");
				$("form").submit();
			}
		}
		
		
		$("[name=div01]").val("${product.div01}")
		$("#getCart").click(function(){
			if(confirm("장바구니에 \n담으시겠습니까?")){
				$("[name=proc]").val("cart");
				$("form").submit();
			}
		});
	});
	function goMain(){
		$(location).attr("href","${path}/sellingproduct");
	}
</script>
</head>

<body>
<h2 align='center'></h2>
	<form method="post">
		<input type="hidden" name="proc" value="insert"/>
		<input type="hidden" name="sno" value="${product.sno }"/>
	<table align="center">
		<tr><th>물건명</th>
			<td><input type="text" name="name" value="${product.name}"/></td>
			<!-- 
			path는 
			jspexp\WebContent
			이기에 해당 이미지는 절대 경로 기준으로
			폴드를 접근하여 호출할 수 있다..
			 -->
			<th>이미지</th><td>
				<img src="${path}/a00_img/${product.img}" width="100" height="100"/>
				
				</td></tr>
		<tr><th>등록일</th>
			<td><fmt:formatDate value="${product.regdte}" type="both"/></td>
			<th>재고갯수</th>
			<td>${product.cnt} EA</td></tr>
		<tr><th>분류</th>
			<td><select name="div01">
					<option value="1002">전자제품</option>
					<option value="1003">의류</option>
					<option value="1004">육류</option>
					<option value="1005">어류</option>
					<option value="1006">제과류</option>
					<option value="1007">과일류</option>
				</select></td>
			<th>기타</th>
			<td><textarea name="etc">${product.etc}</textarea></td></tr>		
		<tr><th>가격</th>
			<td><input class="numFrm" type="text" name="price"  
							value="${product.price}" /></td>
			<th>구매갯수</th>
			<td><input  class="numFrm"  type="text" name="cnt" value="1"/></td></tr>	
		<tr><td colspan="4" style="text-align:right">
				<input type="button" value="장바구니담기" id="getCart"/>
				<input type="button" value="바로구매"  id="dirBuy"/>
				<input type="button" value="조회화면"  onclick="javascript:goMain()"/>
			</td></tr>
	</table>
	</form>
</body>
</html>