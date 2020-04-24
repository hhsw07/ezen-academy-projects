<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
forward지시자를 이용해서 임의의 수학문제와 정답여부를 출력하세요 
[  ] * [   ] = [   ][제출]
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int num01 = (int)(Math.random()*8+2);
int num02 = (int)(Math.random()*9+1);
String totS = request.getParameter("tot");
boolean isTrue=false;
if(totS!=null&&!totS.equals("")){
	num01=Integer.parseInt(request.getParameter("num01"));
	num02=Integer.parseInt(request.getParameter("num02"));
	int tot = Integer.parseInt(totS);
	isTrue=(num01*num02)==tot;
	if(isTrue){
		// 정답일때,
%>
	<jsp:forward page="a0313_forTrue.jsp"/>
<%		
	}else{
		// 정답이 아닐때.
%>
	<jsp:forward page="a0313_forFalse.jsp"/>
<%		
	}
}
%>

<form method="post">
	<input type="text" name="num01" value="<%=num01%>" size="2"/> *
	<input type="text" name="num02" value="<%=num02%>" size="2"/> =
	<input type="text" name="tot" value="" size="2"/> 
	<input type="submit" value="제출" /> 
	
</form>
</body>
</html>