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
# 속성 선택자
1. 요소에서 속성 선택자 처리.
	$("요소명[속성=속성값]")
	ex) <input type="checkbox" name="num01"/>
	    $("input[name=num01]").css("color","blue").val("1000");
	    $("input") 
	    $("[type]") :속성이 있는 경우
	    	ex) <input type="text"/>
	    $("[class]") : 속성에 클래스가 선언된 경우
	    	ex) <input class="cls01" />
	    $("[type=checkbox] : 속성 type이 checkbox인 경우
	    	ex) <input type="checkbox"
	1) 요소명 : tag, id, 클래스명
	2) 속성 : 해당 요소가 가지는 기본 속성
	3) 속성값 : 요소의 속성에 할당할 수 있는 속성값.
	4) 여러가지 속성 처리
		$("요소[속성!=값]") : 속성의 값이 아닌 경우를 선택
		$("요소[속성~=값]") : 속성의 값이 단어로 시작되는 경우
		$("요소[속성^=값]") : 속성의 값으로 시작되는 경우
		$("요소[속성$=값]") : 속성의 값으로 끝나는 경우
		$("요소[속성*=값]") : 속성의 값이 포함되는 경우
	5) 문자열 포함된 경우, 하위 요소의 포함된 경우
		$("요소:contains('포함문자열')")
			ex) $("div:contains('안녕')").css("color","red");
			<div>반갑습니다. 좋은 날이네요!! </div> (X)	
			<div>안녕하세요. 좋은 날이네요!! </div> (O)
		$("요소:has(포함요소)")
			ex) $("div:has(h1)").css("background-color","blue");
			<div>반갑습니다. <h1>좋은 날이네요!!</h2> </div>	(O)
			<div>안녕하세요. <span>좋은 날이네요!!</span> </div>(X)
	6) filter 선택자..
		input의 요소의 type과 이벤트관련 속성을 기준으로 filtering 
		을 효과적으로 하기위한 선택자를 말한다.
		form 하위 있는 element 객체에 대한 간편한 선택자 처리 방식
		ex) 
		1) type 관련 내용
			$("input:button").val("클릭하세요");
			$(":button").val("클릭하세요");
				input의 type의 속성값이 button경우는 value 클릭하세요
				라고 설정..
			$("input:password"), $(":radio")
		2) checked, disabed등의 속성과 속성값에 대한 내용 선택
			$("[name=gender]:checked").val() : check가 된 것의 값을 가져오기.
			<input type="radio" name="gender" value="남자"/>남자
			<input type="radio" name="gender" value="여자"/>여자
			  
			var len= $("[name=fruits]:checked").length;
			var chkData="";
			for(var idx=0;idx<len;idx++){
				chkData+=$("[name=fruits]:checked").eq(idx).val()
			} 
			chkData:에는 check된 값만 가져온다.
				<input type="checkbox" name="fruits" value="사과"  />
				<input type="checkbox" name="fruits"  value="바나나" checked/>
				<input type="checkbox" name="fruits"  value="딸기" checked/>
		3) 이벤트 관련 된  내용
			focus, input, selected
			포커싱된 것, 입력된 것, 선택되어진 것..
			$("input:focus").css("background-color","orange");
			$(":selected").text() : select 요소객체에서 사용
				선택되어진 것을 text를 가져온다.
		--%>
		$("h2").text("시작");
		$("input[name=name01]").css("color","blue").val("1000");
		// ex) age, loc 를 name으로 설정하고, 해당 내용을 중앙 정렬,
		// 데이터를 입력하고, 배경색상으로 노랑색으로 처리하세요.
		$("[name=age],[name=loc]").css({"text-align":"center",
			 						"background-color":"yellow"});
		$("[name=age]").val("25");
		$("[name=loc]").val("서울 종로");
		// 로딩 후, 3초가 지났을 때,
		// 선택되어진 것과, focus된 내용을 변경 및 확인 처리..
		setTimeout(function(){
			$("input:focus").css("background-color","orange");
			var value=$("select > option:selected").val();
			alert(value);
		},3000);
		
	});
		
</script>
</head>
<body>
<h2></h2>
	이름:<input type="text" name="name01"/><br>
	나이:<input type="text" name="age"/><br>
	사는곳:<input type="text" name="loc"/><br>
	<select>
		<option>Apple</option>
		<option>Bag</option>
		<option>Cat</option>
		<option>Dog</option>
	</select><br>
</body>
</html>





