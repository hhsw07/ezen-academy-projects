<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    import="java.net.URLEncoder"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
# 쿠키(Cookie)
1. 쿠키는 웹브라우저가 보관하고 있는 데이터로서
웹 서버에 요청을 보낼 때 함께 전송한다.
	1) 쿠키의 생성는 웹서버에서 시작 되고, response객체에
		쿠키 생성할 것을 탑재하여 클라이언트에 보낸다.
	2) 클라이언트는 사용하는 브라우저를 통해, 쿠키값을
		받아 특정한 쿠키저장소에 저장한다.
	3) 다시 웹서버에 접속해서 클라이언트가 가지고 있는 쿠키를
		request객체에 의해서 전달하고, 웹서버 프로그램은
		이것을 기준으로 클라이언트를 식별하고 데이터를 
		받을 수 있다.
2. 쿠키의 구성
	1) 쿠키는 이름, 값, 유효시간, 도메인, 경로로 구성한다.
	2) 쿠키 이름을 아스키 코드의 알파벳과 숫자만을 포함할
		수 있다.
	3) 콤마, 세미콜론, 곰백 등의 문자는 포함할 수 없다.
	4) $로 시작할 수 없다.
	
3. 쿠키의 생성과 읽기
	1) Cookie c01 = new Cookie("쿠키의이름","쿠키의값");
	2) response.addCookie(co01); //서버가 클라이언트에 전달
	3) Cookie[] cookies= request.getCookies()
		클라이언트에서 전달된 쿠키를 서버가 request 객체를  
		통해서 확인한다
	4) 쿠키의 주요 메서드.
		getName() : 쿠키의 이름을 구한다.
		getValue() : 쿠키의 값을 구한다.
4. 쿠키의 삭제 
	1) 	Cookie의  속성 설정.
		setMaxAge(0) : 쿠키의 생성 시간 설정.
		response.addCookie(cookie) 쿠키 만료시간이 0인것을
			client에 전송한다.
5. 쿠키의 식별 이름 설정.(domain)
	1) setDomain("쿠키의 도메인명 설정")
6. 쿠키의 이름과 값의 한글화 처리..
	1) 설정시 
		import="java.net.URLEncoder 
		URLEncoder.encode("쿠키설정key나 값","utf-8")
		를 통해서 encode를 처리후,
		ex) new Cookie( URLEncoder.encode("홍길동","utf-8"),
						URLEncoder.encode("서울신림동","utf-8"));
	2) 쿠키값을 가져올 때.
		import="java.net.URLDecoder 
		URLDecoder.decode("저장된쿠키값","utf-8")
		ex) for(Cookie ck : request.getCookies()){
				String name=URLDecoder.decode( ck.getName(),"utf-8" );
				String value=URLDecoder.decode( ck.getValue(),"utf-8" );
			}
					
		
--%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--쿠키의 생성!! --%>
<%
Cookie ck01 = new Cookie("name","himan");
response.addCookie(ck01);
Cookie ck02 = new Cookie("age","25");
response.addCookie(ck02);
Cookie ck03 = new Cookie( URLEncoder.encode("홍길동","utf-8"),
						  URLEncoder.encode("서울신림동","utf-8"));
ck03.setDomain("address.com");
response.addCookie(ck03);


%>
<h2>생성된 쿠키(서버 --> 클라이언트)</h2>
<h3><%=ck01.getName() %>  - <%=ck01.getValue()%></h3>
<h3><%=ck02.getName() %>  - <%=ck02.getValue()%></h3>
<table>
	<tr onclick="goCookie(0);"><td>쿠키 확인하러가기!!(0)</td></tr>
	<tr onclick="goCookie(1);"><td>쿠키 확인하러가기!!(1)</td></tr>
</table>
<script type="text/javascript">
	function goCookie(num){
		location.href="a02_showCookies.jsp?num="+num;
	}

</script>
</body>
</html>




