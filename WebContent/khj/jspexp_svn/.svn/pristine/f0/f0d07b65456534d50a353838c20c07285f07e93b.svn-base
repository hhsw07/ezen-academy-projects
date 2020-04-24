<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--ex) form 회원 정보 등록  
		id:[    ]
		[등록] --클릭시,
		@@@님  회원등록했습니다. 출력되게 처리:request객체 이용
-->
<h2>회원 정보 등록</h2>
<form>
	id:<input type="text" name="id"/><br>
	<input type="submit" value="등록"/>
</form>		
<%
	String id=request.getParameter("id");
	if(id!=null){
%>
	<h2><%=id%>님  회원등록했습니다.</h2>
<%} %>
<!--		
	ex) 상품 등록
		상품명:[   ]
		가격:[   ]
		[등록]
		@@@ 물건 @@@원 물품 등록되었습니다.
-->
<h2>상품 등록</h2>
<form>
	상품명:<input type="text" name="pname"/><br>
	가격:<input type="text" name="price"/><br>
	<input type="submit" value="등록"/>
</form>
<%
	String pname=request.getParameter("pname");
	String strPrice = request.getParameter("price");
	int price=0;
	if(strPrice!=null) price= Integer.parseInt(strPrice);
	if(pname!=null){
%>
	<h2><%=pname%> 물건 <%=price%>원 물품 등록되었습니다.</h2>
<%
}%>
<!-- 		
	ex) 계산기
		첫번째 숫자 : [   ]
		두번째 숫자 : [   ]
		[덧셈] 클릭시   hint) Integer.parseInt()활용
		@@ + @@ = @@  
	ex) 	
 -->
<h2>계산기</h2>
<form>
첫번째 숫자:<input type="text" name="num01"/><br>
두번째 숫자:<input type="text" name="num02" /><br>
<input type="submit" value="덧셈"/>
</form> 
<%
	String strNum01 = request.getParameter("num01");
	String strNum02 = request.getParameter("num02");
	int num01=0;
	if(strNum01!=null) num01=Integer.parseInt(strNum01);
	int num02=0;
	if(strNum02!=null) num02=Integer.parseInt(strNum02);
	if(strNum01!=null&&strNum02!=null){
%> 
	<h2><%=num01%> + <%=num02 %> = <%=num01+num02 %></h2>
<%} %> 
<!-- 
form 하위의 여러 데이터를 확인 처리하세요..
	type="radio"   단일 선택
	type="checkbox" 다중 선택
	select
	textarea
ex) 다양한 회원 가입 폼 처리
 id
 pass
 이름
 성별 단일선택. radio
 사는 지역 select
 취미 다중선택,checkbox   String favor[]=request.getParamterValues 활용..
 기타 할말 textarea
 [회원 등록] 클릭시,
 해당 페이지에 회원 정보 출력
 	
 -->





</body>
</html>