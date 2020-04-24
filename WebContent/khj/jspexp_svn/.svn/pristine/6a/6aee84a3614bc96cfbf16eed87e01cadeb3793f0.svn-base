<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
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
</head>
<body>
	<h2>저장된 세션 값 확인</h2>
	<h3>name:<%=session.getAttribute("name")%></h3>
	<h3>age:<%=session.getAttribute("age")%></h3>
	<%Person p01 = (Person)session.getAttribute("p01");%>
	<h3>p01:<%=p01.getName()%>-<%=p01.getAge()%>-<%=p01.getLoc()%></h3>
	<h3>plist</h3>
	
	<%
	ArrayList<Person> plist = 
		(ArrayList<Person>)session.getAttribute("plist");
	for(Person p:plist){
	%>
		<h4>p:<%=p.getName()%>-<%=p.getAge()%>-<%=p.getLoc()%></h4>
	<%
	}
	%>
	<a href="a01_basic.jsp">세션 저장 하기</a>
<%--
	session 로그인
	  ID:[    ]
	   [로그인] ==>
session값을 설정해서 현재 @@회방문 카운트	    
	   @@@님 @회방문중 
	   [로그아웃] ==> session 종료 @@님 1회 방문으로 다시 시작
	   
	
	 
	   
	
	
	
 --%>



</body>
</html>