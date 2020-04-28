package cmk;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import z01_vo.Member;
import z01_vo.Nk;

/**
 * Servlet implementation class PointCtrl
 */
@WebServlet(name = "mypage", urlPatterns = { "/mypage" })
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
		String proc = Nk.toStr(request.getParameter("proc"));
		HttpSession session = request.getSession();
		Member mem = (Member)session.getAttribute("mem");
		String mem_id = Nk.toStr(mem.getMem_id());
		// 2. Model
		if(proc.equals("mypt")) {
			request.setAttribute("ptList", service.ptList(mem_id));
		}
		if(proc.equals("myorder")) {
			request.setAttribute("olist", service.olist(mem_id));
		}
		// 3. View
		String page = "main\\mypage\\mypoint.jsp";
		if(proc.equals("mypt")) {
			page = "main\\mypage\\mypoint.jsp";
		}
		if(proc.equals("myorder")) {
			page = "main\\mypage\\myorder.jsp";
		}
		request.getRequestDispatcher(page).forward(request, response);
	}

}
