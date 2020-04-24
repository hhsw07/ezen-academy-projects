<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspexp.z01_vo.Product"%>
<%-- import사용(src기준으로 특정 클래스를 호출하여 객체로 사용가능하다)
1. import="패키지명.클래스명,패키지명.클래스명" : 해당 클래스명을 (,) 구
	분자로 나열하여 사용 가능
2. import="패키지명.*" : 해당 패키지에 있는 모든 클래스를 사용 가능	
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%

String name = request.getParameter("name");
// 초기 화면에 요청값이 없을 때는 default로 name을 "" 문자열로 처리.
if(name==null) name="";
String priceStr = request.getParameter("price");
int price=0;
// price의 요청값이 없을 때는  price=0으로 하고,
// 있을 때는 숫자형 문자열을 숫자로 변환하여 price로 할당하여 처리한다.
if(priceStr!=null) price=Integer.parseInt(priceStr);
String cntStr = request.getParameter("cnt");
int cnt = 0;
if(cntStr!=null) cnt=Integer.parseInt(cntStr);


Product p01 = new Product(name, price,cnt);

%>
<body>
<!-- 
vo 클래스로 물건명 가격 갯수를 선언하고,
jsp 호출하여 구매물품, 가격, 갯수를 출력 처리하세요.
?name=사과&price=3000&cnt=2
 -->
	<h2>구매물품 내역</h2>
	<h3>물건명:<%=p01.getName() %></h3>
	<h3>가격:<%=p01.getPrice() %></h3>
	<h3>갯수:<%=p01.getCnt() %></h3>
	<h3>총계:<%=p01.getPrice()*p01.getCnt() %></h3>
	
	
	
	
	
</body>
</html>







