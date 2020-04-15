<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.* "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="UTF-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	header{width:1080px; margin:0 auto;}
/* 신청 */
	.apply-cont{width:1080px; margin:20px auto;}
	.apply-table{width:100%;}
	.apply-schon{width:93px; margin:0;height:34px !important;line-height:34px;display:inline-block;color:#FFFFFF;font-size:12px !important;background:#63145F;text-align:center;vertical-align:middle;
	outline:none; border:none;}
	select{height:34px;width:93px;}

/* 버튼 */
	.apply-btn{width:1050px; margin:20px auto 50px; text-align:center;}
	.btn{background:#63145F; color:#fff; border:none; position:relative; height:60px; font-size:1.5em; padding:0 2em; cursor:pointer;
	transition:800ms ease all; outline:none;}
	.btn:hover{background:#fff; color:#63145F;}
	.btn:before,.btn:after{content:''; position:absolute; top:0; right:0; height:2px; width:0; background: #63145F; transition:400ms ease all;}
	.btn:after{right:inherit; top:inherit; left:0; bottom:0;}
	.btn:hover:before,.btn:hover:after{width:100%; transition:800ms ease all;}

</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("h2").text("AS신청");
	});
</script>
</head>
<body>
	<jsp:include page="../top.jsp"/>
	<header>
		<h2></h2>
	</header>
	
	<div class="apply-cont">
		<table class="apply-table">
			<tr>
				<th>분류</th>
				<td>
					<select>
						<option>AS</option>
						<option>교환</option>
						<option>반품</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>주문번호</th>
				<td>
					XXXXXXXXX
					<span><input class="apply-schon btn" type="button" name="schOrder" value="선택"/></span>
				</td>
			</tr>
			<tr>
				<th>상품명</th><td>XXXXXXXXX</td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea></textarea></td>
			</tr>
		</table>
	</div>
	
	<div class="apply-btn">
		<input class="btn" type="button" name="applyBtn" value="신청하기"/>
	</div>
	
	<jsp:include page="../bottom.jsp"/>
	
</body>
</html>