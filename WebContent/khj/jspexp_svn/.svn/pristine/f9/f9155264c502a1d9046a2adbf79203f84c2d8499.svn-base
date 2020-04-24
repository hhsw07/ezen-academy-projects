<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
// 요청값을 처리하는 부분..
// 초기 화면에서는 문제을 처리하는 부분으로 동시에 처리한다.
String strNum01 = request.getParameter("num01");
String strNum02 = request.getParameter("num02");
String strReply = request.getParameter("reply");

// js에서 정답이 아닐 때, 유효성 check로 alert()을 처리하기 위해
// boolean 변수 선언..
boolean isNotCorrect=false;
// strReply : 입력한 값을 기준으로 초기 화면인지?
// 입력 후, 화면인지를 구분하여 처리한다.
if(strReply==null){
	// 입력 전 화면이면, 문제를 낸다.
	// strNum01, strNum01에 임의의 구구단 문제을 할당..
	strNum01 = ""+(int)(Math.random()*8+2);	
	strNum02 = ""+(int)(Math.random()*9+1);	
}else{
	// 입력 후 화면으로 문제에 대한 정답과  입력한 값을 비교하여,
	// 요청값이 있기때문에,
	// 문제의 수를 숫자로 변환하여, 비교 처리한다.
	int num01 = Integer.parseInt(strNum01);
	int num02 = Integer.parseInt(strNum02);
	int reply = Integer.parseInt(strReply);
	if(num01*num02!=reply){
		// 정답이 아닐 때는 정답이 아니라고, js에 보내줄 변수를 지정..
		isNotCorrect=true;
	}else{
		// 정답일 때는 특정한 페이지로 이동처리..
		response.sendRedirect("a13_success.jsp");
	}
}
%>
<body>
<h2>구구단 문제</h2>
<form method="post">
	<!-- 초기 화면에 문제 제출 화면 처리.. -->
	<input name="num01" value="<%=strNum01 %>" size="2"/>
	X <input name="num02" value="<%=strNum02 %>"  size="2"/>
	= <input name="reply"   size="2" /><br>
	<input type="submit" value="입력완료!"/>
</form>
</body>
<script type="text/javascript">
	// 정답 여부를 check해주는 js 처리..
	var isNotCorrect = <%=isNotCorrect%>;
	if( isNotCorrect ){
		alert("정답이 아닙니다. 다시 시도하세요!");
	}

</script>
</html>