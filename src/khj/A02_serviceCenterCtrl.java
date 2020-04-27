package khj;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import z01_vo.Nk;
import z01_vo.Notice;

/**
 * Servlet implementation class A02_serviceCenterCtrl
 */
@WebServlet(name = "notice", urlPatterns = {"/notice"})
public class A02_serviceCenterCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A02_serviceCenterService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A02_serviceCenterCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new A02_serviceCenterService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//0. 한글 encoding 처리
		request.setCharacterEncoding("utf-8");
		//1. 요청
		String proc = Nk.toStr(request.getParameter("proc"),"notice");
		System.out.println("proc확인 : "+proc);
		//2. Model
		// 공지리스트 불러오기
		if(proc.equals("notice")) {
		request.getSession().setAttribute("nlist", service.Notice(request));
		}
		// 공지 상세불러오기
		if(proc.equals("noticeDetail")) {
			request.setAttribute("notice", service.noticeDetail(request));
		}
		// 공지 등록
		if(proc.equals("insNoti")) {
			service.insertNotice(request);
			request.getSession().setAttribute("nlist", service.Notice(request));
			proc = "notice"; //view의 notice 작동 트리거
		}
		// 공지 수정
		if(proc.equals("uptNoti")) {
			service.updateNotice(request);
			request.setAttribute("notice", service.noticeDetail(request));
			proc = "noticeDetail"; //view의 noticeDetail 작동 트리거
		}
		// 공지 삭제
		if(proc.equals("delNoti")) {
			service.deleteNotice(request);
			request.getSession().setAttribute("nlist", service.Notice(request));
			proc = "notice"; //view의 notice 작동 트리거
		}
		// 문의리스트 불러오기
		if(proc.equals("question")) {
			request.getSession().setAttribute("qlist", service.Question(request));
		}
		// 문의 상세불러오기
		if(proc.equals("quesDetail")) {
			request.setAttribute("question", service.questionDetail(request));
			request.setAttribute("qclist", service.Quecomm(request));
		}
		// 문의 등록
		if(proc.equals("insQues")) {
			service.insertQuestion(request);
			request.getSession().setAttribute("qlist", service.Question(request));
			proc = "question"; //view의 question 작동 트리거
		}
		// 문의 수정
		if(proc.equals("uptQues")) {
			service.updateQuestion(request);
			request.setAttribute("question", service.questionDetail(request));
			proc = "quesDetail"; //view의 quesDetail 작동 트리거
		}
		// 문의 삭제
		if(proc.equals("delQues")) {
			service.deleteQuestion(request);
			request.getSession().setAttribute("qlist", service.Question(request));
			proc = "question"; //view의 question 작동 트리거
		}
		//3.View
		String page = "main/serviceCenter/notice.jsp";
		if(proc.equals("notice")) {
			page="main/serviceCenter/notice.jsp";
		}
		if(proc.equals("noticeDetail")) {
			page="main/serviceCenter/noticeDetail.jsp";
		}
		if(proc.equals("writeNoti")) {
			page="main/serviceCenter/noticeReg.jsp";
		}
		if(proc.equals("question")) {
			page="main/serviceCenter/question.jsp";
		}
		if(proc.equals("review")) {
			page="main/serviceCenter/review.jsp";
		}
		
		
		RequestDispatcher rd= request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
