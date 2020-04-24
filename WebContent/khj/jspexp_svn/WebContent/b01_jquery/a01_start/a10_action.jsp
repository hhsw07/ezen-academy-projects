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
<!-- 
# 문서 객체 선택 기능 method
1. 선택자..
	태그:even 짝수 index선택..
	태그:odd 홀수 index선택..
2. .filter("선택자").기능메서드.
3. .filter(function(index){
		// 해당 배열 객체의 index를 가져올 수 있다.
		return boolean; boolean값이 true인 것만 추출하여 가져올 수 있다.
	})
3. filter()와 함께하는 .end()
	해당 filter()함수로 적용된 객체를 적용되기 전으로 돌려서,
	다시 다른 filter()를 처리할 때, 활용된다.	
 -->
<script type="text/javascript">
	$(document).ready(function(){
		$("h2").text("header 선택");
		$("h3:even").css({backgroundColor:"blue", color:'yellow'});
		$("h3:odd").css({backgroundColor:"orange", color:'tomato'});
		$("h3").filter(":even").append("[선택됨!!]");
		$("h3").filter(function(idx, item){
			// idx : 각각의 index
			// item : 각각의 dom객체 가져온다.
			$(item).text(idx+1+"기본 선택");
			console.log(idx+":"+ $(item).text() );
			// 다음 action에 대한 filter처리를 boolean값으로 선언한다.
			return idx%3==0;
		}).text("3단위로 변경");
		// ex) 4X4 테이블을 만들고, 3단위로 빙고라는 글짜를 출력을 하되,
		//     1~16까지 기본 출력을 기반으로 처리하세요. filter함수 이용.
		// 메서드 chainning : 메서드1().메서드2().메서드3() : 해당하는 메서드 
		// 내용이 적용된다.
		$("h4").css("background","orange").filter(":even").css("color",
			"blue").end().filter(":odd").css("color","red");
		// 배경색이 orange는 동일하나, 이중에서 짝수 index를 글자색상을 파랑으로
		// 처리하고, 글자색상으로 파랑색인 것 중에서 홀수 index를 글자색상으로 빨강
		// .end()를 사용하면 filter되기 전에 상황으로 가서, 다시 다음 action메서드
		// 를 적용할 수 있다.
<%-- 
# 기타 action 함수..
1. $("h1").eq(index) : 해당 index번째 선택자. 지정.
   ex) $("h1").eq(-1) : 마지막째  선택자 지정..  == $("h1").last()
   		vs. $("h1").first()
2. $("h1").css().add("h2").css("float","left")
	h1에 특정한 css를 적용하고, h1 다음에 h2가 나오면 float를 왼쪽으로
	처하여 inline되게 한다.
--%>
   		$("h3").add("h4").css("float","left");
	});
</script>
</head>

<body>
<h2 align='center'></h2>
<h3>안녕하세요</h3>
<h3>안녕하세요</h3>
<h4>안녕하세요</h4>
<h3>안녕하세요</h3>
<h4>안녕하세요</h4>
<h3>안녕하세요</h3>
<h4>end()처리의 효과</h4>
<h2>안녕하세요..</h2>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
<h4>end()처리의 효과</h4>
</body>
</html>