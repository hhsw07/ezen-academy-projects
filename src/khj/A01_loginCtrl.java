package khj;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import z01_vo.Member;

/**
 * Servlet implementation class A01_loginCtrl
 */

// 웹서블릿 name부분과 url패턴 부분은 뭘 의미하고 어떻게 쓰이는지 전혀 이해하지 못함
@WebServlet(name = "login", urlPatterns = { "/login" })
// A01_loginCtrl 클래스는 HttpServlet를 상속한다.
public class A01_loginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
// A01_loginService를 선언(?)한다.
	private A01_loginService service;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01_loginCtrl() {
        super();
        // TODO Auto-generated constructor stub
// 위에 선언한 service는 A01_loginService();라고 지정(?)한다.
        service = new A01_loginService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
// 이부분은 servlet파일 생성시 만들어지는데 무슨 의미인지 모르겠음
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
// utf-8로 인코딩 하는 코드
		request.setCharacterEncoding("utf-8");
// proc선언(?) proc를 getParameter로 요청한다.
// proc를 getParameter로 요청한다는게 무슨 의미(?)
		String proc = request.getParameter("proc");
// proc가 null(?) 이면 proc는 공백(?)
		if(proc==null) proc="";
		System.out.println("proc확인"+proc);
// proc가 login이면
		if(proc.equals("login")) {
// Dao(?)에 선언(?)한 mem을 서비스.로그인에 요청한다(?)
			Member mem = service.login(request);
// mem이 null이 아니라면
			if(mem!=null) {
// HttpSession의 session은 요청한다 세션을 갖도록
				HttpSession session = request.getSession();
// 세션설정 ()부분에 왜 "mem", mem이 들어가는지 이해 안됨
				session.setAttribute("mem", mem);
			}
		}
		String mem_id = request.getParameter("mem_id");
// page는 main/login/login.jsp라는 경로라고 선언(?)
		String page="main/login/login.jsp";
// proc가 logout이면
// if(proc.equals("logout") <- ()안에 있는 logout은 jsp파일에서 사용할 name의 값을 입력하는것인지?
		if(proc.equals("logout")) {
// 요청한다 세션을 종료하도록
			request.getSession().invalidate();
// 세션이 종료되면 main/main.jsp페이지로 이동
// 위에서 page는 main/login.login.jsp라고 선언한게 아닌지?
			page="main/main.jsp";
		}
		// 메인페이지
		if(proc.equals("main")) {
			page="main/main.jsp";
		}
		/*
		 * if(mem_id!=null&& !mem_id.equals("")) { // id 있는지 여부 service에서 확인..
		 * request.setAttribute("isMember", service.checkReg(mem_id)); }
		 */
		// 로그인페이지 -> 회원가입
		if(proc.equals("signUp")) {
			page="main/login/signUp.jsp";
		}
		// 회원테이블에 입력값 저장
		if(proc.equals("insMem")) {
			System.out.println("저장확인");
// service단의 insMem에 요청한다(?)
// 왜 이 4줄의 코드가 회원가입부분의 입력값이 회원테이블에 저장이 되는지 모르겠음
// service부분에 있는 코드를 수행한다는 의미로 사용되는 건가요?
			service.insMem(request);
			page="main/login/login.jsp";
		}
		// 로그인페이지 -> 아이디 찾기
		if(proc.equals("findID")) {
			page="main/login/findID.jsp";
		}
		if(proc.equals("findBtn")) {
			// db에서 id와 email을 이용해서 조회 
			// 조회된 데이터가 1.null값일때 
			service.findID(request);
			if(service.findID(request)==null) {
				page = "main/login/findID.jsp?proc=no";
			}else {
				page = "main/login/findIdRs.jsp";
			}
			request.setAttribute("findId", service);
		}
		if(proc.equals("findBtn"))
		request.setAttribute("m", service.findID(request));
		// 아이디찾기 결과 페이지
		if(proc.equals("findIdRs")) {
			page="main/login/findIdRs.jsp";
		}
		// 로그인페이지 -> 비밀번호 찾기
		if(proc.equals("findPS")) {
			page="main/login/findPS.jsp";
		}
// RequestDispatcher는 서로 다른 컨드롤러에 값을 전달한다는 의미로만 알고있는데 맞는지 모르겠음
// RequestDispatcher rd는 request.getRequestDispatcher(page);라고 선언 괄호안의 page는 위에서 선언한 page를 의미(?)
		RequestDispatcher rd= request.getRequestDispatcher(page);
		// .forward(request, response) 어떤 의미로 사용되는지 이해안됨
		rd.forward(request, response);
	}
}
