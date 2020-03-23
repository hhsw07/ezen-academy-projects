<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*, vo_hsw.* "
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
A01_Admin db = new A01_Admin();

// Member 데이터 삭제 후 list 수정
/* ArrayList<Member> memList = (ArrayList<Member>)session.getAttribute("memList");
String mIdx = request.getParameter("mIdx");
if(mIdx!=null){
memList.remove(Integer.parseInt(mIdx));
session.setAttribute("memList", memList);
response.sendRedirect("Admin_mem.jsp");
} */

String mIdxS = request.getParameter("mIdx");
if(mIdxS!=null){
	int mIdx = new Integer(mIdxS);
	db.deleteMem(mIdx);
	Thread.sleep(500);
	response.sendRedirect("Admin_mem.jsp");
}



//course 데이터 삭제 후 list 수정
/* ArrayList<Course> coList = (ArrayList<Course>)session.getAttribute("couList");
String cIdx = request.getParameter("cIdx");
if(cIdx!=null){
coList.remove(Integer.parseInt(cIdx));
session.setAttribute("couList", coList);
response.sendRedirect("Admin_class.jsp");
} */
String cIdxS = request.getParameter("cIdx");
if(cIdxS!=null){
	int cIdx = new Integer(cIdxS);
	db.deleteCou(cIdx);
	Thread.sleep(500);
	response.sendRedirect("Admin_class.jsp");
}


//스토어 데이터 삭제 후 list 수정
/* ArrayList<Store> sList = (ArrayList<Store>)session.getAttribute("sList");
String sIdx = request.getParameter("sIdx");
if(sIdx!=null){
sList.remove(Integer.parseInt(sIdx));
session.setAttribute("sList", sList);
response.sendRedirect("Admin_store.jsp");
} */
String sIdxS = request.getParameter("sIdx");
if(sIdxS!=null){
	int sIdx = new Integer(sIdxS);
	db.deleteStore(sIdx);
	Thread.sleep(500);
	response.sendRedirect("Admin_store.jsp");
}


//공지 데이터 삭제 후 list 수정
/* ArrayList<Notice> notiList = (ArrayList<Notice>)session.getAttribute("notiList");
String nIdx = request.getParameter("nIdx");
if(nIdx!=null){
notiList.remove(Integer.parseInt(nIdx));
session.setAttribute("notiList", notiList);
response.sendRedirect("Admin_notice.jsp");
} */
String nIdxS = request.getParameter("nIdx");
if(nIdxS!=null){
	int nIdx = new Integer(nIdxS);
	db.deleteNot(nIdx);
	Thread.sleep(500);
	response.sendRedirect("Admin_notice.jsp");
}


//문의 데이터 삭제 후 list 수정
/* ArrayList<Inquiry> inqList = (ArrayList<Inquiry>)session.getAttribute("inqList");
String iIdx = request.getParameter("iIdx");
if(iIdx!=null){
	inqList.remove(Integer.parseInt(iIdx));
session.setAttribute("inqList", inqList);
response.sendRedirect("Admin_inquiry.jsp");
} */
String iIdxS = request.getParameter("iIdx");
if(iIdxS!=null){
	int iIdx = new Integer(iIdxS);
	db.deleteInq(iIdx);
	Thread.sleep(500);
	response.sendRedirect("Admin_inquiry.jsp");
}



%>

</body>
</html>