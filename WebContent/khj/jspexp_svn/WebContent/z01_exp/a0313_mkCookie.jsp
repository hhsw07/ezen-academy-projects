<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,
    	java.net.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
추가할 품목[   ][등록][전체삭제]
 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String type=request.getParameter("type");
// 초기화면이 아닐 때,
if(type!=null){
	System.out.println("받은 값:"+type);
	if(type.equals("reg")){
		// 쿠키 등록..
		String prod= request.getParameter("prod");
		if(prod!=null&!prod.equals("")){
			Cookie ck = new Cookie(
				URLEncoder.encode(prod,"utf-8"),"prod");
			response.addCookie(ck);
		}
	}
	if(type.equals("show")){
		Cookie[] ckies = request.getCookies();
%>
		<h2>현재 등록 물건 현황</h2>
<%
		for(Cookie ck:ckies){
			if(!ck.getName().equals("JSESSIONID")){
%>
			<%=URLDecoder.decode(ck.getName()) %> - <%=ck.getValue()%><br>
		<%	}	
			
		}
	}
	if(type.equals("del")){
		for(Cookie c:request.getCookies()){
			c.setMaxAge(0);
			response.addCookie(c);
		}
	}
	
	
}
%>
<form method="post">
추가할 품목:<input type="text" name="prod" size="5"/>
<input type="button" value="등록" id="regBtn"/>
<input type="button" value="등록물품확인" id="showBtn"/>
<input type="button" value="등록물품삭제" id="delBtn"/>
<!-- 보이지는 않지만 요청값으로 중요한 정보를 넘길 때,
type="hidden"으로 한다. 등록/삭제를 구분하여 넘길 때, 사용된다. -->
<input type="hidden" name="type" value="reg"/>
</form>
</body>
<script type="text/javascript">
	var regBtn= document.querySelector("#regBtn");
	var delBtn= document.querySelector("#delBtn");
	var showBtn= document.querySelector("#showBtn");
	regBtn.onclick=function(){
		// form에 있는 모든 내용을 전송할 때, submit버튼 클릭과 동일한 효과.
		document.forms[0].submit();
		// 화면에 있는 form중에 첫번째 것을 submit처리..
	};
	delBtn.onclick=function(){
		document.querySelector("[name=type]").value="del";
		document.forms[0].submit();
	};
	showBtn.onclick=function(){
		document.querySelector("[name=type]").value="show";
		document.forms[0].submit();
	};	
</script>
</html>