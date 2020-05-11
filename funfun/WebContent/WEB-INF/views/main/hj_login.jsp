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
	        <h1 class="text-center">로그인</h1>
	        <br><br><br>
	        <form>
	        <div class="row">
		        <div class="col-md-4"></div>
		        <div class="col-md-4">
		        	<div class="form-group">
					  <label for="usr">이메일:</label>
					  <input type="text" class="form-control" id="usr">
					</div>
		        </div>
    		</div>
	        <div class="row">
        		<div class="col-md-4"></div>
        		<div class="col-md-4">
        			<div class="form-group">
					  <label for="pwd">Password:</label>
 					<input type="password" class="form-control" id="pwd">
					</div>
        		</div>
        	</div>
        	<br>
        	<div class="row">
        		<div class="col-md-4"></div>
        		<div class="col-md-4">
        			<a href="${path}/findaccount.do" style="font-decoration:none; color:black;">아이디/비밀번호 찾기</a>
        			<a href="${path }/signup.do" class="navbar-right" style="font-decoration:none; color:black;">회원가입</a>
        		</div>
        	</div>
        	<br>
        	<div class="row">
        		<div class="col-md-4"></div>
        		<div class="col-md-4">
        			<button type="submit" class="btn btn-warning btn-lg" style="width:100%; background-color:rgb(255,150,0); color:white;">로그인</button>
        		</div>
        	</div>
        	</form>
     	 </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>