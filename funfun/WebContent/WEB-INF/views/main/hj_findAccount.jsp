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
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	        <h1 class="text-center">아이디/비밀번호 찾기</h1>
	        <br><br><br>
	        <div class="row">
		        <div class="col-md-4"></div>
		        <div class="col-md-4">
		        	<div class="btn-group btn-group-justified">
					  <a href="#" class="btn btn-warning">아이디 찾기</a>
					  <a href="#" class="btn btn-warning">비밀번호 찾기</a>
				</div>
		        </div>
    		</div>
	        <br><br>
	        <div class="row">
		        <div class="col-md-4"></div>
		        <div class="col-md-4">
		        	<div class="form-group">
					  <label for="usr">가입 시 등록한 이메일 주소 입력:</label>
					  <input type="text" class="form-control" id="email">
					</div>
		        </div>
    		</div>
	        
        	<br><br>
        	<div class="row">
        		<div class="col-md-4"></div>
        		<div class="col-md-4">
        			<button type="submit" class="btn btn-warning btn-lg" style="width:100%; background-color:rgb(255,150,0); color:white;">가입여부 확인</button>
        		</div>
        	</div>
        	
     	 </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>