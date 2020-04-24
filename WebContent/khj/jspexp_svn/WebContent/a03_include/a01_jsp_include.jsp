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
<%--
#<jsp:include> 액션 태그
1. 다른 jsp 페이지의 실행결과를 현재 위치에 삽입하여 처리한다.
	1) jsp파일 따로 컴파일 하여 포함 시키는 처리를 하기 때문에
		<%@ include file="" %>과 차이가 있다.
	2) 컴파일되어 처리하는 servlet 단위가 다르기 때문에, 해당 페이지에
		데이터를 넘기는 처리도 각각 요청값으로 전송하고, 요청값을
		받는 방식으로 입력 처리된다.
2. 동작방식
	1) main.jsp에 포함된, <jsp:include>가 실행되면 지정된 페이지로
	요청 흐름이 이동된다. 해당 페이지가 처리하고 다시, <jsp:include>
	이후로 페이지가 처리된다.
3. 기본 활용
	1) 구문 : <jsp:include page="포함할 페이지" flush="true" />
	2) flush 속성 : 지정한 jsp페이지를 실행하기 전에 출력 버퍼를
	플러시 할 지의 여부를 지정한다. true이면 출력 버퍼를 플러시하고,
	false이면 하지 않는다.
	3) 포함된 내부 페이지에 데이터의 전달.
		<jsp:param> 액션 태그를 이용해서 해당 페이지에 데이터를
		전달할 수 있다. name="전달될요청key" value="전달될값"
		ex)
		<jsp:include page="top.jsp" flush="false">
			<jsp:param name="param1" value="value1"/>
		</jsp>
		==> top.jsp?param1=value1 와  동일하게 해당 페이지에
		데이터를 전송한다.
	4) 포함된 페이지(top.jsp)는 위와 같은 요청값을 
	    request.getParameter("param1")
		로 데이터를 받을 수 있다.		 
 --%>
<body>
	<%--상단 페이지 --%>
	<%-- 해당 페이지로 요청값 전송 --%>
	<jsp:include page="a01_top.jsp">
		
		<jsp:param value="홍길동" name="name01"/>
	
	</jsp:include>	
	<h2>안녕하세요 메인 페이지 입니다.</h2>
	<h3>주 메인 페이지 내용..</h3>
	<jsp:include page="a02_bottom.jsp"></jsp:include>
<%--
ex) 전형적인 board 형태의 화면에 각 데이터가 전송되게 처리하세요..
상단에 아이디 부분은 현재 main에서 전송하여 처리하게 하고,
왼쪽 메뉴도 전자/잡화/식품류/관리  중에 메인헤서 전송한 데이터를 선택하세
처리하세요. 페이지는 main포함 총3개..   
a03_main.jsp  a03_top.jsp  a03_left.jsp
--------------------
상단 포함      @@@님로그인
--------------------
 왼쪽 |
 메뉴 |   메인내용
     |
     |
     |



 --%>
	
	
</body>
</html>

















