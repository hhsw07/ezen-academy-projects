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
# 객체의 삭제와 내용 비우기 처리.
1. .remove() : 대상 객체를 삭제 처리..
2. .empty() : 대상의 내부 내용을 비워주는 처리..
# 대상 객체에 추가 처리.
1. 하위내용.appendTo("상위객체") : 해당 하위 내용을 상위 객체에 
	추가 처리.
2. 상위객체.append("하위내용") : 해당 하위 내용을 상위 객체에 
	추가 처리.
3. 삽입과 추가에 관련된 메서드.
	prependTo(), insertAfter(), insertBefore(),
	prepend(), after(), before()	
4. clone()
	위에 append를 비롯한 삽입과 추가메서드는 화면에 있는 DOM객체를
	기준으로 변경을하지 복사하여 추가 처리 못한다.
	이때, DOM를 대상객체에서 복사하여, 해당 객체를 다른 객체에
	추가할려면 .clone()처리가 필요로 하다.
		
	
	
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
		$("h2").eq(0).text("첫번째 내용(대상객체) 삭제");
		$("h2").eq(0).click(function(){
			$("h3").first().remove();
		});
		$("h2").eq(1).click(function(){
			$("div").empty();
		});
		// DOM객체를 생성..
		$("<h1></h1>").text("DOM h1 생성!!").appendTo("body");
		// 대상객체에 추가 처리..
		$("div").append("<h1>안녕하세요 DOM h1 추가 처리합니다.</h1>");
		$("div").append("<h1>안녕하세요 DOM h1 추가 처리합니다.</h1>");
		/*
		ex) 
		이미지객체에 속성값으로 이미지명과 크기를 지정하고,
		body에 추가 처리하세요
		
		*/
		$("<img/>").attr({src:"${path}/a00_img/apple.jpg",
			width:350,height:250}).appendTo("body");
		$("h2").eq(2).click(function(){
			// h4의 DOM 자체가 마지막으로 가게 된다..
			$("h4").first().appendTo("body");
			
		});
		$("h2").eq(3).click(function(){
			// .clone() 기존 내용을 그대로 두면서,
			// 해당 내용에 대하여 추가 처리를 해준다.
			$("h5").first().clone().appendTo("body");
		});
/*
ex) 3X3 테이블 판매하는 상품 list가 있고,
클릭시, 해당 상품명이 하단에 장바구니에 담겨지게 처리하세요.
clone()을 활용..
 
 */		
		
	});
</script>
</head>

<body>
<h2 align='center'></h2>

<h3>안녕하세요1</h3>
<h3>안녕하세요2</h3>
<h3>안녕하세요3</h3>
<h3>안녕하세요4</h3>
<h2>비워두기(empty)</h2>
<div>
	<h3>안녕하세요</h3>
	<h3>안녕하세요</h3>
	<h3>안녕하세요</h3>
	<h3>안녕하세요</h3>
</div>
<h2>DOM 객체의 변경</h2>
<h4>안녕하세요1</h4>
<h4>안녕하세요2</h4>
<h4>안녕하세요3</h4>
<h4>안녕하세요4</h4>
<h2>DOM 객체의 복사 변경</h2>
<h5>안녕하세요1</h5>
<h5>안녕하세요2</h5>
<h5>안녕하세요3</h5>
<h5>안녕하세요4</h5>


</body>
</html>