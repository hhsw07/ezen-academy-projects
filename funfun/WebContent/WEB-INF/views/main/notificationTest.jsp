<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ include file="/template/header.jsp" %>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
		
</script>
<link rel="stylesheet" href="${path }/css/shakeAndBounce.css" />

<script>
$(document).ready(function(){
	var user='${user.mem_email}';
	console.log(user);
	if(user!==''){
		var wsocket = new WebSocket("ws://localhost:5080/${path}/notification-ws.do");
		wsocket.onopen=function(evt){
			console.log('알림웹소켓 접속',evt);
		};
		wsocket.onmessage=function(evt){
			console.log(evt);
		};
		wsocket.onclose=function(){
			console.log("연결종료");
		};
		
		$('#ws-btn').on('click', ()=>{
			wsocket.send('알림정보를 업데이트하세요!!');
		})
	}
})
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	       <button id="ws-btn">웹소켓 서버 접속</button>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>