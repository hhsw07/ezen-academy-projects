package cmk;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import z01_vo.Nk;

/**
 * Servlet implementation class OrderCtrl
 */
@WebServlet(name = "order", urlPatterns = { "/order" })
public class OrderCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrderService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new OrderService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. 요청
		String proc = Nk.toStr(request.getParameter("proc"),"cart");
		// 2. Modele
		// 3. 화면
		String page = "main\\order\\cart.jsp";
		
		request.getRequestDispatcher(page).forward(request, response);
	}

}
