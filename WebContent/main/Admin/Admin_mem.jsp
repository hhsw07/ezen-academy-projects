<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*" 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>
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
	
	.nav{background-color:gray; position:absolute; top:100px; width:200px;height:500px; border-right:1px solid black;}
	.nav ul {list-style:none; padding:5px;}
	.nav ul li {height:90px; border:1px solid black; text-align:center; line-height:90px;}
	.nav ul li:first-child {border-radius:20px 20px 0 0;}
	.nav ul li:last-child {border-radius:0 0 20px 20px;}
	
	.section{position:absolute; top:100px;left:200px; width:880px;height:500px}
	.section table {width:100%; text-align:center;}
</style>
</head>
<%
ArrayList<Member> memList = new ArrayList<Member>();
Member m01 = new Member("1","himan","홍길동","7777","M");
Member m02 = new Member("2","higirl","김길동","7777","H");
memList.add(m01);
memList.add(m02);
memList.add(new Member("3","himan3","홍길똥","9883","N"));
memList.add(new Member("4","himan4","홍길똥","9884","N"));
memList.add(new Member("5","himan5","홍길똥","9885","N"));
memList.add(new Member("6","himan6","홍길똥","9886","N"));
memList.add(new Member("7","himan7","홍길똥","9887","N"));
memList.add(new Member("8","himan8","홍길똥","9888","N"));
memList.add(new Member("9","himan9","홍길똥","9889","N"));
memList.add(new Member("10","himan10","홍길똥","9890","N"));
memList.add(new Member("11","himan11","홍길똥","9891","N"));
memList.add(new Member("12","himan12","홍길똥","9892","N"));

String m01_no = m01.getMem_no();
%>
<body>
	<div class="middle">
		<div class="top">
			<p><span class="logo" > HobbyFactory</span> 관리자 전용 페이지</p>
		</div>
		<div class="nav">
			<ul>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_mem.jsp'">회원 관리</li>
				<li onclick="location.href='<%=path %>/main/Main.jsp'">클래스 관리</li>
				<li onclick="location.href='<%=path %>/main/Main.jsp'">스토어 관리</li>
				<li onclick="location.href='<%=path %>/main/Main.jsp'">공지사항 관리</li>
				<li onclick="location.href='<%=path %>/main/Main.jsp'">문의 관리</li>
			</ul>
		</div>
		<div class="section">
		<!-- 페이징 처리
		1. 한 화면에 몇개의 글?
		2. 총 몇개의 페이지?
		
		1. 한화면 10개의 글
		w_size=10;
		
		2. 페이지 카운트
		21개 - 3페이지
		11개 - 2페이지
		10개 - 1페이지
		((글 갯수 -1)/w_size)+1
		
		3. 페이지사이즈
		이전 1,2,3,4,5 다음
		이전 6,7,8,9,10 다음
		시작번호:((페이지번호-1)/페이지사이즈)*페이지사이즈+1
		끝번호: 시작번호+페이지사이즈-1 or 총페이지수 중 작은 것
		
		
		 -->
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
								
				for(int idx=0; idx< memList.size(); idx++){
					
				%>
					<tr>
					<td><%=memList.getMem_no() %></td>
					<td><%=m.getMem_id() %></td>
					<td><%=m.getMem_name() %></td>
					<td><%=m.getMem_phone() %></td>
					<td><%=m.getMem_code() %></td>
					<td>X</td>
					</tr>
				<%
				} %>
			</table>
			<h3>
			<%
			Paging pg = new Paging(5,2,memList.size(),1);
			
			if(pg.isPre()){
			%>
				Pre\t
			<%
			}
			for(int i = pg.getPage_Start(); i <= pg.getPage_End();i++){
			%>
				<%=i %>
			<%
			}
			if(pg.isNext()){
			%>
				Next
			<%
			}
			%>	</h3>	
			
		</div>
		
	</div>
</body>
</html>