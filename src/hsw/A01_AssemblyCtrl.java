package hsw;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import z01_vo.Nk;
import z01_vo.Parts;

/**
 * Servlet implementation class A01_Assembly
 */
@WebServlet(name = "assembly", urlPatterns = { "/assembly" })
public class A01_AssemblyCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private A01_AssemblyService service;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01_AssemblyCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new A01_AssemblyService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 0. 한글 encoding
		
		// 1. 요청
		String proc = Nk.toStr(request.getParameter("proc"));
		HttpSession session = request.getSession();
		
		// 2. 모델
		// proc first => 초기화면 , 카트 새로만들기
		if(proc.equals("")||proc.equals("first")) {
			session.setAttribute("plist", service.plist());
		}
		// proc sch => 검색화면
		if(proc.equals("sch"))	session.setAttribute("plist", service.plist(request));
		
		// proc ins => 카트에 추가
		if(proc.equals("ins"))	service.insertCart(request);
		
		// proc del => 카트에서 제거
		if(proc.equals("del")) 	service.deleteCart(request);
		
		// proc delAll => 카트에서 모두제거
		if(proc.equals("delAll")) service.deleteAllCart(request);
		// proc reg => 견적목록에 추가
		if(proc.equals("reg")) service.regEstimate(request);
		
		// 3. view
		String page = "main\\estimate\\estimate.jsp";
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
