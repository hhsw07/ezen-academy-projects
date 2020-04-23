package cmk;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import z01_vo.Nk;

/**
 * Servlet implementation class AsCtrl
 */
@WebServlet(name = "cs", urlPatterns = { "/cs" })
public class AsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AsService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AsCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new AsService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		// 1. 요청
		String proc = Nk.toStr(request.getParameter("proc"));
		// 2. Model
		request.setAttribute("asList", service.asList());
		// 3. View
		String page = "main\\serviceCenter\\as.jsp";
		request.getRequestDispatcher(page).forward(request, response);
	}

}
