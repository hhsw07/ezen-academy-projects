package jspexp.a01_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class A01_ServletStart
 http://localhost:7080/jspexp/callServlet.do
 */
@WebServlet(name = "callServlet.do", 
		urlPatterns = { "/callServlet.do" })
public class A01_ServletStart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01_ServletStart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request,
							HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// jsp에서 만들어지는 java기반의 servlet 코드.
		// 1. HttpServletRequest : 클라이언트가 서버에 요청처리를 할 때, 사용되는 객체.
		// 2. HttpServletResponse : 서버가 클라이언트에 결과를 넘겨주는 객체
		//     1) 화면출력/
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String name=request.getParameter("name");
		System.out.println("요청값:"+name);
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		//jsp에 포함된 객체
		
		
		
		out.print("<h2>요청된데이터:"+name+"</h2>");
		out.print("<h2>화면출력 내용</h2>");
		
		
		
		
		
		
		
	}

}
