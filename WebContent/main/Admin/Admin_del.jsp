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
// Member 데이터 삭제 후 list 수정
ArrayList<Member> memList = (ArrayList<Member>)session.getAttribute("memList");
String mIdx = request.getParameter("mIdx");
if(mIdx!=null){
memList.remove(Integer.parseInt(mIdx));
session.setAttribute("memList", memList);
}

//course 데이터 삭제 후 list 수정
ArrayList<Course> coList = (ArrayList<Course>)session.getAttribute("coList");
String cIdx = request.getParameter("cIdx");
if(cIdx!=null){
coList.remove(Integer.parseInt(cIdx));
session.setAttribute("coList", coList);
}

//스토어 데이터 삭제 후 list 수정
ArrayList<Store> sList = (ArrayList<Store>)session.getAttribute("sList");
String sIdx = request.getParameter("sIdx");
if(sIdx!=null){
sList.remove(Integer.parseInt(sIdx));
session.setAttribute("sList", sList);
}

//공지 데이터 삭제 후 list 수정
ArrayList<Noti> notiList = (ArrayList<Noti>)session.getAttribute("notiList");
String nIdx = request.getParameter("nIdx");
if(nIdx!=null){
notiList.remove(Integer.parseInt(nIdx));
session.setAttribute("notiList", notiList);
}

//문의 데이터 삭제 후 list 수정
ArrayList<Inquiry> inquList = (ArrayList<Inquiry>)session.getAttribute("inquList");
String iIdx = request.getParameter("iIdx");
if(iIdx!=null){
inquList.remove(Integer.parseInt(iIdx));
session.setAttribute("inquList", inquList);
}



response.sendRedirect("Admin_mem.jsp");
%>

</body>
</html>