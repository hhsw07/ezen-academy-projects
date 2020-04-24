<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
  	buffer="8kb" autoFlush="false"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
# out 기본 객체 주요 메서드.
1. 출력 메서드.
	- print() : 데이터를 출력한다.
	- println() : 데이터를 출력하고, \r\n(첫번째 줄바꿈) 포함한다.
	- newLine() : \r\n 을 출력한다.
2. 버퍼 관련 메서드(buffer-웹프로그램에서 임시 메모리를 통해 보다 
					효과적으로 화면 처리를 해주는 기능)
	 - int getBufferSize() : 버퍼의 크기를 구한다.
	 - int getRemaining() : 현재 버퍼의 남은 크기를 구한다.
	 - clear() : 버퍼의 내용을 비운다. 만약 버퍼가 이미 플러시 되었다면
	 	IOException을 발생시킨다.
	 - clearBuffer() : 버퍼의 내용을 비운다.
	 - flush() : 버퍼를 플러시 한다.
	 - boolean isAutoFlush() : 버퍼가 다 찼을 때, 자동으로 플러시
	 	할 경우 true를 리턴한다.

 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>out 객체의 메서드 활용!!</h2>
	<%
	// out 객체를 통한 출력 처리
	out.println("안녕하세요!!!");
	%>
	<br>
	<h3> 데이터 출력!!
	<%
	out.println("결과를 나타냅니다!");
	%>
	</h3>
	<h2>buffer 정보 </h2>
	<%--
	# 버퍼 정보의 크기 설정
	1. page지시자로 buffer="크기설정"
	2. autoFlush="true|false"
	# 버퍼 메모리 확인..
	1. 버퍼의 크기 : out.getBufferSize()
	2. 남은 크기 : out.getRemaining()
	3. auto flush여부 : out.isAutoFlush()
	out.getBufferSize()
	out.isAutoFlush()
	
	 --%>
	<h3>버퍼의 크기:<%=out.getBufferSize() %></h3>
	<h3>남은 버퍼의 크기:<%=out.getRemaining() %></h3>
	<h3>auto flush:<%=out.isAutoFlush() %></h3>
	
</body>
</html>