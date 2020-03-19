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
	.myinfo_content{width:1050px; margin:0 auto;}
	.myinfo_wrap{margin:40px 0 0; padding:0 4%; color:#3d4248;}
	.myinfo_title{padding:0 0 13px; font-size:16px; border-bottom:2px solid #3d4248; line-height:1.5; font-weight:bold;}
	.myinfo_edit{padding:11px 0 15px;font-size:14px;border-bottom:2px solid #dfdfdf;}
	.myinfo_table{width:100%;}
	.myinfo_th{text-align:right;padding:9px 0 15px 30px;color:#a1a4a8;}
	.myinfo_td{padding:9px 0 15px 30px;color:#a1a4a8;}
	.input-wrap{width:220px;padding:7px 10px 9px;border:1px solid #dfdfdf;display:inline-block;vertical-align:middle;position:relative;}
	.input{width:100%;color:#3d4248;background:none; border:0;}
	.input_info{margin:10px 0 0;font-size:12px;line-height:2;color:#a1a4a8;}
	.myinfo_agree{display:inline-block;margin:10px 20px 0 0;}
	.myinfo_ckbox{margin:-1px;}
	.myinfo_label{display:inline-block;position:relative;cursor:pointer;font-size:14px;color:#a1a4a8;letter-spacing:-0.3px;}
	.myinfo_line{border-bottom:2px solid #3d4248;padding:11px 0 15px;font-size:14px;}
	.myinfo_btn{padding:50px 0;}
	.btn-myinfo_edit{width:260px;height:64px;font-size:16px;line-height:64px;display:block;margin:0 auto;color:#FFFFFF;background:#3d4248;text-align:center;}
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
					<a href="?page=mypage_mileage" class="mymenu_btn">나의 활동</a>
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
				<li class="mymenu_btn-on"><a href="?page=mypage_modiinfo">회원정보수정</a></li>
				<li><a href="?page=mypage_modipass">비밀번호변경</a></li>
				<li><a href="?page=mypage_delete">회원탈퇴</a></li>
			</ul>
		</nav>
	</div>
	
<!-- 회원정보 변경 -->
<%
	
%>
	<section>
		<article class="myinfo_content">
			<div class="myinfo_wrap">
				<div class="myinfo_title">회원 정보 수정</div>
				<div class="myinfo_edit-cont">
					<div class="myinfo_edit">
						<table class="myinfo_table">
							<colgroup>
								<col width="18%">
								<col width="82%">
							</colgroup>
							<tbody>
								<tr>
									<th class="myinfo_th">아이디</th>
									<td class="myinfo_td">himan</td>
								</tr>
								<tr>
									<th class="myinfo_th">이름</th>
									<td class="myinfo_td">
										<div class="input-wrap">
											<input class="input" type="text" name="이름" value="홍길동" readonly="readonly"/>
										</div>
									</td>
								</tr>
								<tr>
									<th class="myinfo_th">생년월일</th>
									<td class="myinfo_td">
										<div class="input-wrap">
											<input class="input" type="text" name="생년월일" value="1991.02.08" readonly="readonly"/>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="myinfo_edit">
						<table class="myinfo_table">
							<colgroup>
								<col width="18%">
								<col width="82%">
							</colgroup>
							<tbody>
								<tr>
									<th class="myinfo_th">닉네임</th>
									<td class="myinfo_td">
										<div class="input-wrap">
											<input type="text" class="input" value="닉네임">
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="myinfo_edit myinfo_line">
						<table class="myinfo_table">
							<colgroup>
								<col width="18%">
								<col width="82%">
							</colgroup>
							<tbody>
								<tr>
									<th class="myinfo_th">이메일</th>
									<td class="myinfo_td">
										<div class="input-wrap">
											<input type="text" class="input" value="himan@naver.com">
										</div>
									</td>
								</tr>
								<tr>
									<th class="myinfo_th">휴대폰번호</th>
									<td class="myinfo_td">
										<div>
											<div class="input-wrap">
												<input type="tel" class="input" value="01012345678"/>
											</div>
											<div class="input_info">입력하신 이메일/ 휴대폰 번호로 비밀번호 찾기 및 재설정을 하실 수 있습니다.</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- 
						<div class="myinfo_edit myinfo_line">
							<table class="myinfo_table">
								<colgroup>
									<col width="18%">
									<col width="82%">
								</colgroup>
								<tbody>
									<tr>
										<th class="myinfo_th">이메일/SMS 수신동의</th>
										<td class="myinfo_td">
											<span>하비팩토리의 다양한 소식들을 받아 보시겠습니까?</span>
											<div class="input_info">이벤트정보, 기타 다양한 정보를 빠르게 만나실 수 있습니다. (주문, 배송내역은 수신여부와 상관 없이 기본 발송됩니다)</div>
											<div class="myinfo_agree">
												<input type="checkbox" class="myinfo_ckbox" name="agree-email" id="agree-email">
												<label class="myinfo_label" for="agree-email">이메일로 받아볼래요</label>
												<input type="checkbox" class="myinfo_ckbox" name="agree-sms" id="agree-sms" checked="">
												<label class="myinfo_label" for="agree-sms">문자로 받아볼래요</label>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						 -->
						<div class="myinfo_btn">
							<a href="#" title="수정완료" class="btn-myinfo_edit">수정완료</a>
						</div>
					</div>
				</div>
			</article>
	</section>

</body>
</html>