<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, vo_hsw.*, java.text.*" 
%>
<%	request.setCharacterEncoding("utf-8");
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
//course 데이터 수정 후 list 수정
/* ArrayList<Course> couList = (ArrayList<Course>)session.getAttribute("couList");
String cIdx = request.getParameter("cIdx");
if(cIdx!=null){
	int idx = Integer.parseInt(cIdx);
	String mem_id = request.getParameter("mem_id");
	couList.get(idx).setMem_id(mem_id);
	
	String course_title = request.getParameter("course_title");
	couList.get(idx).setCourse_title(course_title);
	
	SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd");
	Date time = new Date();
	String course_inputdate = format1.format(time);
	couList.get(idx).setCourse_inputdate(course_inputdate);
	
	String course_kind = request.getParameter("course_kind");
	couList.get(idx).setCourse_kind(course_kind);
	String course_detail = request.getParameter("course_detail");
	couList.get(idx).setCourse_detail(course_detail);
	
	String strCourse_totCnt = request.getParameter("course_totCnt");
	int course_totCnt = Integer.parseInt(strCourse_totCnt);
	couList.get(idx).setCourse_totCnt(course_totCnt);
	
	String strCourse_price = request.getParameter("course_price");
	int course_price=Integer.parseInt(strCourse_price);
	couList.get(idx).setCourse_totCnt(course_totCnt);
	
	String course_img = request.getParameter("course_img");
	couList.get(idx).setCourse_totCnt(course_totCnt);
	
	String course_opendate = request.getParameter("course_opendate");
	couList.get(idx).setCourse_totCnt(course_totCnt);
	
	response.sendRedirect("Admin_class.jsp");
} */
String cIdxS = request.getParameter("cIdx");
if(cIdxS!=null){
	int cIdx = new Integer(cIdxS);
	db.updateCourse(cIdx);
	Thread.sleep(500);
	response.sendRedirect("Admin_class.jsp");
}




//스토어 데이터 수정 후 list 수정
/* ArrayList<Store> sList = (ArrayList<Store>)session.getAttribute("sList");
String sIdx = request.getParameter("sIdx");
if(sIdx!=null){
	int idx = Integer.parseInt(sIdx);
	
	String mem_id = request.getParameter("mem_id");
	sList.get(idx).setMem_id(mem_id);
	String store_title = request.getParameter("store_title");
	sList.get(idx).setStore_title(store_title);
	String store_code = request.getParameter("store_code");
	sList.get(idx).setStore_code(store_code);
	String store_priceStr = request.getParameter("store_price");
	int store_price = Integer.parseInt(store_priceStr);
	sList.get(idx).setStore_price(store_price);
	String store_totCntStr = request.getParameter("store_totCnt");
	int store_totCnt = Integer.parseInt(store_totCntStr);
	sList.get(idx).setStore_totCnt(store_totCnt);
	String strore_date = request.getParameter("strore_date");
	sList.get(idx).setStrore_date(strore_date);
	String store_img = request.getParameter("store_img");
	sList.get(idx).setStore_img(store_img);
	String store_detail = request.getParameter("store_detail");
	sList.get(idx).setStore_detail(store_detail);
	
	response.sendRedirect("Admin_store.jsp");
} */
String sIdxS = request.getParameter("sIdx");
if(sIdxS!=null){
	int sIdx = new Integer(sIdxS);
	db.updateStore(sIdx);
	Thread.sleep(500);
	response.sendRedirect("Admin_store.jsp");
}


//공지 데이터 삭제 후 list 수정
/* ArrayList<Notice> notiList = (ArrayList<Notice>)session.getAttribute("notiList");
String nIdx = request.getParameter("nIdx");
if(nIdx!=null){
	int idx = Integer.parseInt(nIdx);
	
	String noti_title = request.getParameter("noti_title");
	notiList.get(idx).setNoti_title(noti_title);
	String noti_detail = request.getParameter("noti_detail");
	notiList.get(idx).setNoti_detail(noti_detail);
	String noti_date = request.getParameter("noti_date");
	notiList.get(idx).setNoti_date(noti_date);
	String noti_code = request.getParameter("noti_code");
	notiList.get(idx).setNoti_code(noti_code);

	response.sendRedirect("Admin_notice.jsp");
} */
String nIdxS = request.getParameter("nIdx");
if(nIdxS!=null){
	int nIdx = new Integer(nIdxS);
	db.updateNotice(nIdx);
	Thread.sleep(500);
	response.sendRedirect("Admin_notice.jsp");
}
//문의 데이터 수정 후 list 수정
/* ArrayList<Inquiry> inqList = (ArrayList<Inquiry>)session.getAttribute("inqList");
String iIdx = request.getParameter("iIdx");
if(iIdx!=null){
	int idx = Integer.parseInt(iIdx);
	
	String inquiry_re = request.getParameter("inquiry_re");
	inqList.get(idx).setInquiry_re(inquiry_re);
	
	response.sendRedirect("Admin_inquiry.jsp");
} */
String iIdxS = request.getParameter("iIdx");
if(nIdxS!=null){
	int iIdx = new Integer(iIdxS);
	db.updateNotice(iIdx);
	Thread.sleep(500);
	response.sendRedirect("Admin_inquiry.jsp");
}	




%>




</body>
</html>