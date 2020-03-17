<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*"%>
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
	a{text-decoration:none; color:black;cursor:pointer;}
/* 메뉴바 */
	.mymenu{width:1050px; margin:60px auto 0; background:none; position:relative;}
	.mymenubar{position:relative; height:64px; background:#2a2c34; overflow:hidden;}
	.mymenubar ul{width:100%; padding:0 10px; overflow:hidden;}
	.mymenubar ul li{float:left;}
	.mymenu_btn{padding:4px 18px 23px; font-size:18px; display:block; color:#FFFFFF;}
	.mymenu_btn-on{font-weight:bold;}
	.host_btn{width:90px; height:64px; padding-left:89px; color:#FFFFFF; font-size:18px; background-size:19px 18px; text-indent:0;
	line-height:64px; display:block; position:absolute; top:0; right:0; overflow:hidden;}
/* 소메뉴 */
	.mynav{text-align:left; display:inline;}
	.mynav ul li{float:left; text-align:center; display:flex; padding-right:30px;}
	.mynav ul li a{color:#FFFFFF; cursor:pointer;}
	.mysubmenu{display:block; position:relative; width:1050px; padding:4px; margin:0 auto;}
	.mysubmenu ul li a{color:#000000; cursor:pointer;}
/* 회원정보수정 */
	.modi{padding:100px 30px 0; width:980px; height:400px; margin:0px auto; display:block;}
	.m-content{margin:15px 0;}
	.m-label{width:70px; display:inline-block; margin-right:5px; text-align:right;}
	.m-input{height:25px; padding:9px; font-size:16px;}
	.recieve{padding-left:50px; margin:15px 0;}
	.recieve span{padding-left:10px;}
	.m-btn{text-align:center; margin:50px;}
	.m-btn [type=submit]{border:2px solid #25383C; width:160px; height:50px; font-size:18px;font-weight:bold; background-color:#BCC6CC;}
</style>
</head>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="?page=mypage_order" title="주문/배송관리" class="mymenu_btn">주문/배송관리</a>
				</li>
				<li>
					<a href="#" title="나의 활동" class="mymenu_btn">나의 활동</a>
				</li>
				<li>
					<a href="#" title="내 정보 관리" class="mymenu_btn mymenu_btn-on">내 정보 관리</a>
				</li>
			</ul>
		</div>
		<a href="#" title="호스트" class="host_btn">HOST</a>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li class="mymenu_btn-on"><a href="?page=mypage_modiinfo">회원정보수정</a></li>
				<li><a href="?page=mypage_modipass">비밀번호변경</a></li>
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
						<span><input class="m-input" type="text" name="이름" value="홍길동" readonly="readonly"/></span>
					</li>
					<li class="m-content">
						<span class="m-label">생년월일</span>
						<span><input class="m-input" type="text" name="생년월일" value="1991.02.08" readonly="readonly"/></span>
					</li>
					<li class="m-content">
						<span class="m-label">닉네임</span>
						<span><input class="m-input" type="text" name="nick"/></span>
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