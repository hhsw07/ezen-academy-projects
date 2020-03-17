<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*, java.util.Date,
    java.text.SimpleDateFormat " 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>
<%
	ArrayList<Course> coList = (ArrayList<Course>)session.getAttribute("couList");
	String course_title = request.getParameter("course_title");
	
	SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd");
	Date time = new Date();
	String nowTime = format1.format(time);
	
	if(course_title != null){
		int course_no = coList.size()+1;
		String mem_id = request.getParameter("mem_id");
		String course_inputdate = request.getParameter("course_inputdate");
		String course_kind = request.getParameter("course_kind");
		String course_detail = request.getParameter("course_detail");
		int course_curCnt = 0;
		String strCourse_totCnt = request.getParameter("course_totCnt");
		int course_totCnt=0;
		if(strCourse_totCnt != null) course_totCnt = Integer.parseInt(strCourse_totCnt);
		String strCourse_price = request.getParameter("course_price");
		int course_price=0;
		if(strCourse_price != null) course_price = Integer.parseInt(strCourse_price);
		String course_img = request.getParameter("course_img");
		String course_opendate = request.getParameter("course_opendate");
		
		coList.add(new Course(course_no,mem_id,course_inputdate,course_title,course_kind,
				course_detail,course_curCnt,course_totCnt,course_price,course_img,course_opendate));
		session.setAttribute("couList", coList);
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
	.section table th, td {height:40px;}
	.section table td input {width:90%; height:90%;}
	.section table td input[type=radio] {width:15px;height:14px;}
	.section table td textarea {width:95%; height:90%; resize:none;}
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
			<form>
				<table>
					<tr>
						<th>호스트</th>
						<td><input type="text" name="mem_id" /></td>
						<th></th>
						<td></td>
					</tr>
					<tr>
						<th>클래스명 </th>
						<td><input type="text" name="course_title" placeholder="클래스명을 입력하세요."/></td>
						<th>클래스종류</th>
						<td><label><input type="radio" name="course_kind" value="원데이" checked/>원데이</label> 
							<label><input type="radio" name="course_kind" value="정기"/>정기</label></td>
					</tr>
					<tr>
						<th>인원</th>
						<td><input type="number" name="course_totCnt" value="5"></td>
						<th>가격</th>
						<td><input type="number" name="course_price" value="10000"></td>
					</tr>
					<tr>
						<th>수강일</th>
						<td><input type="date" name="course_opendate" value="<%=nowTime %>" /></td>
						<th>클래스이미지</th>
						<td><input type="file" name="course_img"/></td>
					</tr>
					<tr>
						<th>상세설명 </th>
						<th colspan="3"></th>
					</tr>
					<tr>
						<td colspan="4">
						<textarea name="course_detail" rows="8" placeholder="내용을 입력하세요."></textarea></td>
					</tr>
				</table>
				<div align="right" style="font-size:15px;" >
					<input type="submit" value="등록" class="inputBtn" />
				</div>
			</form>	
			
			
		</div>
		
	</div>
</body>
</html>