<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jspexp.z01_vo.*,jspexp.b01_database.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<%--

--%>
<html>
<head>
<meta charset="${encoding}">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css">
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		== 과제 풀이는 제출 되었을 때, 진행.. 
1.[난이도1] h3를 7개 만들고, 배경색상을 무지개 색상으로
	나타내고, 해당 내용을 무지개명으로 출력 처리 하세요.

2.[난이도2] 4X4 테이블에 글자가 9~1로 역순위로 나타나되,
	이중에 임의의 cell 1개에는 지뢰 (펑)이라고 표시되게,
	하세요..
3.[난이도1] 로그인 아이디, 패스워드 값을 입력하는 화면을
	만들되, 중앙 정렬, 배경색/글자색  파랑색/오렌지 색
4.[난이도2] 위 내용에 
	클릭시, 아이디, 패스워드 값을 맞을 때는,
	배경색상이 흰색으로 변경, 그렇지 않을 때는 빨강색으로 
	변경되게 하세요.(js 이벤트 활용) 
		--%>
		$("h2").text("시작");
		for(var i=0;i<7;i++){
			$("h3").eq(i).css("background-color",$("h3").eq(i).text());
		}
		var ran=(Math.random()*16);
		console.log(ran);
		for(var i=15;i>=0;i--){			
			$("td").eq(i).text(i+1);		
			if(i==parseInt(ran)){
				$("td").eq(i).text("지뢰(펑)");	
			}
		}
		$("input[name=id],input[name=pass]").css({"background-color":"blue","color":"orange"});
		
		
		
	});
	function login(){
		var id="himan";
		var pass="7777";
		var ids = document.querySelector("#id");
		var idsv = document.querySelector("#id").value;
		var passs=document.querySelector("#pass");
		var passsv=document.querySelector("#pass").value;
		if(idsv==id){
			ids.style.backgroundColor="white";
		}else{
			ids.style.backgroundColor="red";
		}
		if(passsv==pass){
			passs.style.backgroundColor="white";
		}else{
			passs.style.backgroundColor="red";
		}
	}
</script>
</head>
<body>
	<h3>red</h3>
	<h3>orange</h3>
	<h3>yellow</h3>
	<h3>green</h3>
	<h3>blue</h3>
	<h3>navy</h3>
	<h3>purple</h3>
	<table border>
		<tr><td></td><td></td><td></td><td></td></tr>
		<tr><td></td><td></td><td></td><td></td></tr>
		<tr><td></td><td></td><td></td><td></td></tr>
		<tr><td></td><td></td><td></td><td></td></tr>
	</table><br>
	<h4>아이디 <input id="id" name="id"/></h4>
	<h4>패스워드 <input id="pass" name="pass"/></h4>
	<input onclick="login()" type="button" value="로그인"/>
	
</body>
</html>