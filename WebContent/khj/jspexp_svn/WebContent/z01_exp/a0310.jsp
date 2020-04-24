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
String id= request.getParameter("id");
boolean hasMemember=false;
if(id!=null){
	if(id.equals("himan")){
		hasMemember=true;
		id="";
	}
}else{
	id="";
}
%>
<script type="text/javascript">
	var hasMemember = <%=hasMemember%>;
	var id = "<%=id%>";
	if( hasMemember ){
		alert("등록된 아이디가 있음\n다시 등록하세요!");
	}else{
		if(id!=""){
			alert("등록 가능한 아이디 입니다!");
		}
	}
</script>
<body>
<!-- 
3. 회원등록에서 등록된 id일때, 다시 등록 하라고 메시지를 처리
할 때, request 객체를 이용해서 처리하세요. 
 id:[     ][등록여부확인]
 -->
<form method="post">
id:<input type='text' name="id" value="<%=id%>"/>
<input type="submit" value="등록여부확인"/>
</form>
</body>
</html>