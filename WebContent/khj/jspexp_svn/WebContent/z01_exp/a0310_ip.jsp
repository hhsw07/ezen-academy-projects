<%@page import="jspexp.z01_vo.IpList"%>
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
<%--
5. 웹 화면에 현재 접속한 client의 ip를 list로 출력할려고 한다.
해당 프로그램을 처리하세요.

http://211.238.140.48:5080/jspexp/z01_exp/a0310_ip.jsp
 --%>
<%
String inputIp = request.getRemoteAddr();
// static 변수를 이용해서 ArrayList 처리..
// 서버의 고정 변수 처리..
IpList li = new IpList();
li.add(inputIp);
%>
<h1>접속 ip 내역</h1>
<%
for(String ip:li.getList()){
%>
<h2><%=ip %></h2>
<%
}
%>





 
</body>
</html>