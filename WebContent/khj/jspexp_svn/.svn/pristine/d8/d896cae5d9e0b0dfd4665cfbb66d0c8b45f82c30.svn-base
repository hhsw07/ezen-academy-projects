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
<%
// left 메뉴에서 전송 
// 1. 메인에서 출력할 내용
// 2. 왼쪽 메뉴의 index
String title=request.getParameter("txt");
if(title==null) title="메인";
String chIdx=request.getParameter("ckIdx");
int idx=0;
if(chIdx!=null) idx=Integer.parseInt(request.getParameter("ckIdx"));
%>
<!-- top.jsp에 로그인한 아이디를 넘겨줌 -->
<jsp:include page="a03_top.jsp">
	<jsp:param value="홍길동" name="id"/>
</jsp:include>
<hr>

<table width="100%">
	<col width="20%">
	<col width="80%">
	<tr><td >
<!-- 왼쪽 메뉴에 선택한 index값을 넘겨줌 -->	
<jsp:include page="a03_left.jsp">
	<jsp:param value="<%=idx%>" name="ckIdx"/>
</jsp:include>
	</td>
	<td>
		<!--  받은 text를 출력 처리.. -->
		<h3 align="center"><%=title %>!!</h3>
	</td>
	
	</tr>
</table>
</body>
</html>