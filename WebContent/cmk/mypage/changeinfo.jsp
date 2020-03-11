<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8");
String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 전체 */
	ul li{list-style:none;}
	a{text-decoration:none; color:black;}
/* 메뉴 */
	.mymenu{display:block; position:relative; width:900px; background-color:#151515; color:#FFFFFF; font-size:18px; margin-top:64px; padding:5px;}
	.mynav{text-align:left; display:inline;}
	.mynav ul li{float:left; text-align:center; display:flex; padding-right:30px;}
	.mynav ul li a{color:#FFFFFF; cursor:pointer;}
	.myhost{text-align:right; display:inline;}
	.myhost ul li{padding-right:30px; cursor:pointer;}
	.mysubmenu{display:block; position:relative; width:900px; padding:4px;}
	.mysubmenu ul li a{color:#000000; cursor:pointer;}
/* 회원정보수정 */
	.modi{padding:30px; width:850px; margin:50px 0;}
	.m-content{margin:10px 0;}
	.m-label{width:70px; display:inline-block; margin-right:5px; text-align:right;}
	.recieve{padding-left:50px; margin:10px 0;}
	.recieve span{padding-left:10px;}
	.m-btn{text-align:center; margin:40px;}
</style>
</head>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<nav class="mynav">
			<ul>
				<li><a href="#">주문/배송관리</a></li>
				<li><a href="#">나의 활동</a></li>
				<li><a href="#">내 정보 관리</a></li>
			</ul>
		</nav>
		<nav class="myhost">
			<ul>
				<li>HOST</li>
			</ul>
		</nav>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li><a href="#">회원정보수정</a></li>
				<li><a href="#">비밀번호변경</a></li>
				<li><a href="#">회원탈퇴</a></li>
			</ul>
		</nav>
	</div>
	
<!-- 회원정보 변경 -->
	<section class="modi">
		<article>
			<form method="post">
				<ul>
					<li class="m-content">
						<span class="m-label">이름</span>
						<span><input type="text" name="이름" value="홍길동" readonly="readonly"/></span>
					</li>
					<li class="m-content">
						<span class="m-label">생년월일</span>
						<span><input type="text" name="생년월일" value="1991.02.08" readonly="readonly"/></span>
					</li>
					<li class="m-content">
						<span class="m-label">닉네임</span>
						<span><input type="text" name="nick"/></span>
					</li>
					<li class="m-content">
						<div>이메일/SMS 수신동의</div>
						<div class="recieve">
							<span><input type="checkbox" name="rec" value="email"/>이메일로 받아볼래요</span>
							<span><input type="checkbox" name="rec" value="sms"/>문자로 받아볼래요</span>
						</div>
					</li>
				</ul>
			</form>
			<div class="m-btn">
				<input type="submit" value="수정완료"/>
			</div>
		</article>
	</section>

</body>
</html>