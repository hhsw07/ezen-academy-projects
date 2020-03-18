<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*"%>
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
/* 클래스목록 */
	.pre-list{padding-bottom:50px; width:980px; height:540px; margin:0 auto; display:block;}
	.pre-class{padding:20px 0; color:#4a4a4a; font-size:15px; width:100%; }
	.preview{width:100%;}
	.c-list{display:inline; float:left; width:250px; margin:0 20px; padding:15px 5px 0; text-align:left;}
	.c-thumbnail{position:relative; width:200px; height:118px; padding:0; overflow:hidden; margin:0 auto;}
	.c-thumbnail img{position:absolute; top:0; left:0; width:100%;}
	.c-fordate{text-align:left; margin-top:14px;}
	.c-listcon{text-align:left; height:75px; margin-top:10px;}
	.c-lecture{font-size:12px; color:#a1a4a8; padding-top:2px;}
	.c-name {margin-top:2px; font-size:14px; line-height:1.38; font-weight:bold;}
	.c-when{font-size:11px;}
	.c-date{color:#a1a4a8; margin-left:10px;}
	.o-none{text-align:center; margin-top:50px; width:100%;}
/* 페이징 */	
	.paging {text-align:center; width:980px; position:absolute; bottom:10px}
	.pageNo{color:#f36359;}
	.page_num{margin:20px auto 0; padding:110px 10% 0; text-align:center; width:724px; position:absolute; bottom:1px;}
	.btn_num{width:44px; height:44px; margin:0 7px; font-size:14px; line-height:42px; display:inline-block; text-align:center;}
	.btn_num-on{color:#f1645d; border:1px solid #f1645d;}
</style></head>
<%
ArrayList<Myclasses> myclist = new ArrayList<Myclasses>();
Myclasses mc1 = new Myclasses("2020.03.04","image/mypage_ex01.jpg","[원데이 클래스] 바이유어핸즈","바이유어핸즈의 상콤 레몬 수세미 뜨기");
Myclasses mc2 = new Myclasses("2020.03.10","image/mypage_ex02.jpg","[원데이 클래스] 더베러라이프 작가님","밤바다 고래의 꿈 네온사인 클래스");
myclist.add(mc1);
myclist.add(mc2);
myclist.add(mc1);
myclist.add(mc2);
myclist.add(mc1);
myclist.add(mc2);
myclist.add(mc1);
myclist.add(mc2);
/* 페이징 처리
Paging pg = new Paging(w_size,p_size,memList.size(),i_page);
Paging pg = new Paging(화면에나오는글수,한번에보이는페이지수,글의최대개수,현재위치한페이지);
*/

int w_size = 6;
int p_size = 2;
int i_page = 1;
if(request.getParameter("i_page") != null) i_page = Integer.parseInt(request.getParameter("i_page"));
session.setAttribute("i_page",i_page);

int lastNo = w_size*i_page;
if(lastNo >= myclist.size()) lastNo = myclist.size();

Paging pg = new Paging(w_size,p_size,myclist.size(),i_page);
int preNo = pg.getPage_Start()-1;
int nextNo = pg.getPage_End()+1;

%>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="?page=mypage_order" title="주문/배송관리" class="mymenu_btn mymenu_btn-on">주문/배송관리</a>
				</li>
				<li>
					<a href="#" title="나의 활동" class="mymenu_btn">나의 활동</a>
				</li>
				<li>
					<a href="?page=mypage_modiinfo" title="내 정보 관리" class="mymenu_btn">내 정보 관리</a>
				</li>
			</ul>
		</div>
		<a href="#" title="호스트" class="host_btn">HOST</a>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li><a href="?page=mypage_order">주문/배송조회</a></li>
				<li style="font-weight:bold;"><a href="?page=mypage_class">클래스 보관함</a></li>
				<li><a href="#">배송지 목록</a></li>
				<li><a href="#">배송지 추가</a></li>
			</ul>
		</nav>
	</div>
	
<!-- 내가 들었던 클래스 -->
	<section class="pre-list">
	<%
	
	if(myclist!=null){
	%>
		<article class="pre-class">
		 	<ul class="preview">
	<%	for(int idx=(w_size*i_page-w_size) ; idx<lastNo ; idx++){ %>
		 		<li class="c-list">
		 			<a href="#">
		 				<div class="c-fordate">		 					
			 				<p class="c-when"><span>수강날짜</span><span class="c-date"><%=myclist.get(idx).getC_date() %></span></p>
		 				</div>
		 				<div class="c-thumbnail">
		 					<img src="<%=myclist.get(idx).getC_thum() %>" alt="">
		 				</div>
		 				<div class="c-listcon">
			 				<p class="c-lecture"><%=myclist.get(idx).getC_lec() %></p>
			 				<p class="c-name"><%=myclist.get(idx).getC_name() %></p>
		 				</div>
		 			</a>
		 		</li>
		 <%
		 } %>
		 	</ul>
		</article>
	<%}%>
	<%if(myclist.size()==0){ %>
		<div class="o-none">
			수강 이력이 없습니다.
		</div>
	
	<%} %>
		<div class="paging">
			<h4>
			<%
			if(pg.isPre()){
			%>
				<a href="?page=mypage_class&i_page=<%=preNo %>">Pre</a>
			<%
			}
			for(int i = pg.getPage_Start(); i <= pg.getPage_End();i++){
				if(i == i_page){
			%>
				<a class="btn_num btn_num-on" href="?page=mypage_class&i_page=<%=i %>" ><%=i %></a>
			<%	}else{ %>
				<a class="btn_num" href="?page=mypage_class&i_page=<%=i %>"><%=i %></a>
			<%	}
			}
			if(pg.isNext()){
			%>
				<a href="?page=mypage_classr&i_page=<%=nextNo %>">Next</a>
			<%} %>
			</h4>	
		</div>
	</section>

</body>
</html>