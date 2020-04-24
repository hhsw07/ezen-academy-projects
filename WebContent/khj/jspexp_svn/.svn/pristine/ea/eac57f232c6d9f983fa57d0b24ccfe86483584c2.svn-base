package jspexp.c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A04_MemberRegCtrl
 */
@WebServlet(name = "registCheck", urlPatterns = { "/registCheck" })
public class A04_MemberRegCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private A04_MemberRegService service;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A04_MemberRegCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new A04_MemberRegService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. 요청
		String id = request.getParameter("id");
		
		// 2. 모델
		if(id!=null&& !id.equals("")) {
			// id 있는지 여부 service에서 확인..
			request.setAttribute("isMember", service.checkReg(id));
		}
		
		
		// 3. view
		RequestDispatcher rd = request.getRequestDispatcher("a11_mvc\\a04_regCheck.jsp");
		rd.forward(request, response);
		
		
	}

}
