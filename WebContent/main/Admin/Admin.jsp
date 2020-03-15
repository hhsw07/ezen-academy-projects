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
// Addr 임의 데이터 생성
/* (int)배송지번호,아이디, 배송지명, 수령인, 연락처, 추가연락처, 우편번호, 주소, 상세주소  */
ArrayList<Addr> addrList = new ArrayList<Addr>();
for(int cnt=1;cnt<=16;cnt++){
	addrList.add(new Addr(cnt, "홍길동"+cnt,"우리집","김길동","010-0001-"+(1000+cnt) ,
			"010-0002-"+(1000+cnt),"01525","서울시 종로구",""));
}
session.setAttribute("addrList", addrList);


// Course 임의 데이터 생성
/* (int)클래스번호, 호스트, 클래스등록일, 클래스명, 클래스종류(D:원데이클래스/M:정기클래스), 상세설명, (int)현인원
	(int)최대인원, (int)가격, 클래스이미지, 수강일 */
ArrayList<Course> coList = new ArrayList<Course>();
for(int cnt=1;cnt<=16;cnt++){
	coList.add(new Course(cnt, "홍길동"+cnt,"2020-03-02","비누만들기"+cnt,"D",
			"재밌는 비누만들기",0,10,30000,"","2020-03-10"));
}
session.setAttribute("coList", coList);


// CReview 임의 데이터 생성
/* (int)신청번호, 후기내용, 평점, 등록일  */
ArrayList<CReview> cReList = new ArrayList<CReview>();
for(int cnt=1;cnt<=16;cnt++){
	int rPt = (int)(Math.random()*6);
	cReList.add(new CReview(cnt, "재밌어요"+cnt,rPt, "2020-01-01"));
}
session.setAttribute("cReList", cReList);


// Inquiry 임의 데이터 생성
/* (int)문의번호, 아이디, 문의내용, 문의날짜, 답변내용 */
ArrayList<Inquiry> inquList = new ArrayList<Inquiry>();
for(int cnt=1; cnt < 17; cnt++){
	inquList.add(new Inquiry(cnt,"himan"+cnt,"문의 내용","2020-03-11","답변"+cnt));
}
session.setAttribute("inquList", inquList);


//Member 임의 데이터 생성
/* 아이디, (int)회원번호, 비밀번호, 이름, 이메일, 닉네임, 생년월일, 휴대폰, 등급, (int)마일리지 */
ArrayList<Member> memList = new ArrayList<Member>();
Member m01 = new Member("himan1",1,"7777","홍길동","mail01@gmail.com","둘리1","2000-01-01","010-1234-1001","M",0);
Member m02 = new Member("himan2",2,"7777","김길동","mail02@gmail.com","둘리2","2000-01-01","010-1234-1002","H",100);
memList.add(m01);
memList.add(m02);
for(int cnt=3;cnt<=16;cnt++){
	memList.add(new Member("himan"+cnt,cnt,"7777","홍길동"+cnt,"mail"+cnt+"@gmail.com","둘리"+cnt,"2000-01-01","010-1234-"+(1000+cnt),"N",100+cnt));
}
session.setAttribute("memList", memList);


// Notice 임의 데이터 생성
/* (int)공지사항번호, 공지제목, 공지내용, 공지등록일, 중요여부 */
ArrayList<Notice> notiList = new ArrayList<Notice>();
for(int cnt=1; cnt < 22; cnt++){
	notiList.add(new Notice(cnt,"공지제목"+cnt,"공지내용","2020-03-11","N"));
}
session.setAttribute("notiList", notiList);


// Order 임의 데이터 생성
/* (int)주문번호, 아이디, (int)상품번호, 구매날짜, 주문상태, (int)구매갯수, 택배회사, 운송장번호 */
ArrayList<Order> orderList = new ArrayList<Order>();
for(int cnt=1; cnt < 22; cnt++){
	orderList.add(new Order(cnt,"himan"+cnt,cnt,"2020-03-11","배송완료",2,"한진","111000"+(100+cnt)));
}
session.setAttribute("orderList", orderList);


// PReview 임의 데이터 생성
/* (int)주문번호, 후기내용, (int)평점, 등록일 */
ArrayList<PReview> pList = new ArrayList<PReview>();
for(int cnt=1; cnt < 22; cnt++){
	pList.add(new PReview(cnt,"좋아요"+cnt,cnt%5,"2020-03-11"));
}
session.setAttribute("pList", pList);


//Request 임의 데이터 생성
/* (int)신청번호, (int)클래스번호, 아이디, 신청날짜, 신청상태 */
ArrayList<Request> requestList = new ArrayList<Request>();
for(int cnt=1; cnt < 22; cnt++){
	requestList.add(new Request(cnt,10+cnt,"himan"+(cnt+1),"2020-03-11","신청완료"));
}
session.setAttribute("requestList", requestList);


// Store 임의 데이터 생성
/* (int)상품번호, 호스트, 상품명, 승인상태, (int)가격, (int)총갯수, 상품설명, 신청일, 상품이미지 */
ArrayList<Store> sList = new ArrayList<Store>();
for(int cnt=1; cnt < 22; cnt++){
	sList.add(new Store(cnt,"himan"+cnt,"수제 비누 "+cnt+"호","Y",5000,20+cnt,"순하고 부르러워요"+cnt,"2020-03-11",""));
}
session.setAttribute("sList", sList);






response.sendRedirect("Admin_mem.jsp");
%>

</body>
</html>