<%@page import="vo_jhk.memberDao"%>
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
	//모든 페이지에 공통적용
	window.onload = function(){
		loginWrap=document.querySelector(".login_wrap");
		loginPage=document.querySelector(".loginPage");
		allWrap=document.querySelector(".all_wrap");
		top=document.querySelector(".top");
			userTop=document.querySelector(".user_top");
			menuTop=document.querySelector(".menu_top");
		middle=document.querySelector(".middle");
			ads=document.querySelector(".ads");
		bottom=document.querySelector(".bottom");
		
		top.scrollHeight = userTop.scrollHeight + menuTop.scrollHeight;
		middle.style.paddingTop = top.scrollHeight+"px";
		bottom.style.paddingTop = 50+middle.scrollHeight+"px";
		
		allWrap.style.height = bottom.scrollHeight+"px";
		loginPage.style.height = 300+"px";
		loginWrap.style.display = "block";
		loginPage.style.display = "block";
		document.querySelector("body").style.overflow = "hidden";
	}
	</script>
</head>
<%
	memberDao mdao = new memberDao();
	String uid = request.getParameter("uid");
	if(uid == null) uid = "";
	
	String findid = mdao.findId(uid);
%>
<body>
<p class="logo" style="padding:20px;">HobbyFactory</p>
<form id="login" method="post" action="Main.jsp">
	<input type="hidden" name="page" value="maindetail"/>
	<input type="hidden" name="lp" value="loginmain"/>
	<p>귀하의 아이디는 [<%=findid %>]입니다.</p>
	<div style="display:inline-block;cursor:pointer; background-color:#FF4000; margin-top:20px;
	padding:10px 40px 10px 40px; font-weight:bold; color:black; font-size:20px;" 
	 onclick="document.querySelector('#login').submit();">확인</div>
</form>
<div class="login_sub">
</div>
</body>
	<script type="text/javascript">
	</script>
</html>