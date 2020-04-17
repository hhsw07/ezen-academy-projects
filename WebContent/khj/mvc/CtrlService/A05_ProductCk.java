package jspexp.c01_mvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspexp.b01_database.A03_ShoppingDao;
import jspexp.z01_vo.Product;
import jspexp.z02_util.Nk;

/**
 * Servlet implementation class A05_ProductCk
 */
@WebServlet(name = "schprod", urlPatterns = { "/schprod" })
public class A05_ProductCk extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A03_ShoppingDao dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A05_ProductCk() {
        super();
        // TODO Auto-generated constructor stub
        dao = new A03_ShoppingDao();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// http://localhost:5080/jspexp/schprod?name=과
		request.setCharacterEncoding("utf-8");
		// 1. 요청
		String name = Nk.toStr(request.getParameter("name"));
		String proc = Nk.toStr(request.getParameter("proc"));
		int frPrice = Nk.toInt(request.getParameter("frPrice"));
		int toPrice = Nk.toInt(request.getParameter("toPrice"), 99999999);
		
		// 2. 모델
		//    1) json형태의 데이터
		if(proc.equals("sch")) 
		request.setAttribute("plist",dao.plist(new Product(frPrice, toPrice, name)));
		
		// 3. view 초기 화면
		String page="\\b01_jquery\\z01_ajax\\a07_prodSearch.jsp";
		if(proc.equals("sch")) {
			//  plist sno kind  name price cnt
			page="\\b01_jquery\\z01_ajax\\a07_prodSearchData.jsp";
		}
		request.getRequestDispatcher(page).forward(request, response);
	}

}



