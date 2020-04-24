<!-- 최상단에  jsp 페이지에 대한 설정 정보를 선언
1. @ page : 페이지에 대한 선언 Directive라고 한다..
	1) 프로그래밍 언어,
	2) 화면 출력형식:contentType
	3) 문자의 encoding방식 : pageEncoding
2. html 코드를 기반으로 하고,
3. 스크립트릿(scriptlet), 표현식(expression), 선언부(Declaration)를 
	통해서 java 코드가 삽입되어 진다.
4. 이 내용을 servlet형식의 자바 클래스로 만들어서, 컴파일과 실행 후, 결과 html을
	만든 후, 	요청한 곳에 stream방식으로 파일을 전송해서 브라우저에서 볼 수 있게
	된다.	
 -->
<!-- 
# 디렉티브(Directive)
1. jsp페이지에 대한 설정 정보를 지정한다.
2. 디렉티브 구문
	1) 형식 %@ 디렉티브이름 속성=속성값  속성=속성값
3. 제공 디렉티브이름
	1) page :jsp 페이지에 대한 정보를 지정.
		- 문서의 타입, 출력 버퍼의 크기, 에러 페이지 등 정보 지정.
	2) taglib : 사용할 태그 라이브러리를 지정.
		ex) %@ taglib uri="@@@.@@"
	3) include : 다른 페이지를 포함할 때 지정 처리.
		ex) %2 include file="##.jsp"
# 스크립트 요소
1. 동적으로 출력 결과를 생성하기 위해 사용
2. 스크립트 요소
	1) 표현식(Expression) - 변수를 통해 값을 출력 ex) %=변수명
	2) 스크립트릿(Scriptlet) - 자바 코드를 실행 ex) %  %를 선를
		선언하여, 자바의 변수를 선언하거나, 조건 반복문들의 로직을
		수행..
	3) 선언부(Declaration) - 자바 메서드(함수)를 정의
		ex) %! % 사이에 선언..
# 기본 내장 객체(implicit object)
	1) 웹 프로그래밍에 필요한 기능을 제공하는 객체
	2) jsp에서 별도 선언 없이 사용 가능..
	3) 주요 기본 객체
		- request : 요청 정보를 구할 때, 사용
		- response : 응답과 관련된 설정시 사용
		- out : 직접 응답을 출력할 때 사용
		- session : 세션 관리에 사용
 --> 
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 

	int plus(int num01, int num02){
		return num01+num02;
	}

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
// 자바 코드가 들어가는 block으로 scriptlet이라고 한다.
	String pname = "사과";
	int price = 2500;
	int cnt = 5;
	// request를 객체 생성 없이 바로 사용할 수 있는 이유가.
	// 이 .jsp파일 service 메서드를 통해서..
// 			protected void service(HttpServletRequest request,
//						HttpServletResponse response)
// 		으로 코드 block를 가지고 있기 때문에다.
//     내장된 객체를 많이 활용할 수 있다.
	session.setAttribute("id", "홍길동");
	
	String name = request.getParameter("name");
	
%>
<body>
	<h2>물건명:<%=pname%></h2><!-- 화면에 출력처리하는 expression 영역.. -->
	<h2>가격:<%=price%></h2>
	<h2>갯수:<%=cnt%></h2>
	<h2>총계:<%=price*cnt%></h2>
	<h3>함수호출:<%=plus(25,30)%></h3>
</body>
</html>





