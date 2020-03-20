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
	.reviewinfo{padding:0 22px 0 30px;}
	.reviewinfo-cont{margin:40px 0 0; padding:26px 26px 29px; border:5px solid #DFDFDF;}
	.reviewinfo-txt{height:auto; font-size:14px; line-height:1.71; color:#a1a4a8; overflow:hidden;}
	.reviewinfop{margin:5px 0; color:#f1645d;}
	.review-wrap{margin:0 10%;}
	.noreview-wrap{padding:70px 0; text-align:center;}
	.noreview-tit{color:#3d4248; font-size:24px; font-weight:bold;}
	.noreview-txt{margin:5px 0 0; font-size:16px;color:#a1a4a8;}
	.btn-noreview{width:260px; height:64px; margin:30px auto 0; font-size:16px; line-height:62px; display:block; color:#f1645d; border:1px solid #f1645d; text-align:center;}

/* 페이지 */
	.paging {text-align:center; width:980px; position:absolute; bottom:10px}
	.pageNo{color:#f36359;}
    
</style>
</head>
<%
	ArrayList<Point> ptList =(ArrayList<Point>)session.getAttribute("ptList");

	/* 페이징 처리
	Paging pg = new Paging(w_size,p_size,memList.size(),i_page);
	Paging pg = new Paging(화면에나오는글수,한번에보이는페이지수,글의최대개수,현재위치한페이지);
	*/

	int w_size = 5;
	int p_size = 2;
	int i_page = 1;
	if(request.getParameter("i_page") != null) i_page = Integer.parseInt(request.getParameter("i_page"));
	session.setAttribute("i_page",i_page);

	int lastNo = ptList.size()-1- (w_size*i_page);
	if(lastNo < 0) lastNo = -1;

	Paging pg = new Paging(w_size,p_size,ptList.size(),i_page);
	int preNo = pg.getPage_Start()-1;
	int nextNo = pg.getPage_End()+1;
	
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
				<li class="mymenu_btn-on"><a href="#">구매후기</a></li>
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
					1. 구매한 취미 클래스의 후기를 작성해 주세요. 구매 후기를 등록하시는 분들께 감사의 마일리지를 드립니다.
					<p class="reviewinfop">• 사진없이 글만 작성한 경우 :200p<br>• 사진을 함께 첨부한 경우 :1,000p<br></p>
					2. 마일리지는 처음 작성된 후기를 기준으로 지급됩니다.<br>
					3. 구매 후기는 배송이 완료된 이후부터 작성할 수 있습니다.<br>
					4. 작성한 구매 후기를 삭제하는 경우 지급한 마일리지는 반환됩니다.<br>
					5. 구매 취소/반품 할 경우에는 지급된 마일리지가 반환됩니다.
				</div>
			</div>
		</div>
	<!-- 구매후기 없을 때 -->
		<article class="mymenu-content">
			<div class="review-wrap">
				<div class="noreview-wrap">
					<div class="noreview-tit">아직 작성하신 구매 후기가 없어요.</div>
					<div class="noreview-txt">취미 클래스에 대한 후기를 남겨 주세요!<br>소중한 후기를 남겨주신 분들께<br>마일리지를 선물로 드립니다.</div>
					<a href="#" class="btn-noreview">구매 후기 작성</a>
				</div>
			</div>
		</article>
	<!-- 후기 있을 때 -->
		<article class="mymenu-content">
			<div class="review-wrap">
				<div>
					<div>
						<div >
							<div>
								<img src="image/mypage_ex01.jpg" alt="">
							</div>
							<div>
								<div>수강일자</div>
								<div>2020.03.13</div>
							</div>
							<div>
								<div>클래스명</div>
								<div>바이유어핸즈의 상콤 레몬 수세미 뜨기</div>
							</div>
						</div>
						<div>
							<div>
								<div >
									<div class="magazine-reply-star">
										<div>9별</div>
									</div>
									<div>
										<span>2020.03.15</span>
										<a href="#link" >수정</a>
										<em>|</em>
										<a href="#link" >삭제</a>
									</div>
								</div>
								<div>선생님이 친절하게 알려주신대로 따라하니까 금방 만들었어요<br>만들기 전 연습할 수 있는 시간이 있어서 더 따라하기 쉬웠던거 같아요</div>
							</div>
						</div>
					</div>
				</div>
				<div class="paging">
					<h4>
					<%
					if(pg.isPre()){
					%>
						<a href="mileage.jsp?i_page=<%=preNo %>">Pre</a>
					<%
					}
					for(int i = pg.getPage_Start(); i <= pg.getPage_End();i++){
						if(i == i_page){
					%>
						<a class="pageNo" href="mileage.jsp?i_page=<%=i %>" ><%=i %></a>
					<%	}else{ %>
						<a href="mileage.jsp?i_page=<%=i %>"><%=i %></a>
					<%	}
					}
					if(pg.isNext()){
					%>
						<a href="mileage.jsp?i_page=<%=nextNo %>">Next</a>
					<%} %>
					</h4>	
				</div>
			</div>
		</article>
	</section>
</body>
</html>