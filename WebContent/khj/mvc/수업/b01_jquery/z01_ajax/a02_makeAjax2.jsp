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
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		$("h2").text("비동기 호출..");
		$("h2").click(function(){
			var xhr = new XMLHttpRequest();
			// open(method방식, 서버의자원, 비동기여부)
			xhr.open("get","z02_data.txt",true);
			// 다른 작업을 하고 있을 때, 비동기적으로 처리하는
			// 메서드 선언..
			// 서버와의 상태값에 따른 메서드 선언..
			// 화면에서 다른 이벤트나 작업이 가능하게 처리한다.
			// 데이터가 서버에서 전체내용과 정상적으로 왔을 때,
			// 특정한 DOM에 데이터를 출력 처리한다.
			xhr.onreadystatechange=function(){
				// 서버의 반응을 이벤트를 체크해서
				// 정상적으로 왔을 때, 처리..
				// readyState : 0 객체만듦, 1/2 데이터 받지 못함.
				// 3. 일부받음, 4. 모든 데이터 받음.
				// status : http response code 200~299 정상범위
				if(xhr.readyState==4&&xhr.status==200){
					$("div").html("<h2>"+xhr.responseText+"</h2>"); 
				}
				
			};
			xhr.send();
			
		});
	});
</script>
</head>

<body>
<h2 align='center'></h2>
<div></div>
</body>
</html>