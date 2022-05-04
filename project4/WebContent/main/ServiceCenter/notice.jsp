<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*, vo_jhk.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
	</style>
	<script type="text/javascript">
	</script>
</head>
<%
noticeDao ndao = new noticeDao();
//공지 내용 추가
ArrayList <Notice> notiList = ndao.nlist();

/* 페이징 처리
Paging pg = new Paging(w_size,p_size,memList.size(),i_page);
Paging pg = new Paging(화면에나오는글수,한번에보이는페이지수,글의최대개수,현재위치한페이지);
*/
//페이징-역순
int w_size = 5;
int p_size = 2;
int i_page = 1;
if(request.getParameter("i_page") != null) i_page
= Integer.parseInt(request.getParameter("i_page"));
session.setAttribute("i_page",i_page);

int lastNo = w_size*i_page;  //페이지당 표시될 넘버링(마지막)
int cnt = 1+(w_size*(i_page-1)); //역순 페이지 처리 변수
if(lastNo >= notiList.size()) lastNo = notiList.size();

Paging pg = new Paging(w_size,p_size,notiList.size(),i_page);
int preNo = pg.getPage_Start()-1;
int nextNo = pg.getPage_End()+1;
%>
<body>

<!-- 주문/배송조회 -->
	<section class="orderlist">
	<%
	//공지내용 표시
	if(notiList!=null){ //공지 리스트가 있을 경우 불러오서 있는만큼 표시
		for(int idx=notiList.size()-cnt ; idx>=notiList.size()-lastNo ; idx--){ 
	%>
		<article>
			<div class="o-info">
				<ul>
					<li>
						<span class="o-title">공지번호</span> 
						<span class="o-value"><%=notiList.get(idx).getNoti_no() %></span>
					</li>
					<li>
						<span class="o-title">작성일</span> 
						<span class="o-value"><%=notiList.get(idx).getNoti_date() %></span>
					</li>
				</ul>
			</div>
			<div>
				<ul>
							<%--공지 상세 연결 링크(공지번호에 따른 동적 연결) --%>
					<li class="o-name"><a href="?page=serviceCenter&service=noticeDetail&cn=<%=notiList.get(idx).getNoti_no() %>">
					<%=notiList.get(idx).getNoti_title() %></a></li>
				</ul>
			</div>
		</article>
	<%}
	} %>
	<%
	if(notiList.size()==0){%>
		<div class="o-none">
			주문한 내역이 없습니다.
		</div>
	<%}
	%>	
	<div class="paging">
			<h4>
			<%
			if(pg.isPre()){
			%>
				<a href="?page=serviceCenter&service=notice&i_page=<%=preNo %>">Pre</a>
			<%
			}
			for(int i = pg.getPage_Start(); i <= pg.getPage_End();i++){
				if(i == i_page){
			%>
				<a class="pageNo" href="?page=serviceCenter&service=notice&i_page=<%=i %>" ><%=i %></a>
			<%	}else{ %>
				<a href="?page=serviceCenter&service=notice&i_page=<%=i %>"><%=i %></a>
			<%	}
			}
			if(pg.isNext()){
			%>
				<a href="?page=serviceCenter&service=notice&i_page=<%=nextNo %>">Next</a>
			<%} %>
			</h4>	
		</div>
	</section>

</body>
	<script type="text/javascript">
	</script>
</html>