package javaexp.b01_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A01_Controller
 */
@WebServlet(name = "call.do", urlPatterns = { "/call.do" })
public class A01_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * a04_formTag/a01_start.html 에서 action="/javaexp/call.do" 를 이용
		 */
		System.out.println("서블릿 호출!");
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		System.out.println("아이디: "+id);
		System.out.println("비밀번호: "+pass);
		response.getWriter().println("<html><body><h2>call.do servlet</h2></body></html>");
		response.getWriter().println("<html><body><h2>id:"+id+"</h2></body></html>");
		
	}

}
