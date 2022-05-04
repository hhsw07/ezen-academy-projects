<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*"%>
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
/* 비밀번호변경 */
	.change_pw{width:1050px; margin:0 auto;}
	.change_pwform{margin:40px 0 0; padding:0 3%;color:#3d4248;}
	.change_pwtitle{padding:0 0 13px; font-size:16px; border-bottom:2px solid #3d4248; line-height:1.5; font-weight:bold; margin:0 auto;}
	.change_pwcont{padding:11px 0 15px; font-size:14px;border-bottom:2px solid #3d4248;}
	.change_pwtable{width:970px;}
	.change_pwtable-thd{padding:9px 0 15px 30px; color:#a1a4a8;}
	.change_pwinput{width:220px; padding:7px 10px 9px; border:1px solid #dfdfdf; display:inline-block; vertical-align:middle; position:relative;}
	.change_pwinput input{width:100%; color:#3d4248; background:none; vertical-align:middle; border:0;}
	.change_pwinfo{margin:5px 0 0; color:#a1a4a8; font-size:12px; line-height:2;}
	.change_btn{padding:50px 0;}
	.change_btndesign{width:260px; height:64px; font-size:16px; line-height:64px; display:block; margin:0 auto; color:#FFFFFF; background:#3d4248; text-align:center;}

</style>
</head>
<body>

<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="?page=mypage_order" class="mymenu_btn">주문/배송관리</a>
				</li>
				<li>
					<a href="?page=mypage_classreview" class="mymenu_btn">나의 활동</a>
				</li>
				<li>
					<a href="?page=mypage_modiinfo" class="mymenu_btn mymenu_btn-on">내 정보 관리</a>
				</li>
			</ul>
		</div>
		<a href="?page=host_class" title="호스트" class="host_btn">HOST</a>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li><a href="?page=mypage_modiinfo">회원정보수정</a></li>
				<li class="mymenu_btn-on"><a href="?page=mypage_modipass">비밀번호변경</a></li>
				<li><a href="?page=mypage_delete">회원탈퇴</a></li>
			</ul>
		</nav>
	</div>
<!-- 비밀번호변경 -->	
	<section class="mypage_content">
		<article class="change_pw">
			<div class="change_pwform">
				<div class="change_pwtitle">비밀번호 변경</div>
				<div class="edit-membership-cont">
					<div class="change_pwcont">
						<table class="change_pwtable">
							<colgroup>
								<col width="20%">
								<col width="80%">
							</colgroup>
							<tbody>
								<tr>
									<th class="change_pwtable-thd">현재 비밀번호</th>
									<td class="change_pwtable-thd">
										<div class="change_pwinput"><input type="password" name="nowpw"></div>
									</td>
								</tr>
								<tr>
									<th class="change_pwtable-thd">새 비밀번호</th>
									<td class="change_pwtable-thd">
										<div class="change_pwinput"><input type="password" name="newpw"></div>
										<div class="change_pwinfo">비밀번호는 6~16자 영문, 숫자를 사용해주세요.</div>
									</td>
								</tr>
								<tr>
									<th class="change_pwtable-thd">새 비밀번호 확인</th>
									<td class="change_pwtable-thd">
										<div class="change_pwinput"><input type="password" name="newpw_ck"></div>
										<div class="change_pwinfo">비밀번호 확인을 위해 새 비밀번호를 다시 한번 더 입력해주세요.</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="change_btn">
						<a href="#link" class="change_btndesign">변경완료</a>
					</div>
				</div>
			</div>
		</article>
	</section>	

</body>
</html>