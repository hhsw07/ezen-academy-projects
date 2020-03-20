<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
	#joinFrm {margin:0 auto;}
	.profile_image{border:1px solid black; width:100px; height:100px;
	border-radius: 50%; text-align: center; display:inline-block;}
	.profile_image p{margin-top:33px; font-size:30px; }
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
		//페이지의 스타일 변경
		loginPage.style.left = 30+"%";
		loginPage.style.width = 600+"px";
		loginPage.style.height = 750+"px";
		loginWrap.style.display = "block";
		loginPage.style.display = "block";
		document.querySelector("body").style.overflow = "hidden";
	}
	</script>
</head>
<body>
<p class="logo" style="padding:20px;">HobbyFactory</p>
<form id="login" method="post" action="Main.jsp">
	<table id="joinFrm">
	<tr><th>아이디</th><td><input type="text" name="uname" placeholder="아이디"/></td>
	<th><div style="display:inline-block;cursor:pointer; background-color:#000000;
	padding:10px 10px 10px 10px; color:white; font-size:15px;" 
	 onclick="">중복확인</div></th></tr>
	<tr><th>비밀번호</th><td><input type="password" name="upass1" placeholder="비밀번호"/></td>
	<th rowspan="7"><div class="profile_image">
          <p>+<p>
        </div></th></tr>
	<tr><th>비밀번호 재입력</th><td><input type="password" name="upass2" placeholder="비밀번호 재입력"/></td></tr>
	<tr><th>이름</th><td><input type="text" name="uname" placeholder="이름"/></td></tr>
	<tr><th>이메일</th><td><input type="text" name="uemail" placeholder="이메일"/></td></tr>
	<tr><th>닉네임</th><td><input type="text" name="unick" placeholder="닉네임"/></td></tr>
	<tr><th>생년월일</th><td><input type="text" name="ubirth" placeholder="생년월일"/></td></tr>
	<tr><th>휴대폰</th><td><input type="text" name="uphone" placeholder="휴대폰"/></td></tr>
	
	<tr><th colspan="3"><div style="display:inline-block;cursor:pointer; background-color:#FF4000;
	padding:10px 40px 10px 40px; font-weight:bold; color:black; font-size:20px;" 
	 onclick="document.querySelector('#login').submit();">회원가입</div>
	 <input type="hidden" name="page" value="maindetail"/>
	<input type="hidden" name="lp" value="loginmain"/></th></tr>	
	 </table>
</form>
<p class="join_sub" style="font-size:12px;">본인은 만 14세 이상이며, 회원 가입하면 하비팩토리의 서비스 이용약관, 개인정보 취급방침에 동의하는 것입니다.</p>
</body>
	<script type="text/javascript">
	</script>
</html>