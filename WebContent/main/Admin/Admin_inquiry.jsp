<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*" 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>

<%
ArrayList<Inquiry> inquList = (ArrayList<Inquiry>)session.getAttribute("inquList");

/* 페이징 처리
Paging pg = new Paging(w_size,p_size,memList.size(),i_page);
Paging pg = new Paging(화면에나오는글수,한번에보이는페이지수,글의최대개수,현재위치한페이지);
*/

int w_size = 5;
int p_size = 2;
int i_page = 1;
if(request.getParameter("i_page") != null) i_page = Integer.parseInt(request.getParameter("i_page"));
session.setAttribute("i_page",i_page);

int lastNo = w_size*i_page;
if(lastNo >= inquList.size()) lastNo = inquList.size();

Paging pg = new Paging(w_size,p_size,inquList.size(),i_page);
int preNo = pg.getPage_Start()-1;
int nextNo = pg.getPage_End()+1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspexp</title>
<style type="text/css">
    a{text-decoration:none; color:black;}
	.middle{position: relative; width:1080px;}
	
	.top{position:absolute; width:100%; height:100px;}
	.logo{font-family:sans-serif;font-size:35px;color:#FF4000;font-weight:bold; margin:0;}
	
	.nav{background-color:#f8f8fa; position:absolute; top:100px; width:200px;height:500px;}
	.nav ul {list-style:none; padding:5px;}
	.nav ul li {height:90px; border:1px solid black; text-align:center; line-height:90px;}
	.nav ul li:first-child {border-radius:20px 20px 0 0;}
	.nav ul li:last-child {border-radius:0 0 20px 20px;}
	.ckOn {background-color:#f36359; color:#ffffff;}
	.ckOff {background-color:#ffffff;}
	
	.section{background-color:#f8f8fa;position:absolute; top:100px;left:200px; width:880px;height:500px; padding:10px;}
	.section table {width:100%; text-align:center;border-collapse:collapse;background-color:#ffffff;}
	.paging {text-align:center;}
	.pageNo {color:#f36359;}
	
</style>
<script type="text/javascript">
	function del(Mem_no){
		//memList_no와 같은 행을 삭제한다.
		alert(Mem_no+1+'수정');
	}
</script>
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
				<li onclick="location.href='<%=path %>/main/Admin/Admin_store.jsp'" class="ckOff">스토어 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_notice.jsp'" class="ckOff">공지사항 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_inquiry.jsp'" class="ckOn">문의 관리</li>
			</ul>
		</div>
		<div class="section">
			<div>
				<h1>문의사항 관리</h1>
				<table border>
					<tr>
						<th>No</th>
						<th>문의내용</th>
						<th>아이디</th>
						<th>등록일</th>
						<th>답변여부</th>
						<th>답변등록</th>
					</tr>
					<%
					for(int idx=(w_size*i_page-w_size) ; idx < lastNo ; idx++){
					%>
						<tr>
						<td><%=inquList.get(idx).getInquiry_no() %></td>
						<td><%=inquList.get(idx).getInquiry_detail() %></td>
						<td><%=inquList.get(idx).getMem_id() %></td>
						<td><%=inquList.get(idx).getInquiry_date() %></td>
						<% if(inquList.get(idx).getInquiry_re() == null || inquList.get(idx).getInquiry_re().equals("") ){ %>	
							<td>N</td>
						<%}else{
						%>
							<td>Y</td>
						<%}
						%>
						
						<td><a href="<%=path %>/main/Admin/Admin_inquiry_detail.jsp?iIdx=<%=idx %>">답변</a></td>
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
					<a href="<%=path %>/main/Admin/Admin_inquiry.jsp?i_page=<%=preNo %>">Pre</a>
				<%
				}
				for(int i = pg.getPage_Start(); i <= pg.getPage_End();i++){
					if(i == i_page){
				%>
					<a class="pageNo" href="<%=path %>/main/Admin/Admin_inquiry.jsp?i_page=<%=i %>" ><%=i %></a>
				<%	}else{ %>
					<a href="<%=path %>/main/Admin/Admin_inquiry.jsp?i_page=<%=i %>"><%=i %></a>
				<%	}
				}
				if(pg.isNext()){
				%>
					<a href="<%=path %>/main/Admin/Admin_inquiry.jsp?i_page=<%=nextNo %>">Next</a>
				<%} %>
				</h4>	
			</div>
		</div>
		
	</div>
</body>
</html>