<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*, vo_hsw.*" 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>

<%
A01_Admin dao = new A01_Admin();
ArrayList<Adm_Sto> sList = dao.getSList();
	//ArrayList<Store> sList = (ArrayList<Store>)session.getAttribute("sList");

/* 페이징 처리
Paging pg = new Paging(w_size,p_size,memList.size(),i_page);
Paging pg = new Paging(화면에나오는글수,한번에보이는페이지수,글의최대개수,현재위치한페이지);
*/

int w_size = 10;
int p_size = 2;
int i_page = 1;
if(request.getParameter("i_page") != null) i_page = Integer.parseInt(request.getParameter("i_page"));
session.setAttribute("i_page",i_page);

//내림차순으로 정렬
int lastNo = sList.size()-1- (w_size*i_page);
if(lastNo < 0) lastNo = -1;

Paging pg = new Paging(w_size,p_size,sList.size(),i_page);
int preNo = pg.getPage_Start()-1;
int nextNo = pg.getPage_End()+1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하비팩토리 - 취미를 통해 일상을 가꾸자</title>
<style type="text/css">
    a{text-decoration:none; color:black;}
	.middle{position: relative; width:1080px;}
	
	.top{position:absolute; width:100%; height:100px;}
	.logo{font-family:sans-serif;font-size:35px;color:#FF4000;font-weight:bold; margin:0;}
	
	.nav{background-color:#f8f8fa; position:absolute; top:100px; width:200px;height:520px;}
	.nav ul {list-style:none; padding:5px;}
	.nav ul li {height:90px; border:1px solid black; text-align:center; line-height:90px;}
	.nav ul li:first-child {border-radius:20px 20px 0 0;}
	.nav ul li:last-child {border-radius:0 0 20px 20px;}
	.ckOn {background-color:#f36359; color:#ffffff;}
	.ckOff {background-color:#ffffff;}
	
	.section{background-color:#f8f8fa;position:absolute; top:100px;left:200px; width:880px;height:500px; padding:10px;}
	.section table {width:100%; text-align:center;border-collapse:collapse;background-color:#ffffff;}
  	.section table th {height:40px;background-color:#F5A9A9;}
  	.section table tr {height:30px;}
  	.section table td a { display:block; width:100%; height:100%;} 
　 	.section table td a:hover {background-color:#f8f8fa; }
	.paging {text-align:center;}
	.pageNo {color:#f36359;}
	.txt {text-align:left; padding-left:10px;}
	
</style>
</head>

<body>
	<div class="middle">
		<div class="top">
			<p><a href="<%=path %>/main/Main.jsp" class="logo" > HobbyFactory</a> 관리자 전용 페이지</p>
		</div>
		<div class="nav">
			<ul>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_mem.jsp'" class="ckOff">회원 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_class.jsp'" class="ckOff">클래스 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_store.jsp'" class="ckOn">스토어 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_notice.jsp'" class="ckOff">공지사항 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_inquiry.jsp'" class="ckOff">문의 관리</li>
			</ul>
		</div>
		<div class="section">
			<div>
				<h1>스토어 관리</h1>
				<table border>
					<colgroup>
						<col style="width:8%"/>
						<col style="width:*"/>
						<col style="width:15%"/>
						<col style="width:15%"/>
						<col style="width:10%"/>
						<col style="width:8%"/>
					</colgroup>
					<tr>
						<th>No</th>
						<th>제품명</th>
						<th>호스트</th>
						<th>신청일</th>
						<th>승인/취소</th>
						<th>수정</th>
					</tr>
					<%
					for(int idx=sList.size()-1 -(w_size*(i_page-1)); idx > lastNo ; idx--){
					%>
						<tr>
						<td><%=sList.get(idx).getStore_no() %></td>
						<td class="txt"><%=sList.get(idx).getStore_title() %></td>
						<td><%=sList.get(idx).getMem_id() %></td>
						<td><%=sList.get(idx).getStrore_date() %></td>
						<td><%=sList.get(idx).getStore_code() %></td>
						<td><a href="<%=path %>/main/Admin/Admin_store_detail.jsp?sidx=<%=sList.get(idx).getStore_no() %>">보기</a></td>
						</tr>
					<%
					} %>
				</table>
			</div>
			<div>
				<h4 class="paging">
				<%
				if(pg.isPre()){
				%>
					<a href="<%=path %>/main/Admin/Admin_store.jsp?i_page=<%=preNo %>">Pre</a>
				<%
				}
				for(int i = pg.getPage_Start(); i <= pg.getPage_End();i++){
					if(i == i_page){
				%>
					<a class="pageNo" href="<%=path %>/main/Admin/Admin_store.jsp?i_page=<%=i %>" ><%=i %></a>
				<%	}else{ %>
					<a href="<%=path %>/main/Admin/Admin_store.jsp?i_page=<%=i %>"><%=i %></a>
				<%	}
				}
				if(pg.isNext()){
				%>
					<a href="<%=path %>/main/Admin/Admin_store.jsp?i_page=<%=nextNo %>">Next</a>
				<%} %>
				</h4>	
			</div>	
			
		</div>
		
	</div>
</body>
</html>