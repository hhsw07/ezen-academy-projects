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
	.mysubmenu{display:block; position:relative; width:1050px; padding:4px; margin:0 auto;}
	.mysubmenu ul li a{color:#000000; cursor:pointer;}
/* 후기 */
	.reviewinfo{padding:0 22px 0 30px; width:980px; margin:0 auto;}
	.reviewinfo-cont{margin:40px 0 0; padding:26px 26px 29px; border:5px solid #DFDFDF;}
	.reviewinfo-txt{height:auto; font-size:14px; line-height:1.71; color:#a1a4a8; overflow:hidden;}
	.reviewinfop{margin:5px 0; color:#f1645d;}
	.review-wrap{margin:0 10%;}
	.noreview-wrap{padding:70px 0; text-align:center;}
	.noreview-tit{color:#3d4248; font-size:24px; font-weight:bold;}
	.noreview-txt{margin:5px 0 0; font-size:16px;color:#a1a4a8;}
	.btn-noreview{width:260px; height:64px; margin:30px auto 0; font-size:16px; line-height:62px; display:block; color:#f1645d; border:1px solid #f1645d; text-align:center;}
	.review-content{width:980px; margin:0 auto;}
	.review-wrap{font-size:14px;color:#2f3338; margin: 0 3%;}
	.c-review-cont{position:relative;min-height:160px;padding:30px 0;border-bottom:1px solid #DFDFDF;}
	.c-review-area{text-align: left;}
	.c-review-thumb{overflow: hidden;width: 80px;height: 80px;display: inline-block;vertical-align: middle;}
	.c-review-thumb img{display:block;width:100%;display: inline-block;}
	.c-review-name{width:63%;margin:0 2%;display: inline-block;}
	.c-review-txt{margin: 5px 0 0;color: #2f3338;font-size: 14px;overflow: hidden;font-weight: bold;}
	.comment-wrap{margin:8px 0 0;padding:15px;background:#f8f8fa;}
	.comment-tit{position:relative;padding-right:160px;}
	.review-star{position:relative; width:70px; height:11px; background:url(../image/bg-star.png) no-repeat;background-size:70px 11px;text-align:left;}
	.review-star-on{position:absolute;top:0;left:0;width:64px;height:100%;
    background:url(../image/bg-star-on.png) no-repeat;background-size:70px 11px;text-indent:-9999em;overflow:hidden;}
	.comment-info{position:absolute;top:0;right:0;color:#a1a4a8;font-size:12px;line-height:1.6;}
	.btn-edit-cr{margin:0 5px;color:#a1a4a8;}
	.btn-del-cr{color:#a1a4a8;margin:0 0 0 5px;}
	.comment-cont{margin:8px 0 0;color:#3d4248;font-size:14px;word-break:break-all;}
	.reviewsub-wrap {width: 182px;margin: 20px auto 0;display: block;}
	.reviewsub-wrap ul li{float:left;}
	.btn-sub-tab {display:block;width: 91px; height: 28px;color: #a1a4a8;font-size: 12px;border: 1px solid #DFDFDF;letter-spacing: -0.5px;line-height: 26px;text-align: center;}
	.btn-sub-on {color: #FFFFFF;background: #3d4248;border: 0;line-height: 28px;}
/* 페이지 */
	.paging{text-align:center; width:980px; position:absolute; bottom:10px}
	.pageNo{color:#f36359;}
	  
</style>
</head>
<%
ArrayList <MpReview> mrlist = new ArrayList<MpReview>();
mrlist.add(new MpReview("../image/mypage_ex02.jpg","밤바다 고래의 꿈 네온사인 클래스", "2020.03.04", "처음 해보는 거였는데 재미있었어요!"));
mrlist.add(new MpReview("../image/mypage_ex01.jpg","바이유어핸즈의 상콤 레몬 수세미 뜨기", "2020.03.04", "처음 해보는 거였는데 재미있었어요!"));

%>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="?page=mypage_order"class="mymenu_btn">주문/배송관리</a>
				</li>
				<li>
					<a href="?page=mypage_mileage" class="mymenu_btn mymenu_btn-on">나의 활동</a>
				</li>
				<li>
					<a href="?page=mypage_modiinfo" class="mymenu_btn">내 정보 관리</a>
				</li>
			</ul>
		</div>
		<a href="?page=host_class" class="host_btn">HOST</a>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li class="mymenu_btn-on"><a href="?page=mypage_classreview">구매후기</a></li>
				<li><a href="?page=mypage_inquiry">1:1문의</a></li>
				<li><a href="?page=mypage_mileage">마일리지</a></li>
			</ul>
		</nav>
	</div>
	
<!-- 구매후기 -->
	<section>
		<div class="reviewinfo">
			<div class="reviewinfo-cont">
				<div class="reviewinfo-txt">
					1. 수강한  클래스, 구매한 상품의 후기를 작성해 주세요. 후기를 등록하시는 분들께 감사의 마일리지를 드립니다.
					<p class="reviewinfop">• 후기작성 마일리지 :1,000p<br></p>
					2. 마일리지는 처음 작성된 후기를 기준으로 지급됩니다.<br>
					3. 구매 후기는 배송이 완료된 이후부터 작성할 수 있습니다.<br>
					4. 작성한 구매 후기를 삭제하는 경우 지급한 마일리지는 반환됩니다.<br>
					5. 구매 취소/반품 할 경우에는 지급된 마일리지가 반환됩니다.
				</div>
			</div>
		</div>
		<div class="reviewsub-wrap">
			<table>
				<tr>
					<th><a href="?page=mypage_classreview" class="btn-sub-tab btn-sub-on">클래스 후기</a></th>
					<th><a href="?page=mypage_storereview" class="btn-sub-tab">상품 후기</a></th>
				</tr>
			</table>
		</div>
	<!-- 구매후기 없을 때 -->
	<%
	if(mrlist==null){
	%>
		<article class="mymenu-content">
			<div class="review-wrap">
				<div class="noreview-wrap">
					<div class="noreview-tit">아직 작성하신 클래스 후기가 없어요.</div>
					<div class="noreview-txt">클래스에 대한 후기를 남겨 주세요!<br>소중한 후기를 남겨주신 분들께<br>마일리지를 선물로 드립니다.</div>
					<!-- <a href="#" class="btn-noreview">클래스 후기 작성</a> -->
				</div>
			</div>
		</article>
	<%} %>
	<!-- 후기 있을 때 -->
	<%if(mrlist!=null){
		%>
	
		<article class="review-content">
			<div>
			<%for(MpReview mr:mrlist){ %>
				<div class="review-wrap">
					<div class="c-review-cont">
						<div class="c-review-area">
							<div class="c-review-thumb">
								<img src="<%=mr.getMr_thum() %>" alt="" >
							</div>
							<div class="c-review-name">
								<div class="c-review-tit">클래스명</div>
								<div class="c-review-txt"><%=mr.getMr_name() %></div>
							</div>
						</div>
						<div >
							<div class="comment-wrap">
								<div class="comment-tit">
									<div class="review-star">
										<div class="review-star-on">9별</div>
									</div>
									<div class="comment-info">
										<span class="reply-date"><%=mr.getMr_date() %></span>
										<a href="#link" title="수정" class="btn-edit-cr">수정</a>
										<em>|</em>
										<a href="#link" title="삭제"  class="btn-del-cr">삭제</a>
									</div>
								</div>
								<div class="comment-cont"><%=mr.getMr_review() %></div>
							</div>
						</div>
					</div>
				</div>
				<%}
			}%>
				<div class="paging">
					
				</div>
			</div>
		</article>
	</section>
</body>
</html>