package jspexp.c01_mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspexp.z01_vo.Product2;
import jspexp.z02_util.Nk;

/**
 * Servlet implementation class A05_ProductCtrl
 */
@WebServlet(name = "product", urlPatterns = { "/product" })
public class A05_ProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private A05_ProductService service;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A05_ProductCtrl() {
        super();
        // TODO Auto-generated constructor stub
        service = new A05_ProductService();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		// 1. 요청
		String proc=Nk.toStr(request.getParameter("proc"), "sch");
		
		// 2. Model
		if(proc.equals("insert")) {
			service.insertProduct(request);
		}
		
		
		if(proc.equals("sch"))
		request.setAttribute("plist", service.getProductList(request));
		
		
		
		// 3. 화면 호출.
		String page="a11_mvc\\a05_productList.jsp";
		if(proc.equals("insFrm")||proc.equals("insert")) page="a11_mvc\\a05_productInsert.jsp";
		request.getRequestDispatcher(page).forward(request, response);
	}

}


