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
# 이벤트 연결(on())
1. $("DOM객체").on("이벤트명", function(){ 이벤트를 통해 처리할 내용});
	- 특정한 객체에 이벤트를 통해 처리할 함수를 정의
2. $("DOM객체").on({이벤트1:function(){}, 이벤트2:function(){}});
	- 특정한 객체에 여러 이벤트를 처리할 때, 활용하는 함수 처리.
3. 이베트 제거(off())
	- .off(), .off(제거할 이벤트 명)	

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
		$("h2").text("시작");
		$("h2").on("click",function(){
			$(this).text(function(index, text){
				return text+"+";
			});
		});
		$("h2").on({
			mouseenter:function(){
				$(this).css("background-color","yellow");
			},
			mouseleave:function(){
				$(this).css("background-color","pink");
			}
		});
		$("td").text(function(idx){
			$(this).attr("id",idx);
			return (idx!=8)?idx+1:"";
		});
		var latIdx=0;
		var isFirst=true;
		$("td").on({
			mouseenter:function(){
				if(isFirst){
					latIdx=8;
					isFirst=false;
				}else{
					$("td").eq(latIdx).text($(this).text());
					latIdx=$(this).attr("id");
					$(this).text("");
				}
				
			}
		})
	});
/*
ex) 3X3 테이블로 1~8까지 출력하고,
마지막 td에는 번호가 없어서, 해당 공백이 있는 td와 번호가
있는 td의 데이터를 변화시켜 숫자 맞추기 퍼즐이 되도록 한다.



 
 */	
	
	
</script>
</head>
<body>
<h2 align='center'></h2>
<h2 align='center'></h2>
<h2 align='center'></h2>
<h2 align='center'></h2>
<table>
	<tr><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td></tr>
</table>
</body>
</html>