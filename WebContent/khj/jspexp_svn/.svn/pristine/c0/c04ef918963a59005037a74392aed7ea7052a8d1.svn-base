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
<style>
	input.sch{width:37%;}
</style>	
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		$("h2").text("물건 정보 검색(ajax)");
		var xhr = new XMLHttpRequest();
		$("[name]").keyup(function(){
			// 1. 요청값 query string 형식으로 변환
			var sch = "proc=sch&name="+$("[name=name]").val();
			sch+="&frPrice="+$("[name=frPrice]").val();
			sch+="&toPrice="+$("[name=toPrice]").val();
			//$("h2").text(sch);
			
			// 2. XMLHttpRequest 객체 생성, 서버 호출, readystatechange 메서드 선언
			//    send()
			
			xhr.open("get","${path}/schprod?"+sch,true);
			xhr.onreadystatechange=function(){
				// 정상 범위에 있을 때, 가져온 내용을 출력..
				if(xhr.readyState==4&&xhr.status==200){
					//$("div").text(xhr.responseText);
					var plist = eval("("+xhr.responseText+")");
					var prods = "<tr><th>번호</th><th>분류</th><th>물건명</th><th>가격</th><th>갯수</th></tr>";
					$.each(plist,function(idx,prod){
						//$("div").append(prod.name+",");
						prods+="<tr><td>"+prod.sno+"</td><td>"+prod.kind+"</td><td>"+prod.name+"</td><td>"+prod.price
								+"</td><td>"+prod.cnt+"</td></tr>"
					});
					$("#show").html(prods);
				}
			};
			xhr.send();
			
			// 3. readystatechange통해 데이터가 정상으로 넘겨왔을 때.. 처리
			//    화면 구현..
			
		});
	});
</script>
</head>

<body>
<h2 align='center'></h2>
<table  align='center'>
	<tr><th>물건명</th> 
		<td><input  type="text" name="name" /></td></tr>
	<tr><th>가격</th><td>
		<input class="sch" type="text" name="frPrice" size="4"/> ~
		<input class="sch"  type="text" name="toPrice" size="4"/></td></tr>
</tr>
</table>
<div>
<table   align='center' id="show">
	
</table>

</div>
</body>
</html>


