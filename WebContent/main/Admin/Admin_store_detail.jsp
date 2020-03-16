<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*" 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>
<%
ArrayList<Store> sList = (ArrayList<Store>)session.getAttribute("sList");
String strIdx = request.getParameter("sidx");
int idx = Integer.parseInt(strIdx);

String store_title = request.getParameter("store_title");
if(store_title != null){
	response.sendRedirect("Admin_change.jsp?sIdx="+idx+
			"&mem_id="+request.getParameter("mem_id")+
			"&store_title="+java.net.URLEncoder.encode(request.getParameter("store_title"))+
			"&store_code="+request.getParameter("store_code")+
			"&store_price="+request.getParameter("store_price")+
			"&store_totCnt="+request.getParameter("store_totCnt")+
			"&strore_date="+request.getParameter("strore_date")+
			"&store_img="+request.getParameter("store_img")+
			"&store_detail="+java.net.URLEncoder.encode(request.getParameter("store_detail")) );

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
				<li onclick="location.href='<%=path %>/main/Admin/Admin_class.jsp'" class="ckOff">클래스 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_store.jsp'" class="ckOn">스토어 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_notice.jsp'" class="ckOff">공지사항 관리</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_inquiry.jsp'" class="ckOff">문의 관리</li>
			</ul>
		</div>
		<div class="section">
			<h1>스토어 관리 (상세정보)</h1>
			<form>
				<table>
					<tr>
						<th>상품번호</th>
						<td><input type="text" name="store_no" value="<%=sList.get(idx).getStore_no() %>" readonly/></td>
						<th>호스트</th>
						<td><input type="text" name="mem_id" value="<%=sList.get(idx).getMem_id() %>" /></td>
					</tr>
					<tr>
						<th>상품명 </th>
						<td><input type="text" name="store_title" value="<%=sList.get(idx).getStore_title() %>"/></td>
						<th>승인상태</th>
						<td><label><input type="radio" name="store_code" id="kind01" value="N"/>대기</label> 
							<label><input type="radio" name="store_code" id="kind02" value="Y"/>승인</label></td>
					</tr>
					<tr>
						<th>갯수</th>
						<td><input type="number" name="store_totCnt" value="<%=sList.get(idx).getStore_totCnt() %>"></td>
						<th>가격</th>
						<td><input type="number" name="store_price" value="<%=sList.get(idx).getStore_price() %>"></td>
					</tr>
					<tr>
						<th>신청일</th>
						<td><input type="date" name="strore_date"  value="<%=sList.get(idx).getStrore_date() %>" readonly /></td>
						<th>상품이미지</th>
						<td><input type="file" name="store_img" value="<%=sList.get(idx).getStore_img() %>"/></td>
					</tr>
					<tr>
						<th>상품설명 </th>
						<th colspan="3"></th>
					</tr>
					<tr>
						<td colspan="4">
						<textarea name="store_detail" rows="8" ><%=sList.get(idx).getStore_detail() %></textarea></td>
					</tr>
				</table>
				<div align="right" >
				<input type="text" name="sidx" value="<%=strIdx %>" style="visibility:hidden;" />
				<input type="button" value="삭제" onclick="ckDel(<%=idx %>)"/>
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
			location.href="<%=path %>/main/Admin/Admin_del.jsp?sIdx="+idx;
		}
	}
		
	var store_code = "<%=sList.get(idx).getStore_code() %>";
	console.log(store_code);

	if(store_code == "N"){
		document.querySelector('#kind01').checked = true;
	}else{
		document.querySelector('#kind02').checked = true;
	}


</script>
</html>