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
<title>하비팩토리 - 취미를 통해 일상을 가꾸자</title>
</head>

<body>
<%
// Member 데이터 삭제 후 list 수정
ArrayList<Member> memList = (ArrayList<Member>)session.getAttribute("memList");
String mIdx = request.getParameter("mIdx");
if(mIdx!=null){
memList.remove(Integer.parseInt(mIdx));
session.setAttribute("memList", memList);
response.sendRedirect("Admin_mem.jsp");
}

//course 데이터 삭제 후 list 수정
ArrayList<Course> coList = (ArrayList<Course>)session.getAttribute("coList");
String cIdx = request.getParameter("cIdx");
if(cIdx!=null){
coList.remove(Integer.parseInt(cIdx));
session.setAttribute("coList", coList);
response.sendRedirect("Admin_class.jsp");
}

//스토어 데이터 삭제 후 list 수정
ArrayList<Store> sList = (ArrayList<Store>)session.getAttribute("sList");
String sIdx = request.getParameter("sIdx");
if(sIdx!=null){
sList.remove(Integer.parseInt(sIdx));
session.setAttribute("sList", sList);
response.sendRedirect("Admin_store.jsp");
}

//공지 데이터 삭제 후 list 수정
ArrayList<Notice> notiList = (ArrayList<Notice>)session.getAttribute("notiList");
String nIdx = request.getParameter("nIdx");
if(nIdx!=null){
notiList.remove(Integer.parseInt(nIdx));
session.setAttribute("notiList", notiList);
response.sendRedirect("Admin_notice.jsp");
}

//문의 데이터 삭제 후 list 수정
ArrayList<Inquiry> inquList = (ArrayList<Inquiry>)session.getAttribute("inquList");
String iIdx = request.getParameter("iIdx");
if(iIdx!=null){
inquList.remove(Integer.parseInt(iIdx));
session.setAttribute("inquList", inquList);
response.sendRedirect("Admin_inquiry.jsp");
}




%>

</body>
</html>