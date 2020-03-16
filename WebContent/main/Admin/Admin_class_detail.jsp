<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*, java.util.Date,
    java.text.SimpleDateFormat " 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>
<%
ArrayList<Course> coList = (ArrayList<Course>)session.getAttribute("coList");
String strIdx = request.getParameter("cidx");
int idx = Integer.parseInt(strIdx);
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
}

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
			<h1>클래스 수정</h1>
			<form>
				<table>
					<tr>
						<th>호스트</th>
						<td><input type="text" name="mem_id" value="<%=coList.get(idx).getMem_id() %>"/></td>
						<th></th>
						<td><input type="text" name="cidx" value="<%=strIdx %>" style="visibility:hidden;" /></td>
					</tr>
					<tr>
						<th>클래스명 </th>
						<td><input type="text" name="course_title" value="<%=coList.get(idx).getCourse_title() %>"/></td>
						<th>클래스종류</th>
						<td><label><input type="radio" name="course_kind" id="kind01" value="D"/>원데이클래스</label> 
							<label><input type="radio" name="course_kind" id="kind02" value="M"/>정기클래스</label></td>
					</tr>
					<tr>
						<th>인원</th>
						<td><input type="number" name="course_totCnt" value="5" value="<%=coList.get(idx).getCourse_totCnt() %>"></td>
						<th>가격</th>
						<td><input type="number" name="course_price" value="10000" value="<%=coList.get(idx).getCourse_price() %>"></td>
					</tr>
					<tr>
						<th>수강일</th>
						<td><input type="date" name="course_opendate"  value="<%=coList.get(idx).getCourse_opendate() %>"  /></td>
						<th>클래스이미지</th>
						<td><input type="file" name="course_img" value="<%=coList.get(idx).getCourse_img() %>"/></td>
					</tr>
					<tr>
						<th>상세설명 </th>
						<th colspan="3"></th>
					</tr>
					<tr>
						<td colspan="4">
						<textarea name="course_detail" rows="8" ><%=coList.get(idx).getCourse_detail() %></textarea></td>
					</tr>
				</table>
				<div align="right" >
				<input type="button" value="삭제" onclick="ckDel(<%=coList.get(idx).getCourse_no()%>-1)"/>
				<input type="submit" value="수정" />
				</div>
			</form>	
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
		
	var course_kind = "<%=coList.get(idx).getCourse_kind() %>";
	console.log(course_kind);

	if(course_kind == "D"){
		document.querySelector('#kind01').checked = true;
	}else{
		document.querySelector('#kind02').checked = true;
	}


</script>
</html>