<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*, java.text.*" 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%

//course 데이터 수정 후 list 수정
ArrayList<Course> coList = (ArrayList<Course>)session.getAttribute("coList");
String cIdx = request.getParameter("cIdx");
int idx = Integer.parseInt(cIdx);
if(cIdx!=null){
	String mem_id = request.getParameter("mem_id");
	coList.get(idx).setMem_id(mem_id);
	
	SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd");
	Date time = new Date();
	String course_inputdate = format1.format(time);
	coList.get(idx).setCourse_inputdate(course_inputdate);
	
	String course_kind = request.getParameter("course_kind");
	coList.get(idx).setCourse_kind(course_kind);
	String course_detail = request.getParameter("course_detail");
	coList.get(idx).setCourse_detail(course_detail);
	
	String strCourse_totCnt = request.getParameter("course_totCnt");
	int course_totCnt = Integer.parseInt(strCourse_totCnt);
	coList.get(idx).setCourse_totCnt(course_totCnt);
	
	String strCourse_price = request.getParameter("course_price");
	int course_price=Integer.parseInt(strCourse_price);
	coList.get(idx).setCourse_totCnt(course_totCnt);
	
	String course_img = request.getParameter("course_img");
	coList.get(idx).setCourse_totCnt(course_totCnt);
	
	String course_opendate = request.getParameter("course_opendate");
	coList.get(idx).setCourse_totCnt(course_totCnt);
	
	response.sendRedirect("Admin_class.jsp");
}

//스토어 데이터 삭제 후 list 수정
ArrayList<Store> sList = (ArrayList<Store>)session.getAttribute("sList");
String sIdx = request.getParameter("sIdx");
if(sIdx!=null){
sList.remove(Integer.parseInt(sIdx));
session.setAttribute("sList", sList);
}

//공지 데이터 삭제 후 list 수정
ArrayList<Notice> notiList = (ArrayList<Notice>)session.getAttribute("notiList");
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


%>




</body>
</html>