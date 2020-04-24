<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, jspexp.z01_vo.*"%>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 

1. jsp의 session scope의 범위별로 4가지 객체를 기술하세요

jsp는 변수들을 저장할 때, 특정한 범위로 저장을 할 수 있다..
	이때, 활용되는 객체가 scope범위로 한 페이지 단위에서
	데이터를 저장하고 활용할 수 있는 pageContext, 요청 page까지
	데이터를 저장하고 활용할 수 있는 request, 브라우저가 닫힐 때까지
	데이터를 저장하고 활용할 수 있는 session, 서버단위로
	데이터를 저장하고 활용할 수 있는 application으로 기본 객체를
	지원하고 있다.

2. session 객체를 이용하여 로그인한 회원의 정보를 페이지가 닫힐 때 까지 계속 유지되도록 코드 처리 하세요(아이디, 이름, 포인트)

<%
String member_id = "himan";
String member_name = "홍길동";
int member_point = 25;
pageContext.setAttribute("아이디",member_id);
pageContext.setAttribute("이름",member_name);
pageContext.setAttribute("포인트",member_point);
%>

3. 웹서버에서 지정한 file 서버의 물리적 위치를 지정하여, 해당 서버를 통해 처리하고자 한다.
      해당 물리적 위치를 지정하고 호출하여 사용하자
      
4. out객체의 buffer메모리를 확인하고 버퍼를 플러시할 때 사용되는 메서드를 기술하세요

	1. 버퍼의 크기 : out.getBufferSize()
	2. 남은 크기 : out.getRemaining()
	3. auto flush여부 : out.isAutoFlush()

5. 로그인 id/pass를 입력하고 남/여에 따른 사이트가 다르게 이동될 때, 로그인한 id가 해당 사이트까지 전송되게 처리하려고 한다.
   session 4가지 객체 중 하나를 활용하여 처리하세요

로그인
ID[    ] ==> Gentleman @@@님 환영합니다.
PWD[    ] ==> Lady @@님 환영합니다.
남()여()
[로그인]

-->
<%
String id = request.getParameter("id");
String sex=request.getParameter("sex");
String pass= request.getParameter("pass");

session.setAttribute("id",id );
session.setAttribute("sex",sex);

if(id!=null&&pass!=null&&sex!=null){
	if(sex.equals("Gentleman")){
		response.sendRedirect("gentleman.jsp");
	}else{
		response.sendRedirect("lady.jsp");
	}
}
%>
<form>
로그인<br>
ID : <input type="text" name="id"><br>
PWD : <input type="password" name="pass"><br>
<input type="radio" name="sex" value="Gentleman">남 <input type="radio" name="sex" value="lady">여<br>
<input type="submit" value="로그인">
</form>
</body>
<script>
</script>
</html>