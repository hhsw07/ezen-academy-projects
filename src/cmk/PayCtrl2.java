package cmk;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import z01_vo.Cart;
import z01_vo.Nk;
import z01_vo.Request;

/**
 * Servlet implementation class PayCtrl
 */
@WebServlet(name = "order", urlPatterns = { "/order" })
public class PayCtrl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PayService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayCtrl2() {
        super();
        // TODO Auto-generated constructor stub
        service = new PayService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		// 1. 요청
		String proc = Nk.toStr(request.getParameter("proc"));
		HttpSession session = request.getSession();
		// 2. Model
		if(proc.equals("cart") || proc.equals("buy")) {
			if(session.getAttribute("cart") == null){
				ArrayList<Cart> cartlist = new ArrayList<Cart>();
				session.setAttribute("cart", cartlist);
			}
			ArrayList<Cart> cartlist = (ArrayList<Cart>) session.getAttribute("cart");
			
			cartlist.add(service.getProd(request));
			session.setAttribute("cart", cartlist);
			
			//session.setAttribute("cart", cartList);
		}
		if(proc.equals("pay")) {
			String mem_id = Nk.toStr((String)session.getAttribute("mem"));
			service.insOrder(request, mem_id);
		}
		// 3. View
		String page = "main\\order\\cart.jsp";
		if(proc.equals("pay")) {
			page = "main\\order\\payend.jsp";
		}
		if(session.getAttribute("mem") == null) {
			page = "login";
		}
		
		request.getRequestDispatcher(page).forward(request, response); 
	}

}
