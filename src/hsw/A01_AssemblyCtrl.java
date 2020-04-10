package hsw;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		// 2. 모델
		
		// 3. view
		String page = "main\\estimate\\estimate.jsp";
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
