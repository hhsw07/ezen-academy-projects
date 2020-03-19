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
/* 배송지목록 */
	.shiplist{width:1050px; margin:0 auto;}
	.addrlist-wrap{padding:20px 7%;}
	.addrlist-cont{position:relative; padding:30px 43% 30px 23%; border-bottom:1px solid #dfdfdf; color:#a1a4a8;}
	.addrlist-title{position:absolute; top:50px; left:0; width:10%; margin:0; padding:0; font-size:16px; border-bottom:0; line-height:1.5; text-align:center;}
	.txt-color-r{display:block; margin:7px 0 0; color:#f1645d !important;}
	.addrlist-name{left:10%; width:12%; margin:0;}
	.addrlist-area{position:absolute; top:30px; padding:0; line-height:1.71; text-align:center;}
	.addrlist-tit{position:static; font-size:14px; text-align:center; top:0; left:0;}
	.addrlist-txt{margin:7px 0 0; font-size:16px; text-align:center; color:#2f3338;}
	.addrlist-phone{right:214px; width:17%; margin:0;}
	.addrlist-address{position:static; margin:0;}
	.addrlist-btn{position:absolute; top:50px; right:0; margin:0; text-align:center;}
	.btn-addrlist{width:100px; height:35px; font-size:14px; line-height:33px; display:inline-block; color:#202127; border:1px solid #3d4248; text-align:center;}
	.btn-addrlist:last-child{margin:0 0 0 10px; color:#f1645d; border:1px solid #f1645d;}
	.paging-num-wrap{margin:20px 0 0; padding:0 10% 110px; text-align:center;}
	.btn-num{width:44px; height:44px; margin:0 7px; font-size:14px; line-height:42px; display:inline-block; text-align:center;}
	.btn-num-on{color:#f1645d; border:1px solid #f1645d;}
/* 배송지 없을 때 */
	.noaddr-wrap{padding:70px 0;text-align:center;}
	.noaddr-tit{font-size:24px;font-weight:bold;color:#3d4248;}
	.noaddr-txt{margin:5px 0 0;font-size:16px;color:#a1a4a8;}
	.btn-noaddr{width:260px;height:64px;margin:30px auto 0;font-size:16px;line-height:62px;display:block;color:#f1645d;border:1px solid #f1645d; text-align:center;}
/* 페이징 */	
	.paging{text-align:center; width:980px; position:absolute; bottom:10px}
	.pageNo{color:#f36359;}	
</style>
</head>
<%
ArrayList<Shipment> shipList = new ArrayList<Shipment>();
for(int cnt=1;cnt<=16;cnt++){
	shipList.add(new Shipment("우리집","김길동","010-0001-"+(1000+cnt) ,
			"010-0002-"+(1000+cnt),"01525","서울시 종로구",""));
}
//ArrayList<Shipment> shipList = (ArrayList<Shipment>)session.getAttribute("shipList");

/* 페이징 처리
Paging pg = new Paging(w_size,p_size,memList.size(),i_page);
Paging pg = new Paging(화면에나오는글수,한번에보이는페이지수,글의최대개수,현재위치한페이지);
*/

int w_size = 5;
int p_size = 10;
int i_page = 1;
if(request.getParameter("i_page") != null) i_page = Integer.parseInt(request.getParameter("i_page"));
session.setAttribute("i_page",i_page);

int lastNo = w_size*i_page;
if(lastNo >= shipList.size()) lastNo = shipList.size();

Paging pg = new Paging(w_size,p_size,shipList.size(),i_page);
int preNo = pg.getPage_Start()-1;
int nextNo = pg.getPage_End()+1;
%>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="?page=mypage_order" class="mymenu_btn mymenu_btn-on">주문/배송관리</a>
				</li>
				<li>
					<a href="?page=mypage_mileage"class="mymenu_btn">나의 활동</a>
				</li>
				<li>
					<a href="?page=mypage_modiinfo" class="mymenu_btn">내 정보 관리</a>
				</li>
			</ul>
		</div>
		<a href="?page=host_class" title="호스트" class="host_btn">HOST</a>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li><a href="?page=mypage_order">주문/배송조회</a></li>
				<li><a href="?page=mypage_class">클래스 보관함</a></li>
				<li class="mymenu_btn-on"><a href="?page=mypage_shipment">배송지 목록</a></li>
				<li><a href="?page=mypage_add_shipment">배송지 추가</a></li>
			</ul>
		</nav>
	</div>
	
<!-- 배송지 목록 -->
	<section class="mypage_content">
	<%
	if(shipList!=null){
	%>
		<article class="shiplist">
	<%
		for(int idx=(w_size*i_page-w_size) ; idx<lastNo ; idx++){
			Shipment s = shipList.get(idx);
	%>
			<div class="addrlist-wrap">
				<div class="addrlist-cont">
					<div class="addrlist-title"><%=s.getShip_tit() %>
						<!-- <span class="txt-color-r">[기본]</span> --></div>
					<div class="addrlist-area addrlist-name">
						<div class="addrlist-tit">수령인</div>
						<div class="addrlist-txt"><%=s.getShip_name() %></div>
					</div>
					<div class="addrlist-area addrlist-phone">
						<div class="addrlist-tit">휴대폰번호</div>
						<div class="addrlist-txt"><%=s.getShip_tel() %></div>
					</div>
					<div class="addrlist-area addrlist-address">
						<div class="addrlist-tit">주소지</div>
						<div class="addrlist-txt">(<%=s.getShip_zip() %>) <%=s.getShip_addr() %><%=s.getShip_addr2() %></div>
					</div>
					<div class="addrlist-btn">
						<a href="#" title="수정" class="btn-addrlist">수정</a>
						<a href="#" title="삭제" class="btn-addrlist">삭제</a>
					</div>
				</div>
			</div>
			<%} %>
			<div class="paging">
				<h4>
				<%
				if(pg.isPre()){
				%>
					<a href="?page=mypage_shipment&i_page=<%=preNo %>">Pre</a>
				<%
				}
				for(int i = pg.getPage_Start(); i <= pg.getPage_End();i++){
					if(i == i_page){
				%>
					<a class="pageNo" href="?page=mypage_shipment&i_page=<%=i %>" ><%=i %></a>
				<%	}else{ %>
					<a href="?page=mypage_shipment&i_page=<%=i %>"><%=i %></a>
				<%	}
				}
				if(pg.isNext()){
				%>
					<a href="?page=mypage_shipment&i_page=<%=nextNo %>">Next</a>
				<%} %>
				</h4>	
			</div>
		</article>
	<%} %>
	<!-- 배송지 없을 때 -->
	<%
	if(shipList.size()==0){
	%>
		<article class="mymenu-content">
			<div class="addrlist-wrap">
				<div class="noaddr-wrap">
					<div class="noaddr-tit">아직 등록된 배송지가 없습니다.</div>
					<div class="noaddr-txt">배송지를 등록해주세요.</div>
					<a href="?page=mypage_add_shipment" class="btn-noaddr">배송지 등록하기</a>
				</div>
			</div>
		</article>
	<%} %>
	</section>

</body>
</html>