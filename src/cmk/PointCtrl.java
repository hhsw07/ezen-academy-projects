package cmk;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PointCtrl
 */
@WebServlet(name = "point", urlPatterns = { "/point" })
public class PointCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PointService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PointCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new PointService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		// 1. 요청
		// 2. Model
		request.setAttribute("ptList", service.ptList());
		// 3. View
		String page = "main\\mypage\\mypoint.jsp";
		request.getRequestDispatcher(page).forward(request, response);
	}

}
