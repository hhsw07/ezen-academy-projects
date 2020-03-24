<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*, java.util.Date, vo_hsw.*,
    java.text.SimpleDateFormat " 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>
<%
A01_Admin dao = new A01_Admin();
String course_noS = request.getParameter("cIdx");
int course_no = 1; if(course_noS != null) course_no = new Integer(course_noS);
Adm_Cou co = dao.getCourse(course_no);
ArrayList<Adm_Ckind> ckList = dao.getCkList(course_no);

String proc = request.getParameter("proc"); if(proc == null) proc="";
//COURSE_NO|MEM_ID|COURSE_INPUTDATE   |COURSE_TITLE|
// COURSE_DETAIL |COURSE_IMG    |CORUSE_CATEGORY|
if(proc.equals("upt")){
	String noS = request.getParameter("course_no");
	int no = new Integer(noS);
	Adm_Cou upt = new Adm_Cou(no,request.getParameter("mem_id"),
			null,request.getParameter("course_title"),
			request.getParameter("course_detail"),request.getParameter("course_img"),
			request.getParameter("course_category"));
	
	dao.updateCou(upt);
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
	.section table th {height:40px;background-color:#F5A9A9;}
	.section table td {height:40px;}
	
	.section table td input {width:90%; height:90%;}
	.section table td input[type=file]{ height:20%;}
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
			<h1>클래스 수정</h1>
			<form method="get">
				<input type="hidden" name="proc" value="upt" />
				<table border>
					<tr>
						<th>클래스번호</th>
						<td><input type="text" name="course_no" value="<%=co.getCourse_no() %>" readonly /></td>
						<th></th>
						<td></td>
					</tr>
					<tr>
						<th>클래스 등록일</th>
						<td><input type="date" name="course_inputdate" value="<%=co.getCourse_inputdate() %>"readonly /></td>
						<th>호스트</th>
						<td><input type="text" name="mem_id" value="<%=co.getMem_id() %>"/></td>
					</tr>
					<tr>
						<th>클래스명 </th>
						<td><input type="text" name="course_title" value="<%=co.getCourse_title() %>"/></td>
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
						<td>
							<div style="height:80px; margin-bottom:10px; overflow:hidden;"><img src="../image/<%=co.getCourse_img() %>" style="max-width:250px;"/></div>
							<input type="file" name="course_img" /></td>
						<th>상세설명 </th>
						<td>
							<div style="height:80px; margin-bottom:10px;overflow:hidden;"><img src="../image/<%=co.getCourse_detail() %>" style="max-width:250px;"/></div>
							<input type="file" name="course_detail" /></td>
					</tr>
					<tr>
						<td colspan="4" style="text-aling:right; " >
							<input type="hidden" name="cIdx" value="<%=course_no %>"  />
							<input type="button" value="삭제" onclick="ckDel(<%=course_no %>)" />
							<input type="submit" value="수정" />
						</td>
					</tr>
				</table>
			</form>
			<!-- <form>
				<table>
					수업종류코드
					클래스종류 (원데이/정기)
					수강일
					가격
					최대인원
					
				</table>
			</form> -->	
		</div>
	</div>
</body>
<script>
	function ckDel(idx){
		var ckConfirm = confirm("정말 삭제하시겠습니까?");
		 if(ckConfirm){
			location.href="<%=path %>/main/Admin/Admin_del.jsp?cIdx="+idx;
		}
	}
	
	

</script>
</html>