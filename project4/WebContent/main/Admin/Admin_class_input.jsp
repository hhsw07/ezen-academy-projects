<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*, java.util.Date,vo_hsw.*,
    java.text.SimpleDateFormat " 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>
<%
A01_Admin dao = new A01_Admin();

SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd");
Date time = new Date();
String nowTime = format1.format(time);

String proc = request.getParameter("proc"); if(proc == null) proc ="";
if(proc.equals("ins")){
String course_title = request.getParameter("course_title");
String mem_id = request.getParameter("mem_id");
String course_category = request.getParameter("course_category");
String course_img = request.getParameter("course_img");
String course_detail = request.getParameter("course_detail");

Adm_Cou ins = new Adm_Cou(0,mem_id,null,course_title,course_detail,course_img,course_category);
dao.insertCourse(ins);
Thread.sleep(500);
response.sendRedirect("Admin_class.jsp");
}
	
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
	.section table {width:100%; text-align:center;border-collapse:collapse;background-color:#ffffff; margin-top:30px;}
	.section table td {height:40px;}
	.section table th {height:40px;background-color:#F5A9A9;}
	.section table td input {width:90%; height:90%;}
	.section table td input[type=radio] {width:15px;height:14px;}
	.section table td input[type=button] {width:45px;}
	.section table td input[type=submit] {width:45px;}
	.inputBtn {margin:10px 0 0 800px; font-size:15px;}
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
				<li onclick="location.href='<%=path %>/main/Admin/Admin_class.jsp'" class="ckOn">클래스 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_store.jsp'" class="ckOff">스토어 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_notice.jsp'" class="ckOff">공지사항 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_inquiry.jsp'" class="ckOff">문의 관리</li>
			</ul>
		</div>
		<div class="section">
			<h1>클래스 등록</h1>
			<form method="post">
				<table border>
					<tr>
						<th>호스트</th>
						<td><input type="text" name="mem_id" /></td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<th>클래스명 </th>
						<td><input type="text" name="course_title" /></td>
						<th>수업분류</th>
						<td>
							<select name="course_category" style="width:90%;">
								<option value="마크라메">마크라메</option>
								<option value="프랑수자수">프랑수자수</option>
								<option value="수채화/드로잉">수채화/드로잉</option>
								<option value="뜨개질/위빙">뜨개질/위빙</option>
								<option value="가죽공예">가죽공예</option>
								<option value="쥬얼리/네온사인">쥬얼리/네온사인</option>
								<option value="다양한 취미">다양한 취미</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>클래스이미지</th>
						<td><input type="file" name="course_img" /></td>
						<th>상세설명 </th>
						<td><input type="file" name="course_detail" /></td>
					</tr>
					<tr>
						<td colspan="4" style="text-aling:right; " >
							<input type="hidden" name="proc" value="ins" />
							<input type="submit" value="등록" />
							<input type="button" value="취소" onclick="golist()" />
						</td>
					</tr>
				</table>
			</form>	
		</div>
		
		
	</div>
</body>
<script type="text/javascript">
	function golist(){
		location.href="Admin_class.jsp";
	}
</script>
</html>