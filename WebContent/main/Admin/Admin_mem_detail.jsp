<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*" 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>
<%
	ArrayList<Member> memList = (ArrayList<Member>)session.getAttribute("memList");
	String strIdx = request.getParameter("idx");
	int idx = Integer.parseInt(strIdx);
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
	
	.nav{background-color:#f8f8fa; position:absolute; top:100px; width:200px;height:500px;}
	.nav ul {list-style:none; padding:5px;}
	.nav ul li {height:90px; border:1px solid black; text-align:center; line-height:90px;}
	.nav ul li:first-child {border-radius:20px 20px 0 0;}
	.nav ul li:last-child {border-radius:0 0 20px 20px;}
	.ckOn {background-color:#f36359; color:#ffffff;}
	.ckOff {background-color:#ffffff;}
	
	.section{background-color:#f8f8fa;position:absolute; top:100px;left:200px; width:880px;height:500px; padding:10px;}
	.section table {width:100%; text-align:center;border-collapse:collapse;background-color:#ffffff; margin-top:50px;}
	.section table th {height:40px;}
	.section table td {height:40px;}
	.section table td a {display:block; width:100%; height:100%;}
	
</style>
<script>
	function ckDel(idx){
		if(idx != 0){ 
			var ckConfirm = confirm("정말 삭제하시겠습니까?");
			 if(ckConfirm){
				location.href="<%=path %>/main/Admin/Admin_del.jsp?mIdx="+idx;
			 }
		}
		if(idx == 0) {
			alert("관리자는 삭제 될 수 없습니다.");
		}
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
				<li onclick="location.href='<%=path %>/main/Admin/Admin_mem.jsp'" class="ckOn">회원 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_class.jsp'" class="ckOff">클래스 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_store.jsp'" class="ckOff">스토어 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_notice.jsp'" class="ckOff">공지사항 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_inquiry.jsp'" class="ckOff">문의 관리</li>
			</ul>
		</div>
		<div class="section">
			<div>
				<h1>회원 관리 (상세정보)</h1>
				<table border>
					<tr>
						<th>ID</th>
						<td><%=memList.get(idx).getMem_id() %></td>
						<th>이름</th>
						<td><%=memList.get(idx).getMem_name() %></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><%=memList.get(idx).getMem_mail() %></td>
						<th>닉네임</th>
						<td><%=memList.get(idx).getMem_nickname() %></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><%=memList.get(idx).getMem_birth() %></td>
						<th>휴대폰</th>
						<td><%=memList.get(idx).getMem_phone() %></td>
					</tr>
					<tr>
						<th>등급</th>
						<td><%=memList.get(idx).getMem_code() %></td>
						<th>마일리지</th>
						<td><%=memList.get(idx).getMem_mileage() %></td>
					</tr>
					
				</table>
				<div align="right" style="margin-top:10px; font-size:15px;">
					<input type="button" value="삭제" onclick="ckDel(<%=memList.get(idx).getMem_no()%>-1)"/>
				</div>
			</div>
			
		</div>
		
	</div>
</body>
</html>