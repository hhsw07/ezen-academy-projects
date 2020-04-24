<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--

 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<%
A04_MemberDao dao = new A04_MemberDao();

%>
<body>
<table>
	<tr>
		<th>아이디</th>
		<th>패스워드</th>
		<th>이름</th>
		<th>포인트</th>
		<th>권한</th>
		<th>등록일</th>
	</tr>
	<%for(Member mem:dao.getMemberList()){%>
	<tr>
		<td><%=mem.getId()%></td>
		<td><%=mem.getPass()%></td>
		<td><%=mem.getName()%></td>
		<td><%=mem.getPoint()%></td>
		<td><%=mem.getAuth()%></td>
		<td><%=mem.getRegdte()%></td>
	</tr>
	<%}%>

</table>
</body>
</html>