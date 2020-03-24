<%@page import="vo_jhk.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
	</style>
	<script type="text/javascript">
	</script>
</head>
<%
	memberDao mdao = new memberDao();
	String uid = request.getParameter("uid");
	if(uid == null) uid = "";
	
	boolean isValid = mdao.checkId(uid);
%>
<body>
<div style="text-align: center;">
<form>
<%if(isValid==true){
%>
	<h3>중복된 아이디입니다.</h3>
	<p><input type="button" onclick="window.close()" value="확인" /></p>
<%
}else{
%>
	<h3>사용가능한 아이디입니다.</h3>
	<p><input type="button" onclick="window.close()" value="확인" /></p>
<%	
}
%>
</form>
</div>
</body>
	<script type="text/javascript">
	</script>
</html>