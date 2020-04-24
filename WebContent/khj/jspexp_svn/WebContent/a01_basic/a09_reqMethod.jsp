<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
// post 방식에서 요청값에 대한 한글 encoding 처리..
String path = request.getContextPath();
// 기본 경로를 설정처리..
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%--
# request 기본 객체의 주요 메서드
0. 클라이언트에서 서버에 특정 정보를 전달할 때, 사용되는
	요청 객체..
1. 기본 url 기준으로 서버의 정보 확인..
	http://localhost:5080/jspexp/a01_basic/a09_reqMethod.jsp
	http://192.168.0.77:5080/jspexp/a01_basic/a09_reqMethod.jsp
2. 주요 메서드(일반)
	1) getRemoteAddr() : 웹 서버에 연결한 IP 주소(client)를 구한다.
		게시판이나 방명록 등에서 글 작성자의 ip주소가 자동으로
		입력되기도 하는데, 이 때 입력된느 ip주소가 이 메서드를
		사용하여 구한 것.	(서버에 접속한 client 주소를 확인할 수 있다!)
		http://211.238.140.48:5080/jspexp/a01_basic/a09_reqMethod.jsp
		ex) 현재 서버에 접속한 client정보를 확인할 때, 사용된다.
	2) getMethod : 웹 브라우저가 정보를 접속할 때, 사용하는 방식(get/post)
		ex) url을 통해서 페이지접속(GET), <form method="get">
			<form method="post"> 요청값 전달은 post
			전송 데이터가 body에서 숨겨져 있고, 요청값을 무제한 전달할 수 있다.
	3) getRequestURI() : 웹 브라우서자 요청한 url 자원의 경로
		ex) 211.238.140.48
#	4) getContextPath() : jsp 페이지가 속한 웹 애플리케이션의 컨텍스트
		경로를 구한다.
		일반적을 String path = getContextPath(); 로 선언하여,
		path는 web 서버의 프로젝트 명이 나타나고, 이것을 이용해서.
		WebContent 하위의 경로로 설정하여 사용할 수 있다.
		이 경로 기준으로 하위에 WebContent에 있는 하위 폴드의 자원을 접근
			할 수 있다.
	5) getServerName() : 연결할 때, 사용한 서버 이름을 구한다.
		host이름, 또는 도메인명
	6) getServerPort() : 서버가 실행 중인 포트 번호를 구한다.			
3. 주요 메서드(매개변수)
	1) getParameter(String name) : 이름이 name인 파라미터의 값을
		구한다. 존재하지 않을 경우 null을 리턴한다.
		ex) http://211.238.140.48:5080/jspexp/a01_basic/
		a09_reqMethod.jsp?id=himan&pass=7777
		id=himan&pass=7777 : 요청값을 받거나.
		form 하위의 객체
			name="id" value="himan"
			name="pass" value="7777"
		request.getParamter("id") : "himan"일 할당되어 있음.	
		request.getParamter("pass") : "7777"일 할당되어 있음.	
		
	2) getParameterValues(String name) : 이름이 name인 모든
		파라미터의 값을 배열로 구한다. 존재하지 않는 경우 null을
		리턴한다.
		같은 요청이름으로 여러개의 값을 받을 때, 사용된다.
		문자열 배열로 받아서 값을 받게 된다. 	
		?chFruit=사과&chFruit=바나나&chFruit=딸기
		String []chFruits=request.getParameterValue("chFruit")
		<form
			<input type="checkbox" name="ckFruit" value="사과" checked/>
			<input type="checkbox" name="ckFruit" value="바나나" checked/>
			<input type="checkbox" name="ckFruit" value="딸기" checked/>
			<input type="checkbox" name="ckFruit" value="수박"/>
			<input type="checkbox" name="ckFruit" value="오렌지"/>
		위 내용중에 checked가 된 checkbox만 배열의 값을 입력을 
		다음 페이지에서 처리된다.		
		
	3) getParameterNames() : 웹 브라우저가 전송한 파라미터의 이름을 
		구한다. return값 java.util.Enumeration
		form하위에 있는 모든 key값을 보내고,
	4) getParameterMap() : 웹 브라우저가 전송한 파라미터의 맵을 구한다.
		맵은 <파라미터 이름, 값>쌍으로 구성된다.
		form하위에 있는 모든 keyvalue의 Map을 보낸다.	
		
 --%>
 <%
System.out.println("접속자:"+request.getRemoteAddr()
	+"/"+request.getMethod()+"/"+request.getRequestURI());
System.out.println("경로(context):"+request.getContextPath());
 
 %>
<body>
	<h2>request의 기본 메서드 들!!</h2>
	<h4>request.getRemoteAddr():<%=request.getRemoteAddr() %></h4>
	<h4>request.getMethod():<%=request.getMethod() %></h4>
	<h4>request.getRequestURI():<%=request.getRequestURI() %></h4>
	<h4>request.getContextPath():<%=request.getContextPath() %></h4>
	<h4>request.getServerName():<%=request.getServerName() %></h4>
	<h4>request.getServerPort():<%=request.getServerPort() %></h4>
	<a href="<%=path%>/a01_basic/a01_pageLoading.jsp">첫화면이동</a>
	<img src="<%=path%>/a00_img/img01.jpg" width="100" 
		height="100"/><br>
	<!-- 	
	<form method="post">
		요청1:<input name="product"/><br>
		요청2:<input name="product"/><br>
		요청3:<input name="product"/><br>
		요청4:<input name="product"/><br>
		<input type="submit"/>
	</form>
	 -->
	<form method="post">
		요청1:<input type="checkbox" name="product" value="사과"/>사과<br>
		요청2:<input type="checkbox" name="product" value="바나나"/>바나나<br>
		요청3:<input type="checkbox" name="product" value="딸기"/>딸기<br>
		요청4:<input type="checkbox" name="product" value="오렌지"/>오렌지<br>
		<input type="submit"/>
	</form>	 	
	<!-- 
	type의 checkbox와 요청값 처리..
	모든 check형식의 데이터는 checked가 되어 있을 때,
	요청값을 전달한다. check가 false이면 요청값 자체가
	전달되지 않는다..
	
	 -->
	<h2>요청값 결과 내용</h2>
	<%
	// 다중의 요청값에 대한 처리 request.getParameterValues("다중요청이름")
	String products[] = request.getParameterValues("product");
	if(products!=null){
		for(String prod:products){
			System.out.println("요청값 확인"+prod);
	%>
		<h4><%=prod %></h4>
	<%		
		}
	}
	%>	
	
</body>
</html>








