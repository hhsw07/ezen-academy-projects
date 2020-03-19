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
	a{text-decoration:none; color:black;}
/* 메뉴 */
	.mymenu{position:relative; width:1050px; background-color:#151515; color:#FFFFFF; font-size:18px; margin:64px auto 0; padding:5px 5px 45px 5px;}
	.mynav{text-align:left; display:inline;}
	.mynav ul li{float:left; text-align:center; display:flex; padding-right:30px;}
	.mynav ul li a{color:#FFFFFF; cursor:pointer;}
	.myhost{text-align:right; display:inline;}
	.myhost ul li{padding-right:30px; cursor:pointer;}
	.mysubmenu{display:block; position:relative; width:1050px; padding:4px; margin:0 auto;}
	.mysubmenu ul li a{color:#000000; cursor:pointer;}
/* 클래스목록 */
	.pre-list{padding-bottom:50px; width:980px; height:400px;  margin:0 auto; display:block;}
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
</style></head>
<%
//관심클래스 내용 입력
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
		<nav class="mynav">
			<ul>
				<li style="font-weight:bold;">관심창고</li>
			</ul>
		</nav>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li style="font-weight:bold;"><a href="?page=hb_class">관심클래스</a></li>
				<li><a href="?page=hb_product">장바구니</a></li>
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
				<a href="?page=hb_product&i_page=<%=preNo %>">Pre</a>
			<%
			}
			for(int i = pg.getPage_Start(); i <= pg.getPage_End();i++){
				if(i == i_page){
			%>
				<a class="pageNo" href="?page=mypage_class&i_page=<%=i %>" ><%=i %></a>
			<%	}else{ %>
				<a href="?page=hb_product&i_page=<%=i %>"><%=i %></a>
			<%	}
			}
			if(pg.isNext()){
			%>
				<a href="?page=hb_product&i_page=<%=nextNo %>">Next</a>
			<%} %>
			</h4>	
		</div>
	</section>

</body>
</html>