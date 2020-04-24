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
<!-- a04_reqBean.jsp?name=홍길동&id=himan&pass=7777&auth=admin

	 useBean으로 선언된 객체 내용 아래의 규칙에 의한 메서드가
	 있으면 데이터를 입력받을 수 있다. 
	 name을 받을 수 있는 setName가 있고, setProperty를 활용하면 요청값을
	 받게 된다.
	 1. 요청값과 동일한 setXXX 메서드가 선언되어 있고,
	 2. property="*" 
	 으로 하면 요청값 다 받은 객체가 생성어 가지고 있다.
	 request.getParameter에 대한 처리(null, default처리도 함께 해주고)
	 session객체까지 설정해준다.
ex) useBean을 활용하여
	물건종류 물건명  가격  갯수를 dao에 있는 내용을 
	등록 처리하고, 등록된 내용을 list하세요. 

 -->
<jsp:useBean id="mem" class="jspexp.z01_vo.Member" scope="session"/>
<jsp:setProperty property="*" name="mem"/>
<h2>요청된 이름:<jsp:getProperty property="name" name="mem"/></h2>
<h3>요청된 id:<%=mem.getId()%></h3>
<h3>요청된 pass:<%=mem.getPass()%></h3>
<h3>요청된 권한:<%=mem.getAuth()%></h3>
<h3>요청된 point:<%=mem.getPoint()%></h3>



</body>
</html>



