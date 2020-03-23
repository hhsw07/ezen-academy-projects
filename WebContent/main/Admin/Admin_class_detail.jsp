<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*, java.util.Date, vo_hsw.*,
    java.text.SimpleDateFormat " 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>
<%
A01_Admin dao = new A01_Admin();
String cIdxS = request.getParameter("cIdx");
int idx = 0; if(cIdxS != null) idx = new Integer(cIdxS)-1;
ArrayList<Adm_Cou> coList = dao.getCList();

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
	System.out.print("proc=upt");
	dao.updateCou(upt);
	
}

//ArrayList<Course> coList = (ArrayList<Course>)session.getAttribute("couList");
//String strIdx = request.getParameter("cIdx");
//int idx = Integer.parseInt(strIdx);
/*
String course_title = request.getParameter("course_title");
if(course_title != null){
	response.sendRedirect("Admin_change.jsp?cIdx="+idx+
			"&mem_id="+java.net.URLEncoder.encode(request.getParameter("mem_id"))+
			"&course_title="+java.net.URLEncoder.encode(request.getParameter("course_title"))+
			"&course_kind="+request.getParameter("course_kind")+
			"&course_totCnt="+request.getParameter("course_totCnt")+
			"&course_price="+request.getParameter("course_price")+
			"&course_opendate="+request.getParameter("course_opendate")+
			"&course_img="+request.getParameter("course_img")+
			"&course_detail="+java.net.URLEncoder.encode(request.getParameter("course_detail")) );
}*/
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
			<form>
				<input type="hidden" name="cIdx" value="<%=coList.get(idx).getCourse_no() %>" />
				<input type="hidden" name="proc" value="<%=proc %>" />
				<table border>
					<tr>
						<th>클래스번호</th>
						<td><input type="text" name="course_no" value="<%=coList.get(idx).getCourse_no() %>" readonly /></td>
						<th>호스트</th>
						<td><input type="text" name="mem_id" value="<%=coList.get(idx).getMem_id() %>"/></td>
					</tr>
					<tr>
						<th>클래스명 </th>
						<td><input type="text" name="course_title" value="<%=coList.get(idx).getCourse_title() %>"/></td>
					</tr>
					<tr>
						<th>클래스 등록일</th>
						<td><input type="date" name="course_inputdate" value="<%=coList.get(idx).getCourse_inputdate() %>"readonly /></td>
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
						<td><input type="file" name="course_img" value="<%=coList.get(idx).getCourse_img() %>"/></td>
						<th>상세설명 </th>
						<td><input type="file" name="course_img" value="<%=coList.get(idx).getCourse_img() %>"/></td>
					</tr>
					<tr>
						<td colspan="4" style="text-aling:right; " >
							<input type="button" value="삭제" onclick="ckDel(<%=coList.get(idx).getCourse_no() %>)" />
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