<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
# useBean의 el 활용
1. 요청값을 받은 useBean el로도 활용할 수 있다.
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
<jsp:useBean id="bk" 
	class="jspexp.z01_vo.Book" scope="session"/>
<jsp:setProperty property="*" name="bk"/>
<h2>도서입력</h2>
<form method="post">
	도서명:<input name="title"/><br>
	저자:<input name="writer"/><br>
	출판사:<input name="publisher"/><br>
	<input type="submit" value="등록"/><br>
</form>
<h2>등록 내용</h2>
<!-- bean으로 선언된 내용도 바로 사용할 수 있다. -->
<h3>${bk.title}</h3>
<h3>${bk.writer}</h3>
<h3>${bk.publisher}</h3>
<a href="a05_show.jsp">다음 페이지에서</a>
</body>
</html>





