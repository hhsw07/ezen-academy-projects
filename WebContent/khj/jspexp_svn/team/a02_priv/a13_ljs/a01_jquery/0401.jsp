<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jspexp.z01_vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>       
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>  
<!DOCTYPE html>
<%--

--%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="styLesheet" href="${path}/a00_com/a00_com.css">
<script src="${path }/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
<%--
1. h3를 7개 만들고 배경색상을 무지개 색상으로 나타내고
	해당내용을 무지개 명으로 출력 처리하세요
	
2. 4x4 테이블에 글자가 9~1로 역순위로 나타나되 
	이중에 임의의 cell 1개에는 지뢰 (펑) 이라고 표시되게 하세요
3. 로그인 아이디, 패스워드 값을 입력하는 화면을 만들되, 중앙 정렬, 배경색/글자색 파랑색/오렌지색	
4. 위 내용에 아이디, 패스워드 값을 맞을 때는 배경색상이 흰색으로 변경, 그렇지 않을 때는 
	빨강색으로 변경되게 하세요.(js 이벤트 활용)
		
--%>
var rain =["red","orange","yellow","green","blue","navy","purple"];

var a = Math.floor(Math.random()*16) + 1;
	$(document).ready(function(){
		<%-- --%>
		$("h2").text("시작");
		
		for (var i = 0; i <7; i++) {
			$("h3").eq(i).css("background-color",rain[i]);
			$("h3").eq(i).text(rain[i]);
		}
		for (var i = 15; i >= 0; i--) {
			$("td").eq(i).text(16-i);
			
			$("td").eq(a).text("펑");
			$("td").eq(a).css("color","red");
		}
		
		$("[name=id],[name=pass]").css({"background-color":"blue","color":"orange","align":"center"});
		
		$("#bt").click(function(){
			if($("[name=id]").val()=="himan"&&$("[name=pass]").val()=="7777"){
					$("[name=id],[name=pass]").css({"background-color":"white","align":"center"});
				}else{
					$("[name=id],[name=pass]").css({"background-color":"red","align":"center"});
				}
			
		})
	});
</script>
</head>
<body>
<h3 class="red"></h3>
<h3 class="orange"></h3>
<h3 class="yellow"></h3>
<h3 class="green"></h3>
<h3 class="blue"></h3>
<h3 class="navy"></h3>
<h3 class="purple"></h3>

<table>
	<tr><td></td><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td><td></td></tr>
	
</table>

id:<input type="text" name="id"/><br>
pass:<input type="text" name="pass"/><br>
<input type="button" id="bt" value="입력">

</body>
</html>











