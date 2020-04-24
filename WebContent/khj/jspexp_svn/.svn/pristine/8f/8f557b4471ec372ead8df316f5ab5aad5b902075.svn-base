<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    import="jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
# database 불러와서 화면에 출력..
 --%>
<%
A01_Database db = new A01_Database();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
<h2>사원 리스트</h2>
<table>
	<tr>
		<th>사원번호</th>
		<th>사원명</th>
		<th>직책</th>
		<th>관리자번호</th>
		<th>입사일</th>
		<th>급여</th>
		<th>보너스</th>
		<th>부서번호</th></tr>
	<%
	for(Emp emp:db.getEmpList()){
	%>	
	<tr>
		<td><%=emp.getEmpno()%></td>	
		<td><%=emp.getEname() %></td>	
		<td><%=emp.getJob() %></td>	
		<td><%=emp.getMgr() %></td>	
		<td><%=emp.getHiredate() %></td>	
		<td><%=emp.getSal() %></td>	
		<td><%=emp.getComm() %></td>	
		<td><%=emp.getDeptno() %></td>	
		</tr>	
	<%}%>

</table>
</body>
</html>