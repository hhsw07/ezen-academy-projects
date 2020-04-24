package jspexp.c01_mvc;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jspexp.z01_vo.Product2;
import jspexp.z02_util.Nk;

/**
 * Servlet implementation class A06_SellProduct
 */
@WebServlet(name = "sellingproduct", urlPatterns = { "/sellingproduct" })
public class A06_SellProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private A05_ProductService service;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A06_SellProduct() {
        super();
        // TODO Auto-generated constructor stub
        service = new A05_ProductService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. 요청.
		request.setCharacterEncoding("utf-8");
		String proc = Nk.toStr(request.getParameter("proc"),"sch");
		
		
		// 2. model
		if(proc.equals("sch"))request.setAttribute("plist", service.getProductList(request));
		if(proc.equals("cart")||proc.equals("detail")) 
			request.setAttribute("product", service.detailProduct(request) );
		HttpSession session = request.getSession();
		if(proc.equals("cart")) {
			
			// session 이 있으면 추가 없으면 새로 생성..
			ArrayList<Product2> clist= null;
			if(session.getAttribute("cart")==null) {
				clist = new ArrayList<Product2>();
			}else {
				clist = (ArrayList<Product2>)session.getAttribute("cart");	
			}
			// 구매 정보에서 재고 정보 카운트 다운..
			clist.add(service.cartProduct(request));
			session.setAttribute("cart", clist);
		}
		if(proc.equals("buy")) {
			// 로그인시, session 처리 후, id을 가져온다.
			// 구매정보입력, 물품재고변경, 물품리스트 처리.
			request.setAttribute("buylist", service.buyProduct(request));
			session.removeAttribute("cart");
		}
		
		
		System.out.println("현재 proc:"+proc);
		// 3. view호출..
		String page="a11_mvc\\a06_sellingList.jsp";
		if(proc.equals("detail")||proc.equals("cart")) {
			page="a11_mvc\\a07_datailProd.jsp";
		}
		if(proc.equals("clist")) {
			page="a11_mvc\\a08_cartList.jsp";
		
		}
		if(proc.equals("buy")) {
			page="a11_mvc\\a09_buyList.jsp";
		}
		request.getRequestDispatcher(page).forward(request, response);
		
	}

}
