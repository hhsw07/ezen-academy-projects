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
<body>
<h2 align="center">로그인</h2>
<form method="post">
<table align="center">
	<tr><th>아이디</th>
		<td><input type="text" name="id"/></td></tr>
	<tr><th>패스워드</th>
		<td><input type="password" name="pass"/></td></tr>
	<tr><td colspan="2">
		<input type="submit" value="로그인"/></td></tr>
</table>
</form>
<%
	String id = request.getParameter("id");if(id==null) id="";
	String pass = request.getParameter("pass");if(pass==null) pass="";
	boolean isValid=false;
	if(!id.equals("")){
		A04_MemberDao dao = new A04_MemberDao();
		Member m = dao.login(new Member(id,pass));
		if(m!=null){
			session.setAttribute("mem", m);
			isValid=true;
			response.sendRedirect("a06_main.jsp");
		}
	}
%>
<script type="text/javascript">
	var id = "<%=id%>";
	var isValid = <%=isValid%>;
	if(id!="" && !isValid ){
		alert(id+"님은 등록된 계정이 아닙니다!");
		document.querySelector("[name=id]").focus();
	}
	
</script>
</body>
</html>








