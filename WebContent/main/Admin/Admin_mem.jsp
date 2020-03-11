<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*" 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>

 
<%

ArrayList<Member> memList = new ArrayList<Member>();
Member m01 = new Member("1","himan1","홍길동","7777","M");
Member m02 = new Member("2","himan2","김길동","7778","H");
memList.add(m01);
memList.add(m02);
for(int cnt=3;cnt<=16;cnt++){
	String strCnt = ""+cnt;
	memList.add(new Member(strCnt,"himan3","홍길똥",""+(9800+cnt),"N"));
}
session.setAttribute("memList", memList);

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
if(lastNo >= memList.size()) lastNo = memList.size();

Paging pg = new Paging(w_size,p_size,memList.size(),i_page);
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
			<p><span class="logo" > HobbyFactory</span> 관리자 전용 페이지</p>
		</div>
		<div class="nav">
			<ul>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_mem.jsp'" class="ckOn">회원 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_class.jsp'" class="ckOff">클래스 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_store.jsp'" class="ckOff">스토어 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_notice.jsp'" class="ckOff">공지사항 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_inquiry.jsp'" class="ckOff">문의 관리</li>
			</ul>
		</div>
		<div class="section">
			<div>
				<h1>회원 관리</h1>
				<table border>
					<tr>
						<th>No</th>
						<th>ID</th>
						<th>이름</th>
						<th>연락처</th>
						<th>등급</th>
						<th>삭제</th>
					</tr>
					<%
					for(int idx=(w_size*i_page-w_size) ; idx < lastNo ; idx++){
					%>
						<tr>
						<td><%=memList.get(idx).getMem_no() %></td>
						<td><%=memList.get(idx).getMem_id() %></td>
						<td><%=memList.get(idx).getMem_name() %></td>
						<td><%=memList.get(idx).getMem_phone() %></td>
						<td><%=memList.get(idx).getMem_code() %></td>
						<td onclick="del(<%=idx %>);">수정</td>
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
					<a href="<%=path %>/main/Admin/Admin_mem.jsp?i_page=<%=preNo %>">Pre</a>
				<%
				}
				for(int i = pg.getPage_Start(); i <= pg.getPage_End();i++){
					if(i == i_page){
				%>
					<a class="pageNo" href="<%=path %>/main/Admin/Admin_mem.jsp?i_page=<%=i %>" ><%=i %></a>
				<%	}else{ %>
					<a href="<%=path %>/main/Admin/Admin_mem.jsp?i_page=<%=i %>"><%=i %></a>
				<%	}
				}
				if(pg.isNext()){
				%>
					<a href="<%=path %>/main/Admin/Admin_mem.jsp?i_page=<%=nextNo %>">Next</a>
				<%} %>
				</h4>	
			</div>
		</div>
		
	</div>
</body>
</html>