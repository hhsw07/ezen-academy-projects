<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, vo_hsw.*"
    %>
    <%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	A01_Admin dao = new A01_Admin();
ArrayList<Adm_Mem> mlist = dao.getMList();
%>

<body>
	<h1>member리스트</h1>
	<table border>
		<%
			for(Adm_Mem m : mlist){
		%>
		<tr>
			<td><%=m.getMem_no()  %></td>
			<td><%=m.getMem_id()  %></td>
			<td><%=m.getMem_pass()  %></td>
		</tr>
		<%} %>
		<tr>
			<td><%=mlist.get(0).getMem_no()  %></td>
			<td><%=mlist.get(0).getMem_id()  %></td>
			<td><%=mlist.get(0).getMem_pass()  %></td>
		</tr>
	</table>
</body>
</html>