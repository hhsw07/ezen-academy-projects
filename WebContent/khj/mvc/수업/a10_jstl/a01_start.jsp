<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
# JSTL
1. jsp Standard Tag Library : 널리 사용되는 커스텀 태그를
표준으로 만든 태그 라이브러리
2. jstl의 환경 설정.
	1) WebContent\WEB-INF\lib에 jstl-1.2.jar 추가
	2) tag lib를 상단에 선언..
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
3. jstl의 핵심 tag 종류
	1) core  : <c:XXX /> 변수지원, 흐름제어 url처리
	2) fmt   : <fmt:XXX /> 지역, 메시지 형식, 숫자 및 날짜 형식..
	3) x(xml 코어), sql(데이터베이스), fn(함수)	

4. 활용
	1) 변수 설정
		el 변수 값 설정.
		<c:set var="변수명" value="값"  scope="session범위" />
		선언된 변수는 el로 호출할 수 있다. ${변수명}	
	2) 객체의 값의 변경.
		<c:set target="객체명" 
			property="프로퍼터이름/set메서드명" value="할당할값"/>
			
			
		${객체명.프로퍼티명}
	3) 조건문 처리.
		- 단일조건문
		<c:if test="boolean">
			boolean이 true일 때, 수행할 내용..
		</c:if>	
		- 다중조건문
		<c:choose>
			<c:when test="조건1인경우">조건1이 true일때,</c:when>
			<c:when test="조건2인경우">조건2가 true일때,</c:when>
			<c:when test="조건3인경우">조건3이 true일때,</c:when>
			<c:otherwise>위에 조건을 제외한 나머지..</c:otherwise>
		</c:choose>		
 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
	<c:set var="name" value="홍길동" />
	<h2>저장된 이름: ${name}</h2>
	<jsp:useBean id="bk" 
		class="jspexp.z01_vo.Book" scope="session"/>
	<!-- 객체의 값의 변경.. -->	
	<c:set target="${bk}" property="title" value="jsp 시작"/>
	<h2>객체의 저장된 property : ${bk.title}</h2>
	<!-- 
	ex1) jstl을 이용해서 숫자 num01, num02  사칙연산 결과를 
		sum1, sum2, sum3, sum4 변수에 할당하여 출력하세요.
	ex2) 물건의 이름, 가격, 갯수를 useBean으로 객체를 선언하고,
		jstl로 property를 변경하여 저장된 내용을 el로 출력하세요.
	 -->
	<c:set var="num01" value="25"/> 	
	<c:set var="num02" value="5"/> 	
	<c:set var="sum1" value="${num01+num02}"/>
	<c:set var="sum2" value="${num01-num02}"/>
	<c:set var="sum3" value="${num01*num02}"/>
	<c:set var="sum4" value="${num01/num02}"/>
	<h3>할당된 변수</h3>
	<h4>${num01} + ${num02} = ${sum1}</h4>
	<h4>${num01} - ${num02} = ${sum2}</h4>
	<h4>${num01} * ${num02} = ${sum3}</h4>
	<h4>${num01} / ${num02} = ${sum4}</h4>
	<jsp:useBean id="prod" class="jspexp.z01_vo.Product"/>
	<c:set target="${prod}" property="name" value="사과"/>	
	<c:set target="${prod}" property="price" value="3000"/>	
	<c:set target="${prod}" property="cnt" value="2"/>	
	<h4>물건명:${prod.name}</h4>		
	<h4>가격:${prod.price}</h4>		
	<h4>갯수:${prod.cnt}</h4>	
	<c:if test="${prod.price*prod.cnt >=6000 }">
		<h4>5000이상이면 1+1행사입니다.</h4>
	</c:if>
	<form method="post">
		<input name="num01" value="${Math.random()*8+2}" size="2"/> X
		<input name="num02" value="${Math.random()*9+1}" size="2"/> =
		<input name="sum" value=""  size="2"/> 
		<input type="submit" value="입력"/>
	</form>
	<h2>
		<c:if test="${param.sum==(param.num01*param.num02)}">
			빙고!!!
		</c:if>
	</h2>
	<h2>
		<c:choose>
			<c:when test="${param.sum==(param.num01*param.num02)}">
				정답입니다.
			</c:when>
			<c:otherwise>
				오답입니다.
			</c:otherwise>		
		</c:choose>
	</h2>
	<!-- ex) 점수를 입력하세요..  A, B, C, D, E, F 평가 처리
			 choose when 활용 평가 단위
			 if 활용 70이상일 때, 합격 출력.. -->
	<form method="post">
		점수:<input name="point" size="3"/>
		<input type="submit" value="입력"/>
	</form>	
	<c:if test="${not empty param.point }">	 
		<h3>입력한 점수:${param.point}, 평가:
			<c:choose>
				<c:when test="${param.point>=90 }">A등급</c:when>
				<c:when test="${param.point>=80 }">B등급</c:when>
				<c:when test="${param.point>=70 }">C등급</c:when>
				<c:when test="${param.point>=70 }">D등급</c:when>
				<c:otherwise>F등급</c:otherwise>
			</c:choose>,
			<c:if test="${param.point>=70 }">
				합격
			</c:if>
		</h3>
	</c:if>
</body>
</html>




