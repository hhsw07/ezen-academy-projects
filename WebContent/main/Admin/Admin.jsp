<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.* "
    %>
<%  request.setCharacterEncoding("utf-8");
    String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
ArrayList<Member> memList = new ArrayList<Member>();
Member m01 = new Member("1","himan1","홍길동","7777","M");
Member m02 = new Member("2","himan2","김길동","7778","H");
memList.add(m01);
memList.add(m02);
for(int cnt=3;cnt<=16;cnt++){
	String strCnt = ""+cnt;
	memList.add(new Member(strCnt,"himan3","홍길똥",""+(9800+cnt),"N"));
}
session.setAttribute("memList", memList);

%>

</body>
</html>