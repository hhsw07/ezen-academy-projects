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
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
# 혼합형 선택자.
1. 선택자 기본형식
	$("선택자").액션()
2. 여러가지 선택자
	1) $("선택자1, 선택자2, 선택자3") : 다중 선택자를
		한번에 동일한 속성을 설정할 때 활용된다.
		ex) $("h1, #ch01, .sel01").css("color","red");
		 h1, 아이디 ch01, 클래스명 sel01은 모두가 글자색상을
		 red로 할 때, 선택자 지정.
	2) $("선택자1선택자2")
		선택자1을 기본으로 하여 선택자2가 되어 있는 요소객체를
		말한다.
		ex) $("h1#ch01") h1가운데 속성 id로 ch01인 것을 선택
		한다는 의미..
		ex) $("h2.sel01") h2가운데 클래스로 sel01인 것을  선택
		ex) $(".item.select") 클래스가 item이고 select가 선언되
		있는 경우에 처리한다는 의미
			<h1 class="item">	
			<h1 class="item select"> ==> 위에 선언된 요소객체
				지정한다는 의미..	
			<h1 class="item">	
	3) 계층형 선택자
		- 상하위(parent, child) 또는 형제(siblings)에 따른 선택자
		를 지정하여 처리할 때, 활용된다.
		- 마지막에 선언된 선택자에 대한 action을 처리한다.
			ex) $("선택자1 선택자2"), $("선택자1 + 선택자2")
			둘다 선택자2에 대한 action을 처리한다.
		- $("부모 > 자식") 상위 부모 요소객체를 둔, 하위 자식객체
			에 대한 선택을 할 때(반드시 계층으로 바로 위에 부모 
			객체를 둘 때, 적용이된다.)
		- $("상위 하위") 상위 요소 객체를 둔 하위 객체로 계층 level
			에 상관 없이 적용이된다. 			
		--%>
		$("h2").text("시작");
		$(".item").css("background-color","yellow");
		$(".item.select").css("color","blue");
		$("div>h2").css("color","tomato");
		// > : 바로 하위 밑 계층만 적용 처리..
		$("ul.topnav>li").css("border","3px double red");
		// 상위 하위 : 계층 구조만 있으면 level 상관없이 처리.
		$("ul.topnav li").css("color","blue");
		// $(요소1 + 요소2)
		// .val("입력") : value="입력"과 동일한 기능
		$("label + input").css("color","blue").val("입력합니다.")
		
	});
</script>
</head>

<body>
<h2></h2>
<h1 class="item">아이템</h1>
<h1 class="item select">아이템 선택된 것</h1>
<h1 class="item">아이템</h1>
<div>
	<h2>안녕하세요</h2>
	<p>
		<h2>반갑습니다.</h2>
	<p>
</div>
<%--
		// > : 바로 하위 밑 계층만 적용 처리..
		$("ul.topnav>li").css("border","3px double red");
		// 상위 하위 : 계층 구조만 있으면 level 상관없이 처리.
		$("ul.topnav li").css("color","blue");
 --%>
<ul class="topnav">
	<li>아이템1</li>
	<li>아이템2</li>
	<li>아이템3
		<ul>
			<li>중첩아이템1</li>
			<li>중첩아이템2</li>
			<li>중첩아이템3</li>
		</ul>
	</li>
	<li>아이템4</li>
</ul>
<%--
	4) 형제 처리
		$("요소1 + 요소2") : 요소1을 앞 세운 요소2에 대한 선택..
 --%>
	<form>
		<label for="name">이름:</label>
		<input name="name" id="name"/>
		<fieldset>
			<label for="newsletter">편지:</label>
			<input name="newsletter"  id="newsletter">
		</fieldset>
	</form>
<%--
	   $("요소1 ~ 요소2") :요소1이 앞에 있는 모든 요소2에 대한 선택
	   $("#prev ~ div").css("border","3px double blue");
--%>
	<div>div 아이템1</div>
	<span id="prev">span 아이템1</span>
	<div>div 아이템2</div>
	<div>div 아이템3
		<div id="small">중첩 div아이템1</div>
	</div>
	<span>span 아이템2</span>
	<div>div 아이템4</div>











</body>
</html>