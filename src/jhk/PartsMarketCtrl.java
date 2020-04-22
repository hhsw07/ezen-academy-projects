package jhk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MarketCtrl
 */
@WebServlet(name = "partslist", urlPatterns = { "/partslist" })
public class PartsMarketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PartsMarketCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. 요청
		String proc= request.getParameter("proc");
		if(proc==null||proc.equals("")) proc="partslist";
		// 2. 모델 처리
		
		
		//3.page
		String page = "main/market/parts_list.jsp";
		if(proc.equals("partslist")) {
			page = "main/market/parts_list.jsp";
		}
		if(proc.equals("partsdetail")) {
			page = "main/market/parts_detail.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
	}

}
