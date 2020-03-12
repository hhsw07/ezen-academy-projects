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
	// Member 임의 데이터 생성
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

// course 임의 데이터 생성
ArrayList<Course> coList = new ArrayList<Course>();
for(int cnt=1;cnt<=16;cnt++){
	coList.add(new Course(cnt, "홍길동","비누만들기"+cnt,"수공예","재밌는 비누만들기",0,10,"2020-03-11",30000,""));
}
session.setAttribute("coList", coList);

// 스토어 임의 데이터 생성
ArrayList<Store> sList = new ArrayList<Store>();
for(int cnt=1; cnt < 22; cnt++){
	sList.add(new Store(cnt,"himan"+cnt,"수제 비누","M",5000,20,"순하고 부르러워요"+cnt,"20-03-11",""));
}
session.setAttribute("sList", sList);

// 공지 임의 데이터 생성
ArrayList<Noti> notiList = new ArrayList<Noti>();
for(int cnt=1; cnt < 22; cnt++){
	notiList.add(new Noti(cnt,"공지제목"+cnt,"공지내용","20-03-11","N"));
}
session.setAttribute("notiList", notiList);
// 문의 임의 데이터 생성
ArrayList<Inquiry> inquList = new ArrayList<Inquiry>();
for(int cnt=1; cnt < 17; cnt++){
	inquList.add(new Inquiry(cnt,"himan"+cnt,"문의 내용","20-03-11","완","문의 답변"));
}
session.setAttribute("inquList", inquList);



response.sendRedirect("Admin_mem.jsp");
%>

</body>
</html>