package khj;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import z01_vo.Member;

/**
 * Servlet implementation class A03_myPageCtrl
 */
@WebServlet(name ="userInfo" , urlPatterns = {"/userInfo"})
public class A03_myPageCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A03_myPageService service;
	private A01_loginService service2;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A03_myPageCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new A03_myPageService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String proc = request.getParameter("proc"); 
		if(proc==null) proc="";
		System.out.println("proc확인"+proc);
		
		String page ="main/mypage/userInfo.jsp";
		
		if(proc.equals("update")) {
			// 수정처리 서비스
			service.uptPw(request);
		}
		if(proc.equals("delete")) {
			// 삭제처리 서비스.
			service.deleteMember(request);			
			request.getSession().invalidate();
			page = "main/main.jsp";
		}
		// 회원정보수정 페이지 -> 회원탈퇴
		if(proc.equals("dropInfo")) {
			page = "main/mypage/dropInfo.jsp";
		}
		
		// 수정 처리 후, 수정된 상세화면 확인으로 model 처리..
		if(proc.equals("userInfo")||proc.equals("update")) {
			// emp Model
			request.setAttribute("emp", service.userInfo( request ));
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
