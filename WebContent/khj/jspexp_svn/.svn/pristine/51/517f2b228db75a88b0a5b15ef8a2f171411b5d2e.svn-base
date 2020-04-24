<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
7. 성년/미성년자에 따라서, 이동되는 페이지가 다르게 처리할려고
한다. response객체를 이용하여 처리하세요.
	()성년 ()미성년  [페이지이동]
 -->
<%
String ckAdult = request.getParameter("ckAdult");
if(ckAdult!=null){
	if(ckAdult.equals("Y")) response.sendRedirect("a0310_ckPage01.jsp");
	if(ckAdult.equals("N")) response.sendRedirect("a0310_ckPage02.jsp");
}
%> 
<form>
	<input type="radio" name="ckAdult" value="Y"/>성년	
	<input type="radio" name="ckAdult" value="N"/>미성년
	<input type="submit" value="페이지이동"/>
</form> 
</body>
</html>