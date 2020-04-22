package khj;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A03_myPageCtrl
 */
@WebServlet(name ="userInfo" , urlPatterns = {"/userInfo"})
public class A03_myPageCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A03_myPageService service;
       
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
		

		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
