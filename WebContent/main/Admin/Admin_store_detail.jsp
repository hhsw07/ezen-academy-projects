<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*,vo_hsw.* " 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>
<%
A01_Admin dao = new A01_Admin();

String store_noS = request.getParameter("sidx");
int store_no = Integer.parseInt(store_noS);
Adm_Sto sto = dao.getStore(store_no);

String proc = request.getParameter("proc"); if(proc == null) proc ="";
String store_code = request.getParameter("store_code"); if(store_code==null) store_code="";

if(proc.equals("upt")){
	Adm_Sto upt = new Adm_Sto(store_no, store_code);
	System.out.println(store_no+", "+store_code);
	dao.updateSto(upt);
	Thread.sleep(500);
	response.sendRedirect("Admin_store.jsp");
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
	.section table th {height:40px;background-color:#F5A9A9;}
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
			<form method="post">
				<table border>
					<tr>
						<th>상품번호</th>
						<td><%=sto.getStore_no() %></td>
						<th>호스트</th>
						<td><%=sto.getMem_id() %></td>
					</tr>
					<tr>
						<th>상품명 </th>
						<td colspan="3" style="text-align:left; padding-left:10px;"><%=sto.getStore_title() %></td>
						
					</tr>
					<tr>
						<th>갯수</th>
						<td><%=sto.getStore_totCnt() %></td>
						<th>가격</th>
						<td><%=sto.getStore_price() %></td>
					</tr>
					<tr>
						<th>신청일</th>
						<td><%=sto.getStrore_date() %></td>
						<th>승인상태</th>
						<td><label><input type="radio" name="store_code" id="kind01" value="미승인"/>미승인</label> 
							<label><input type="radio" name="store_code" id="kind02" value="승인"/>승인</label></td>
					</tr>
					<tr>
						<th>상품이미지</th>
						<td><img src="../image/<%=sto.getStore_img() %>" style="max-width:250px;"/></td>
						<th>상품설명 </th>
						<td><img src="../image/<%=sto.getStore_detail() %>" style="max-width:250px;"/></td>
					</tr>
				</table>
				<div align="right" >
				<input type="hidden" name="sidx" value="<%=sto.getStore_no() %>"  />
				<input type="hidden" name="proc" value="upt"  />
				<input type="button" value="삭제" onclick="ckDel(<%=sto.getStore_no() %>)"/>
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
		
	var store_code = "<%=sto.getStore_code() %>";
	console.log(store_code);

	if(store_code == "미승인"){
		document.querySelector('#kind01').checked = true;
	}else{
		document.querySelector('#kind02').checked = true;
	}


</script>
</html>