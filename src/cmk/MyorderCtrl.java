package cmk;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyorderCtrl
 */
@WebServlet(name = "myorder", urlPatterns = { "/myorder" })
public class MyorderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MyorderService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyorderCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new MyorderService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		// 1. 요청
		// 2. Model
		request.setAttribute("olist", service.olist());
		// 3. View
		String page = "cmk\\jsp\\myorder.jsp";
		request.getRequestDispatcher(page).forward(request, response);
	}

}
