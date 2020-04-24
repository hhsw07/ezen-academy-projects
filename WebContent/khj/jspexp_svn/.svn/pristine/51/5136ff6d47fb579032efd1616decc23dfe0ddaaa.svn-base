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
# 기본 선택자
1. 	$("선택자").액션("속성","속성값")
	$("선택자").액션({"속성":"속성값","속성2":"속성2값});
	$("h1").css("color","red");
	1) $ : jquery 기능을 나타내는 표시
	2) h1 : 선택자로 html요소객체를 의미한다.
		 ex) * : 전체, 
		 	h1,p :태그를 선택, 
		 	#target : 특정 id로 지정된 요소객체 선택
		 			<h1 id="target">
		 	.item : 특정 class 그룹으로 지정된 요소객체 선택.
		 			<td class="item"> 
		 			<td class="item"> 
		 			<td class="item"> 
	3) css() : 특정 기능 메서드 지정, css 지정 처리..
		기능메서드("속성","속성값") : 해당 기능 메서드의 속성과
			속성값을 지정. 
			ex) attr("align","center") 기본속성 align을 center로
				저장
		기능메서드("속성") : 해당 기능 메서드의 속성으로 저장된
			속성값 호출..
			ex) $("img").attr("src") : img 태그의 속성 src로
			저장된 속성값을 호출..			
		--%>
		$("h2").text("selector와 속성 설정");
		$("h2").css("background-color","pink");
		<%-- 
		$("h2").css("background-color"); 저장된 값 가져오기..
		$("h2").attr("align")
		--%>
		
		
		$("h2").attr("align","center");
<%-- 
ex1-난이도1)
	h3를 선언하고,  중앙 정렬과 글자 색상, 배경 색상
		문자열(안녕하세요)를 처리하세요.jquery
ex2-난이도2)
	table(3X3)을 만들고, 가장 왼쪽과 가장 오른쪽 cell의
		배경색상으로 노랑색, 중앙에 cell은 파랑색
		테이블을 중앙정렬을 처리하세요..
		table에는 .eq(index).text() 메서드를 활용하여
		번호를 1~9를 붙이세요.
--%>	
		$("h3").attr("align","center");
		$("h3").css("color","blue");
		$("h3").css("background-color","yellow");
		// 같은 action에 여러가지 속성 선언.
		// json형식으로..{"속성":"속성값","속성":"속성값"};
		$("h3").css({"color":"blue","background-color":"yellow"});
		
		$("h3").text("안녕하세요");
		$(".lClas, .rClas").css("background-color","yellow");
		$(".cClas").css("background-color","blue");
		$("table").attr("align","center");
		$("td").css("color","orange");
		<%-- jquery는 한번에 같은 요소의 배열에
			동일 속성을 지정할 수 있다..
			
			배열 요소객체의 개별적인 속성을 지정할 때,
			$("요소").eq( 인덱스 ).액션("속성","속성값);
			
		 --%>
		for(var idx=0;idx<9;idx++){
			$("td").eq(idx).text(idx+1);
		}
		// jquery 모듈에서 javascript 코드를 활용할 수 있다.
		document.querySelectorAll("td")[4].style.fontSize="30pt";
		<%-- 
		$("td").eq(4).css("font-size","30pt");
		--%>
	});
</script>
</head>
<body>
<h2></h2>
<h3></h3>
<table>
	<tr><td class="lClas"></td><td class="cClas"></td><td class="rClas"></td></tr>
	<tr><td class="lClas"></td><td class="cClas"></td><td class="rClas"></td></tr>
	<tr><td class="lClas"></td><td class="cClas"></td><td class="rClas"></td></tr>
</table>
</body>
</html>